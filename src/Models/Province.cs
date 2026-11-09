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
	/// 表示行政区划中省(州)的实体类。
	/// </summary>
	public class Province
	{
		#region 构造函数
		public Province() { }
		public Province(Province province)
		{
			if(province != null)
			{
				this.ProvinceId = province.ProvinceId;
				this.Name = province.Name;
				this.Abbr = province.Abbr;
				this.Acronym = province.Acronym;
				this.Alias = province.Alias;
			}
		}
		#endregion

		#region 公共属性
		/// <summary>获取或设置省(州)编号。</summary>
		public byte ProvinceId { get; set; }

		/// <summary>获取或设置省(州)名称。</summary>
		public string Name { get; set; }

		/// <summary>获取或设置省(州)简称。</summary>
		public string Abbr { get; set; }

		/// <summary>获取或设置省(州)别名(代号名)。</summary>
		public char Alias { get; set; }

		/// <summary>获取或设置省(州)名称缩写。</summary>
		public string Acronym { get; set; }
		#endregion

		/// <summary>
		/// 表示带下属市级字典的省（州）的实体类。
		/// </summary>
		public class Keyed : Province
		{
			#region 构造函数
			public Keyed() { }
			public Keyed(Province province)
			{
				if(province != null)
				{
					this.ProvinceId = province.ProvinceId;
					this.Name = province.Name;
					this.Abbr = province.Abbr;
					this.Acronym = province.Acronym;
					this.Alias = province.Alias;
				}
			}
			#endregion

			/// <summary>获取或设置当前省(州)的下属市级城市集合。</summary>
			public IDictionary<byte, City.Keyed> Cities { get; set; }
		}

		/// <summary>
		/// 表示带下属市级列表的省（州）的实体类。
		/// </summary>
		public class Plain : Province
		{
			#region 构造函数
			public Plain() { }
			public Plain(Province province)
			{
				if(province != null)
				{
					this.ProvinceId = province.ProvinceId;
					this.Name = province.Name;
					this.Abbr = province.Abbr;
					this.Acronym = province.Acronym;
					this.Alias = province.Alias;
				}
			}
			#endregion

			/// <summary>获取或设置当前省(州)的下属市级城市集合。</summary>
			public City.Plain[] Cities { get; set; }
		}
	}
}
