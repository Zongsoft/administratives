using System;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;
using System.Collections.Generic;

using Xunit;

using Zongsoft.Administratives.Models;

namespace Zongsoft.Administratives.Tests;

public sealed class AddressAsyncTest
{
	private static readonly TimeSpan _timeout = TimeSpan.FromSeconds(5);
	internal const uint StreetId = (11u << 24) | (22u << 16) | (33u << 8) | 44u;

	[Fact]
	public async Task FileCache_FirstConcurrentLoadBuildsBothFormatsAndReusesData()
	{
		await using var scope = new AddressScope();
		await scope.WriteFileAsync();
		var start = new TaskCompletionSource(TaskCreationOptions.RunContinuationsAsynchronously);
		var operations = Enumerable.Range(0, 12).Select(index => Task.Run(async () =>
		{
			await start.Task;
			return await Address.GetAddressesAsync((AddressFormat)(index % 2), TestContext.Current.CancellationToken);
		}, TestContext.Current.CancellationToken)).ToArray();
		start.SetResult();
		var results = await Task.WhenAll(operations).WaitAsync(_timeout, TestContext.Current.CancellationToken);

		for(int i = 0; i < results.Length; i++)
			Assert.Same(results[i % 2], results[i]);

		Assert.IsType<Province.Plain>(Assert.Single(results[0]));
		var keyed = Assert.IsType<Province.Keyed>(Assert.Single(results[1]));
		Assert.Equal("Street", keyed.Cities[22].Districts[33].Streets[44].Name);
		Assert.Equal(0, scope.Provider.Calls);
		Assert.Empty(scope.Queries.Calls);
		File.Delete(scope.FilePath);
		Assert.Same(results[0], await Address.GetAddressesAsync(AddressFormat.Plain, TestContext.Current.CancellationToken));
		Assert.Same(results[1], await Address.GetAddressesAsync(AddressFormat.Keyed, TestContext.Current.CancellationToken));
	}

	[Fact]
	public async Task DatabaseLoad_AwaitsEachQueryAndDisposalBeforePublishingCache()
	{
		await using var scope = new AddressScope();
		scope.SetRecords(true);
		using var cancellation = new CancellationTokenSource();
		using var waitingCancellation = new CancellationTokenSource();
		var pending = Address.GetAddressesAsync(AddressFormat.Plain, cancellation.Token).AsTask();
		var concurrent = Address.GetAddressesAsync(AddressFormat.Keyed, TestContext.Current.CancellationToken).AsTask();
		var canceledWaiter = Address.GetAddressesAsync(AddressFormat.Plain, waitingCancellation.Token).AsTask();
		RecordPlan[] plans = [scope.Provinces, scope.Cities, scope.Districts, scope.Streets];
		var names = new[] { nameof(Province), nameof(City), nameof(District), nameof(Street) };
		var expectedCalls = new List<string>();

		try
		{
			waitingCancellation.Cancel();
			var canceled = await Assert.ThrowsAnyAsync<OperationCanceledException>(() => canceledWaiter.WaitAsync(_timeout, TestContext.Current.CancellationToken));
			Assert.Equal(waitingCancellation.Token, canceled.CancellationToken);

			for(int i = 0; i < plans.Length; i++)
			{
				await plans[i].Reading.Task.WaitAsync(_timeout, TestContext.Current.CancellationToken);
				expectedCalls.Add($"select:{names[i]}");
				expectedCalls.Add($"read:{names[i]}");
				Assert.Equal(expectedCalls, scope.Queries.Calls);
				Assert.Equal(cancellation.Token, plans[i].Cancellation);
				Assert.False(pending.IsCompleted);
				Assert.False(concurrent.IsCompleted);
				Assert.False(File.Exists(scope.FilePath));
				plans[i].ReadRelease.SetResult();
				await plans[i].Disposing.Task.WaitAsync(_timeout, TestContext.Current.CancellationToken);
				expectedCalls.Add($"dispose:{names[i]}");
				Assert.Equal(expectedCalls, scope.Queries.Calls);
				Assert.False(pending.IsCompleted);
				plans[i].DisposeRelease.SetResult();
			}

			var plain = Assert.IsType<Province.Plain>(Assert.Single(await pending.WaitAsync(_timeout, TestContext.Current.CancellationToken)));
			var keyed = Assert.IsType<Province.Keyed>(Assert.Single(await concurrent.WaitAsync(_timeout, TestContext.Current.CancellationToken)));
			Assert.Equal(44, Assert.Single(Assert.Single(Assert.Single(plain.Cities).Districts).Streets).StreetId);
			Assert.Equal("Street", keyed.Cities[22].Districts[33].Streets[44].Name);
			Assert.Equal(1, scope.Provider.Calls);
			Assert.All(plans, plan => Assert.Equal(1, plan.DisposeCount));
			using var json = JsonDocument.Parse(await File.ReadAllTextAsync(scope.FilePath, TestContext.Current.CancellationToken));
			Assert.Equal(11, json.RootElement[0].GetProperty("ProvinceId").GetByte());
		}
		finally
		{
			foreach(var plan in plans)
				plan.ReleaseAll();

			await Record.ExceptionAsync(() => Task.WhenAll(pending, concurrent, canceledWaiter).WaitAsync(_timeout, CancellationToken.None));
		}
	}

	[Theory]
	[InlineData(false)]
	[InlineData(true)]
	public async Task DatabaseLoad_CancellationOrFailureDisposesReaderAndAllowsRetry(bool cancel)
	{
		await using var scope = new AddressScope();
		scope.SetRecords(true);
		scope.Provinces.ReleaseAll();
		using var cancellation = new CancellationTokenSource();
		var failure = new InvalidOperationException();
		var pending = Address.GetAddressesAsync(AddressFormat.Plain, cancellation.Token).AsTask();
		RecordPlan[] plans = [scope.Provinces, scope.Cities, scope.Districts, scope.Streets];

		try
		{
			await scope.Cities.Reading.Task.WaitAsync(_timeout, TestContext.Current.CancellationToken);

			if(cancel)
				cancellation.Cancel();
			else
				scope.Cities.ReadRelease.SetException(failure);

			await scope.Cities.Disposing.Task.WaitAsync(_timeout, TestContext.Current.CancellationToken);
			Assert.False(pending.IsCompleted);
			Assert.Equal(1, scope.Provinces.DisposeCount);
			Assert.Equal(1, scope.Cities.DisposeCount);
			Assert.DoesNotContain("select:District", scope.Queries.Calls);
			scope.Cities.DisposeRelease.SetResult();

			if(cancel)
			{
				var error = await Assert.ThrowsAnyAsync<OperationCanceledException>(() => pending.WaitAsync(_timeout, TestContext.Current.CancellationToken));
				Assert.Equal(cancellation.Token, error.CancellationToken);
			}
			else
				Assert.Same(failure, await Assert.ThrowsAsync<InvalidOperationException>(() => pending.WaitAsync(_timeout, TestContext.Current.CancellationToken)));

			Assert.False(File.Exists(scope.FilePath));
			scope.SetRecords();
			Assert.Single(await Address.GetAddressesAsync(AddressFormat.Keyed, TestContext.Current.CancellationToken));
			Assert.Equal(2, scope.Provider.Calls);
			Assert.Equal(1, scope.Streets.DisposeCount);
			Assert.True(File.Exists(scope.FilePath));
		}
		finally
		{
			foreach(var plan in plans)
				plan.ReleaseAll();

			await Record.ExceptionAsync(() => pending.WaitAsync(_timeout, CancellationToken.None));
		}
	}

	[Theory]
	[InlineData(AddressFormat.Plain)]
	[InlineData(AddressFormat.Keyed)]
	public async Task GetAsync_PreservesHierarchicalLookupAndListShapes(AddressFormat format)
	{
		await using var scope = new AddressScope();
		await scope.WriteFileAsync();
		var province = await Address.GetAsync(11, format, TestContext.Current.CancellationToken);
		var city = await Address.GetAsync(11, 22, format, TestContext.Current.CancellationToken);
		var district = await Address.GetAsync(11, 22, 33, format, TestContext.Current.CancellationToken);
		var street = Assert.IsType<Street>(await Address.GetAsync(11, 22, 33, 44, TestContext.Current.CancellationToken));

		Assert.Equal("Province", province.Name);
		Assert.Equal("PCity", city.FullName);
		Assert.Equal("PCityDistrict", district.FullName);
		Assert.Equal("PCityDistrictStreet", street.FullName);
		Assert.Same(street, await Address.GetAsync(StreetId, TestContext.Current.CancellationToken));
		Assert.IsType<Province.Keyed>(await Address.GetAsync(11, 0, 0, (byte)0, TestContext.Current.CancellationToken));
		Assert.IsType<City.Keyed>(await Address.GetAsync(11, 22, 0, (byte)0, TestContext.Current.CancellationToken));
		Assert.IsType<District.Keyed>(await Address.GetAsync(11, 22, 33, (byte)0, TestContext.Current.CancellationToken));
		Assert.Null(await Address.GetAsync(0u, TestContext.Current.CancellationToken));
		Assert.Null(await Address.GetAsync(0, 22, 33, 44, TestContext.Current.CancellationToken));
		Assert.Null(await Address.GetAsync(0, format, TestContext.Current.CancellationToken));
		Assert.Null(await Address.GetAsync(99, format, TestContext.Current.CancellationToken));
		Assert.Null(await Address.GetAsync(11, 99, format, TestContext.Current.CancellationToken));
		Assert.Null(await Address.GetAsync(11, 22, 99, format, TestContext.Current.CancellationToken));
		Assert.Null(await Address.GetAsync(11, 22, 33, 99, TestContext.Current.CancellationToken));
		Assert.IsType<City>(Assert.Single(await Address.GetCitiesAsync(11, TestContext.Current.CancellationToken)));
		Assert.IsType<District>(Assert.Single(await Address.GetDistrictsAsync(11, 22, TestContext.Current.CancellationToken)));
		Assert.Equal(44, Assert.Single(await Address.GetStreetsAsync(11, 22, 33, TestContext.Current.CancellationToken)).StreetId);
		Assert.Null(await Address.GetCitiesAsync(0, TestContext.Current.CancellationToken));
		Assert.Null(await Address.GetDistrictsAsync(11, 0, TestContext.Current.CancellationToken));
		Assert.Null(await Address.GetStreetsAsync(11, 99, 33, TestContext.Current.CancellationToken));
		Assert.Null(await Address.GetAddressesAsync((AddressFormat)99, TestContext.Current.CancellationToken));
		Assert.Null(await Address.GetCompressedAddressesAsync((AddressFormat)99, TestContext.Current.CancellationToken));
		Assert.Equal(0, scope.Provider.Calls);
	}

	[Theory]
	[InlineData(AddressFormat.Plain)]
	[InlineData(AddressFormat.Keyed)]
	public async Task CompressedAddresses_PreserveJsonShapeAndCache(AddressFormat format)
	{
		await using var scope = new AddressScope();
		await scope.WriteFileAsync();
		var bytes = await Address.GetCompressedAddressesAsync(format, TestContext.Current.CancellationToken);
		Assert.Same(bytes, await Address.GetCompressedAddressesAsync(format, TestContext.Current.CancellationToken));
		using var input = new MemoryStream(bytes);
		await using var compressed = new GZipStream(input, CompressionMode.Decompress);
		using var json = await JsonDocument.ParseAsync(compressed, default, TestContext.Current.CancellationToken);
		var province = json.RootElement[0];
		Assert.Equal(1, json.RootElement.GetArrayLength());
		Assert.Equal("Province", province.GetProperty("Name").GetString());
		var cities = province.GetProperty("Cities");
		Assert.Equal(format == AddressFormat.Plain ? JsonValueKind.Array : JsonValueKind.Object, cities.ValueKind);
		var city = format == AddressFormat.Plain ? cities[0] : cities.GetProperty("22");
		var districts = city.GetProperty("Districts");
		var district = format == AddressFormat.Plain ? districts[0] : districts.GetProperty("33");
		var streets = district.GetProperty("Streets");
		var street = format == AddressFormat.Plain ? streets[0] : streets.GetProperty("44");
		Assert.Equal("Street", street.GetProperty("Name").GetString());
		Assert.Equal(44, street.GetProperty("StreetId").GetByte());
		Assert.Equal(0, scope.Provider.Calls);
	}
}
