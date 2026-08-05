PRAGMA encoding = 'UTF-8';

-- 省份表
CREATE TABLE IF NOT EXISTS "Province" (
	"ProvinceId" INTEGER     NOT NULL CHECK ("ProvinceId" BETWEEN 0 AND 255),
	"Name"       varchar(50) NOT NULL CHECK (length("Name") <= 50),
	"Abbr"       varchar(50) NOT NULL CHECK (length("Abbr") <= 50),
	"Alias"      char(1)     NULL     CHECK ("Alias" IS NULL OR length("Alias") <= 1),
	"Acronym"    varchar(50) NULL     CHECK ("Acronym" IS NULL OR length("Acronym") <= 50),
	PRIMARY KEY ("ProvinceId")
);

CREATE INDEX IF NOT EXISTS "IX_Province_Name" ON "Province" ("Name" ASC);
CREATE INDEX IF NOT EXISTS "IX_Province_Acronym" ON "Province" ("Acronym" ASC);

-- 城市表
CREATE TABLE IF NOT EXISTS "City" (
	"ProvinceId" INTEGER     NOT NULL CHECK ("ProvinceId" BETWEEN 0 AND 255),
	"CityId"     INTEGER     NOT NULL CHECK ("CityId" BETWEEN 0 AND 255),
	"Name"       varchar(50) NOT NULL CHECK (length("Name") <= 50),
	"Acronym"    varchar(50) NULL     CHECK ("Acronym" IS NULL OR length("Acronym") <= 50),
	PRIMARY KEY ("ProvinceId", "CityId")
);

CREATE INDEX IF NOT EXISTS "IX_City_Name" ON "City" ("Name" ASC);
CREATE INDEX IF NOT EXISTS "IX_City_Acronym" ON "City" ("Acronym" ASC);

-- 区县表
CREATE TABLE IF NOT EXISTS "District" (
	"ProvinceId" INTEGER     NOT NULL CHECK ("ProvinceId" BETWEEN 0 AND 255),
	"CityId"     INTEGER     NOT NULL CHECK ("CityId" BETWEEN 0 AND 255),
	"DistrictId" INTEGER     NOT NULL CHECK ("DistrictId" BETWEEN 0 AND 255),
	"Name"       varchar(50) NOT NULL CHECK (length("Name") <= 50),
	"Acronym"    varchar(50) NULL     CHECK ("Acronym" IS NULL OR length("Acronym") <= 50),
	"PostalCode" char(6)     NULL     CHECK ("PostalCode" IS NULL OR length("PostalCode") <= 6),
	PRIMARY KEY ("ProvinceId", "CityId", "DistrictId")
);

CREATE INDEX IF NOT EXISTS "IX_District_Name" ON "District" ("Name" ASC);
CREATE INDEX IF NOT EXISTS "IX_District_Acronym" ON "District" ("Acronym" ASC);
CREATE INDEX IF NOT EXISTS "IX_District_PostalCode" ON "District" ("PostalCode" ASC);

-- 街道(乡镇)表
CREATE TABLE IF NOT EXISTS "Street" (
	"ProvinceId" INTEGER     NOT NULL CHECK ("ProvinceId" BETWEEN 0 AND 255),
	"CityId"     INTEGER     NOT NULL CHECK ("CityId" BETWEEN 0 AND 255),
	"DistrictId" INTEGER     NOT NULL CHECK ("DistrictId" BETWEEN 0 AND 255),
	"StreetId"   INTEGER     NOT NULL CHECK ("StreetId" BETWEEN 0 AND 255),
	"Name"       varchar(50) NOT NULL CHECK (length("Name") <= 50),
	"Acronym"    varchar(50) NULL     CHECK ("Acronym" IS NULL OR length("Acronym") <= 50),
	"PostalCode" char(6)     NULL     CHECK ("PostalCode" IS NULL OR length("PostalCode") <= 6),
	PRIMARY KEY ("ProvinceId", "CityId", "DistrictId", "StreetId")
);

CREATE INDEX IF NOT EXISTS "IX_Street_Name" ON "Street" ("Name" ASC);
CREATE INDEX IF NOT EXISTS "IX_Street_Acronym" ON "Street" ("Acronym" ASC);
CREATE INDEX IF NOT EXISTS "IX_Street_PostalCode" ON "Street" ("PostalCode" ASC);
