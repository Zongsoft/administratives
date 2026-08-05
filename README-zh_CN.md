# 中华人民共和国行政区划·数据集

![License](https://img.shields.io/github/license/Zongsoft/administratives)
![NuGet Version](https://img.shields.io/nuget/v/Zongsoft.Administratives)
![NuGet Downloads](https://img.shields.io/nuget/dt/Zongsoft.Administratives)
![GitHub Stars](https://img.shields.io/github/stars/Zongsoft/administratives?style=social)

[English](README.md) |
[简体中文](README-zh_CN.md)

-----

## 概述

该项目提供了 _中华人民共和国行政区划(**2015**)_ 的数据，数据来源于 [中华人民共和国国家统计局](http://www.stats.gov.cn/tjsj/tjbz/tjyqhdmhcxhfdm/2015/index.html) 网站。

## 目录说明

- [`src`](./src) 目录包含对行政区划解析与读取、缓存等相关源码。
- [`database`](./database) 目录包含行政区划的表结构设计文档及所有 _SQL_ 脚本文件。

### 2015 数据

- [`database/2015`](./database/2015) 目录包含适用于 _**M**y**SQL**_、_**SQL**ite_ 和 _**D**uck**DB**_ 的通用数据脚本。
- [`database/2015/.raw`](./database/2015/.raw) 目录包含从国家机关采集的行政区划的原始数据文件。
- [`database/2015/mssql`](./database/2015/mssql) 目录包含 _**M**icrosoft **SQL** **S**erver_ 专用数据脚本。
- [`database/2015/postgres`](./database/2015/postgres) 目录包含 _**P**ostgre**SQL**_ 专用数据脚本。

## 文件说明

### 表结构设计

- [《Administratives-China-Tables.md》](./database/Administratives-China-Tables.md)表结构设计文档
- [《Administratives-China-Tables(mysql).sql》](./database/Administratives-China-Tables(mysql).sql)表结构构建脚本 _(**M**y**SQL**版本)_
- [《Administratives-China-Tables(mssql).sql》](./database/Administratives-China-Tables(mssql).sql)表结构构建脚本 _(**M**icrosoft **SQL** **S**erver版本)_
- [《Administratives-China-Tables(postgres).sql》](./database/Administratives-China-Tables(postgres).sql)表结构构建脚本 _(**P**ostgre**SQL**版本)_
- [《Administratives-China-Tables(sqlite).sql》](./database/Administratives-China-Tables(sqlite).sql)表结构构建脚本 _(**SQL**ite版本)_
- [《Administratives-China-Tables(duckdb).sql》](./database/Administratives-China-Tables(duckdb).sql)表结构构建脚本 _(**D**uck**DB**版本)_

### 数据脚本文件

各数据库版本的数据脚本文件名一致，请根据数据库选择对应目录：

- _**M**y**SQL**_、_**SQL**ite_ 和 _**D**uck**DB**_：[`database/2015`](./database/2015)
- _**M**icrosoft **SQL** **S**erver_：[`database/2015/mssql`](./database/2015/mssql)，其中的脚本使用 _Unicode_ 字符串常量以确保中文内容无损保存
- _**P**ostgre**SQL**_：[`database/2015/postgres`](./database/2015/postgres)，其中的脚本使用带引号的标识符以保留表名和字段名的大小写

- [《Administratives-China(Province-City-District).sql》](./database/2015/Administratives-China(Province-City-District).sql)省(*州*)、市、区/县数据；
- [《Administratives-China(Street)-0.sql》](./database/2015/Administratives-China(Street)-0.sql)直辖市(北京市、天津市、上海市、重庆市)的街道、乡镇数据；
- [《Administratives-China(Street)-1.sql》](./database/2015/Administratives-China(Street)-1.sql)河北省(`13`)、山西省(`14`)、内蒙古自治区(`15`) 的街道、乡镇数据；
- [《Administratives-China(Street)-2.sql》](./database/2015/Administratives-China(Street)-2.sql)辽宁省(`21`)、吉林省(`22`)、黑龙江省(`23`) 的街道、乡镇数据；
- [《Administratives-China(Street)-3.sql》](./database/2015/Administratives-China(Street)-3.sql)江苏省(`32`)、浙江省(`33`)、安徽省(`34`) 的街道、乡镇数据；
- [《Administratives-China(Street)-4.sql》](./database/2015/Administratives-China(Street)-4.sql)福建省(`35`)、江西省(`36`)、山东省(37) 的街道、乡镇数据；
- [《Administratives-China(Street)-5.sql》](./database/2015/Administratives-China(Street)-5.sql)河南省(`41`)、湖北省(`42`)、湖南省(`43`) 的街道、乡镇数据；
- [《Administratives-China(Street)-6.sql》](./database/2015/Administratives-China(Street)-6.sql)广东省(`44`)、广西省(`45`)、海南省(`46`) 的街道、乡镇数据；
- [《Administratives-China(Street)-7.sql》](./database/2015/Administratives-China(Street)-7.sql)四川省(`51`)、贵州省(`52`)、云南省(`53`) 的街道、乡镇数据；
- [《Administratives-China(Street)-8.sql》](./database/2015/Administratives-China(Street)-8.sql)陕西省(`61`)、甘肃省(`62`)、青海省(`63`) 的街道、乡镇数据；
- [《Administratives-China(Street)-9.sql》](./database/2015/Administratives-China(Street)-9.sql)宁夏回族自治区(`64`)、新疆维吾尔自治区(`65`)、西藏自治区(`54`) 的街道、乡镇数据。

## 脚本运行

1. 运行建表脚本，创建行政区划的表结构：
	> * _**M**y**SQL**_ [《Administratives-China-Tables(mysql).sql》](./database/Administratives-China-Tables(mysql).sql)
	> * _**M**icrosoft **SQL** **S**erver_ [《Administratives-China-Tables(mssql).sql》](./database/Administratives-China-Tables(mssql).sql)
	> * _**P**ostgre**SQL**_ [《Administratives-China-Tables(postgres).sql》](./database/Administratives-China-Tables(postgres).sql)
	> * _**SQL**ite_ [《Administratives-China-Tables(sqlite).sql》](./database/Administratives-China-Tables(sqlite).sql)
	> * _**D**uck**DB**_ [《Administratives-China-Tables(duckdb).sql》](./database/Administratives-China-Tables(duckdb).sql)
2. 根据数据库选择相应年份的数据脚本目录：
	> * _**M**y**SQL**_、_**SQL**ite_ 或 _**D**uck**DB**_：[`database/2015`](./database/2015)
	> * _**M**icrosoft **SQL** **S**erver_：[`database/2015/mssql`](./database/2015/mssql)
	> * _**P**ostgre**SQL**_：[`database/2015/postgres`](./database/2015/postgres)
3. 运行所选目录中的 `Administratives-China(Province-City-District).sql` 脚本，初始化 **_省(州)_**、**_市_**、**_区/县_** 数据。
4. 依次运行同一目录中的 `Administratives-China(Street)-?.sql` 脚本以构建 **_街道_**、**_乡镇_** 相关数据。

## 版权说明

注意：本项目采用 [MIT 授权协议](https://github.com/Zongsoft/administratives/blob/main/LICENSE)，请严格遵照授权协议，违者必究！
