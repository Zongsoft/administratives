
CREATE TABLE IF NOT EXISTS `Province` (
  `ProvinceId` tinyint(3) unsigned NOT NULL COMMENT '主键，省份代码',
  `Name` nvarchar(50) NOT NULL COMMENT '省份名称',
  `Abbr` nvarchar(50) NOT NULL COMMENT '省份简称',
  `PinYin` varchar(200) DEFAULT NULL COMMENT '名称拼音',
  `Alias` nchar(1) NOT NULL COMMENT '别名(省份代号名)',
  PRIMARY KEY (`ProvinceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='省份表';

CREATE TABLE IF NOT EXISTS `City` (
  `ProvinceId` tinyint(3) unsigned NOT NULL COMMENT '主键，省份代码',
  `CityId` tinyint(3) unsigned NOT NULL COMMENT '主键，城市代码',
  `Name` nvarchar(50) NOT NULL COMMENT '城市名称',
  `PinYin` varchar(200) DEFAULT NULL COMMENT '名称拼音',
  PRIMARY KEY (`ProvinceId`,`CityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='城市表';

CREATE TABLE IF NOT EXISTS `District` (
  `ProvinceId` tinyint(3) unsigned NOT NULL COMMENT '主键，省份代码',
  `CityId` tinyint(3) unsigned NOT NULL COMMENT '主键，城市代码',
  `DistrictId` tinyint(3) unsigned NOT NULL COMMENT '主键，区县代码',
  `Name` nvarchar(50) NOT NULL COMMENT '区县名称',
  `PinYin` varchar(200) DEFAULT NULL COMMENT '名称拼音',
  `PostalCode` char(6) DEFAULT NULL COMMENT '邮政编码',
  PRIMARY KEY (`ProvinceId`,`CityId`,`DistrictId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='区县表';

CREATE TABLE IF NOT EXISTS `Street` (
  `ProvinceId` tinyint(3) unsigned NOT NULL COMMENT '主键，省份代码',
  `CityId` tinyint(3) unsigned NOT NULL COMMENT '主键，城市代码',
  `DistrictId` tinyint(3) unsigned NOT NULL COMMENT '主键，区县代码',
  `StreetId` tinyint(3) unsigned NOT NULL COMMENT '主键，街道代码',
  `Name` nvarchar(50) NOT NULL COMMENT '街道名称',
  `PinYin` varchar(200) DEFAULT NULL COMMENT '名称拼音',
  `PostalCode` char(6) DEFAULT NULL COMMENT '邮政编码',
  PRIMARY KEY (`ProvinceId`,`CityId`,`DistrictId`,`StreetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='街道(乡镇)表';
