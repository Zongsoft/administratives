SET NAMES utf8mb4;
SET TIME_ZONE='+08:00';

CREATE TABLE IF NOT EXISTS `Province` (
  `ProvinceId` tinyint unsigned NOT NULL COMMENT '主键，省份代码',
  `Name`       varchar(50)      NOT NULL COMMENT '省份名称' COLLATE 'utf8mb4_0900_ai_ci',
  `Abbr`       varchar(50)      NOT NULL COMMENT '省份简称' COLLATE 'utf8mb4_0900_ai_ci',
  `Alias`      char(1)          NULL     COMMENT '省份代号' COLLATE 'utf8mb4_0900_ai_ci',
  `Acronym`    varchar(50)      NULL     COMMENT '名称缩写' COLLATE 'ascii_general_ci',
  PRIMARY KEY (`ProvinceId`)
) ENGINE=InnoDB COMMENT='省份表';

CREATE TABLE IF NOT EXISTS `City` (
  `ProvinceId` tinyint unsigned NOT NULL COMMENT '主键，省份代码',
  `CityId`     tinyint unsigned NOT NULL COMMENT '主键，城市代码',
  `Name`       varchar(50)      NOT NULL COMMENT '城市名称' COLLATE 'utf8mb4_0900_ai_ci',
  `Acronym`    varchar(50)      NULL     COMMENT '名称缩写' COLLATE 'ascii_general_ci',
  PRIMARY KEY (`ProvinceId`,`CityId`)
) ENGINE=InnoDB COMMENT='城市表';

CREATE TABLE IF NOT EXISTS `District` (
  `ProvinceId` tinyint unsigned NOT NULL COMMENT '主键，省份代码',
  `CityId`     tinyint unsigned NOT NULL COMMENT '主键，城市代码',
  `DistrictId` tinyint unsigned NOT NULL COMMENT '主键，区县代码',
  `Name`       varchar(50)      NOT NULL COMMENT '区县名称' COLLATE 'utf8mb4_0900_ai_ci',
  `Acronym`    varchar(50)      NULL     COMMENT '名称缩写' COLLATE 'ascii_general_ci',
  `PostalCode` char(6)          NULL     COMMENT '邮政编码' COLLATE 'ascii_general_ci',
  PRIMARY KEY (`ProvinceId`,`CityId`,`DistrictId`)
) ENGINE=InnoDB COMMENT='区县表';

CREATE TABLE IF NOT EXISTS `Street` (
  `ProvinceId` tinyint unsigned NOT NULL COMMENT '主键，省份代码',
  `CityId`     tinyint unsigned NOT NULL COMMENT '主键，城市代码',
  `DistrictId` tinyint unsigned NOT NULL COMMENT '主键，区县代码',
  `StreetId`   tinyint unsigned NOT NULL COMMENT '主键，街道代码',
  `Name`       varchar(50)      NOT NULL COMMENT '街道名称' COLLATE 'utf8mb4_0900_ai_ci',
  `Acronym`    varchar(50)      NULL     COMMENT '名称缩写' COLLATE 'ascii_general_ci',
  `PostalCode` char(6)          NULL     COMMENT '邮政编码' COLLATE 'ascii_general_ci',
  PRIMARY KEY (`ProvinceId`,`CityId`,`DistrictId`,`StreetId`)
) ENGINE=InnoDB COMMENT='街道(乡镇)表';
