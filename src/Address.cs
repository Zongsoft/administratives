/*
 *   _____                                ______
 *  /_   /  ____  ____  ____  _________  / __/ /_
 *    / /  / __ \/ __ \/ __ \/ ___/ __ \/ /_/ __/
 *   / /__/ /_/ / / / / /_/ /\_ \/ /_/ / __/ /_
 *  /____/\____/_/ /_/\__  /____/\____/_/  \__/
 *                   /____/
 *
 * Authors:
 *   钟峰(Popeye Zhong) <zongsoft@qq.com>
 * 
 * Copyright (C) 2015-2020 Zongsoft Studio. All rights reserved.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

using System;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Text.Json;
using System.Threading;
using System.Collections.Generic;

using Zongsoft.Data;
using Zongsoft.Services;
using Zongsoft.Administratives.Models;

namespace Zongsoft.Administratives
{
	public static class Address
	{
		#region 常量定义
		private const string KEY_ADDRESSES = "addresses-cn";
		private const string KEY_ADDRESSES_COMPRESSED = "addresses-cn.compressed";

		private const string KEY_KEYED_ADDRESSES = "addresses-cn.keyed";
		private const string KEY_KEYED_ADDRESSES_COMPRESSED = "addresses-cn.keyed.compressed";
		#endregion

		#region 成员字段
		private static IEnumerable<Province.Plain> _plainProvinces;
		private static IEnumerable<Province.Keyed> _keyedProvinces;
		private static byte[] _compressedPlainData;
		private static byte[] _compressedKeyedData;
		private static Province[] _provinces;

		private static readonly ManualResetEventSlim _signaling = new ManualResetEventSlim(true, 50);
		#endregion

		#region 公共方法
		public static object Get(uint addressId)
		{
			if(addressId == 0)
				return null;

			return Get((byte)(addressId >> 24), (byte)(addressId >> 16), (byte)(addressId >> 8), (byte)(addressId & 0xFF));
		}

		public static object Get(byte provinceId, byte cityId, byte districtId, byte streetId)
		{
			if(provinceId == 0)
				return null;

			var province = (Province.Keyed)GetAddresses(AddressFormat.Keyed)?.FirstOrDefault(p => p.ProvinceId == provinceId);

			if(province == null || cityId == 0)
				return province;

			var fullName = province.Abbr;

			if(province.Cities != null && province.Cities.TryGetValue(cityId, out var city))
			{
				fullName += city.Name;

				if(districtId == 0)
				{
					city.FullName = fullName;
					return city;
				}

				if(city.Districts != null && city.Districts.TryGetValue(districtId, out var district))
				{
					fullName += district.Name;

					if(streetId == 0)
					{
						district.FullName = fullName;
						return district;
					}

					if(district.Streets != null && district.Streets.TryGetValue(streetId, out var street))
					{
						street.FullName = fullName + street.Name;
						return street;
					}
				}
			}

			return null;
		}

		public static Province Get(byte provinceId, AddressFormat format)
		{
			if(provinceId == 0)
				return null;

			return GetAddresses(format)?.FirstOrDefault(p => p.ProvinceId == provinceId);
		}

		public static City Get(byte provinceId, byte cityId, AddressFormat format)
		{
			var province = Get(provinceId, format);

			if(province == null)
				return null;

			switch(format)
			{
				case AddressFormat.Keyed:
					var keyed = province as Province.Keyed;

					if(keyed != null && keyed.Cities != null)
					{
						if(keyed.Cities.TryGetValue(cityId, out var city) && city != null)
						{
							city.FullName = province.Abbr + city.Name;
							return city;
						}
					}

					return null;
				case AddressFormat.Plain:
					var plain = province as Province.Plain;

					if(plain != null && plain.Cities != null)
					{
						var city = plain.Cities.FirstOrDefault(p => p.CityId == cityId);

						if(city != null)
							city.FullName = province.Abbr + city.Name;

						return city;
					}

					return null;
			}

			return null;
		}

		public static District Get(byte provinceId, byte cityId, byte districtId, AddressFormat format)
		{
			var city = Get(provinceId, cityId, format);

			if(city == null)
				return null;

			switch(format)
			{
				case AddressFormat.Keyed:
					var keyed = city as City.Keyed;

					if(keyed != null && keyed.Districts != null)
					{
						if(keyed.Districts.TryGetValue(districtId, out var district) && district != null)
						{
							district.FullName = city.FullName + district.Name;
							return district;
						}
					}

					return null;
				case AddressFormat.Plain:
					var plain = city as City.Plain;

					if(plain != null && plain.Districts != null)
					{
						var district = plain.Districts.FirstOrDefault(p => p.DistrictId == districtId);

						if(district != null)
							district.FullName = city.FullName + district.Name;

						return district;
					}

					return null;
			}

			return null;
		}

		public static Province[] GetProvinces()
		{
			if(_provinces == null)
			{
				var dataAccess = ApplicationContext.Current.Services.GetDataAccess();

				if(dataAccess == null)
					return null;

				_provinces = dataAccess.Select<Province>().ToArray();
			}

			return _provinces;
		}

		public static IEnumerable<Province> GetAddresses(AddressFormat format)
		{
			switch(format)
			{
				case AddressFormat.Keyed:
					if(_keyedProvinces == null)
						Load();

					return _keyedProvinces;
				case AddressFormat.Plain:
					if(_plainProvinces == null)
						Load();

					return _plainProvinces;
			}

			return null;
		}

		public static byte[] GetCompressedAddresses(AddressFormat format)
		{
			switch(format)
			{
				case AddressFormat.Keyed:
					if(_compressedKeyedData == null)
					{
						var provinces = GetAddresses(format);
						_compressedKeyedData = Compress(provinces);
					}

					return _compressedKeyedData;
				case AddressFormat.Plain:
					if(_compressedPlainData == null)
					{
						var provinces = GetAddresses(format);
						_compressedPlainData = Compress(provinces);
					}

					return _compressedPlainData;
			}

			return null;
		}
		#endregion

		#region 私有方法
		private static void Load()
		{
			try
			{
				//重置信号量堵塞其他线程（红灯）
				_signaling.Reset();

				if(_plainProvinces != null && _keyedProvinces != null)
					return;

				//首先从文件加载缓存地址对象，如果文件加载失败则再从数据库中加载
				if(!TryLoadFromFile())
				{
					//从数据库中加载所有数据
					LoadFromDatabase();

					//将加载成功的数据保存到文件
					SaveToFile();
				}
			}
			finally
			{
				//设置信号量释放其他线程（绿灯）
				if(_signaling != null)
					_signaling.Set();
			}
		}

		private static bool TryLoadFromFile()
		{
			var filePath = GetAddressFilePath(AddressFormat.Plain);

			if(File.Exists(filePath))
			{
				using(var fileStream = File.Open(filePath, FileMode.Open, FileAccess.Read, FileShare.Read))
				{
					using(var reader = new StreamReader(fileStream, System.Text.Encoding.UTF8))
					{
						_plainProvinces = JsonSerializer.Deserialize<Province.Plain[]>(reader.ReadToEnd());
					}
				}

				if(_keyedProvinces == null)
					_keyedProvinces = PopulateKeyedProvinces((ICollection<Province.Plain>)_plainProvinces);
			}

			return _plainProvinces != null;
		}

		private static void LoadFromDatabase()
		{
			//获取数据访问服务
			var dataAccess = ApplicationContext.Current.Services.GetDataAccess();

			if(dataAccess == null)
				return;

			//获取所有的省份记录
			var provinces = dataAccess.Select<Province>(null, Paging.Disabled).ToArray();
			//获取所有的城市记录
			var cities = dataAccess.Select<City>(null, Paging.Disabled).ToArray();
			//获取所有的区县记录
			var districts = dataAccess.Select<District>(null, Paging.Disabled).ToArray();
			//获取所有的街道记录
			var streets = dataAccess.Select<Street>(null, Paging.Disabled).ToArray();

			if(_plainProvinces == null)
			{
				var plainProvinces = new List<Province.Plain>(provinces.Length);

				foreach(var province in provinces)
				{
					var plainProvince = new Province.Plain(province)
					{
						Cities = cities.Where(p => p.ProvinceId == province.ProvinceId).Select(p => new City.Plain(p)).ToArray(),
					};

					foreach(var city in plainProvince.Cities)
					{
						city.Districts = districts.Where(p => p.ProvinceId == city.ProvinceId && p.CityId == city.CityId).Select(p => new District.Plain(p)).ToArray();

						foreach(var district in city.Districts)
						{
							district.Streets = streets.Where(p => p.ProvinceId == district.ProvinceId && p.CityId == district.CityId && p.DistrictId == district.DistrictId).ToArray();
						}
					}

					plainProvinces.Add(plainProvince);
				}

				_plainProvinces = plainProvinces;
			}

			if(_keyedProvinces == null)
			{
				var keyedProvinces = new List<Province.Keyed>(provinces.Length);

				foreach(var province in provinces)
				{
					var keyedProvince = new Province.Keyed(province)
					{
						Cities = cities.Where(p => p.ProvinceId == province.ProvinceId).ToDictionary(p => p.CityId, p => new City.Keyed(p)),
					};

					foreach(var city in keyedProvince.Cities.Values)
					{
						city.Districts = districts.Where(p => p.ProvinceId == city.ProvinceId && p.CityId == city.CityId).ToDictionary(p => p.DistrictId, p => new District.Keyed(p));

						foreach(var district in city.Districts.Values)
						{
							district.Streets = streets.Where(p => p.ProvinceId == district.ProvinceId && p.CityId == district.CityId && p.DistrictId == district.DistrictId).ToDictionary(p => p.StreetId);
						}
					}

					keyedProvinces.Add(keyedProvince);
				}

				_keyedProvinces = keyedProvinces;
			}
		}

		private static IEnumerable<Province.Keyed> PopulateKeyedProvinces(ICollection<Province.Plain> provinces)
		{
			if(provinces == null)
				return null;

			var keyedProvinces = new List<Province.Keyed>(provinces.Count);

			foreach(var province in provinces)
			{
				var keyedProvince = new Province.Keyed(province);

				if(province.Cities != null)
				{
					var keyedCities = new Dictionary<byte, City.Keyed>();

					foreach(var city in province.Cities)
					{
						var keyedCity = new City.Keyed(city);

						if(city.Districts != null)
						{
							var keyedDistricts = new Dictionary<byte, District.Keyed>();

							foreach(var district in city.Districts)
							{
								var keyedDistrict = new District.Keyed(district);

								if(district.Streets != null)
								{
									var keyedStreets = new Dictionary<byte, Street>();

									foreach(var street in district.Streets)
									{
										keyedStreets.Add(street.StreetId, street.Clone());
									}

									keyedDistrict.Streets = keyedStreets;
								}

								keyedDistricts.Add(district.DistrictId, keyedDistrict);
							}

							keyedCity.Districts = keyedDistricts;
						}

						keyedCities.Add(city.CityId, keyedCity);
					}

					keyedProvince.Cities = keyedCities;
				}

				keyedProvinces.Add(keyedProvince);
			}

			return keyedProvinces;
		}

		private static void SaveToFile()
		{
			var data = _plainProvinces;

			if(data == null)
				return;

			var filePath = GetAddressFilePath(AddressFormat.Plain);

			using(var fileStream = File.Open(filePath, FileMode.Create, FileAccess.Write))
			{
				using(var writer = new Utf8JsonWriter(fileStream))
				{
					JsonSerializer.Serialize(writer, data);
				}
			}
		}

		private static string GetAddressFilePath(AddressFormat format, string relativePath = null)
		{
			if(string.IsNullOrWhiteSpace(relativePath))
				relativePath = ApplicationContext.Current.ApplicationPath;
			else if(!Path.IsPathRooted(relativePath))
				relativePath = Path.Combine(ApplicationContext.Current.ApplicationPath, relativePath);

			return format == AddressFormat.Plain ?
				Path.Combine(relativePath, KEY_ADDRESSES) + ".json" :
				Path.Combine(relativePath, KEY_KEYED_ADDRESSES) + ".json";
		}

		private static byte[] Compress(object data)
		{
			if(data == null)
				return null;

			using(var ms = new MemoryStream(1020 * 32))
			{
				using(var cs = new GZipStream(ms, CompressionMode.Compress, true))
				{
					using(var writer = new Utf8JsonWriter(cs))
					{
						JsonSerializer.Serialize(writer, data);
					}
				}

				return ms.ToArray();
			}
		}
		#endregion
	}
}
