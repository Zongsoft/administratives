SET NOCOUNT ON;
SET XACT_ABORT ON;

IF OBJECT_ID(N'dbo.Province', N'U') IS NULL
BEGIN
	CREATE TABLE [dbo].[Province] (
		[ProvinceId] tinyint      NOT NULL,
		[Name]       nvarchar(50) NOT NULL,
		[Abbr]       nvarchar(50) NOT NULL,
		[Alias]      nchar(1)     NULL,
		[Acronym]    varchar(50)  NULL,
		CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED ([ProvinceId] ASC)
	);

	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份表',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Province';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，省份代码',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Province', @level2type=N'COLUMN', @level2name=N'ProvinceId';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份名称',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Province', @level2type=N'COLUMN', @level2name=N'Name';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份简称',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Province', @level2type=N'COLUMN', @level2name=N'Abbr';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份代号',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Province', @level2type=N'COLUMN', @level2name=N'Alias';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称缩写',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Province', @level2type=N'COLUMN', @level2name=N'Acronym';
END;

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE [object_id] = OBJECT_ID(N'dbo.Province') AND [name] = N'IX_Province_Name')
	CREATE NONCLUSTERED INDEX [IX_Province_Name] ON [dbo].[Province] ([Name] ASC);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE [object_id] = OBJECT_ID(N'dbo.Province') AND [name] = N'IX_Province_Acronym')
	CREATE NONCLUSTERED INDEX [IX_Province_Acronym] ON [dbo].[Province] ([Acronym] ASC);

IF OBJECT_ID(N'dbo.City', N'U') IS NULL
BEGIN
	CREATE TABLE [dbo].[City] (
		[ProvinceId] tinyint      NOT NULL,
		[CityId]     tinyint      NOT NULL,
		[Name]       nvarchar(50) NOT NULL,
		[Acronym]    varchar(50)  NULL,
		CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED ([ProvinceId] ASC, [CityId] ASC)
	);

	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市表',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'City';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，省份代码',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'City', @level2type=N'COLUMN', @level2name=N'ProvinceId';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，城市代码',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'City', @level2type=N'COLUMN', @level2name=N'CityId';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市名称',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'City', @level2type=N'COLUMN', @level2name=N'Name';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称缩写',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'City', @level2type=N'COLUMN', @level2name=N'Acronym';
END;

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE [object_id] = OBJECT_ID(N'dbo.City') AND [name] = N'IX_City_Name')
	CREATE NONCLUSTERED INDEX [IX_City_Name] ON [dbo].[City] ([Name] ASC);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE [object_id] = OBJECT_ID(N'dbo.City') AND [name] = N'IX_City_Acronym')
	CREATE NONCLUSTERED INDEX [IX_City_Acronym] ON [dbo].[City] ([Acronym] ASC);

IF OBJECT_ID(N'dbo.District', N'U') IS NULL
BEGIN
	CREATE TABLE [dbo].[District] (
		[ProvinceId] tinyint      NOT NULL,
		[CityId]     tinyint      NOT NULL,
		[DistrictId] tinyint      NOT NULL,
		[Name]       nvarchar(50) NOT NULL,
		[Acronym]    varchar(50)  NULL,
		[PostalCode] char(6)      NULL,
		CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED ([ProvinceId] ASC, [CityId] ASC, [DistrictId] ASC)
	);

	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区县表',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'District';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，省份代码',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'District', @level2type=N'COLUMN', @level2name=N'ProvinceId';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，城市代码',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'District', @level2type=N'COLUMN', @level2name=N'CityId';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，区县代码',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'District', @level2type=N'COLUMN', @level2name=N'DistrictId';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区县名称',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'District', @level2type=N'COLUMN', @level2name=N'Name';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称缩写',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'District', @level2type=N'COLUMN', @level2name=N'Acronym';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'District', @level2type=N'COLUMN', @level2name=N'PostalCode';
END;

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE [object_id] = OBJECT_ID(N'dbo.District') AND [name] = N'IX_District_Name')
	CREATE NONCLUSTERED INDEX [IX_District_Name] ON [dbo].[District] ([Name] ASC);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE [object_id] = OBJECT_ID(N'dbo.District') AND [name] = N'IX_District_Acronym')
	CREATE NONCLUSTERED INDEX [IX_District_Acronym] ON [dbo].[District] ([Acronym] ASC);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE [object_id] = OBJECT_ID(N'dbo.District') AND [name] = N'IX_District_PostalCode')
	CREATE NONCLUSTERED INDEX [IX_District_PostalCode] ON [dbo].[District] ([PostalCode] ASC);

IF OBJECT_ID(N'dbo.Street', N'U') IS NULL
BEGIN
	CREATE TABLE [dbo].[Street] (
		[ProvinceId] tinyint      NOT NULL,
		[CityId]     tinyint      NOT NULL,
		[DistrictId] tinyint      NOT NULL,
		[StreetId]   tinyint      NOT NULL,
		[Name]       nvarchar(50) NOT NULL,
		[Acronym]    varchar(50)  NULL,
		[PostalCode] char(6)      NULL,
		CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED ([ProvinceId] ASC, [CityId] ASC, [DistrictId] ASC, [StreetId] ASC)
	);

	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'街道(乡镇)表',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Street';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，省份代码',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Street', @level2type=N'COLUMN', @level2name=N'ProvinceId';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，城市代码',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Street', @level2type=N'COLUMN', @level2name=N'CityId';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，区县代码',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Street', @level2type=N'COLUMN', @level2name=N'DistrictId';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键，街道代码',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Street', @level2type=N'COLUMN', @level2name=N'StreetId';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'街道名称',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Street', @level2type=N'COLUMN', @level2name=N'Name';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称缩写',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Street', @level2type=N'COLUMN', @level2name=N'Acronym';
	EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码',
		@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Street', @level2type=N'COLUMN', @level2name=N'PostalCode';
END;

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE [object_id] = OBJECT_ID(N'dbo.Street') AND [name] = N'IX_Street_Name')
	CREATE NONCLUSTERED INDEX [IX_Street_Name] ON [dbo].[Street] ([Name] ASC);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE [object_id] = OBJECT_ID(N'dbo.Street') AND [name] = N'IX_Street_Acronym')
	CREATE NONCLUSTERED INDEX [IX_Street_Acronym] ON [dbo].[Street] ([Acronym] ASC);
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE [object_id] = OBJECT_ID(N'dbo.Street') AND [name] = N'IX_Street_PostalCode')
	CREATE NONCLUSTERED INDEX [IX_Street_PostalCode] ON [dbo].[Street] ([PostalCode] ASC);
