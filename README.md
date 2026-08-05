# Administrative Divisions of the People's Republic of China · Dataset

![License](https://img.shields.io/github/license/Zongsoft/administratives)
![NuGet Version](https://img.shields.io/nuget/v/Zongsoft.Administratives)
![NuGet Downloads](https://img.shields.io/nuget/dt/Zongsoft.Administratives)
![GitHub Stars](https://img.shields.io/github/stars/Zongsoft/administratives?style=social)

[English](README.md) |
[简体中文](README-zh_CN.md)

-----

## Overview

This project provides data on the _administrative divisions of the **P**eople's **R**epublic of **C**hina (**2015**)_. The data was sourced from the website of the [National Bureau of Statistics of China](http://www.stats.gov.cn/tjsj/tjbz/tjyqhdmhcxhfdm/2015/index.html).

## Directory Structure

- The [`src`](./src) directory contains source code for parsing, reading, and caching administrative division data.
- The [`database`](./database) directory contains the administrative division database schema documentation and all _SQL_ script files.

### 2015 Data

- The [`database/2015`](./database/2015) directory contains the general-purpose data scripts for _**M**y**SQL**_, _**SQL**ite_, and _**D**uck**DB**_.
- The [`database/2015/mssql`](./database/2015/mssql) directory contains the _**M**icrosoft **SQL** **S**erver_ data scripts.
- The [`database/2015/postgres`](./database/2015/postgres) directory contains the _**P**ostgre**SQL**_ data scripts.
- The [`database/2015/.raw`](./database/2015/.raw) directory contains raw administrative division data files collected from government agencies.

## File Descriptions

### Database Schema

- [Administratives-China-Tables.md](./database/Administratives-China-Tables.md): database schema design document
- [Administratives-China-Tables(mysql).sql](./database/Administratives-China-Tables(mysql).sql): database schema creation script for _**M**y**SQL**_
- [Administratives-China-Tables(mssql).sql](./database/Administratives-China-Tables(mssql).sql): database schema creation script for _**M**icrosoft **SQL** **S**erver_
- [Administratives-China-Tables(postgres).sql](./database/Administratives-China-Tables(postgres).sql): database schema creation script for _**P**ostgre**SQL**_
- [Administratives-China-Tables(sqlite).sql](./database/Administratives-China-Tables(sqlite).sql): database schema creation script for _**SQL**ite_
- [Administratives-China-Tables(duckdb).sql](./database/Administratives-China-Tables(duckdb).sql): database schema creation script for _**D**uck**DB**_

### Data Scripts

The data script filenames are consistent across database variants. Select the appropriate directory for your database:

- _**M**y**SQL**_, _**SQL**ite_, and _**D**uck**DB**_: [`database/2015`](./database/2015)
- _**M**icrosoft **SQL** **S**erver_: [`database/2015/mssql`](./database/2015/mssql), whose scripts use _Unicode_ string literals to preserve Chinese text
- _**P**ostgre**SQL**_: [`database/2015/postgres`](./database/2015/postgres), whose scripts use quoted identifiers to preserve table and column name casing

- [Administratives-China(Province-City-District).sql](./database/2015/Administratives-China(Province-City-District).sql): data for provinces(*prefectures*), cities, and districts/counties
- [Administratives-China(Street)-0.sql](./database/2015/Administratives-China(Street)-0.sql): subdistrict and township data for the municipalities of **B**eijing, **T**ianjin, **S**hanghai, and **C**hongqing
- [Administratives-China(Street)-1.sql](./database/2015/Administratives-China(Street)-1.sql): subdistrict and township data for **H**ebei(`13`), **S**hanxi(`14`), and **I**nner-**M**ongolia(`15`)
- [Administratives-China(Street)-2.sql](./database/2015/Administratives-China(Street)-2.sql): subdistrict and township data for **L**iaoning(`21`), **J**ilin(`22`), and **H**eilongjiang(`23`)
- [Administratives-China(Street)-3.sql](./database/2015/Administratives-China(Street)-3.sql): subdistrict and township data for **J**iangsu(`32`), **Z**hejiang(`33`), and **A**nhui(`34`)
- [Administratives-China(Street)-4.sql](./database/2015/Administratives-China(Street)-4.sql): subdistrict and township data for **F**ujian(`35`), **J**iangxi(`36`), and **S**handong(`37`)
- [Administratives-China(Street)-5.sql](./database/2015/Administratives-China(Street)-5.sql): subdistrict and township data for **H**enan(`41`), **H**ubei(`42`), and **H**unan(`43`)
- [Administratives-China(Street)-6.sql](./database/2015/Administratives-China(Street)-6.sql): subdistrict and township data for **G**uangdong(`44`), **G**uangxi(`45`), and **H**ainan(`46`)
- [Administratives-China(Street)-7.sql](./database/2015/Administratives-China(Street)-7.sql): subdistrict and township data for **S**ichuan(`51`), **G**uizhou(`52`), and **Y**unnan(`53`)
- [Administratives-China(Street)-8.sql](./database/2015/Administratives-China(Street)-8.sql): subdistrict and township data for **S**haanxi(`61`), **G**ansu(`62`), and **Q**inghai(`63`)
- [Administratives-China(Street)-9.sql](./database/2015/Administratives-China(Street)-9.sql): subdistrict and township data for **N**ingxia(`64`), **X**injiang(`65`), and **X**izang(`54`)

## Running the Scripts

1. Run a schema creation script to create the administrative division tables:
	> * _**M**y**SQL**_: [Administratives-China-Tables(mysql).sql](./database/Administratives-China-Tables(mysql).sql)
	> * _**M**icrosoft **SQL** **S**erver_: [Administratives-China-Tables(mssql).sql](./database/Administratives-China-Tables(mssql).sql)
	> * _**P**ostgre**SQL**_: [Administratives-China-Tables(postgres).sql](./database/Administratives-China-Tables(postgres).sql)
	> * _**SQL**ite_: [Administratives-China-Tables(sqlite).sql](./database/Administratives-China-Tables(sqlite).sql)
	> * _**D**uck**DB**_: [Administratives-China-Tables(duckdb).sql](./database/Administratives-China-Tables(duckdb).sql)
2. Select the appropriate year's data script directory for your database:
	> * _**M**y**SQL**_, _**SQL**ite_, or _**D**uck**DB**_: [`database/2015`](./database/2015)
	> * _**M**icrosoft **SQL** **S**erver_: [`database/2015/mssql`](./database/2015/mssql)
	> * _**P**ostgre**SQL**_: [`database/2015/postgres`](./database/2015/postgres)
3. Run `Administratives-China(Province-City-District).sql` from the selected directory to initialize the **_province (prefecture)_**, **_city_**, and **_district/county_** data.
4. Run the `Administratives-China(Street)-?.sql` scripts from the same directory in sequence to create the **_subdistrict_** and **_township_** data.

## License

Note: This project is licensed under the [MIT License](https://github.com/Zongsoft/administratives/blob/main/LICENSE). Please comply with its terms.
