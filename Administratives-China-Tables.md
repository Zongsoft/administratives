# 中华人民共和国行政区划表结构

## 省份表 `Province`

字段名称 | 数据类型 | 长度 | 可空 | 备注
------- |:-------:|:---:|:---:| ----
ProvinceId  | byte      | 1     | ✗ | 主键，省份代码
Name        | nvarchar  | 50    | ✗ | 省份名称
Abbr        | nvarchar  | 50    | ✗ | 省份简称
PinYin      | varchar   | 200   | ✓ | 名称拼音
Alias       | nchar     | 1     | ✗ | 别名(省份代号名)


## 城市表 `City`

字段名称 | 数据类型 | 长度 | 可空 | 备注
------- |:-------:|:---:|:---:| ----
ProvinceId  | byte      | 1     | ✗ | 主键，省份代码
CityId      | byte      | 1     | ✗ | 主键，城市代码
Name        | nvarchar  | 50    | ✗ | 城市名称
PinYin      | varchar   | 200   | ✓ | 名称拼音


## 区县表 `District`

字段名称 | 数据类型 | 长度 | 可空 | 备注
------- |:-------:|:---:|:---:| ----
ProvinceId  | byte      | 1     | ✗ | 主键，省份代码
CityId      | byte      | 1     | ✗ | 主键，城市代码
DistrictId  | byte      | 1     | ✗ | 主键，区县代码
Name        | nvarchar  | 50    | ✗ | 区县名称
PinYin      | varchar   | 200   | ✓ | 名称拼音
PostalCode  | char      | 6     | ✓ | 邮政编码


## 街道(乡镇)表 `Street`

字段名称 | 数据类型 | 长度 | 可空 | 备注
------- |:-------:|:---:|:---:| ----
ProvinceId  | byte      | 1     | ✗ | 主键，省份代码
CityId      | byte      | 1     | ✗ | 主键，城市代码
DistrictId  | byte      | 1     | ✗ | 主键，区县代码
StreetId    | byte      | 1     | ✗ | 主键，街道代码
Name        | nvarchar  | 50    | ✗ | 街道名称
PinYin      | varchar   | 200   | ✓ | 名称拼音
PostalCode  | char      | 6     | ✓ | 邮政编码
