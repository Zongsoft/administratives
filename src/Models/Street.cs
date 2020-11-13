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
using System.Collections.Generic;

namespace Zongsoft.Administratives.Models
{
	/// <summary>
	/// 表示行政区划中街道(乡镇)的实体类。
	/// </summary>
	public class Street
	{
		#region 公共属性
		/// <summary>获取或设置所属的省(州)编号。</summary>
		public byte ProvinceId { get; set; }

		/// <summary>获取或设置所属的城市编号。</summary>
		public byte CityId { get; set; }

		/// <summary>获取或设置区县编号。</summary>
		public byte DistrictId { get; set; }

		/// <summary>获取或设置街道(乡镇)编号。</summary>
		public byte StreetId { get; set; }

		/// <summary>获取或设置街道(乡镇)名称。</summary>
		public string Name { get; set; }

		/// <summary>获取或设置街道(乡镇)名称的拼音。</summary>
		public string PinYin { get; set; }

		/// <summary>获取或设置街道(乡镇)全称。</summary>
		public string FullName { get; set; }

		/// <summary>获取或设置街道(乡镇)的邮政编码。</summary>
		public string PostalCode { get; set; }
		#endregion

		#region 公共方法
		public Street Clone()
		{
			return new Street
			{
				ProvinceId = this.ProvinceId,
				CityId = this.CityId,
				DistrictId = this.DistrictId,
				StreetId = this.StreetId,
				Name = this.Name,
				PinYin = this.PinYin,
				PostalCode = this.PostalCode,
			};
		}
		#endregion
	}
}
