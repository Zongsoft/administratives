CREATE TABLE IF NOT EXISTS "Province" (
	"ProvinceId" utinyint    NOT NULL,
	"Name"       varchar(50) NOT NULL CHECK (length("Name") <= 50),
	"Abbr"       varchar(50) NOT NULL CHECK (length("Abbr") <= 50),
	"Alias"      char(1)     NULL     CHECK ("Alias" IS NULL OR length("Alias") <= 1),
	"Acronym"    varchar(50) NULL     CHECK ("Acronym" IS NULL OR length("Acronym") <= 50),
	PRIMARY KEY ("ProvinceId")
);

CREATE INDEX IF NOT EXISTS "IX_Province_Name" ON "Province" ("Name" ASC);
CREATE INDEX IF NOT EXISTS "IX_Province_Acronym" ON "Province" ("Acronym" ASC);

COMMENT ON TABLE "Province" IS '省份表';
COMMENT ON COLUMN "Province"."ProvinceId" IS '主键，省份代码';
COMMENT ON COLUMN "Province"."Name"       IS '省份名称';
COMMENT ON COLUMN "Province"."Abbr"       IS '省份简称';
COMMENT ON COLUMN "Province"."Alias"      IS '省份代号';
COMMENT ON COLUMN "Province"."Acronym"    IS '名称缩写';

CREATE TABLE IF NOT EXISTS "City" (
	"ProvinceId" utinyint    NOT NULL,
	"CityId"     utinyint    NOT NULL,
	"Name"       varchar(50) NOT NULL CHECK (length("Name") <= 50),
	"Acronym"    varchar(50) NULL     CHECK ("Acronym" IS NULL OR length("Acronym") <= 50),
	PRIMARY KEY ("ProvinceId", "CityId")
);

CREATE INDEX IF NOT EXISTS "IX_City_Name" ON "City" ("Name" ASC);
CREATE INDEX IF NOT EXISTS "IX_City_Acronym" ON "City" ("Acronym" ASC);

COMMENT ON TABLE "City" IS '城市表';
COMMENT ON COLUMN "City"."ProvinceId" IS '主键，省份代码';
COMMENT ON COLUMN "City"."CityId"     IS '主键，城市代码';
COMMENT ON COLUMN "City"."Name"       IS '城市名称';
COMMENT ON COLUMN "City"."Acronym"    IS '名称缩写';

CREATE TABLE IF NOT EXISTS "District" (
	"ProvinceId" utinyint    NOT NULL,
	"CityId"     utinyint    NOT NULL,
	"DistrictId" utinyint    NOT NULL,
	"Name"       varchar(50) NOT NULL CHECK (length("Name") <= 50),
	"Acronym"    varchar(50) NULL     CHECK ("Acronym" IS NULL OR length("Acronym") <= 50),
	"PostalCode" char(6)     NULL     CHECK ("PostalCode" IS NULL OR length("PostalCode") <= 6),
	PRIMARY KEY ("ProvinceId", "CityId", "DistrictId")
);

CREATE INDEX IF NOT EXISTS "IX_District_Name" ON "District" ("Name" ASC);
CREATE INDEX IF NOT EXISTS "IX_District_Acronym" ON "District" ("Acronym" ASC);
CREATE INDEX IF NOT EXISTS "IX_District_PostalCode" ON "District" ("PostalCode" ASC);

COMMENT ON TABLE "District" IS '区县表';
COMMENT ON COLUMN "District"."ProvinceId" IS '主键，省份代码';
COMMENT ON COLUMN "District"."CityId"     IS '主键，城市代码';
COMMENT ON COLUMN "District"."DistrictId" IS '主键，区县代码';
COMMENT ON COLUMN "District"."Name"       IS '区县名称';
COMMENT ON COLUMN "District"."Acronym"    IS '名称缩写';
COMMENT ON COLUMN "District"."PostalCode" IS '邮政编码';

CREATE TABLE IF NOT EXISTS "Street" (
	"ProvinceId" utinyint    NOT NULL,
	"CityId"     utinyint    NOT NULL,
	"DistrictId" utinyint    NOT NULL,
	"StreetId"   utinyint    NOT NULL,
	"Name"       varchar(50) NOT NULL CHECK (length("Name") <= 50),
	"Acronym"    varchar(50) NULL     CHECK ("Acronym" IS NULL OR length("Acronym") <= 50),
	"PostalCode" char(6)     NULL     CHECK ("PostalCode" IS NULL OR length("PostalCode") <= 6),
	PRIMARY KEY ("ProvinceId", "CityId", "DistrictId", "StreetId")
);

CREATE INDEX IF NOT EXISTS "IX_Street_Name" ON "Street" ("Name" ASC);
CREATE INDEX IF NOT EXISTS "IX_Street_Acronym" ON "Street" ("Acronym" ASC);
CREATE INDEX IF NOT EXISTS "IX_Street_PostalCode" ON "Street" ("PostalCode" ASC);

COMMENT ON TABLE "Street" IS '街道(乡镇)表';
COMMENT ON COLUMN "Street"."ProvinceId" IS '主键，省份代码';
COMMENT ON COLUMN "Street"."CityId"     IS '主键，城市代码';
COMMENT ON COLUMN "Street"."DistrictId" IS '主键，区县代码';
COMMENT ON COLUMN "Street"."StreetId"   IS '主键，街道代码';
COMMENT ON COLUMN "Street"."Name"       IS '街道名称';
COMMENT ON COLUMN "Street"."Acronym"    IS '名称缩写';
COMMENT ON COLUMN "Street"."PostalCode" IS '邮政编码';
