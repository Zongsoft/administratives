CREATE TABLE IF NOT EXISTS "Province"
(
    "ProvinceId" smallint    NOT NULL,
    "Name"       varchar(50) NOT NULL COLLATE "C.utf8",
    "Abbr"       varchar(50) NOT NULL COLLATE "C.utf8",
    "Alias"      char(1)     COLLATE "C.utf8",
    "Acronym"    varchar(50) COLLATE "C",
    PRIMARY KEY ("ProvinceId")
);

CREATE INDEX IF NOT EXISTS "IX_Province_Name" ON "Province" USING btree
  ("Name" ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS "IX_Province_Acronym" ON "Province" USING btree
  ("Acronym" ASC NULLS LAST);

COMMENT ON TABLE "Province" IS '省份表';
COMMENT ON COLUMN "Province"."ProvinceId" IS '主键，省份代码';
COMMENT ON COLUMN "Province"."Name"       IS '省份名称';
COMMENT ON COLUMN "Province"."Abbr"       IS '省份简称';
COMMENT ON COLUMN "Province"."Alias"      IS '省份代号';
COMMENT ON COLUMN "Province"."Acronym"    IS '名称缩写';

CREATE TABLE IF NOT EXISTS "City" (
  "ProvinceId" smallint         NOT NULL,
  "CityId"     smallint         NOT NULL,
  "Name"       varchar(50)      NOT NULL COLLATE "C.utf8",
  "Acronym"    varchar(50)      NULL     COLLATE "C",
  PRIMARY KEY ("ProvinceId", "CityId")
);

CREATE INDEX IF NOT EXISTS "IX_City_Name" ON "City" USING btree
  ("Name" ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS "IX_City_Acronym" ON "City" USING btree
  ("Acronym" ASC NULLS LAST);

COMMENT ON TABLE "City" IS '城市表';
COMMENT ON COLUMN "City"."ProvinceId" IS '主键，省份代码';
COMMENT ON COLUMN "City"."CityId"     IS '主键，城市代码';
COMMENT ON COLUMN "City"."Name"       IS '城市名称';
COMMENT ON COLUMN "City"."Acronym"    IS '名称缩写';

CREATE TABLE IF NOT EXISTS "District" (
  "ProvinceId" smallint         NOT NULL,
  "CityId"     smallint         NOT NULL,
  "DistrictId" smallint         NOT NULL,
  "Name"       varchar(50)      NOT NULL COLLATE "C.utf8",
  "Acronym"    varchar(50)      NULL     COLLATE "C",
  "PostalCode" char(6)          NULL     COLLATE "C",
  PRIMARY KEY ("ProvinceId", "CityId", "DistrictId")
);

CREATE INDEX IF NOT EXISTS "IX_District_Name" ON "District" USING btree
  ("Name" ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS "IX_District_Acronym" ON "District" USING btree
  ("Acronym" ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS "IX_District_PostalCode" ON "District" USING btree
  ("PostalCode" ASC NULLS LAST);

COMMENT ON TABLE "District" IS '区县表';
COMMENT ON COLUMN "District"."ProvinceId" IS '主键，省份代码';
COMMENT ON COLUMN "District"."CityId"     IS '主键，城市代码';
COMMENT ON COLUMN "District"."DistrictId" IS '主键，区县代码';
COMMENT ON COLUMN "District"."Name"       IS '区县名称';
COMMENT ON COLUMN "District"."Acronym"    IS '名称缩写';
COMMENT ON COLUMN "District"."PostalCode" IS '邮政编码';

CREATE TABLE IF NOT EXISTS "Street" (
  "ProvinceId" smallint         NOT NULL,
  "CityId"     smallint         NOT NULL,
  "DistrictId" smallint         NOT NULL,
  "StreetId"   smallint         NOT NULL,
  "Name"       varchar(50)      NOT NULL COLLATE "C.utf8",
  "Acronym"    varchar(50)      NULL     COLLATE "C",
  "PostalCode" char(6)          NULL     COLLATE "C",
  PRIMARY KEY ("ProvinceId", "CityId", "DistrictId", "StreetId")
);

CREATE INDEX IF NOT EXISTS "IX_Street_Name" ON "Street" USING btree
  ("Name" ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS "IX_Street_Acronym" ON "Street" USING btree
  ("Acronym" ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS "IX_Street_PostalCode" ON "Street" USING btree
  ("PostalCode" ASC NULLS LAST);

COMMENT ON TABLE "Street" IS '街道(乡镇)表';
COMMENT ON COLUMN "Street"."ProvinceId" IS '主键，省份代码';
COMMENT ON COLUMN "Street"."CityId"     IS '主键，城市代码';
COMMENT ON COLUMN "Street"."DistrictId" IS '主键，区县代码';
COMMENT ON COLUMN "Street"."StreetId"   IS '主键，街道代码';
COMMENT ON COLUMN "Street"."Name"       IS '街道名称';
COMMENT ON COLUMN "Street"."Acronym"    IS '名称缩写';
COMMENT ON COLUMN "Street"."PostalCode" IS '邮政编码';
