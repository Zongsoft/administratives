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

using Microsoft.AspNetCore.Mvc;

namespace Zongsoft.Administratives.Web
{
	[ApiController]
	[Route("Addresses")]
	[Route("Administratives")]
	public class AddressController : ControllerBase
	{
		[HttpGet]
		public object Get([FromQuery]AddressFormat format = AddressFormat.Plain)
		{
			return Address.GetAddresses(format);
		}

		[HttpGet("{id}")]
		public IActionResult Get(uint id)
		{
			if(id == 0)
				return this.BadRequest();

			var result = Address.Get(id);

			return result == null ?
				(IActionResult)this.NotFound() :
				(IActionResult)this.Ok(result);
		}

		[HttpGet("{province:required}-{city:required}-{district}-{street}")]
		public object Get(byte province, byte city, byte district = 0, byte street = 0, [FromQuery]AddressFormat format = AddressFormat.Plain)
		{
			if(province == 0)
				return this.BadRequest();

			if(city == 0)
				return Address.Get(province, format);

			if(district == 0)
				return Address.Get(province, city, format);

			if(street == 0)
				return Address.Get(province, city, district, format);

			return Address.Get(province, city, district, street);
		}
	}
}
