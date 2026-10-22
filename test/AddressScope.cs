using System;
using System.IO;
using System.Reflection;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using System.Collections.Generic;

using Microsoft.Extensions.DependencyInjection;

using Xunit;

using Zongsoft.Data;
using Zongsoft.Services;
using Zongsoft.Administratives.Models;

[assembly: CollectionBehavior(DisableTestParallelization = true)]

namespace Zongsoft.Administratives.Tests;

internal sealed class AddressScope : IAsyncDisposable
{
	private static readonly FieldInfo[] _cacheFields = Array.ConvertAll(
		new[] { "_plainProvinces", "_keyedProvinces", "_compressedPlainData", "_compressedKeyedData", "_provinces" },
		name => typeof(Address).GetField(name, BindingFlags.Static | BindingFlags.NonPublic));
	private static readonly FieldInfo _currentField = typeof(ApplicationContext).GetField("_current", BindingFlags.Static | BindingFlags.NonPublic);
	private readonly object[] _previousCaches = Array.ConvertAll(_cacheFields, field => field.GetValue(null));
	private readonly IApplicationContext _previousContext = ApplicationContext.Current;
	private readonly IServiceProvider _services;
	private readonly TestContext _context;

	public AddressScope()
	{
		this.DirectoryPath = Path.Combine(Path.GetTempPath(), $"zongsoft-address-tests-{Guid.NewGuid():N}");
		Directory.CreateDirectory(this.DirectoryPath);

		foreach(var field in _cacheFields)
			field.SetValue(null, null);

		var accessor = DispatchProxy.Create<IDataAccess, AccessorProxy>();
		this.Queries = (AccessorProxy)(object)accessor;
		this.Provider = new AccessorProvider(accessor);
		var services = new ServiceCollection();
		services.AddSingleton<IDataAccessProvider>(this.Provider);
		_services = new ServiceProviderFactory().CreateServiceProvider(services);
		_context = new TestContext(_services, this.DirectoryPath);
		this.SetRecords();
	}

	public string DirectoryPath { get; }
	public string FilePath => Path.Combine(this.DirectoryPath, "addresses-cn.json");
	public AccessorProxy Queries { get; }
	public AccessorProvider Provider { get; }
	public RecordPlan<Province> Provinces { get; private set; }
	public RecordPlan<City> Cities { get; private set; }
	public RecordPlan<District> Districts { get; private set; }
	public RecordPlan<Street> Streets { get; private set; }

	public void SetRecords(bool gated = false)
	{
		this.Provinces = new RecordPlan<Province>([new() { ProvinceId = 11, Name = "Province", Abbr = "P" }], this.Queries.Calls, gated);
		this.Cities = new RecordPlan<City>([new() { ProvinceId = 11, CityId = 22, Name = "City" }], this.Queries.Calls, gated);
		this.Districts = new RecordPlan<District>([new() { ProvinceId = 11, CityId = 22, DistrictId = 33, Name = "District" }], this.Queries.Calls, gated);
		this.Streets = new RecordPlan<Street>([new() { ProvinceId = 11, CityId = 22, DistrictId = 33, StreetId = 44, Name = "Street" }], this.Queries.Calls, gated);
		this.Queries.Plans[typeof(Province)] = this.Provinces;
		this.Queries.Plans[typeof(City)] = this.Cities;
		this.Queries.Plans[typeof(District)] = this.Districts;
		this.Queries.Plans[typeof(Street)] = this.Streets;
	}

	public Task WriteFileAsync() => File.WriteAllTextAsync(this.FilePath, JsonSerializer.Serialize(new[]
	{
		new Province.Plain
		{
			ProvinceId = 11, Name = "Province", Abbr = "P",
			Cities = [new City.Plain
			{
				ProvinceId = 11, CityId = 22, Name = "City",
				Districts = [new District.Plain
				{
					ProvinceId = 11, CityId = 22, DistrictId = 33, Name = "District",
					Streets = [new Street { ProvinceId = 11, CityId = 22, DistrictId = 33, StreetId = 44, Name = "Street" }],
				}],
			}],
		},
	}));

	public async ValueTask DisposeAsync()
	{
		try
		{
			try { await _context.DisposeAsync(); }
			finally { await ((IAsyncDisposable)_services).DisposeAsync(); }
		}
		finally
		{
			for(int i = 0; i < _cacheFields.Length; i++)
				_cacheFields[i].SetValue(null, _previousCaches[i]);

			_currentField.SetValue(null, _previousContext);
			Assert.Equal(Path.TrimEndingDirectorySeparator(Path.GetFullPath(Path.GetTempPath())), Path.GetDirectoryName(Path.GetFullPath(this.DirectoryPath)));
			Directory.Delete(this.DirectoryPath, true);
		}
	}

	private sealed class TestContext(IServiceProvider services, string path) : ApplicationContext(services)
	{
		public override string ApplicationPath => path;
	}

	internal sealed class AccessorProvider(IDataAccess accessor) : IDataAccessProvider
	{
		public int Calls { get; private set; }
		public bool Missing { get; set; }
		public IDataAccess GetAccessor(string name = null) => this.GetAccessor(name, null);
		public IDataAccess GetAccessor(string name, IDataAccessOptions options = null)
		{
			this.Calls++;
			return this.Missing ? null : accessor;
		}
	}
}

public class AccessorProxy : DispatchProxy
{
	internal Dictionary<Type, RecordPlan> Plans { get; } = [];
	internal List<string> Calls { get; } = [];
	protected override object Invoke(MethodInfo method, object[] arguments)
	{
		Assert.Equal(nameof(IDataAccess.SelectAsync), method.Name);
		var model = Assert.Single(method.GetGenericArguments());
		var cancellation = Assert.IsType<CancellationToken>(Assert.Single(arguments));
		this.Calls.Add($"select:{model.Name}");
		return this.Plans[model].Open(cancellation);
	}
}

internal abstract class RecordPlan
{
	protected RecordPlan(bool gated)
	{
		if(!gated)
			this.ReleaseAll();
	}
	public TaskCompletionSource Reading { get; } = new(TaskCreationOptions.RunContinuationsAsynchronously);
	public TaskCompletionSource Disposing { get; } = new(TaskCreationOptions.RunContinuationsAsynchronously);
	public TaskCompletionSource ReadRelease { get; } = new(TaskCreationOptions.RunContinuationsAsynchronously);
	public TaskCompletionSource DisposeRelease { get; } = new(TaskCreationOptions.RunContinuationsAsynchronously);
	public CancellationToken Cancellation { get; protected set; }
	public int DisposeCount { get; protected set; }
	public abstract object Open(CancellationToken cancellation);
	public void ReleaseAll()
	{
		this.ReadRelease.TrySetResult();
		this.DisposeRelease.TrySetResult();
	}
}

internal sealed class RecordPlan<T>(T[] records, List<string> calls, bool gated = false) : RecordPlan(gated)
{
	private readonly T[] _records = records;
	private readonly List<string> _calls = calls;
	public override object Open(CancellationToken cancellation)
	{
		this.Cancellation = cancellation;
		return new Records(this, cancellation);
	}
	private sealed class Records(RecordPlan<T> owner, CancellationToken cancellation) : IAsyncEnumerable<T>, IAsyncEnumerator<T>
	{
		private int _index = -1;
		public T Current => owner._records[_index];
		public IAsyncEnumerator<T> GetAsyncEnumerator(CancellationToken token = default) => this;
		public async ValueTask<bool> MoveNextAsync()
		{
			if(_index < 0)
			{
				owner._calls.Add($"read:{typeof(T).Name}");
				owner.Reading.TrySetResult();
				await owner.ReadRelease.Task.WaitAsync(cancellation);
			}

			cancellation.ThrowIfCancellationRequested();
			return ++_index < owner._records.Length;
		}
		public async ValueTask DisposeAsync()
		{
			owner.DisposeCount++;
			owner._calls.Add($"dispose:{typeof(T).Name}");
			owner.Disposing.TrySetResult();
			await owner.DisposeRelease.Task;
		}
	}
}
