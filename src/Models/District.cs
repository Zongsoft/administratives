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
	/// 表示行政区划中区县的实体类。
	/// </summary>
	public class District
	{
		#region 公共属性
		/// <summary>
		/// 获取或设置所属的省(州)编号。
		/// </summary>
		public byte ProvinceId { get; set; }

		/// <summary>
		/// 获取或设置所属的城市编号。
		/// </summary>
		public byte CityId { get; set; }

		/// <summary>
		/// 获取或设置区县编号。
		/// </summary>
		public byte DistrictId { get; set; }

		/// <summary>
		/// 获取或设置区县名称。
		/// </summary>
		public string Name { get; set; }

		/// <summary>
		/// 获取或设置区县名称的拼音。
		/// </summary>
		public string PinYin { get; set; }

		/// <summary>
		/// 获取或设置区县的邮政编码。
		/// </summary>
		public string PostalCode { get; set; }
		#endregion

		/// <summary>
		/// 表示带下属乡镇（街道）字典的区县实体类。
		/// </summary>
		public class Keyed : District
		{
			#region 构造函数
			public Keyed()
			{
			}

			public Keyed(District district)
			{
				if(district != null)
				{
					this.ProvinceId = district.ProvinceId;
					this.CityId = district.CityId;
					this.DistrictId = district.DistrictId;
					this.Name = district.Name;
					this.PinYin = district.PinYin;
					this.PostalCode = district.PostalCode;
				}
			}
			#endregion

			/// <summary>
			/// 获取或设置当前区县的下属街道(乡镇)集合。
			/// </summary>
			public IDictionary<byte, Street> Streets { get; set; }
		}

		/// <summary>
		/// 表示带下属乡镇（街道）列表的区县实体类。
		/// </summary>
		public class Plain : District
		{
			#region 构造函数
			public Plain()
			{
			}

			public Plain(District district)
			{
				if(district != null)
				{
					this.ProvinceId = district.ProvinceId;
					this.CityId = district.CityId;
					this.DistrictId = district.DistrictId;
					this.Name = district.Name;
					this.PinYin = district.PinYin;
					this.PostalCode = district.PostalCode;
				}
			}
			#endregion

			/// <summary>
			/// 获取或设置当前区县的下属街道(乡镇)集合。
			/// </summary>
			public ICollection<Street> Streets { get; set; }
		}
	}
}
