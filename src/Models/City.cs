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
	/// 表示行政区划中市级的实体类。
	/// </summary>
	public class City
	{
		#region 公共属性
		/// <summary>获取或设置所属的省(州)编号。</summary>
		public byte ProvinceId { get; set; }

		/// <summary>获取或设置城市编号。</summary>
		public byte CityId { get; set; }

		/// <summary>获取或设置城市名称。</summary>
		public string Name { get; set; }

		/// <summary>获取或设置城市名称的拼音。</summary>
		public string PinYin { get; set; }

		/// <summary>获取或设置城市全称。</summary>
		public string FullName { get; set; }
		#endregion

		/// <summary>
		/// 表示带下属区县字典的市级实体类。
		/// </summary>
		public class Keyed : City
		{
			#region 构造函数
			public Keyed()
			{
			}

			public Keyed(City city)
			{
				if(city != null)
				{
					this.ProvinceId = city.ProvinceId;
					this.CityId = city.CityId;
					this.Name = city.Name;
					this.PinYin = city.PinYin;
				}
			}
			#endregion

			/// <summary>获取或设置当前城市的下属区县集合。</summary>
			public IDictionary<byte, District.Keyed> Districts { get; set; }
		}

		/// <summary>
		/// 表示带下属区县列表的市级实体类。
		/// </summary>
		public class Plain : City
		{
			#region 构造函数
			public Plain()
			{
			}

			public Plain(City city)
			{
				if(city != null)
				{
					this.ProvinceId = city.ProvinceId;
					this.CityId = city.CityId;
					this.Name = city.Name;
					this.PinYin = city.PinYin;
				}
			}
			#endregion

			/// <summary>获取或设置当前城市的下属区县集合。</summary>
			public ICollection<District.Plain> Districts { get; set; }
		}
	}
}
