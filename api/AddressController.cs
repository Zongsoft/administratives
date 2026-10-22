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
using System.Threading;
using System.Threading.Tasks;

using Microsoft.AspNetCore.Mvc;

namespace Zongsoft.Administratives.Web
{
	[ApiController]
	[Route("Addresses")]
	[Route("Administratives")]
	public class AddressController : ControllerBase
	{
		[HttpGet]
		public async ValueTask<object> Get([FromQuery]AddressFormat format = AddressFormat.Plain, CancellationToken cancellation = default)
		{
			return await Address.GetAddressesAsync(format, cancellation);
		}

		[HttpGet("{id}")]
		public async ValueTask<IActionResult> Get(uint id, CancellationToken cancellation = default)
		{
			if(id == 0)
				return this.BadRequest();

			var result = await Address.GetAsync(id, cancellation);
			return result == null ? this.NotFound() : this.Ok(result);
		}

		[HttpGet("{province:required}-{city:required}-{district}-{street}")]
		public async ValueTask<object> Get(byte province, byte city, byte district = 0, byte street = 0, [FromQuery]AddressFormat format = AddressFormat.Plain, CancellationToken cancellation = default)
		{
			if(province == 0)
				return this.BadRequest();

			if(city == 0)
				return await Address.GetAsync(province, format, cancellation);

			if(district == 0)
				return await Address.GetAsync(province, city, format, cancellation);

			if(street == 0)
				return await Address.GetAsync(province, city, district, format, cancellation);

			return await Address.GetAsync(province, city, district, street, cancellation);
		}

		[HttpGet("[action]")]
		[ActionName("Provinces")]
		public async ValueTask<IActionResult> GetProvinces(CancellationToken cancellation = default)
		{
			var provinces = await Address.GetProvincesAsync(cancellation);
			return provinces == null || provinces.Length == 0 ? this.NoContent() : this.Ok(provinces);
		}

		[ActionName("Cities")]
		[HttpGet("{province}/[action]")]
		[HttpGet("[action]/{province}")]
		public async ValueTask<IActionResult> GetCities(byte province, CancellationToken cancellation = default)
		{
			if(province == 0)
				return this.BadRequest();

			var cities = await Address.GetCitiesAsync(province, cancellation);
			return cities == null ? this.NoContent() : this.Ok(cities);
		}

		[ActionName("Districts")]
		[HttpGet("{province}-{city}/[action]")]
		[HttpGet("[action]/{province}-{city}")]
		public async ValueTask<IActionResult> GetDistricts(byte province, byte city, CancellationToken cancellation = default)
		{
			if(province == 0)
				return this.BadRequest();

			var districts = await Address.GetDistrictsAsync(province, city, cancellation);
			return districts == null ? this.NoContent() : this.Ok(districts);
		}

		[ActionName("Streets")]
		[HttpGet("{province}-{city}-{district}/[action]")]
		[HttpGet("[action]/{province}-{city}-{district}")]
		public async ValueTask<IActionResult> GetStreets(byte province, byte city, byte district, CancellationToken cancellation = default)
		{
			if(province == 0)
				return this.BadRequest();

			var streets = await Address.GetStreetsAsync(province, city, district, cancellation);
			return streets == null ? this.NoContent() : this.Ok(streets);
		}
	}
}
