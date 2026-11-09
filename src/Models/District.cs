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
	/// 表示行政区划中区县的实体类。
	/// </summary>
	public class District
	{
		#region 构造函数
		public District() { }
		public District(District district)
		{
			if(district != null)
			{
				this.ProvinceId = district.ProvinceId;
				this.CityId = district.CityId;
				this.DistrictId = district.DistrictId;
				this.Name = district.Name;
				this.Acronym = district.Acronym;
				this.FullName = district.FullName;
				this.PostalCode = district.PostalCode;
			}
		}
		#endregion

		#region 公共属性
		/// <summary>获取或设置所属的省(州)编号。</summary>
		public byte ProvinceId { get; set; }

		/// <summary>获取或设置所属的城市编号。</summary>
		public byte CityId { get; set; }

		/// <summary>获取或设置区县编号。</summary>
		public byte DistrictId { get; set; }

		/// <summary>获取或设置区县名称。</summary>
		public string Name { get; set; }

		/// <summary>获取或设置区县名称缩写。</summary>
		public string Acronym { get; set; }

		/// <summary>获取或设置区县全称。</summary>
		public string FullName { get; set; }

		/// <summary>获取或设置区县的邮政编码。</summary>
		public string PostalCode { get; set; }
		#endregion

		/// <summary>
		/// 表示带下属乡镇（街道）字典的区县实体类。
		/// </summary>
		public class Keyed : District
		{
			#region 构造函数
			public Keyed() { }
			public Keyed(District district)
			{
				if(district != null)
				{
					this.ProvinceId = district.ProvinceId;
					this.CityId = district.CityId;
					this.DistrictId = district.DistrictId;
					this.Name = district.Name;
					this.Acronym = district.Acronym;
					this.FullName = district.FullName;
					this.PostalCode = district.PostalCode;
				}
			}
			#endregion

			/// <summary>获取或设置当前区县的下属街道(乡镇)集合。</summary>
			public IDictionary<byte, Street> Streets { get; set; }
		}

		/// <summary>
		/// 表示带下属乡镇（街道）列表的区县实体类。
		/// </summary>
		public class Plain : District
		{
			#region 构造函数
			public Plain() { }
			public Plain(District district)
			{
				if(district != null)
				{
					this.ProvinceId = district.ProvinceId;
					this.CityId = district.CityId;
					this.DistrictId = district.DistrictId;
					this.Name = district.Name;
					this.Acronym = district.Acronym;
					this.FullName = district.FullName;
					this.PostalCode = district.PostalCode;
				}
			}
			#endregion

			/// <summary>获取或设置当前区县的下属街道(乡镇)集合。</summary>
			public ICollection<Street> Streets { get; set; }
		}
	}
}
