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
 * Copyright (c) Zongsoft Studio. All rights reserved.
 *
 * Licensed under the MIT License (see LICENSE).
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
		#region 构造函数
		public City() { }
		public City(City city)
		{
			if(city != null)
			{
				this.ProvinceId = city.ProvinceId;
				this.CityId = city.CityId;
				this.Name = city.Name;
				this.Acronym = city.Acronym;
				this.FullName = city.FullName;
			}
		}
		#endregion

		#region 公共属性
		/// <summary>获取或设置所属的省(州)编号。</summary>
		public byte ProvinceId { get; set; }

		/// <summary>获取或设置城市编号。</summary>
		public byte CityId { get; set; }

		/// <summary>获取或设置城市名称。</summary>
		public string Name { get; set; }

		/// <summary>获取或设置城市名称缩写。</summary>
		public string Acronym { get; set; }

		/// <summary>获取或设置城市全称。</summary>
		public string FullName { get; set; }
		#endregion

		/// <summary>
		/// 表示带下属区县字典的市级实体类。
		/// </summary>
		public class Keyed : City
		{
			#region 构造函数
			public Keyed() { }
			public Keyed(City city)
			{
				if(city != null)
				{
					this.ProvinceId = city.ProvinceId;
					this.CityId = city.CityId;
					this.Name = city.Name;
					this.Acronym = city.Acronym;
					this.FullName = city.FullName;
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
			public Plain() { }
			public Plain(City city)
			{
				if(city != null)
				{
					this.ProvinceId = city.ProvinceId;
					this.CityId = city.CityId;
					this.Name = city.Name;
					this.Acronym = city.Acronym;
					this.FullName = city.FullName;
				}
			}
			#endregion

			/// <summary>获取或设置当前城市的下属区县集合。</summary>
			public ICollection<District.Plain> Districts { get; set; }
		}
	}
}
