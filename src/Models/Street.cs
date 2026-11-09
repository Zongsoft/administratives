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

		/// <summary>获取或设置街道(乡镇)名称缩写。</summary>
		public string Acronym { get; set; }

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
				Acronym = this.Acronym,
				PostalCode = this.PostalCode,
			};
		}
		#endregion
	}
}
