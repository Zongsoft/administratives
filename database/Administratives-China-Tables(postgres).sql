CREATE TABLE IF NOT EXISTS public."Province"
(
    "ProvinceId" smallint    NOT NULL,
    "Name"       varchar(50) NOT NULL COLLATE "C.utf8",
    "Abbr"       varchar(50) NOT NULL COLLATE "C.utf8",
    "Alias"      char(1)     COLLATE "C.utf8",
    "Acronym"    varchar(50) COLLATE "C",
    PRIMARY KEY ("ProvinceId")
);

CREATE INDEX IF NOT EXISTS "IX_Province_Name" ON public."Province" USING btree
  ("Name" ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS "IX_Province_Acronym" ON public."Province" USING btree
  ("Acronym" ASC NULLS LAST);

COMMENT ON TABLE public."Province" IS '省份表';
COMMENT ON COLUMN public."Province"."ProvinceId" IS '主键，省份代码';
COMMENT ON COLUMN public."Province"."Name"       IS '省份名称';
COMMENT ON COLUMN public."Province"."Abbr"       IS '省份简称';
COMMENT ON COLUMN public."Province"."Alias"      IS '省份代号';
COMMENT ON COLUMN public."Province"."Acronym"    IS '名称缩写';

CREATE TABLE IF NOT EXISTS "City" (
  "ProvinceId" smallint         NOT NULL,
  "CityId"     smallint         NOT NULL,
  "Name"       varchar(50)      NOT NULL COLLATE "C.utf8",
  "Acronym"    varchar(50)      NULL     COLLATE "C",
  PRIMARY KEY ("ProvinceId", "CityId")
);

CREATE INDEX IF NOT EXISTS "IX_City_Name" ON public."City" USING btree
  ("Name" ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS "IX_City_Acronym" ON public."City" USING btree
  ("Acronym" ASC NULLS LAST);

COMMENT ON TABLE public."City" IS '城市表';
COMMENT ON COLUMN public."City"."ProvinceId" IS '主键，省份代码';
COMMENT ON COLUMN public."City"."CityId"     IS '主键，城市代码';
COMMENT ON COLUMN public."City"."Name"       IS '城市名称';
COMMENT ON COLUMN public."City"."Acronym"    IS '名称缩写';

CREATE TABLE IF NOT EXISTS "District" (
  "ProvinceId" smallint         NOT NULL,
  "CityId"     smallint         NOT NULL,
  "DistrictId" smallint         NOT NULL,
  "Name"       varchar(50)      NOT NULL COLLATE "C.utf8",
  "Acronym"    varchar(50)      NULL     COLLATE "C",
  "PostalCode" char(6)          NULL     COLLATE "C",
  PRIMARY KEY ("ProvinceId", "CityId", "DistrictId")
);

CREATE INDEX IF NOT EXISTS "IX_District_Name" ON public."District" USING btree
  ("Name" ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS "IX_District_Acronym" ON public."District" USING btree
  ("Acronym" ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS "IX_District_PostalCode" ON public."District" USING btree
  ("PostalCode" ASC NULLS LAST);

COMMENT ON TABLE public."District" IS '区县表';
COMMENT ON COLUMN public."District"."ProvinceId" IS '主键，省份代码';
COMMENT ON COLUMN public."District"."CityId"     IS '主键，城市代码';
COMMENT ON COLUMN public."District"."DistrictId" IS '主键，区县代码';
COMMENT ON COLUMN public."District"."Name"       IS '区县名称';
COMMENT ON COLUMN public."District"."Acronym"    IS '名称缩写';
COMMENT ON COLUMN public."District"."PostalCode" IS '邮政编码';

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

CREATE INDEX IF NOT EXISTS "IX_Street_Name" ON public."Street" USING btree
  ("Name" ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS "IX_Street_Acronym" ON public."Street" USING btree
  ("Acronym" ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS "IX_Street_PostalCode" ON public."Street" USING btree
  ("PostalCode" ASC NULLS LAST);

COMMENT ON TABLE public."Street" IS '街道(乡镇)表';
COMMENT ON COLUMN public."Street"."ProvinceId" IS '主键，省份代码';
COMMENT ON COLUMN public."Street"."CityId"     IS '主键，城市代码';
COMMENT ON COLUMN public."Street"."DistrictId" IS '主键，区县代码';
COMMENT ON COLUMN public."Street"."StreetId"   IS '主键，街道代码';
COMMENT ON COLUMN public."Street"."Name"       IS '街道名称';
COMMENT ON COLUMN public."Street"."Acronym"    IS '名称缩写';
COMMENT ON COLUMN public."Street"."PostalCode" IS '邮政编码';
