# 概述

该项目提供了中华人民共和国行政区划(**2015**)的数据，数据来源于 [中华人民共和国国家统计局](http://www.stats.gov.cn/tjsj/tjbz/tjyqhdmhcxhfdm/2015/index.html) 网站。

## 目录说明

- `src` 目录包含对行政区划解析与读取、缓存等相关源码；
- `database` 目录包含行政区划的表结构设计文档及所有SQL脚本文件；
- `database/data` 目录包含从国家机关采集的行政区划的原始数据文件。

## 文件说明

### 表结构设计

- [《Administratives-China-Tables.md》](./database/Administratives-China-Tables.md)表结构设计文档
- [《Administratives-China-Tables(MySql).sql》](./database/Administratives-China-Tables(mysql).sql)表结构构建SQL脚本 _(MySQL版本)_

### 数据脚本文件

- [《Administratives-China(Province-City-District).sql》](./database/Administratives-China(Province-City-District).sql)省(*州*)、市、区/县数据；
- [《Administratives-China(Street)-0.sql》](./database/Administratives-China(Street)-0.sql)直辖市(北京市、天津市、上海市、重庆市)的街道、乡镇数据；
- [《Administratives-China(Street)-1.sql》](./database/Administratives-China(Street)-1.sql)河北省(`13`)、山西省(`14`)、内蒙古自治区(`15`) 的街道、乡镇数据；
- [《Administratives-China(Street)-2.sql》](./database/Administratives-China(Street)-2.sql)辽宁省(`21`)、吉林省(`22`)、黑龙江省(`23`) 的街道、乡镇数据；
- [《Administratives-China(Street)-3.sql》](./database/Administratives-China(Street)-3.sql)江苏省(`32`)、浙江省(`33`)、安徽省(`34`) 的街道、乡镇数据；
- [《Administratives-China(Street)-4.sql》](./database/Administratives-China(Street)-4.sql)福建省(`35`)、江西省(`36`)、山东省(37) 的街道、乡镇数据；
- [《Administratives-China(Street)-5.sql》](./database/Administratives-China(Street)-5.sql)河南省(`41`)、湖北省(`42`)、湖南省(`43`) 的街道、乡镇数据；
- [《Administratives-China(Street)-6.sql》](./database/Administratives-China(Street)-6.sql)广东省(`44`)、广西省(`45`)、海南省(`46`) 的街道、乡镇数据；
- [《Administratives-China(Street)-7.sql》](./database/Administratives-China(Street)-7.sql)四川省(`51`)、贵州省(`52`)、云南省(`53`) 的街道、乡镇数据；
- [《Administratives-China(Street)-8.sql》](./database/Administratives-China(Street)-8.sql)陕西省(`61`)、甘肃省(`62`)、青海省(`63`) 的街道、乡镇数据；
- [《Administratives-China(Street)-9.sql》](./database/Administratives-China(Street)-9.sql)宁夏回族自治区(`64`)、新疆维吾尔自治区(`65`)、西藏自治区(`54`) 的街道、乡镇数据。

## 脚本运行

1. 运行 [《Administratives-China-Tables(MySql).sql》](./database/Administratives-China-Tables(mysql).sql) 脚本，创建行政区划的表结构；
2. 运行 [《Administratives-China(Province-City-District).sql》](./database/Administratives-China(Province-City-District).sql) 脚本，初始化 **_省(州)_**、**_市_**、**_区/县_** 数据。
3. 依次运行 《Administratives-China(Street)-`?`.sql》脚本以构建 **_街道_**、**_乡镇_** 相关数据。

## 版权说明

注意：本项目采用 [MIT 授权协议](https://github.com/Zongsoft/Administratives/blob/master/LICENSE)，请严格遵照授权协议，违者必究！
