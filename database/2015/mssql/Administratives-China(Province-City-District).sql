SET NOCOUNT ON;
SET XACT_ABORT ON;

/*
 *   _____                                ______
 *  /_   /  ____  ____  ____  _________  / __/ /_
 *    / /  / __ \/ __ \/ __ \/ ___/ __ \/ /_/ __/
 *   / /__/ /_/ / / / / /_/ /\_ \/ /_/ / __/ /_
 *  /____/\____/_/ /_/\__  /____/\____/_/  \__/
 *                   /____/
 *
 * Authors:
 *   钟峰(Popeye Zhong) <zongsoft@qq.com>
 *
 * Copyright (C) 2015-2019 Zongsoft Studio. All rights reserved.
 *
 * MIT License
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:

 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.

 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */


/*
 * 《县及县以上行政区划代码（截止2016年7月31日）》即（省/州、自治区、直辖市、市、区县）行政区划信息
 * 数据来源：中华人民共和国国家统计局（http://www.stats.gov.cn/tjsj/tjbz/xzqhdm/201703/t20170310_1471429.html）
 */


/* 注意：清空行政区划表的所有数据！！！ */
DELETE FROM Province;
DELETE FROM City;
DELETE FROM District;
DELETE FROM Street;

/* 北京市 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (11, N'北京市', N'北京', N'京');
INSERT INTO City (ProvinceId, CityId, Name) VALUES (11, 01, N'市辖区');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(11, 01, 01, N'东城区'),
(11, 01, 02, N'西城区'),
(11, 01, 05, N'朝阳区'),
(11, 01, 06, N'丰台区'),
(11, 01, 07, N'石景山区'),
(11, 01, 08, N'海淀区'),
(11, 01, 09, N'门头沟区'),
(11, 01, 11, N'房山区'),
(11, 01, 12, N'通州区'),
(11, 01, 13, N'顺义区'),
(11, 01, 14, N'昌平区'),
(11, 01, 15, N'大兴区'),
(11, 01, 16, N'怀柔区'),
(11, 01, 17, N'平谷区'),
(11, 01, 18, N'密云区'),
(11, 01, 19, N'延庆区');

/* 天津市 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (12, N'天津市', N'天津', N'津');
INSERT INTO City (ProvinceId, CityId, Name) VALUES (12, 01, N'市辖区');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(12, 01, 01, N'和平区'),
(12, 01, 02, N'河东区'),
(12, 01, 03, N'河西区'),
(12, 01, 04, N'南开区'),
(12, 01, 05, N'河北区'),
(12, 01, 06, N'红桥区'),
(12, 01, 10, N'东丽区'),
(12, 01, 11, N'西青区'),
(12, 01, 12, N'津南区'),
(12, 01, 13, N'北辰区'),
(12, 01, 14, N'武清区'),
(12, 01, 15, N'宝坻区'),
(12, 01, 16, N'滨海新区'),
(12, 01, 17, N'宁河区'),
(12, 01, 18, N'静海区'),
(12, 01, 19, N'蓟州区');

/* 河北省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (13, N'河北省', N'河北', N'冀');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (13, 01, N'石家庄市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(13, 01, 01, N'市辖区'),
(13, 01, 02, N'长安区'),
(13, 01, 04, N'桥西区'),
(13, 01, 05, N'新华区'),
(13, 01, 07, N'井陉矿区'),
(13, 01, 08, N'裕华区'),
(13, 01, 09, N'藁城区'),
(13, 01, 10, N'鹿泉区'),
(13, 01, 11, N'栾城区'),
(13, 01, 21, N'井陉县'),
(13, 01, 23, N'正定县'),
(13, 01, 25, N'行唐县'),
(13, 01, 26, N'灵寿县'),
(13, 01, 27, N'高邑县'),
(13, 01, 28, N'深泽县'),
(13, 01, 29, N'赞皇县'),
(13, 01, 30, N'无极县'),
(13, 01, 31, N'平山县'),
(13, 01, 32, N'元氏县'),
(13, 01, 33, N'赵县'),
(13, 01, 83, N'晋州市'),
(13, 01, 84, N'新乐市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (13, 02, N'唐山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(13, 02, 01, N'市辖区'),
(13, 02, 02, N'路南区'),
(13, 02, 03, N'路北区'),
(13, 02, 04, N'古冶区'),
(13, 02, 05, N'开平区'),
(13, 02, 07, N'丰南区'),
(13, 02, 08, N'丰润区'),
(13, 02, 09, N'曹妃甸区'),
(13, 02, 23, N'滦县'),
(13, 02, 24, N'滦南县'),
(13, 02, 25, N'乐亭县'),
(13, 02, 27, N'迁西县'),
(13, 02, 29, N'玉田县'),
(13, 02, 81, N'遵化市'),
(13, 02, 83, N'迁安市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (13, 03, N'秦皇岛市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(13, 03, 01, N'市辖区'),
(13, 03, 02, N'海港区'),
(13, 03, 03, N'山海关区'),
(13, 03, 04, N'北戴河区'),
(13, 03, 06, N'抚宁区'),
(13, 03, 21, N'青龙满族自治县'),
(13, 03, 22, N'昌黎县'),
(13, 03, 24, N'卢龙县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (13, 04, N'邯郸市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(13, 04, 01, N'市辖区'),
(13, 04, 02, N'邯山区'),
(13, 04, 03, N'丛台区'),
(13, 04, 04, N'复兴区'),
(13, 04, 06, N'峰峰矿区'),
(13, 04, 21, N'邯郸县'),
(13, 04, 23, N'临漳县'),
(13, 04, 24, N'成安县'),
(13, 04, 25, N'大名县'),
(13, 04, 26, N'涉县'),
(13, 04, 27, N'磁县'),
(13, 04, 28, N'肥乡县'),
(13, 04, 29, N'永年县'),
(13, 04, 30, N'邱县'),
(13, 04, 31, N'鸡泽县'),
(13, 04, 32, N'广平县'),
(13, 04, 33, N'馆陶县'),
(13, 04, 34, N'魏县'),
(13, 04, 35, N'曲周县'),
(13, 04, 81, N'武安市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (13, 05, N'邢台市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(13, 05, 01, N'市辖区'),
(13, 05, 02, N'桥东区'),
(13, 05, 03, N'桥西区'),
(13, 05, 21, N'邢台县'),
(13, 05, 22, N'临城县'),
(13, 05, 23, N'内丘县'),
(13, 05, 24, N'柏乡县'),
(13, 05, 25, N'隆尧县'),
(13, 05, 26, N'任县'),
(13, 05, 27, N'南和县'),
(13, 05, 28, N'宁晋县'),
(13, 05, 29, N'巨鹿县'),
(13, 05, 30, N'新河县'),
(13, 05, 31, N'广宗县'),
(13, 05, 32, N'平乡县'),
(13, 05, 33, N'威县'),
(13, 05, 34, N'清河县'),
(13, 05, 35, N'临西县'),
(13, 05, 81, N'南宫市'),
(13, 05, 82, N'沙河市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (13, 06, N'保定市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(13, 06, 01, N'市辖区'),
(13, 06, 02, N'竞秀区'),
(13, 06, 06, N'莲池区'),
(13, 06, 07, N'满城区'),
(13, 06, 08, N'清苑区'),
(13, 06, 09, N'徐水区'),
(13, 06, 23, N'涞水县'),
(13, 06, 24, N'阜平县'),
(13, 06, 26, N'定兴县'),
(13, 06, 27, N'唐县'),
(13, 06, 28, N'高阳县'),
(13, 06, 29, N'容城县'),
(13, 06, 30, N'涞源县'),
(13, 06, 31, N'望都县'),
(13, 06, 32, N'安新县'),
(13, 06, 33, N'易县'),
(13, 06, 34, N'曲阳县'),
(13, 06, 35, N'蠡县'),
(13, 06, 36, N'顺平县'),
(13, 06, 37, N'博野县'),
(13, 06, 38, N'雄县'),
(13, 06, 81, N'涿州市'),
(13, 06, 83, N'安国市'),
(13, 06, 84, N'高碑店市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (13, 07, N'张家口市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(13, 07, 01, N'市辖区'),
(13, 07, 02, N'桥东区'),
(13, 07, 03, N'桥西区'),
(13, 07, 05, N'宣化区'),
(13, 07, 06, N'下花园区'),
(13, 07, 08, N'万全区'),
(13, 07, 09, N'崇礼区'),
(13, 07, 22, N'张北县'),
(13, 07, 23, N'康保县'),
(13, 07, 24, N'沽源县'),
(13, 07, 25, N'尚义县'),
(13, 07, 26, N'蔚县'),
(13, 07, 27, N'阳原县'),
(13, 07, 28, N'怀安县'),
(13, 07, 30, N'怀来县'),
(13, 07, 31, N'涿鹿县'),
(13, 07, 32, N'赤城县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (13, 08, N'承德市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(13, 08, 01, N'市辖区'),
(13, 08, 02, N'双桥区'),
(13, 08, 03, N'双滦区'),
(13, 08, 04, N'鹰手营子矿区'),
(13, 08, 21, N'承德县'),
(13, 08, 22, N'兴隆县'),
(13, 08, 23, N'平泉县'),
(13, 08, 24, N'滦平县'),
(13, 08, 25, N'隆化县'),
(13, 08, 26, N'丰宁满族自治县'),
(13, 08, 27, N'宽城满族自治县'),
(13, 08, 28, N'围场满族蒙古族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (13, 09, N'沧州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(13, 09, 01, N'市辖区'),
(13, 09, 02, N'新华区'),
(13, 09, 03, N'运河区'),
(13, 09, 21, N'沧县'),
(13, 09, 22, N'青县'),
(13, 09, 23, N'东光县'),
(13, 09, 24, N'海兴县'),
(13, 09, 25, N'盐山县'),
(13, 09, 26, N'肃宁县'),
(13, 09, 27, N'南皮县'),
(13, 09, 28, N'吴桥县'),
(13, 09, 29, N'献县'),
(13, 09, 30, N'孟村回族自治县'),
(13, 09, 81, N'泊头市'),
(13, 09, 82, N'任丘市'),
(13, 09, 83, N'黄骅市'),
(13, 09, 84, N'河间市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (13, 10, N'廊坊市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(13, 10, 01, N'市辖区'),
(13, 10, 02, N'安次区'),
(13, 10, 03, N'广阳区'),
(13, 10, 22, N'固安县'),
(13, 10, 23, N'永清县'),
(13, 10, 24, N'香河县'),
(13, 10, 25, N'大城县'),
(13, 10, 26, N'文安县'),
(13, 10, 28, N'大厂回族自治县'),
(13, 10, 81, N'霸州市'),
(13, 10, 82, N'三河市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (13, 11, N'衡水市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(13, 11, 01, N'市辖区'),
(13, 11, 02, N'桃城区'),
(13, 11, 03, N'冀州区'),
(13, 11, 21, N'枣强县'),
(13, 11, 22, N'武邑县'),
(13, 11, 23, N'武强县'),
(13, 11, 24, N'饶阳县'),
(13, 11, 25, N'安平县'),
(13, 11, 26, N'故城县'),
(13, 11, 27, N'景县'),
(13, 11, 28, N'阜城县'),
(13, 11, 82, N'深州市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (13, 90, N'省直辖县级行政区划');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(13, 90, 01, N'定州市'),
(13, 90, 02, N'辛集市');

/* 山西省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (14, N'山西省', N'山西', N'晋');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (14, 01, N'太原市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(14, 01, 01, N'市辖区'),
(14, 01, 05, N'小店区'),
(14, 01, 06, N'迎泽区'),
(14, 01, 07, N'杏花岭区'),
(14, 01, 08, N'尖草坪区'),
(14, 01, 09, N'万柏林区'),
(14, 01, 10, N'晋源区'),
(14, 01, 21, N'清徐县'),
(14, 01, 22, N'阳曲县'),
(14, 01, 23, N'娄烦县'),
(14, 01, 81, N'古交市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (14, 02, N'大同市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(14, 02, 01, N'市辖区'),
(14, 02, 02, N'城区'),
(14, 02, 03, N'矿区'),
(14, 02, 11, N'南郊区'),
(14, 02, 12, N'新荣区'),
(14, 02, 21, N'阳高县'),
(14, 02, 22, N'天镇县'),
(14, 02, 23, N'广灵县'),
(14, 02, 24, N'灵丘县'),
(14, 02, 25, N'浑源县'),
(14, 02, 26, N'左云县'),
(14, 02, 27, N'大同县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (14, 03, N'阳泉市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(14, 03, 01, N'市辖区'),
(14, 03, 02, N'城区'),
(14, 03, 03, N'矿区'),
(14, 03, 11, N'郊区'),
(14, 03, 21, N'平定县'),
(14, 03, 22, N'盂县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (14, 04, N'长治市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(14, 04, 01, N'市辖区'),
(14, 04, 02, N'城区'),
(14, 04, 11, N'郊区'),
(14, 04, 21, N'长治县'),
(14, 04, 23, N'襄垣县'),
(14, 04, 24, N'屯留县'),
(14, 04, 25, N'平顺县'),
(14, 04, 26, N'黎城县'),
(14, 04, 27, N'壶关县'),
(14, 04, 28, N'长子县'),
(14, 04, 29, N'武乡县'),
(14, 04, 30, N'沁县'),
(14, 04, 31, N'沁源县'),
(14, 04, 81, N'潞城市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (14, 05, N'晋城市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(14, 05, 01, N'市辖区'),
(14, 05, 02, N'城区'),
(14, 05, 21, N'沁水县'),
(14, 05, 22, N'阳城县'),
(14, 05, 24, N'陵川县'),
(14, 05, 25, N'泽州县'),
(14, 05, 81, N'高平市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (14, 06, N'朔州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(14, 06, 01, N'市辖区'),
(14, 06, 02, N'朔城区'),
(14, 06, 03, N'平鲁区'),
(14, 06, 21, N'山阴县'),
(14, 06, 22, N'应县'),
(14, 06, 23, N'右玉县'),
(14, 06, 24, N'怀仁县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (14, 07, N'晋中市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(14, 07, 01, N'市辖区'),
(14, 07, 02, N'榆次区'),
(14, 07, 21, N'榆社县'),
(14, 07, 22, N'左权县'),
(14, 07, 23, N'和顺县'),
(14, 07, 24, N'昔阳县'),
(14, 07, 25, N'寿阳县'),
(14, 07, 26, N'太谷县'),
(14, 07, 27, N'祁县'),
(14, 07, 28, N'平遥县'),
(14, 07, 29, N'灵石县'),
(14, 07, 81, N'介休市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (14, 08, N'运城市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(14, 08, 01, N'市辖区'),
(14, 08, 02, N'盐湖区'),
(14, 08, 21, N'临猗县'),
(14, 08, 22, N'万荣县'),
(14, 08, 23, N'闻喜县'),
(14, 08, 24, N'稷山县'),
(14, 08, 25, N'新绛县'),
(14, 08, 26, N'绛县'),
(14, 08, 27, N'垣曲县'),
(14, 08, 28, N'夏县'),
(14, 08, 29, N'平陆县'),
(14, 08, 30, N'芮城县'),
(14, 08, 81, N'永济市'),
(14, 08, 82, N'河津市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (14, 09, N'忻州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(14, 09, 01, N'市辖区'),
(14, 09, 02, N'忻府区'),
(14, 09, 21, N'定襄县'),
(14, 09, 22, N'五台县'),
(14, 09, 23, N'代县'),
(14, 09, 24, N'繁峙县'),
(14, 09, 25, N'宁武县'),
(14, 09, 26, N'静乐县'),
(14, 09, 27, N'神池县'),
(14, 09, 28, N'五寨县'),
(14, 09, 29, N'岢岚县'),
(14, 09, 30, N'河曲县'),
(14, 09, 31, N'保德县'),
(14, 09, 32, N'偏关县'),
(14, 09, 81, N'原平市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (14, 10, N'临汾市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(14, 10, 01, N'市辖区'),
(14, 10, 02, N'尧都区'),
(14, 10, 21, N'曲沃县'),
(14, 10, 22, N'翼城县'),
(14, 10, 23, N'襄汾县'),
(14, 10, 24, N'洪洞县'),
(14, 10, 25, N'古县'),
(14, 10, 26, N'安泽县'),
(14, 10, 27, N'浮山县'),
(14, 10, 28, N'吉县'),
(14, 10, 29, N'乡宁县'),
(14, 10, 30, N'大宁县'),
(14, 10, 31, N'隰县'),
(14, 10, 32, N'永和县'),
(14, 10, 33, N'蒲县'),
(14, 10, 34, N'汾西县'),
(14, 10, 81, N'侯马市'),
(14, 10, 82, N'霍州市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (14, 11, N'吕梁市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(14, 11, 01, N'市辖区'),
(14, 11, 02, N'离石区'),
(14, 11, 21, N'文水县'),
(14, 11, 22, N'交城县'),
(14, 11, 23, N'兴县'),
(14, 11, 24, N'临县'),
(14, 11, 25, N'柳林县'),
(14, 11, 26, N'石楼县'),
(14, 11, 27, N'岚县'),
(14, 11, 28, N'方山县'),
(14, 11, 29, N'中阳县'),
(14, 11, 30, N'交口县'),
(14, 11, 81, N'孝义市'),
(14, 11, 82, N'汾阳市');

/* 内蒙古 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (N'15', N'内蒙古自治区', N'内蒙古', N'蒙');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (15, 01, N'呼和浩特市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(15, 01, 01, N'市辖区'),
(15, 01, 02, N'新城区'),
(15, 01, 03, N'回民区'),
(15, 01, 04, N'玉泉区'),
(15, 01, 05, N'赛罕区'),
(15, 01, 21, N'土默特左旗'),
(15, 01, 22, N'托克托县'),
(15, 01, 23, N'和林格尔县'),
(15, 01, 24, N'清水河县'),
(15, 01, 25, N'武川县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (15, 02, N'包头市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(15, 02, 01, N'市辖区'),
(15, 02, 02, N'东河区'),
(15, 02, 03, N'昆都仑区'),
(15, 02, 04, N'青山区'),
(15, 02, 05, N'石拐区'),
(15, 02, 06, N'白云鄂博矿区'),
(15, 02, 07, N'九原区'),
(15, 02, 21, N'土默特右旗'),
(15, 02, 22, N'固阳县'),
(15, 02, 23, N'达尔罕茂明安联合旗');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (15, 03, N'乌海市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(15, 03, 01, N'市辖区'),
(15, 03, 02, N'海勃湾区'),
(15, 03, 03, N'海南区'),
(15, 03, 04, N'乌达区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (15, 04, N'赤峰市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(15, 04, 01, N'市辖区'),
(15, 04, 02, N'红山区'),
(15, 04, 03, N'元宝山区'),
(15, 04, 04, N'松山区'),
(15, 04, 21, N'阿鲁科尔沁旗'),
(15, 04, 22, N'巴林左旗'),
(15, 04, 23, N'巴林右旗'),
(15, 04, 24, N'林西县'),
(15, 04, 25, N'克什克腾旗'),
(15, 04, 26, N'翁牛特旗'),
(15, 04, 28, N'喀喇沁旗'),
(15, 04, 29, N'宁城县'),
(15, 04, 30, N'敖汉旗');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (15, 05, N'通辽市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(15, 05, 01, N'市辖区'),
(15, 05, 02, N'科尔沁区'),
(15, 05, 21, N'科尔沁左翼中旗'),
(15, 05, 22, N'科尔沁左翼后旗'),
(15, 05, 23, N'开鲁县'),
(15, 05, 24, N'库伦旗'),
(15, 05, 25, N'奈曼旗'),
(15, 05, 26, N'扎鲁特旗'),
(15, 05, 81, N'霍林郭勒市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (15, 06, N'鄂尔多斯市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(15, 06, 01, N'市辖区'),
(15, 06, 02, N'东胜区'),
(15, 06, 03, N'康巴什区'),
(15, 06, 21, N'达拉特旗'),
(15, 06, 22, N'准格尔旗'),
(15, 06, 23, N'鄂托克前旗'),
(15, 06, 24, N'鄂托克旗'),
(15, 06, 25, N'杭锦旗'),
(15, 06, 26, N'乌审旗'),
(15, 06, 27, N'伊金霍洛旗');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (15, 07, N'呼伦贝尔市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(15, 07, 01, N'市辖区'),
(15, 07, 02, N'海拉尔区'),
(15, 07, 03, N'扎赉诺尔区'),
(15, 07, 21, N'阿荣旗'),
(15, 07, 22, N'莫力达瓦达斡尔族自治旗'),
(15, 07, 23, N'鄂伦春自治旗'),
(15, 07, 24, N'鄂温克族自治旗'),
(15, 07, 25, N'陈巴尔虎旗'),
(15, 07, 26, N'新巴尔虎左旗'),
(15, 07, 27, N'新巴尔虎右旗'),
(15, 07, 81, N'满洲里市'),
(15, 07, 82, N'牙克石市'),
(15, 07, 83, N'扎兰屯市'),
(15, 07, 84, N'额尔古纳市'),
(15, 07, 85, N'根河市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (15, 08, N'巴彦淖尔市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(15, 08, 01, N'市辖区'),
(15, 08, 02, N'临河区'),
(15, 08, 21, N'五原县'),
(15, 08, 22, N'磴口县'),
(15, 08, 23, N'乌拉特前旗'),
(15, 08, 24, N'乌拉特中旗'),
(15, 08, 25, N'乌拉特后旗'),
(15, 08, 26, N'杭锦后旗');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (15, 09, N'乌兰察布市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(15, 09, 01, N'市辖区'),
(15, 09, 02, N'集宁区'),
(15, 09, 21, N'卓资县'),
(15, 09, 22, N'化德县'),
(15, 09, 23, N'商都县'),
(15, 09, 24, N'兴和县'),
(15, 09, 25, N'凉城县'),
(15, 09, 26, N'察哈尔右翼前旗'),
(15, 09, 27, N'察哈尔右翼中旗'),
(15, 09, 28, N'察哈尔右翼后旗'),
(15, 09, 29, N'四子王旗'),
(15, 09, 81, N'丰镇市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (15, 22, N'兴安盟');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(15, 22, 01, N'乌兰浩特市'),
(15, 22, 02, N'阿尔山市'),
(15, 22, 21, N'科尔沁右翼前旗'),
(15, 22, 22, N'科尔沁右翼中旗'),
(15, 22, 23, N'扎赉特旗'),
(15, 22, 24, N'突泉县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (15, 25, N'锡林郭勒盟');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(15, 25, 01, N'二连浩特市'),
(15, 25, 02, N'锡林浩特市'),
(15, 25, 22, N'阿巴嘎旗'),
(15, 25, 23, N'苏尼特左旗'),
(15, 25, 24, N'苏尼特右旗'),
(15, 25, 25, N'东乌珠穆沁旗'),
(15, 25, 26, N'西乌珠穆沁旗'),
(15, 25, 27, N'太仆寺旗'),
(15, 25, 28, N'镶黄旗'),
(15, 25, 29, N'正镶白旗'),
(15, 25, 30, N'正蓝旗'),
(15, 25, 31, N'多伦县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (15, 29, N'阿拉善盟');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(15, 29, 21, N'阿拉善左旗'),
(15, 29, 22, N'阿拉善右旗'),
(15, 29, 23, N'额济纳旗');

/* 辽宁省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (21, N'辽宁省', N'辽宁', N'辽');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 01, N'沈阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 01, 01, N'市辖区'),
(21, 01, 02, N'和平区'),
(21, 01, 03, N'沈河区'),
(21, 01, 04, N'大东区'),
(21, 01, 05, N'皇姑区'),
(21, 01, 06, N'铁西区'),
(21, 01, 11, N'苏家屯区'),
(21, 01, 12, N'浑南区'),
(21, 01, 13, N'沈北新区'),
(21, 01, 14, N'于洪区'),
(21, 01, 15, N'辽中区'),
(21, 01, 23, N'康平县'),
(21, 01, 24, N'法库县'),
(21, 01, 81, N'新民市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 02, N'大连市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 02, 01, N'市辖区'),
(21, 02, 02, N'中山区'),
(21, 02, 03, N'西岗区'),
(21, 02, 04, N'沙河口区'),
(21, 02, 11, N'甘井子区'),
(21, 02, 12, N'旅顺口区'),
(21, 02, 13, N'金州区'),
(21, 02, 14, N'普兰店区'),
(21, 02, 24, N'长海县'),
(21, 02, 81, N'瓦房店市'),
(21, 02, 83, N'庄河市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 03, N'鞍山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 03, 01, N'市辖区'),
(21, 03, 02, N'铁东区'),
(21, 03, 03, N'铁西区'),
(21, 03, 04, N'立山区'),
(21, 03, 11, N'千山区'),
(21, 03, 21, N'台安县'),
(21, 03, 23, N'岫岩满族自治县'),
(21, 03, 81, N'海城市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 04, N'抚顺市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 04, 01, N'市辖区'),
(21, 04, 02, N'新抚区'),
(21, 04, 03, N'东洲区'),
(21, 04, 04, N'望花区'),
(21, 04, 11, N'顺城区'),
(21, 04, 21, N'抚顺县'),
(21, 04, 22, N'新宾满族自治县'),
(21, 04, 23, N'清原满族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 05, N'本溪市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 05, 01, N'市辖区'),
(21, 05, 02, N'平山区'),
(21, 05, 03, N'溪湖区'),
(21, 05, 04, N'明山区'),
(21, 05, 05, N'南芬区'),
(21, 05, 21, N'本溪满族自治县'),
(21, 05, 22, N'桓仁满族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 06, N'丹东市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 06, 01, N'市辖区'),
(21, 06, 02, N'元宝区'),
(21, 06, 03, N'振兴区'),
(21, 06, 04, N'振安区'),
(21, 06, 24, N'宽甸满族自治县'),
(21, 06, 81, N'东港市'),
(21, 06, 82, N'凤城市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 07, N'锦州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 07, 01, N'市辖区'),
(21, 07, 02, N'古塔区'),
(21, 07, 03, N'凌河区'),
(21, 07, 11, N'太和区'),
(21, 07, 26, N'黑山县'),
(21, 07, 27, N'义县'),
(21, 07, 81, N'凌海市'),
(21, 07, 82, N'北镇市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 08, N'营口市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 08, 01, N'市辖区'),
(21, 08, 02, N'站前区'),
(21, 08, 03, N'西市区'),
(21, 08, 04, N'鲅鱼圈区'),
(21, 08, 11, N'老边区'),
(21, 08, 81, N'盖州市'),
(21, 08, 82, N'大石桥市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 09, N'阜新市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 09, 01, N'市辖区'),
(21, 09, 02, N'海州区'),
(21, 09, 03, N'新邱区'),
(21, 09, 04, N'太平区'),
(21, 09, 05, N'清河门区'),
(21, 09, 11, N'细河区'),
(21, 09, 21, N'阜新蒙古族自治县'),
(21, 09, 22, N'彰武县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 10, N'辽阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 10, 01, N'市辖区'),
(21, 10, 02, N'白塔区'),
(21, 10, 03, N'文圣区'),
(21, 10, 04, N'宏伟区'),
(21, 10, 05, N'弓长岭区'),
(21, 10, 11, N'太子河区'),
(21, 10, 21, N'辽阳县'),
(21, 10, 81, N'灯塔市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 11, N'盘锦市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 11, 01, N'市辖区'),
(21, 11, 02, N'双台子区'),
(21, 11, 03, N'兴隆台区'),
(21, 11, 04, N'大洼区'),
(21, 11, 22, N'盘山县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 12, N'铁岭市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 12, 01, N'市辖区'),
(21, 12, 02, N'银州区'),
(21, 12, 04, N'清河区'),
(21, 12, 21, N'铁岭县'),
(21, 12, 23, N'西丰县'),
(21, 12, 24, N'昌图县'),
(21, 12, 81, N'调兵山市'),
(21, 12, 82, N'开原市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 13, N'朝阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 13, 01, N'市辖区'),
(21, 13, 02, N'双塔区'),
(21, 13, 03, N'龙城区'),
(21, 13, 21, N'朝阳县'),
(21, 13, 22, N'建平县'),
(21, 13, 24, N'喀喇沁左翼蒙古族自治县'),
(21, 13, 81, N'北票市'),
(21, 13, 82, N'凌源市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (21, 14, N'葫芦岛市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(21, 14, 01, N'市辖区'),
(21, 14, 02, N'连山区'),
(21, 14, 03, N'龙港区'),
(21, 14, 04, N'南票区'),
(21, 14, 21, N'绥中县'),
(21, 14, 22, N'建昌县'),
(21, 14, 81, N'兴城市');

/* 吉林省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (22, N'吉林省', N'吉林', N'吉');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (22, 01, N'长春市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(22, 01, 01, N'市辖区'),
(22, 01, 02, N'南关区'),
(22, 01, 03, N'宽城区'),
(22, 01, 04, N'朝阳区'),
(22, 01, 05, N'二道区'),
(22, 01, 06, N'绿园区'),
(22, 01, 12, N'双阳区'),
(22, 01, 13, N'九台区'),
(22, 01, 22, N'农安县'),
(22, 01, 82, N'榆树市'),
(22, 01, 83, N'德惠市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (22, 02, N'吉林市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(22, 02, 01, N'市辖区'),
(22, 02, 02, N'昌邑区'),
(22, 02, 03, N'龙潭区'),
(22, 02, 04, N'船营区'),
(22, 02, 11, N'丰满区'),
(22, 02, 21, N'永吉县'),
(22, 02, 81, N'蛟河市'),
(22, 02, 82, N'桦甸市'),
(22, 02, 83, N'舒兰市'),
(22, 02, 84, N'磐石市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (22, 03, N'四平市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(22, 03, 01, N'市辖区'),
(22, 03, 02, N'铁西区'),
(22, 03, 03, N'铁东区'),
(22, 03, 22, N'梨树县'),
(22, 03, 23, N'伊通满族自治县'),
(22, 03, 81, N'公主岭市'),
(22, 03, 82, N'双辽市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (22, 04, N'辽源市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(22, 04, 01, N'市辖区'),
(22, 04, 02, N'龙山区'),
(22, 04, 03, N'西安区'),
(22, 04, 21, N'东丰县'),
(22, 04, 22, N'东辽县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (22, 05, N'通化市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(22, 05, 01, N'市辖区'),
(22, 05, 02, N'东昌区'),
(22, 05, 03, N'二道江区'),
(22, 05, 21, N'通化县'),
(22, 05, 23, N'辉南县'),
(22, 05, 24, N'柳河县'),
(22, 05, 81, N'梅河口市'),
(22, 05, 82, N'集安市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (22, 06, N'白山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(22, 06, 01, N'市辖区'),
(22, 06, 02, N'浑江区'),
(22, 06, 05, N'江源区'),
(22, 06, 21, N'抚松县'),
(22, 06, 22, N'靖宇县'),
(22, 06, 23, N'长白朝鲜族自治县'),
(22, 06, 81, N'临江市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (22, 07, N'松原市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(22, 07, 01, N'市辖区'),
(22, 07, 02, N'宁江区'),
(22, 07, 21, N'前郭尔罗斯蒙古族自治县'),
(22, 07, 22, N'长岭县'),
(22, 07, 23, N'乾安县'),
(22, 07, 81, N'扶余市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (22, 08, N'白城市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(22, 08, 01, N'市辖区'),
(22, 08, 02, N'洮北区'),
(22, 08, 21, N'镇赉县'),
(22, 08, 22, N'通榆县'),
(22, 08, 81, N'洮南市'),
(22, 08, 82, N'大安市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (22, 24, N'延边朝鲜族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(22, 24, 01, N'延吉市'),
(22, 24, 02, N'图们市'),
(22, 24, 03, N'敦化市'),
(22, 24, 04, N'珲春市'),
(22, 24, 05, N'龙井市'),
(22, 24, 06, N'和龙市'),
(22, 24, 24, N'汪清县'),
(22, 24, 26, N'安图县');

/* 黑龙江省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (23, N'黑龙江省', N'黑龙江', N'黑');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 01, N'哈尔滨市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 01, 01, N'市辖区'),
(23, 01, 02, N'道里区'),
(23, 01, 03, N'南岗区'),
(23, 01, 04, N'道外区'),
(23, 01, 08, N'平房区'),
(23, 01, 09, N'松北区'),
(23, 01, 10, N'香坊区'),
(23, 01, 11, N'呼兰区'),
(23, 01, 12, N'阿城区'),
(23, 01, 13, N'双城区'),
(23, 01, 23, N'依兰县'),
(23, 01, 24, N'方正县'),
(23, 01, 25, N'宾县'),
(23, 01, 26, N'巴彦县'),
(23, 01, 27, N'木兰县'),
(23, 01, 28, N'通河县'),
(23, 01, 29, N'延寿县'),
(23, 01, 83, N'尚志市'),
(23, 01, 84, N'五常市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 02, N'齐齐哈尔市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 02, 01, N'市辖区'),
(23, 02, 02, N'龙沙区'),
(23, 02, 03, N'建华区'),
(23, 02, 04, N'铁锋区'),
(23, 02, 05, N'昂昂溪区'),
(23, 02, 06, N'富拉尔基区'),
(23, 02, 07, N'碾子山区'),
(23, 02, 08, N'梅里斯达斡尔族区'),
(23, 02, 21, N'龙江县'),
(23, 02, 23, N'依安县'),
(23, 02, 24, N'泰来县'),
(23, 02, 25, N'甘南县'),
(23, 02, 27, N'富裕县'),
(23, 02, 29, N'克山县'),
(23, 02, 30, N'克东县'),
(23, 02, 31, N'拜泉县'),
(23, 02, 81, N'讷河市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 03, N'鸡西市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 03, 01, N'市辖区'),
(23, 03, 02, N'鸡冠区'),
(23, 03, 03, N'恒山区'),
(23, 03, 04, N'滴道区'),
(23, 03, 05, N'梨树区'),
(23, 03, 06, N'城子河区'),
(23, 03, 07, N'麻山区'),
(23, 03, 21, N'鸡东县'),
(23, 03, 81, N'虎林市'),
(23, 03, 82, N'密山市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 04, N'鹤岗市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 04, 01, N'市辖区'),
(23, 04, 02, N'向阳区'),
(23, 04, 03, N'工农区'),
(23, 04, 04, N'南山区'),
(23, 04, 05, N'兴安区'),
(23, 04, 06, N'东山区'),
(23, 04, 07, N'兴山区'),
(23, 04, 21, N'萝北县'),
(23, 04, 22, N'绥滨县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 05, N'双鸭山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 05, 01, N'市辖区'),
(23, 05, 02, N'尖山区'),
(23, 05, 03, N'岭东区'),
(23, 05, 05, N'四方台区'),
(23, 05, 06, N'宝山区'),
(23, 05, 21, N'集贤县'),
(23, 05, 22, N'友谊县'),
(23, 05, 23, N'宝清县'),
(23, 05, 24, N'饶河县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 06, N'大庆市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 06, 01, N'市辖区'),
(23, 06, 02, N'萨尔图区'),
(23, 06, 03, N'龙凤区'),
(23, 06, 04, N'让胡路区'),
(23, 06, 05, N'红岗区'),
(23, 06, 06, N'大同区'),
(23, 06, 21, N'肇州县'),
(23, 06, 22, N'肇源县'),
(23, 06, 23, N'林甸县'),
(23, 06, 24, N'杜尔伯特蒙古族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 07, N'伊春市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 07, 01, N'市辖区'),
(23, 07, 02, N'伊春区'),
(23, 07, 03, N'南岔区'),
(23, 07, 04, N'友好区'),
(23, 07, 05, N'西林区'),
(23, 07, 06, N'翠峦区'),
(23, 07, 07, N'新青区'),
(23, 07, 08, N'美溪区'),
(23, 07, 09, N'金山屯区'),
(23, 07, 10, N'五营区'),
(23, 07, 11, N'乌马河区'),
(23, 07, 12, N'汤旺河区'),
(23, 07, 13, N'带岭区'),
(23, 07, 14, N'乌伊岭区'),
(23, 07, 15, N'红星区'),
(23, 07, 16, N'上甘岭区'),
(23, 07, 22, N'嘉荫县'),
(23, 07, 81, N'铁力市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 08, N'佳木斯市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 08, 01, N'市辖区'),
(23, 08, 03, N'向阳区'),
(23, 08, 04, N'前进区'),
(23, 08, 05, N'东风区'),
(23, 08, 11, N'郊区'),
(23, 08, 22, N'桦南县'),
(23, 08, 26, N'桦川县'),
(23, 08, 28, N'汤原县'),
(23, 08, 81, N'同江市'),
(23, 08, 82, N'富锦市'),
(23, 08, 83, N'抚远市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 09, N'七台河市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 09, 01, N'市辖区'),
(23, 09, 02, N'新兴区'),
(23, 09, 03, N'桃山区'),
(23, 09, 04, N'茄子河区'),
(23, 09, 21, N'勃利县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 10, N'牡丹江市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 10, 01, N'市辖区'),
(23, 10, 02, N'东安区'),
(23, 10, 03, N'阳明区'),
(23, 10, 04, N'爱民区'),
(23, 10, 05, N'西安区'),
(23, 10, 25, N'林口县'),
(23, 10, 81, N'绥芬河市'),
(23, 10, 83, N'海林市'),
(23, 10, 84, N'宁安市'),
(23, 10, 85, N'穆棱市'),
(23, 10, 86, N'东宁市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 11, N'黑河市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 11, 01, N'市辖区'),
(23, 11, 02, N'爱辉区'),
(23, 11, 21, N'嫩江县'),
(23, 11, 23, N'逊克县'),
(23, 11, 24, N'孙吴县'),
(23, 11, 81, N'北安市'),
(23, 11, 82, N'五大连池市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 12, N'绥化市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 12, 01, N'市辖区'),
(23, 12, 02, N'北林区'),
(23, 12, 21, N'望奎县'),
(23, 12, 22, N'兰西县'),
(23, 12, 23, N'青冈县'),
(23, 12, 24, N'庆安县'),
(23, 12, 25, N'明水县'),
(23, 12, 26, N'绥棱县'),
(23, 12, 81, N'安达市'),
(23, 12, 82, N'肇东市'),
(23, 12, 83, N'海伦市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (23, 27, N'大兴安岭地区');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(23, 27, 21, N'呼玛县'),
(23, 27, 22, N'塔河县'),
(23, 27, 23, N'漠河县');

/* 上海市 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (31, N'上海市', N'上海', N'沪');
INSERT INTO City (ProvinceId, CityId, Name) VALUES (31, 01, N'市辖区');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(31, 01, 01, N'黄浦区'),
(31, 01, 04, N'徐汇区'),
(31, 01, 05, N'长宁区'),
(31, 01, 06, N'静安区'),
(31, 01, 07, N'普陀区'),
(31, 01, 09, N'虹口区'),
(31, 01, 10, N'杨浦区'),
(31, 01, 12, N'闵行区'),
(31, 01, 13, N'宝山区'),
(31, 01, 14, N'嘉定区'),
(31, 01, 15, N'浦东新区'),
(31, 01, 16, N'金山区'),
(31, 01, 17, N'松江区'),
(31, 01, 18, N'青浦区'),
(31, 01, 20, N'奉贤区'),
(31, 01, 51, N'崇明区');

/* 江苏省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (32, N'江苏省', N'江苏', N'苏');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 01, N'南京市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 01, 01, N'市辖区'),
(32, 01, 02, N'玄武区'),
(32, 01, 04, N'秦淮区'),
(32, 01, 05, N'建邺区'),
(32, 01, 06, N'鼓楼区'),
(32, 01, 11, N'浦口区'),
(32, 01, 13, N'栖霞区'),
(32, 01, 14, N'雨花台区'),
(32, 01, 15, N'江宁区'),
(32, 01, 16, N'六合区'),
(32, 01, 17, N'溧水区'),
(32, 01, 18, N'高淳区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 02, N'无锡市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 02, 01, N'市辖区'),
(32, 02, 05, N'锡山区'),
(32, 02, 06, N'惠山区'),
(32, 02, 11, N'滨湖区'),
(32, 02, 13, N'梁溪区'),
(32, 02, 14, N'新吴区'),
(32, 02, 81, N'江阴市'),
(32, 02, 82, N'宜兴市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 03, N'徐州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 03, 01, N'市辖区'),
(32, 03, 02, N'鼓楼区'),
(32, 03, 03, N'云龙区'),
(32, 03, 05, N'贾汪区'),
(32, 03, 11, N'泉山区'),
(32, 03, 12, N'铜山区'),
(32, 03, 21, N'丰县'),
(32, 03, 22, N'沛县'),
(32, 03, 24, N'睢宁县'),
(32, 03, 81, N'新沂市'),
(32, 03, 82, N'邳州市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 04, N'常州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 04, 01, N'市辖区'),
(32, 04, 02, N'天宁区'),
(32, 04, 04, N'钟楼区'),
(32, 04, 11, N'新北区'),
(32, 04, 12, N'武进区'),
(32, 04, 13, N'金坛区'),
(32, 04, 81, N'溧阳市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 05, N'苏州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 05, 01, N'市辖区'),
(32, 05, 05, N'虎丘区'),
(32, 05, 06, N'吴中区'),
(32, 05, 07, N'相城区'),
(32, 05, 08, N'姑苏区'),
(32, 05, 09, N'吴江区'),
(32, 05, 81, N'常熟市'),
(32, 05, 82, N'张家港市'),
(32, 05, 83, N'昆山市'),
(32, 05, 85, N'太仓市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 06, N'南通市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 06, 01, N'市辖区'),
(32, 06, 02, N'崇川区'),
(32, 06, 11, N'港闸区'),
(32, 06, 12, N'通州区'),
(32, 06, 21, N'海安县'),
(32, 06, 23, N'如东县'),
(32, 06, 81, N'启东市'),
(32, 06, 82, N'如皋市'),
(32, 06, 84, N'海门市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 07, N'连云港市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 07, 01, N'市辖区'),
(32, 07, 03, N'连云区'),
(32, 07, 06, N'海州区'),
(32, 07, 07, N'赣榆区'),
(32, 07, 22, N'东海县'),
(32, 07, 23, N'灌云县'),
(32, 07, 24, N'灌南县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 08, N'淮安市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 08, 01, N'市辖区'),
(32, 08, 03, N'淮安区'),
(32, 08, 04, N'淮阴区'),
(32, 08, 12, N'清江浦区'),
(32, 08, 13, N'洪泽区'),
(32, 08, 26, N'涟水县'),
(32, 08, 30, N'盱眙县'),
(32, 08, 31, N'金湖县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 09, N'盐城市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 09, 01, N'市辖区'),
(32, 09, 02, N'亭湖区'),
(32, 09, 03, N'盐都区'),
(32, 09, 04, N'大丰区'),
(32, 09, 21, N'响水县'),
(32, 09, 22, N'滨海县'),
(32, 09, 23, N'阜宁县'),
(32, 09, 24, N'射阳县'),
(32, 09, 25, N'建湖县'),
(32, 09, 81, N'东台市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 10, N'扬州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 10, 01, N'市辖区'),
(32, 10, 02, N'广陵区'),
(32, 10, 03, N'邗江区'),
(32, 10, 12, N'江都区'),
(32, 10, 23, N'宝应县'),
(32, 10, 81, N'仪征市'),
(32, 10, 84, N'高邮市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 11, N'镇江市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 11, 01, N'市辖区'),
(32, 11, 02, N'京口区'),
(32, 11, 11, N'润州区'),
(32, 11, 12, N'丹徒区'),
(32, 11, 81, N'丹阳市'),
(32, 11, 82, N'扬中市'),
(32, 11, 83, N'句容市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 12, N'泰州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 12, 01, N'市辖区'),
(32, 12, 02, N'海陵区'),
(32, 12, 03, N'高港区'),
(32, 12, 04, N'姜堰区'),
(32, 12, 81, N'兴化市'),
(32, 12, 82, N'靖江市'),
(32, 12, 83, N'泰兴市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (32, 13, N'宿迁市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(32, 13, 01, N'市辖区'),
(32, 13, 02, N'宿城区'),
(32, 13, 11, N'宿豫区'),
(32, 13, 22, N'沭阳县'),
(32, 13, 23, N'泗阳县'),
(32, 13, 24, N'泗洪县');

/* 浙江省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (33, N'浙江省', N'浙江', N'浙');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (33, 01, N'杭州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(33, 01, 01, N'市辖区'),
(33, 01, 02, N'上城区'),
(33, 01, 03, N'下城区'),
(33, 01, 04, N'江干区'),
(33, 01, 05, N'拱墅区'),
(33, 01, 06, N'西湖区'),
(33, 01, 08, N'滨江区'),
(33, 01, 09, N'萧山区'),
(33, 01, 10, N'余杭区'),
(33, 01, 11, N'富阳区'),
(33, 01, 22, N'桐庐县'),
(33, 01, 27, N'淳安县'),
(33, 01, 82, N'建德市'),
(33, 01, 85, N'临安市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (33, 02, N'宁波市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(33, 02, 01, N'市辖区'),
(33, 02, 03, N'海曙区'),
(33, 02, 04, N'江东区'),
(33, 02, 05, N'江北区'),
(33, 02, 06, N'北仑区'),
(33, 02, 11, N'镇海区'),
(33, 02, 12, N'鄞州区'),
(33, 02, 25, N'象山县'),
(33, 02, 26, N'宁海县'),
(33, 02, 81, N'余姚市'),
(33, 02, 82, N'慈溪市'),
(33, 02, 83, N'奉化市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (33, 03, N'温州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(33, 03, 01, N'市辖区'),
(33, 03, 02, N'鹿城区'),
(33, 03, 03, N'龙湾区'),
(33, 03, 04, N'瓯海区'),
(33, 03, 05, N'洞头区'),
(33, 03, 24, N'永嘉县'),
(33, 03, 26, N'平阳县'),
(33, 03, 27, N'苍南县'),
(33, 03, 28, N'文成县'),
(33, 03, 29, N'泰顺县'),
(33, 03, 81, N'瑞安市'),
(33, 03, 82, N'乐清市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (33, 04, N'嘉兴市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(33, 04, 01, N'市辖区'),
(33, 04, 02, N'南湖区'),
(33, 04, 11, N'秀洲区'),
(33, 04, 21, N'嘉善县'),
(33, 04, 24, N'海盐县'),
(33, 04, 81, N'海宁市'),
(33, 04, 82, N'平湖市'),
(33, 04, 83, N'桐乡市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (33, 05, N'湖州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(33, 05, 01, N'市辖区'),
(33, 05, 02, N'吴兴区'),
(33, 05, 03, N'南浔区'),
(33, 05, 21, N'德清县'),
(33, 05, 22, N'长兴县'),
(33, 05, 23, N'安吉县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (33, 06, N'绍兴市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(33, 06, 01, N'市辖区'),
(33, 06, 02, N'越城区'),
(33, 06, 03, N'柯桥区'),
(33, 06, 04, N'上虞区'),
(33, 06, 24, N'新昌县'),
(33, 06, 81, N'诸暨市'),
(33, 06, 83, N'嵊州市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (33, 07, N'金华市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(33, 07, 01, N'市辖区'),
(33, 07, 02, N'婺城区'),
(33, 07, 03, N'金东区'),
(33, 07, 23, N'武义县'),
(33, 07, 26, N'浦江县'),
(33, 07, 27, N'磐安县'),
(33, 07, 81, N'兰溪市'),
(33, 07, 82, N'义乌市'),
(33, 07, 83, N'东阳市'),
(33, 07, 84, N'永康市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (33, 08, N'衢州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(33, 08, 01, N'市辖区'),
(33, 08, 02, N'柯城区'),
(33, 08, 03, N'衢江区'),
(33, 08, 22, N'常山县'),
(33, 08, 24, N'开化县'),
(33, 08, 25, N'龙游县'),
(33, 08, 81, N'江山市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (33, 09, N'舟山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(33, 09, 01, N'市辖区'),
(33, 09, 02, N'定海区'),
(33, 09, 03, N'普陀区'),
(33, 09, 21, N'岱山县'),
(33, 09, 22, N'嵊泗县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (33, 10, N'台州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(33, 10, 01, N'市辖区'),
(33, 10, 02, N'椒江区'),
(33, 10, 03, N'黄岩区'),
(33, 10, 04, N'路桥区'),
(33, 10, 21, N'玉环县'),
(33, 10, 22, N'三门县'),
(33, 10, 23, N'天台县'),
(33, 10, 24, N'仙居县'),
(33, 10, 81, N'温岭市'),
(33, 10, 82, N'临海市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (33, 11, N'丽水市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(33, 11, 01, N'市辖区'),
(33, 11, 02, N'莲都区'),
(33, 11, 21, N'青田县'),
(33, 11, 22, N'缙云县'),
(33, 11, 23, N'遂昌县'),
(33, 11, 24, N'松阳县'),
(33, 11, 25, N'云和县'),
(33, 11, 26, N'庆元县'),
(33, 11, 27, N'景宁畲族自治县'),
(33, 11, 81, N'龙泉市');

/* 安徽省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (34, N'安徽省', N'安徽', N'皖');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 01, N'合肥市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 01, 01, N'市辖区'),
(34, 01, 02, N'瑶海区'),
(34, 01, 03, N'庐阳区'),
(34, 01, 04, N'蜀山区'),
(34, 01, 11, N'包河区'),
(34, 01, 21, N'长丰县'),
(34, 01, 22, N'肥东县'),
(34, 01, 23, N'肥西县'),
(34, 01, 24, N'庐江县'),
(34, 01, 81, N'巢湖市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 02, N'芜湖市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 02, 01, N'市辖区'),
(34, 02, 02, N'镜湖区'),
(34, 02, 03, N'弋江区'),
(34, 02, 07, N'鸠江区'),
(34, 02, 08, N'三山区'),
(34, 02, 21, N'芜湖县'),
(34, 02, 22, N'繁昌县'),
(34, 02, 23, N'南陵县'),
(34, 02, 25, N'无为县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 03, N'蚌埠市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 03, 01, N'市辖区'),
(34, 03, 02, N'龙子湖区'),
(34, 03, 03, N'蚌山区'),
(34, 03, 04, N'禹会区'),
(34, 03, 11, N'淮上区'),
(34, 03, 21, N'怀远县'),
(34, 03, 22, N'五河县'),
(34, 03, 23, N'固镇县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 04, N'淮南市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 04, 01, N'市辖区'),
(34, 04, 02, N'大通区'),
(34, 04, 03, N'田家庵区'),
(34, 04, 04, N'谢家集区'),
(34, 04, 05, N'八公山区'),
(34, 04, 06, N'潘集区'),
(34, 04, 21, N'凤台县'),
(34, 04, 22, N'寿县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 05, N'马鞍山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 05, 01, N'市辖区'),
(34, 05, 03, N'花山区'),
(34, 05, 04, N'雨山区'),
(34, 05, 06, N'博望区'),
(34, 05, 21, N'当涂县'),
(34, 05, 22, N'含山县'),
(34, 05, 23, N'和县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 06, N'淮北市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 06, 01, N'市辖区'),
(34, 06, 02, N'杜集区'),
(34, 06, 03, N'相山区'),
(34, 06, 04, N'烈山区'),
(34, 06, 21, N'濉溪县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 07, N'铜陵市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 07, 01, N'市辖区'),
(34, 07, 05, N'铜官区'),
(34, 07, 06, N'义安区'),
(34, 07, 11, N'郊区'),
(34, 07, 22, N'枞阳县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 08, N'安庆市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 08, 01, N'市辖区'),
(34, 08, 02, N'迎江区'),
(34, 08, 03, N'大观区'),
(34, 08, 11, N'宜秀区'),
(34, 08, 22, N'怀宁县'),
(34, 08, 24, N'潜山县'),
(34, 08, 25, N'太湖县'),
(34, 08, 26, N'宿松县'),
(34, 08, 27, N'望江县'),
(34, 08, 28, N'岳西县'),
(34, 08, 81, N'桐城市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 10, N'黄山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 10, 01, N'市辖区'),
(34, 10, 02, N'屯溪区'),
(34, 10, 03, N'黄山区'),
(34, 10, 04, N'徽州区'),
(34, 10, 21, N'歙县'),
(34, 10, 22, N'休宁县'),
(34, 10, 23, N'黟县'),
(34, 10, 24, N'祁门县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 11, N'滁州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 11, 01, N'市辖区'),
(34, 11, 02, N'琅琊区'),
(34, 11, 03, N'南谯区'),
(34, 11, 22, N'来安县'),
(34, 11, 24, N'全椒县'),
(34, 11, 25, N'定远县'),
(34, 11, 26, N'凤阳县'),
(34, 11, 81, N'天长市'),
(34, 11, 82, N'明光市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 12, N'阜阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 12, 01, N'市辖区'),
(34, 12, 02, N'颍州区'),
(34, 12, 03, N'颍东区'),
(34, 12, 04, N'颍泉区'),
(34, 12, 21, N'临泉县'),
(34, 12, 22, N'太和县'),
(34, 12, 25, N'阜南县'),
(34, 12, 26, N'颍上县'),
(34, 12, 82, N'界首市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 13, N'宿州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 13, 01, N'市辖区'),
(34, 13, 02, N'埇桥区'),
(34, 13, 21, N'砀山县'),
(34, 13, 22, N'萧县'),
(34, 13, 23, N'灵璧县'),
(34, 13, 24, N'泗县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 15, N'六安市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 15, 01, N'市辖区'),
(34, 15, 02, N'金安区'),
(34, 15, 03, N'裕安区'),
(34, 15, 04, N'叶集区'),
(34, 15, 22, N'霍邱县'),
(34, 15, 23, N'舒城县'),
(34, 15, 24, N'金寨县'),
(34, 15, 25, N'霍山县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 16, N'亳州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 16, 01, N'市辖区'),
(34, 16, 02, N'谯城区'),
(34, 16, 21, N'涡阳县'),
(34, 16, 22, N'蒙城县'),
(34, 16, 23, N'利辛县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 17, N'池州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 17, 01, N'市辖区'),
(34, 17, 02, N'贵池区'),
(34, 17, 21, N'东至县'),
(34, 17, 22, N'石台县'),
(34, 17, 23, N'青阳县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (34, 18, N'宣城市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(34, 18, 01, N'市辖区'),
(34, 18, 02, N'宣州区'),
(34, 18, 21, N'郎溪县'),
(34, 18, 22, N'广德县'),
(34, 18, 23, N'泾县'),
(34, 18, 24, N'绩溪县'),
(34, 18, 25, N'旌德县'),
(34, 18, 81, N'宁国市');

/* 福建省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (35, N'福建省', N'福建', N'闽');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (35, 01, N'福州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(35, 01, 01, N'市辖区'),
(35, 01, 02, N'鼓楼区'),
(35, 01, 03, N'台江区'),
(35, 01, 04, N'仓山区'),
(35, 01, 05, N'马尾区'),
(35, 01, 11, N'晋安区'),
(35, 01, 21, N'闽侯县'),
(35, 01, 22, N'连江县'),
(35, 01, 23, N'罗源县'),
(35, 01, 24, N'闽清县'),
(35, 01, 25, N'永泰县'),
(35, 01, 28, N'平潭县'),
(35, 01, 81, N'福清市'),
(35, 01, 82, N'长乐市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (35, 02, N'厦门市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(35, 02, 01, N'市辖区'),
(35, 02, 03, N'思明区'),
(35, 02, 05, N'海沧区'),
(35, 02, 06, N'湖里区'),
(35, 02, 11, N'集美区'),
(35, 02, 12, N'同安区'),
(35, 02, 13, N'翔安区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (35, 03, N'莆田市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(35, 03, 01, N'市辖区'),
(35, 03, 02, N'城厢区'),
(35, 03, 03, N'涵江区'),
(35, 03, 04, N'荔城区'),
(35, 03, 05, N'秀屿区'),
(35, 03, 22, N'仙游县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (35, 04, N'三明市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(35, 04, 01, N'市辖区'),
(35, 04, 02, N'梅列区'),
(35, 04, 03, N'三元区'),
(35, 04, 21, N'明溪县'),
(35, 04, 23, N'清流县'),
(35, 04, 24, N'宁化县'),
(35, 04, 25, N'大田县'),
(35, 04, 26, N'尤溪县'),
(35, 04, 27, N'沙县'),
(35, 04, 28, N'将乐县'),
(35, 04, 29, N'泰宁县'),
(35, 04, 30, N'建宁县'),
(35, 04, 81, N'永安市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (35, 05, N'泉州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(35, 05, 01, N'市辖区'),
(35, 05, 02, N'鲤城区'),
(35, 05, 03, N'丰泽区'),
(35, 05, 04, N'洛江区'),
(35, 05, 05, N'泉港区'),
(35, 05, 21, N'惠安县'),
(35, 05, 24, N'安溪县'),
(35, 05, 25, N'永春县'),
(35, 05, 26, N'德化县'),
(35, 05, 27, N'金门县'),
(35, 05, 81, N'石狮市'),
(35, 05, 82, N'晋江市'),
(35, 05, 83, N'南安市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (35, 06, N'漳州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(35, 06, 01, N'市辖区'),
(35, 06, 02, N'芗城区'),
(35, 06, 03, N'龙文区'),
(35, 06, 22, N'云霄县'),
(35, 06, 23, N'漳浦县'),
(35, 06, 24, N'诏安县'),
(35, 06, 25, N'长泰县'),
(35, 06, 26, N'东山县'),
(35, 06, 27, N'南靖县'),
(35, 06, 28, N'平和县'),
(35, 06, 29, N'华安县'),
(35, 06, 81, N'龙海市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (35, 07, N'南平市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(35, 07, 01, N'市辖区'),
(35, 07, 02, N'延平区'),
(35, 07, 03, N'建阳区'),
(35, 07, 21, N'顺昌县'),
(35, 07, 22, N'浦城县'),
(35, 07, 23, N'光泽县'),
(35, 07, 24, N'松溪县'),
(35, 07, 25, N'政和县'),
(35, 07, 81, N'邵武市'),
(35, 07, 82, N'武夷山市'),
(35, 07, 83, N'建瓯市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (35, 08, N'龙岩市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(35, 08, 01, N'市辖区'),
(35, 08, 02, N'新罗区'),
(35, 08, 03, N'永定区'),
(35, 08, 21, N'长汀县'),
(35, 08, 23, N'上杭县'),
(35, 08, 24, N'武平县'),
(35, 08, 25, N'连城县'),
(35, 08, 81, N'漳平市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (35, 09, N'宁德市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(35, 09, 01, N'市辖区'),
(35, 09, 02, N'蕉城区'),
(35, 09, 21, N'霞浦县'),
(35, 09, 22, N'古田县'),
(35, 09, 23, N'屏南县'),
(35, 09, 24, N'寿宁县'),
(35, 09, 25, N'周宁县'),
(35, 09, 26, N'柘荣县'),
(35, 09, 81, N'福安市'),
(35, 09, 82, N'福鼎市');

/* 江西省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (36, N'江西省', N'江西', N'赣');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (36, 01, N'南昌市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(36, 01, 01, N'市辖区'),
(36, 01, 02, N'东湖区'),
(36, 01, 03, N'西湖区'),
(36, 01, 04, N'青云谱区'),
(36, 01, 05, N'湾里区'),
(36, 01, 11, N'青山湖区'),
(36, 01, 12, N'新建区'),
(36, 01, 21, N'南昌县'),
(36, 01, 23, N'安义县'),
(36, 01, 24, N'进贤县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (36, 02, N'景德镇市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(36, 02, 01, N'市辖区'),
(36, 02, 02, N'昌江区'),
(36, 02, 03, N'珠山区'),
(36, 02, 22, N'浮梁县'),
(36, 02, 81, N'乐平市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (36, 03, N'萍乡市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(36, 03, 01, N'市辖区'),
(36, 03, 02, N'安源区'),
(36, 03, 13, N'湘东区'),
(36, 03, 21, N'莲花县'),
(36, 03, 22, N'上栗县'),
(36, 03, 23, N'芦溪县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (36, 04, N'九江市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(36, 04, 01, N'市辖区'),
(36, 04, 02, N'濂溪区'),
(36, 04, 03, N'浔阳区'),
(36, 04, 21, N'九江县'),
(36, 04, 23, N'武宁县'),
(36, 04, 24, N'修水县'),
(36, 04, 25, N'永修县'),
(36, 04, 26, N'德安县'),
(36, 04, 28, N'都昌县'),
(36, 04, 29, N'湖口县'),
(36, 04, 30, N'彭泽县'),
(36, 04, 81, N'瑞昌市'),
(36, 04, 82, N'共青城市'),
(36, 04, 83, N'庐山市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (36, 05, N'新余市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(36, 05, 01, N'市辖区'),
(36, 05, 02, N'渝水区'),
(36, 05, 21, N'分宜县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (36, 06, N'鹰潭市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(36, 06, 01, N'市辖区'),
(36, 06, 02, N'月湖区'),
(36, 06, 22, N'余江县'),
(36, 06, 81, N'贵溪市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (36, 07, N'赣州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(36, 07, 01, N'市辖区'),
(36, 07, 02, N'章贡区'),
(36, 07, 03, N'南康区'),
(36, 07, 21, N'赣县'),
(36, 07, 22, N'信丰县'),
(36, 07, 23, N'大余县'),
(36, 07, 24, N'上犹县'),
(36, 07, 25, N'崇义县'),
(36, 07, 26, N'安远县'),
(36, 07, 27, N'龙南县'),
(36, 07, 28, N'定南县'),
(36, 07, 29, N'全南县'),
(36, 07, 30, N'宁都县'),
(36, 07, 31, N'于都县'),
(36, 07, 32, N'兴国县'),
(36, 07, 33, N'会昌县'),
(36, 07, 34, N'寻乌县'),
(36, 07, 35, N'石城县'),
(36, 07, 81, N'瑞金市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (36, 08, N'吉安市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(36, 08, 01, N'市辖区'),
(36, 08, 02, N'吉州区'),
(36, 08, 03, N'青原区'),
(36, 08, 21, N'吉安县'),
(36, 08, 22, N'吉水县'),
(36, 08, 23, N'峡江县'),
(36, 08, 24, N'新干县'),
(36, 08, 25, N'永丰县'),
(36, 08, 26, N'泰和县'),
(36, 08, 27, N'遂川县'),
(36, 08, 28, N'万安县'),
(36, 08, 29, N'安福县'),
(36, 08, 30, N'永新县'),
(36, 08, 81, N'井冈山市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (36, 09, N'宜春市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(36, 09, 01, N'市辖区'),
(36, 09, 02, N'袁州区'),
(36, 09, 21, N'奉新县'),
(36, 09, 22, N'万载县'),
(36, 09, 23, N'上高县'),
(36, 09, 24, N'宜丰县'),
(36, 09, 25, N'靖安县'),
(36, 09, 26, N'铜鼓县'),
(36, 09, 81, N'丰城市'),
(36, 09, 82, N'樟树市'),
(36, 09, 83, N'高安市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (36, 10, N'抚州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(36, 10, 01, N'市辖区'),
(36, 10, 02, N'临川区'),
(36, 10, 21, N'南城县'),
(36, 10, 22, N'黎川县'),
(36, 10, 23, N'南丰县'),
(36, 10, 24, N'崇仁县'),
(36, 10, 25, N'乐安县'),
(36, 10, 26, N'宜黄县'),
(36, 10, 27, N'金溪县'),
(36, 10, 28, N'资溪县'),
(36, 10, 29, N'东乡县'),
(36, 10, 30, N'广昌县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (36, 11, N'上饶市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(36, 11, 01, N'市辖区'),
(36, 11, 02, N'信州区'),
(36, 11, 03, N'广丰区'),
(36, 11, 21, N'上饶县'),
(36, 11, 23, N'玉山县'),
(36, 11, 24, N'铅山县'),
(36, 11, 25, N'横峰县'),
(36, 11, 26, N'弋阳县'),
(36, 11, 27, N'余干县'),
(36, 11, 28, N'鄱阳县'),
(36, 11, 29, N'万年县'),
(36, 11, 30, N'婺源县'),
(36, 11, 81, N'德兴市');

/* 山东省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (37, N'山东省', N'山东', N'鲁');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 01, N'济南市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 01, 01, N'市辖区'),
(37, 01, 02, N'历下区'),
(37, 01, 03, N'市中区'),
(37, 01, 04, N'槐荫区'),
(37, 01, 05, N'天桥区'),
(37, 01, 12, N'历城区'),
(37, 01, 13, N'长清区'),
(37, 01, 24, N'平阴县'),
(37, 01, 25, N'济阳县'),
(37, 01, 26, N'商河县'),
(37, 01, 81, N'章丘市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 02, N'青岛市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 02, 01, N'市辖区'),
(37, 02, 02, N'市南区'),
(37, 02, 03, N'市北区'),
(37, 02, 11, N'黄岛区'),
(37, 02, 12, N'崂山区'),
(37, 02, 13, N'李沧区'),
(37, 02, 14, N'城阳区'),
(37, 02, 81, N'胶州市'),
(37, 02, 82, N'即墨市'),
(37, 02, 83, N'平度市'),
(37, 02, 85, N'莱西市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 03, N'淄博市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 03, 01, N'市辖区'),
(37, 03, 02, N'淄川区'),
(37, 03, 03, N'张店区'),
(37, 03, 04, N'博山区'),
(37, 03, 05, N'临淄区'),
(37, 03, 06, N'周村区'),
(37, 03, 21, N'桓台县'),
(37, 03, 22, N'高青县'),
(37, 03, 23, N'沂源县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 04, N'枣庄市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 04, 01, N'市辖区'),
(37, 04, 02, N'市中区'),
(37, 04, 03, N'薛城区'),
(37, 04, 04, N'峄城区'),
(37, 04, 05, N'台儿庄区'),
(37, 04, 06, N'山亭区'),
(37, 04, 81, N'滕州市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 05, N'东营市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 05, 01, N'市辖区'),
(37, 05, 02, N'东营区'),
(37, 05, 03, N'河口区'),
(37, 05, 05, N'垦利区'),
(37, 05, 22, N'利津县'),
(37, 05, 23, N'广饶县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 06, N'烟台市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 06, 01, N'市辖区'),
(37, 06, 02, N'芝罘区'),
(37, 06, 11, N'福山区'),
(37, 06, 12, N'牟平区'),
(37, 06, 13, N'莱山区'),
(37, 06, 34, N'长岛县'),
(37, 06, 81, N'龙口市'),
(37, 06, 82, N'莱阳市'),
(37, 06, 83, N'莱州市'),
(37, 06, 84, N'蓬莱市'),
(37, 06, 85, N'招远市'),
(37, 06, 86, N'栖霞市'),
(37, 06, 87, N'海阳市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 07, N'潍坊市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 07, 01, N'市辖区'),
(37, 07, 02, N'潍城区'),
(37, 07, 03, N'寒亭区'),
(37, 07, 04, N'坊子区'),
(37, 07, 05, N'奎文区'),
(37, 07, 24, N'临朐县'),
(37, 07, 25, N'昌乐县'),
(37, 07, 81, N'青州市'),
(37, 07, 82, N'诸城市'),
(37, 07, 83, N'寿光市'),
(37, 07, 84, N'安丘市'),
(37, 07, 85, N'高密市'),
(37, 07, 86, N'昌邑市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 08, N'济宁市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 08, 01, N'市辖区'),
(37, 08, 11, N'任城区'),
(37, 08, 12, N'兖州区'),
(37, 08, 26, N'微山县'),
(37, 08, 27, N'鱼台县'),
(37, 08, 28, N'金乡县'),
(37, 08, 29, N'嘉祥县'),
(37, 08, 30, N'汶上县'),
(37, 08, 31, N'泗水县'),
(37, 08, 32, N'梁山县'),
(37, 08, 81, N'曲阜市'),
(37, 08, 83, N'邹城市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 09, N'泰安市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 09, 01, N'市辖区'),
(37, 09, 02, N'泰山区'),
(37, 09, 11, N'岱岳区'),
(37, 09, 21, N'宁阳县'),
(37, 09, 23, N'东平县'),
(37, 09, 82, N'新泰市'),
(37, 09, 83, N'肥城市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 10, N'威海市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 10, 01, N'市辖区'),
(37, 10, 02, N'环翠区'),
(37, 10, 03, N'文登区'),
(37, 10, 82, N'荣成市'),
(37, 10, 83, N'乳山市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 11, N'日照市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 11, 01, N'市辖区'),
(37, 11, 02, N'东港区'),
(37, 11, 03, N'岚山区'),
(37, 11, 21, N'五莲县'),
(37, 11, 22, N'莒县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 12, N'莱芜市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 12, 01, N'市辖区'),
(37, 12, 02, N'莱城区'),
(37, 12, 03, N'钢城区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 13, N'临沂市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 13, 01, N'市辖区'),
(37, 13, 02, N'兰山区'),
(37, 13, 11, N'罗庄区'),
(37, 13, 12, N'河东区'),
(37, 13, 21, N'沂南县'),
(37, 13, 22, N'郯城县'),
(37, 13, 23, N'沂水县'),
(37, 13, 24, N'兰陵县'),
(37, 13, 25, N'费县'),
(37, 13, 26, N'平邑县'),
(37, 13, 27, N'莒南县'),
(37, 13, 28, N'蒙阴县'),
(37, 13, 29, N'临沭县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 14, N'德州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 14, 01, N'市辖区'),
(37, 14, 02, N'德城区'),
(37, 14, 03, N'陵城区'),
(37, 14, 22, N'宁津县'),
(37, 14, 23, N'庆云县'),
(37, 14, 24, N'临邑县'),
(37, 14, 25, N'齐河县'),
(37, 14, 26, N'平原县'),
(37, 14, 27, N'夏津县'),
(37, 14, 28, N'武城县'),
(37, 14, 81, N'乐陵市'),
(37, 14, 82, N'禹城市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 15, N'聊城市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 15, 01, N'市辖区'),
(37, 15, 02, N'东昌府区'),
(37, 15, 21, N'阳谷县'),
(37, 15, 22, N'莘县'),
(37, 15, 23, N'茌平县'),
(37, 15, 24, N'东阿县'),
(37, 15, 25, N'冠县'),
(37, 15, 26, N'高唐县'),
(37, 15, 81, N'临清市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 16, N'滨州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 16, 01, N'市辖区'),
(37, 16, 02, N'滨城区'),
(37, 16, 03, N'沾化区'),
(37, 16, 21, N'惠民县'),
(37, 16, 22, N'阳信县'),
(37, 16, 23, N'无棣县'),
(37, 16, 25, N'博兴县'),
(37, 16, 26, N'邹平县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (37, 17, N'菏泽市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(37, 17, 01, N'市辖区'),
(37, 17, 02, N'牡丹区'),
(37, 17, 03, N'定陶区'),
(37, 17, 21, N'曹县'),
(37, 17, 22, N'单县'),
(37, 17, 23, N'成武县'),
(37, 17, 24, N'巨野县'),
(37, 17, 25, N'郓城县'),
(37, 17, 26, N'鄄城县'),
(37, 17, 28, N'东明县');

/* 河南省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (41, N'河南省', N'河南', N'豫');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 01, N'郑州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 01, 01, N'市辖区'),
(41, 01, 02, N'中原区'),
(41, 01, 03, N'二七区'),
(41, 01, 04, N'管城回族区'),
(41, 01, 05, N'金水区'),
(41, 01, 06, N'上街区'),
(41, 01, 08, N'惠济区'),
(41, 01, 22, N'中牟县'),
(41, 01, 81, N'巩义市'),
(41, 01, 82, N'荥阳市'),
(41, 01, 83, N'新密市'),
(41, 01, 84, N'新郑市'),
(41, 01, 85, N'登封市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 02, N'开封市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 02, 01, N'市辖区'),
(41, 02, 02, N'龙亭区'),
(41, 02, 03, N'顺河回族区'),
(41, 02, 04, N'鼓楼区'),
(41, 02, 05, N'禹王台区'),
(41, 02, 11, N'金明区'),
(41, 02, 12, N'祥符区'),
(41, 02, 21, N'杞县'),
(41, 02, 22, N'通许县'),
(41, 02, 23, N'尉氏县'),
(41, 02, 25, N'兰考县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 03, N'洛阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 03, 01, N'市辖区'),
(41, 03, 02, N'老城区'),
(41, 03, 03, N'西工区'),
(41, 03, 04, N'瀍河回族区'),
(41, 03, 05, N'涧西区'),
(41, 03, 06, N'吉利区'),
(41, 03, 11, N'洛龙区'),
(41, 03, 22, N'孟津县'),
(41, 03, 23, N'新安县'),
(41, 03, 24, N'栾川县'),
(41, 03, 25, N'嵩县'),
(41, 03, 26, N'汝阳县'),
(41, 03, 27, N'宜阳县'),
(41, 03, 28, N'洛宁县'),
(41, 03, 29, N'伊川县'),
(41, 03, 81, N'偃师市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 04, N'平顶山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 04, 01, N'市辖区'),
(41, 04, 02, N'新华区'),
(41, 04, 03, N'卫东区'),
(41, 04, 04, N'石龙区'),
(41, 04, 11, N'湛河区'),
(41, 04, 21, N'宝丰县'),
(41, 04, 22, N'叶县'),
(41, 04, 23, N'鲁山县'),
(41, 04, 25, N'郏县'),
(41, 04, 81, N'舞钢市'),
(41, 04, 82, N'汝州市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 05, N'安阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 05, 01, N'市辖区'),
(41, 05, 02, N'文峰区'),
(41, 05, 03, N'北关区'),
(41, 05, 05, N'殷都区'),
(41, 05, 06, N'龙安区'),
(41, 05, 22, N'安阳县'),
(41, 05, 23, N'汤阴县'),
(41, 05, 26, N'滑县'),
(41, 05, 27, N'内黄县'),
(41, 05, 81, N'林州市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 06, N'鹤壁市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 06, 01, N'市辖区'),
(41, 06, 02, N'鹤山区'),
(41, 06, 03, N'山城区'),
(41, 06, 11, N'淇滨区'),
(41, 06, 21, N'浚县'),
(41, 06, 22, N'淇县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 07, N'新乡市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 07, 01, N'市辖区'),
(41, 07, 02, N'红旗区'),
(41, 07, 03, N'卫滨区'),
(41, 07, 04, N'凤泉区'),
(41, 07, 11, N'牧野区'),
(41, 07, 21, N'新乡县'),
(41, 07, 24, N'获嘉县'),
(41, 07, 25, N'原阳县'),
(41, 07, 26, N'延津县'),
(41, 07, 27, N'封丘县'),
(41, 07, 28, N'长垣县'),
(41, 07, 81, N'卫辉市'),
(41, 07, 82, N'辉县市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 08, N'焦作市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 08, 01, N'市辖区'),
(41, 08, 02, N'解放区'),
(41, 08, 03, N'中站区'),
(41, 08, 04, N'马村区'),
(41, 08, 11, N'山阳区'),
(41, 08, 21, N'修武县'),
(41, 08, 22, N'博爱县'),
(41, 08, 23, N'武陟县'),
(41, 08, 25, N'温县'),
(41, 08, 82, N'沁阳市'),
(41, 08, 83, N'孟州市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 09, N'濮阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 09, 01, N'市辖区'),
(41, 09, 02, N'华龙区'),
(41, 09, 22, N'清丰县'),
(41, 09, 23, N'南乐县'),
(41, 09, 26, N'范县'),
(41, 09, 27, N'台前县'),
(41, 09, 28, N'濮阳县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 10, N'许昌市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 10, 01, N'市辖区'),
(41, 10, 02, N'魏都区'),
(41, 10, 23, N'许昌县'),
(41, 10, 24, N'鄢陵县'),
(41, 10, 25, N'襄城县'),
(41, 10, 81, N'禹州市'),
(41, 10, 82, N'长葛市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 11, N'漯河市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 11, 01, N'市辖区'),
(41, 11, 02, N'源汇区'),
(41, 11, 03, N'郾城区'),
(41, 11, 04, N'召陵区'),
(41, 11, 21, N'舞阳县'),
(41, 11, 22, N'临颍县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 12, N'三门峡市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 12, 01, N'市辖区'),
(41, 12, 02, N'湖滨区'),
(41, 12, 03, N'陕州区'),
(41, 12, 21, N'渑池县'),
(41, 12, 24, N'卢氏县'),
(41, 12, 81, N'义马市'),
(41, 12, 82, N'灵宝市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 13, N'南阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 13, 01, N'市辖区'),
(41, 13, 02, N'宛城区'),
(41, 13, 03, N'卧龙区'),
(41, 13, 21, N'南召县'),
(41, 13, 22, N'方城县'),
(41, 13, 23, N'西峡县'),
(41, 13, 24, N'镇平县'),
(41, 13, 25, N'内乡县'),
(41, 13, 26, N'淅川县'),
(41, 13, 27, N'社旗县'),
(41, 13, 28, N'唐河县'),
(41, 13, 29, N'新野县'),
(41, 13, 30, N'桐柏县'),
(41, 13, 81, N'邓州市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 14, N'商丘市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 14, 01, N'市辖区'),
(41, 14, 02, N'梁园区'),
(41, 14, 03, N'睢阳区'),
(41, 14, 21, N'民权县'),
(41, 14, 22, N'睢县'),
(41, 14, 23, N'宁陵县'),
(41, 14, 24, N'柘城县'),
(41, 14, 25, N'虞城县'),
(41, 14, 26, N'夏邑县'),
(41, 14, 81, N'永城市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 15, N'信阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 15, 01, N'市辖区'),
(41, 15, 02, N'浉河区'),
(41, 15, 03, N'平桥区'),
(41, 15, 21, N'罗山县'),
(41, 15, 22, N'光山县'),
(41, 15, 23, N'新县'),
(41, 15, 24, N'商城县'),
(41, 15, 25, N'固始县'),
(41, 15, 26, N'潢川县'),
(41, 15, 27, N'淮滨县'),
(41, 15, 28, N'息县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 16, N'周口市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 16, 01, N'市辖区'),
(41, 16, 02, N'川汇区'),
(41, 16, 21, N'扶沟县'),
(41, 16, 22, N'西华县'),
(41, 16, 23, N'商水县'),
(41, 16, 24, N'沈丘县'),
(41, 16, 25, N'郸城县'),
(41, 16, 26, N'淮阳县'),
(41, 16, 27, N'太康县'),
(41, 16, 28, N'鹿邑县'),
(41, 16, 81, N'项城市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 17, N'驻马店市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(41, 17, 01, N'市辖区'),
(41, 17, 02, N'驿城区'),
(41, 17, 21, N'西平县'),
(41, 17, 22, N'上蔡县'),
(41, 17, 23, N'平舆县'),
(41, 17, 24, N'正阳县'),
(41, 17, 25, N'确山县'),
(41, 17, 26, N'泌阳县'),
(41, 17, 27, N'汝南县'),
(41, 17, 28, N'遂平县'),
(41, 17, 29, N'新蔡县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (41, 90, N'省直辖县级行政区划');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES (41, 90, 01, N'济源市');

/* 湖北省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (42, N'湖北省', N'湖北', N'鄂');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 01, N'武汉市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 01, 01, N'市辖区'),
(42, 01, 02, N'江岸区'),
(42, 01, 03, N'江汉区'),
(42, 01, 04, N'硚口区'),
(42, 01, 05, N'汉阳区'),
(42, 01, 06, N'武昌区'),
(42, 01, 07, N'青山区'),
(42, 01, 11, N'洪山区'),
(42, 01, 12, N'东西湖区'),
(42, 01, 13, N'汉南区'),
(42, 01, 14, N'蔡甸区'),
(42, 01, 15, N'江夏区'),
(42, 01, 16, N'黄陂区'),
(42, 01, 17, N'新洲区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 02, N'黄石市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 02, 01, N'市辖区'),
(42, 02, 02, N'黄石港区'),
(42, 02, 03, N'西塞山区'),
(42, 02, 04, N'下陆区'),
(42, 02, 05, N'铁山区'),
(42, 02, 22, N'阳新县'),
(42, 02, 81, N'大冶市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 03, N'十堰市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 03, 01, N'市辖区'),
(42, 03, 02, N'茅箭区'),
(42, 03, 03, N'张湾区'),
(42, 03, 04, N'郧阳区'),
(42, 03, 22, N'郧西县'),
(42, 03, 23, N'竹山县'),
(42, 03, 24, N'竹溪县'),
(42, 03, 25, N'房县'),
(42, 03, 81, N'丹江口市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 05, N'宜昌市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 05, 01, N'市辖区'),
(42, 05, 02, N'西陵区'),
(42, 05, 03, N'伍家岗区'),
(42, 05, 04, N'点军区'),
(42, 05, 05, N'猇亭区'),
(42, 05, 06, N'夷陵区'),
(42, 05, 25, N'远安县'),
(42, 05, 26, N'兴山县'),
(42, 05, 27, N'秭归县'),
(42, 05, 28, N'长阳土家族自治县'),
(42, 05, 29, N'五峰土家族自治县'),
(42, 05, 81, N'宜都市'),
(42, 05, 82, N'当阳市'),
(42, 05, 83, N'枝江市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 06, N'襄阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 06, 01, N'市辖区'),
(42, 06, 02, N'襄城区'),
(42, 06, 06, N'樊城区'),
(42, 06, 07, N'襄州区'),
(42, 06, 24, N'南漳县'),
(42, 06, 25, N'谷城县'),
(42, 06, 26, N'保康县'),
(42, 06, 82, N'老河口市'),
(42, 06, 83, N'枣阳市'),
(42, 06, 84, N'宜城市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 07, N'鄂州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 07, 01, N'市辖区'),
(42, 07, 02, N'梁子湖区'),
(42, 07, 03, N'华容区'),
(42, 07, 04, N'鄂城区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 08, N'荆门市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 08, 01, N'市辖区'),
(42, 08, 02, N'东宝区'),
(42, 08, 04, N'掇刀区'),
(42, 08, 21, N'京山县'),
(42, 08, 22, N'沙洋县'),
(42, 08, 81, N'钟祥市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 09, N'孝感市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 09, 01, N'市辖区'),
(42, 09, 02, N'孝南区'),
(42, 09, 21, N'孝昌县'),
(42, 09, 22, N'大悟县'),
(42, 09, 23, N'云梦县'),
(42, 09, 81, N'应城市'),
(42, 09, 82, N'安陆市'),
(42, 09, 84, N'汉川市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 10, N'荆州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 10, 01, N'市辖区'),
(42, 10, 02, N'沙市区'),
(42, 10, 03, N'荆州区'),
(42, 10, 22, N'公安县'),
(42, 10, 23, N'监利县'),
(42, 10, 24, N'江陵县'),
(42, 10, 81, N'石首市'),
(42, 10, 83, N'洪湖市'),
(42, 10, 87, N'松滋市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 11, N'黄冈市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 11, 01, N'市辖区'),
(42, 11, 02, N'黄州区'),
(42, 11, 21, N'团风县'),
(42, 11, 22, N'红安县'),
(42, 11, 23, N'罗田县'),
(42, 11, 24, N'英山县'),
(42, 11, 25, N'浠水县'),
(42, 11, 26, N'蕲春县'),
(42, 11, 27, N'黄梅县'),
(42, 11, 81, N'麻城市'),
(42, 11, 82, N'武穴市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 12, N'咸宁市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 12, 01, N'市辖区'),
(42, 12, 02, N'咸安区'),
(42, 12, 21, N'嘉鱼县'),
(42, 12, 22, N'通城县'),
(42, 12, 23, N'崇阳县'),
(42, 12, 24, N'通山县'),
(42, 12, 81, N'赤壁市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 13, N'随州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 13, 01, N'市辖区'),
(42, 13, 03, N'曾都区'),
(42, 13, 21, N'随县'),
(42, 13, 81, N'广水市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 28, N'恩施土家族苗族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 28, 01, N'恩施市'),
(42, 28, 02, N'利川市'),
(42, 28, 22, N'建始县'),
(42, 28, 23, N'巴东县'),
(42, 28, 25, N'宣恩县'),
(42, 28, 26, N'咸丰县'),
(42, 28, 27, N'来凤县'),
(42, 28, 28, N'鹤峰县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (42, 90, N'省直辖县级行政区划');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(42, 90, 04, N'仙桃市'),
(42, 90, 05, N'潜江市'),
(42, 90, 06, N'天门市'),
(42, 90, 21, N'神农架林区');

/* 湖南省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (43, N'湖南省', N'湖南', N'湘');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 01, N'长沙市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 01, 01, N'市辖区'),
(43, 01, 02, N'芙蓉区'),
(43, 01, 03, N'天心区'),
(43, 01, 04, N'岳麓区'),
(43, 01, 05, N'开福区'),
(43, 01, 11, N'雨花区'),
(43, 01, 12, N'望城区'),
(43, 01, 21, N'长沙县'),
(43, 01, 24, N'宁乡县'),
(43, 01, 81, N'浏阳市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 02, N'株洲市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 02, 01, N'市辖区'),
(43, 02, 02, N'荷塘区'),
(43, 02, 03, N'芦淞区'),
(43, 02, 04, N'石峰区'),
(43, 02, 11, N'天元区'),
(43, 02, 21, N'株洲县'),
(43, 02, 23, N'攸县'),
(43, 02, 24, N'茶陵县'),
(43, 02, 25, N'炎陵县'),
(43, 02, 81, N'醴陵市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 03, N'湘潭市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 03, 01, N'市辖区'),
(43, 03, 02, N'雨湖区'),
(43, 03, 04, N'岳塘区'),
(43, 03, 21, N'湘潭县'),
(43, 03, 81, N'湘乡市'),
(43, 03, 82, N'韶山市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 04, N'衡阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 04, 01, N'市辖区'),
(43, 04, 05, N'珠晖区'),
(43, 04, 06, N'雁峰区'),
(43, 04, 07, N'石鼓区'),
(43, 04, 08, N'蒸湘区'),
(43, 04, 12, N'南岳区'),
(43, 04, 21, N'衡阳县'),
(43, 04, 22, N'衡南县'),
(43, 04, 23, N'衡山县'),
(43, 04, 24, N'衡东县'),
(43, 04, 26, N'祁东县'),
(43, 04, 81, N'耒阳市'),
(43, 04, 82, N'常宁市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 05, N'邵阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 05, 01, N'市辖区'),
(43, 05, 02, N'双清区'),
(43, 05, 03, N'大祥区'),
(43, 05, 11, N'北塔区'),
(43, 05, 21, N'邵东县'),
(43, 05, 22, N'新邵县'),
(43, 05, 23, N'邵阳县'),
(43, 05, 24, N'隆回县'),
(43, 05, 25, N'洞口县'),
(43, 05, 27, N'绥宁县'),
(43, 05, 28, N'新宁县'),
(43, 05, 29, N'城步苗族自治县'),
(43, 05, 81, N'武冈市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 06, N'岳阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 06, 01, N'市辖区'),
(43, 06, 02, N'岳阳楼区'),
(43, 06, 03, N'云溪区'),
(43, 06, 11, N'君山区'),
(43, 06, 21, N'岳阳县'),
(43, 06, 23, N'华容县'),
(43, 06, 24, N'湘阴县'),
(43, 06, 26, N'平江县'),
(43, 06, 81, N'汨罗市'),
(43, 06, 82, N'临湘市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 07, N'常德市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 07, 01, N'市辖区'),
(43, 07, 02, N'武陵区'),
(43, 07, 03, N'鼎城区'),
(43, 07, 21, N'安乡县'),
(43, 07, 22, N'汉寿县'),
(43, 07, 23, N'澧县'),
(43, 07, 24, N'临澧县'),
(43, 07, 25, N'桃源县'),
(43, 07, 26, N'石门县'),
(43, 07, 81, N'津市市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 08, N'张家界市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 08, 01, N'市辖区'),
(43, 08, 02, N'永定区'),
(43, 08, 11, N'武陵源区'),
(43, 08, 21, N'慈利县'),
(43, 08, 22, N'桑植县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 09, N'益阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 09, 01, N'市辖区'),
(43, 09, 02, N'资阳区'),
(43, 09, 03, N'赫山区'),
(43, 09, 21, N'南县'),
(43, 09, 22, N'桃江县'),
(43, 09, 23, N'安化县'),
(43, 09, 81, N'沅江市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 10, N'郴州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 10, 01, N'市辖区'),
(43, 10, 02, N'北湖区'),
(43, 10, 03, N'苏仙区'),
(43, 10, 21, N'桂阳县'),
(43, 10, 22, N'宜章县'),
(43, 10, 23, N'永兴县'),
(43, 10, 24, N'嘉禾县'),
(43, 10, 25, N'临武县'),
(43, 10, 26, N'汝城县'),
(43, 10, 27, N'桂东县'),
(43, 10, 28, N'安仁县'),
(43, 10, 81, N'资兴市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 11, N'永州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 11, 01, N'市辖区'),
(43, 11, 02, N'零陵区'),
(43, 11, 03, N'冷水滩区'),
(43, 11, 21, N'祁阳县'),
(43, 11, 22, N'东安县'),
(43, 11, 23, N'双牌县'),
(43, 11, 24, N'道县'),
(43, 11, 25, N'江永县'),
(43, 11, 26, N'宁远县'),
(43, 11, 27, N'蓝山县'),
(43, 11, 28, N'新田县'),
(43, 11, 29, N'江华瑶族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 12, N'怀化市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 12, 01, N'市辖区'),
(43, 12, 02, N'鹤城区'),
(43, 12, 21, N'中方县'),
(43, 12, 22, N'沅陵县'),
(43, 12, 23, N'辰溪县'),
(43, 12, 24, N'溆浦县'),
(43, 12, 25, N'会同县'),
(43, 12, 26, N'麻阳苗族自治县'),
(43, 12, 27, N'新晃侗族自治县'),
(43, 12, 28, N'芷江侗族自治县'),
(43, 12, 29, N'靖州苗族侗族自治县'),
(43, 12, 30, N'通道侗族自治县'),
(43, 12, 81, N'洪江市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 13, N'娄底市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 13, 01, N'市辖区'),
(43, 13, 02, N'娄星区'),
(43, 13, 21, N'双峰县'),
(43, 13, 22, N'新化县'),
(43, 13, 81, N'冷水江市'),
(43, 13, 82, N'涟源市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (43, 31, N'湘西土家族苗族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(43, 31, 01, N'吉首市'),
(43, 31, 22, N'泸溪县'),
(43, 31, 23, N'凤凰县'),
(43, 31, 24, N'花垣县'),
(43, 31, 25, N'保靖县'),
(43, 31, 26, N'古丈县'),
(43, 31, 27, N'永顺县'),
(43, 31, 30, N'龙山县');

/* 广东省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (44, N'广东省', N'广东', N'粤');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 01, N'广州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 01, 01, N'市辖区'),
(44, 01, 03, N'荔湾区'),
(44, 01, 04, N'越秀区'),
(44, 01, 05, N'海珠区'),
(44, 01, 06, N'天河区'),
(44, 01, 11, N'白云区'),
(44, 01, 12, N'黄埔区'),
(44, 01, 13, N'番禺区'),
(44, 01, 14, N'花都区'),
(44, 01, 15, N'南沙区'),
(44, 01, 17, N'从化区'),
(44, 01, 18, N'增城区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 02, N'韶关市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 02, 01, N'市辖区'),
(44, 02, 03, N'武江区'),
(44, 02, 04, N'浈江区'),
(44, 02, 05, N'曲江区'),
(44, 02, 22, N'始兴县'),
(44, 02, 24, N'仁化县'),
(44, 02, 29, N'翁源县'),
(44, 02, 32, N'乳源瑶族自治县'),
(44, 02, 33, N'新丰县'),
(44, 02, 81, N'乐昌市'),
(44, 02, 82, N'南雄市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 03, N'深圳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 03, 01, N'市辖区'),
(44, 03, 03, N'罗湖区'),
(44, 03, 04, N'福田区'),
(44, 03, 05, N'南山区'),
(44, 03, 06, N'宝安区'),
(44, 03, 07, N'龙岗区'),
(44, 03, 08, N'盐田区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 04, N'珠海市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 04, 01, N'市辖区'),
(44, 04, 02, N'香洲区'),
(44, 04, 03, N'斗门区'),
(44, 04, 04, N'金湾区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 05, N'汕头市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 05, 01, N'市辖区'),
(44, 05, 07, N'龙湖区'),
(44, 05, 11, N'金平区'),
(44, 05, 12, N'濠江区'),
(44, 05, 13, N'潮阳区'),
(44, 05, 14, N'潮南区'),
(44, 05, 15, N'澄海区'),
(44, 05, 23, N'南澳县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 06, N'佛山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 06, 01, N'市辖区'),
(44, 06, 04, N'禅城区'),
(44, 06, 05, N'南海区'),
(44, 06, 06, N'顺德区'),
(44, 06, 07, N'三水区'),
(44, 06, 08, N'高明区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 07, N'江门市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 07, 01, N'市辖区'),
(44, 07, 03, N'蓬江区'),
(44, 07, 04, N'江海区'),
(44, 07, 05, N'新会区'),
(44, 07, 81, N'台山市'),
(44, 07, 83, N'开平市'),
(44, 07, 84, N'鹤山市'),
(44, 07, 85, N'恩平市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 08, N'湛江市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 08, 01, N'市辖区'),
(44, 08, 02, N'赤坎区'),
(44, 08, 03, N'霞山区'),
(44, 08, 04, N'坡头区'),
(44, 08, 11, N'麻章区'),
(44, 08, 23, N'遂溪县'),
(44, 08, 25, N'徐闻县'),
(44, 08, 81, N'廉江市'),
(44, 08, 82, N'雷州市'),
(44, 08, 83, N'吴川市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 09, N'茂名市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 09, 01, N'市辖区'),
(44, 09, 02, N'茂南区'),
(44, 09, 04, N'电白区'),
(44, 09, 81, N'高州市'),
(44, 09, 82, N'化州市'),
(44, 09, 83, N'信宜市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 12, N'肇庆市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 12, 01, N'市辖区'),
(44, 12, 02, N'端州区'),
(44, 12, 03, N'鼎湖区'),
(44, 12, 04, N'高要区'),
(44, 12, 23, N'广宁县'),
(44, 12, 24, N'怀集县'),
(44, 12, 25, N'封开县'),
(44, 12, 26, N'德庆县'),
(44, 12, 84, N'四会市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 13, N'惠州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 13, 01, N'市辖区'),
(44, 13, 02, N'惠城区'),
(44, 13, 03, N'惠阳区'),
(44, 13, 22, N'博罗县'),
(44, 13, 23, N'惠东县'),
(44, 13, 24, N'龙门县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 14, N'梅州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 14, 01, N'市辖区'),
(44, 14, 02, N'梅江区'),
(44, 14, 03, N'梅县区'),
(44, 14, 22, N'大埔县'),
(44, 14, 23, N'丰顺县'),
(44, 14, 24, N'五华县'),
(44, 14, 26, N'平远县'),
(44, 14, 27, N'蕉岭县'),
(44, 14, 81, N'兴宁市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 15, N'汕尾市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 15, 01, N'市辖区'),
(44, 15, 02, N'城区'),
(44, 15, 21, N'海丰县'),
(44, 15, 23, N'陆河县'),
(44, 15, 81, N'陆丰市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 16, N'河源市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 16, 01, N'市辖区'),
(44, 16, 02, N'源城区'),
(44, 16, 21, N'紫金县'),
(44, 16, 22, N'龙川县'),
(44, 16, 23, N'连平县'),
(44, 16, 24, N'和平县'),
(44, 16, 25, N'东源县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 17, N'阳江市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 17, 01, N'市辖区'),
(44, 17, 02, N'江城区'),
(44, 17, 04, N'阳东区'),
(44, 17, 21, N'阳西县'),
(44, 17, 81, N'阳春市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 18, N'清远市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 18, 01, N'市辖区'),
(44, 18, 02, N'清城区'),
(44, 18, 03, N'清新区'),
(44, 18, 21, N'佛冈县'),
(44, 18, 23, N'阳山县'),
(44, 18, 25, N'连山壮族瑶族自治县'),
(44, 18, 26, N'连南瑶族自治县'),
(44, 18, 81, N'英德市'),
(44, 18, 82, N'连州市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 19, N'东莞市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 19, 001, N'市辖区'),
(44, 19, 101, N'石碣镇'),
(44, 19, 102, N'石龙镇'),
(44, 19, 103, N'茶山镇'),
(44, 19, 104, N'石排镇'),
(44, 19, 105, N'企石镇'),
(44, 19, 106, N'横沥镇'),
(44, 19, 107, N'桥头镇'),
(44, 19, 108, N'谢岗镇'),
(44, 19, 109, N'东坑镇'),
(44, 19, 110, N'常平镇'),
(44, 19, 111, N'寮步镇'),
(44, 19, 112, N'樟木头镇'),
(44, 19, 113, N'大朗镇'),
(44, 19, 114, N'黄江镇'),
(44, 19, 115, N'清溪镇'),
(44, 19, 116, N'塘厦镇'),
(44, 19, 117, N'凤岗镇'),
(44, 19, 118, N'大岭山镇'),
(44, 19, 119, N'长安镇'),
(44, 19, 121, N'虎门镇'),
(44, 19, 122, N'厚街镇'),
(44, 19, 123, N'沙田镇'),
(44, 19, 124, N'道滘镇'),
(44, 19, 125, N'洪梅镇'),
(44, 19, 126, N'麻涌镇'),
(44, 19, 127, N'望牛墩镇'),
(44, 19, 128, N'中堂镇'),
(44, 19, 129, N'高埗镇'),
(44, 19, 201, N'松山湖管委会'),
(44, 19, 202, N'虎门港管委会'),
(44, 19, 203, N'东莞生态园');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 20, N'中山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 20, 001, N'市辖区'),
(44, 20, 100, N'小榄镇'),
(44, 20, 101, N'黄圃镇'),
(44, 20, 102, N'民众镇'),
(44, 20, 103, N'东凤镇'),
(44, 20, 104, N'东升镇'),
(44, 20, 105, N'古镇镇'),
(44, 20, 106, N'沙溪镇'),
(44, 20, 107, N'坦洲镇'),
(44, 20, 108, N'港口镇'),
(44, 20, 109, N'三角镇'),
(44, 20, 110, N'横栏镇'),
(44, 20, 111, N'南头镇'),
(44, 20, 112, N'阜沙镇'),
(44, 20, 113, N'南朗镇'),
(44, 20, 114, N'三乡镇'),
(44, 20, 115, N'板芙镇'),
(44, 20, 116, N'大涌镇'),
(44, 20, 117, N'神湾镇');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 51, N'潮州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 51, 01, N'市辖区'),
(44, 51, 02, N'湘桥区'),
(44, 51, 03, N'潮安区'),
(44, 51, 22, N'饶平县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 52, N'揭阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 52, 01, N'市辖区'),
(44, 52, 02, N'榕城区'),
(44, 52, 03, N'揭东区'),
(44, 52, 22, N'揭西县'),
(44, 52, 24, N'惠来县'),
(44, 52, 81, N'普宁市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (44, 53, N'云浮市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(44, 53, 01, N'市辖区'),
(44, 53, 02, N'云城区'),
(44, 53, 03, N'云安区'),
(44, 53, 21, N'新兴县'),
(44, 53, 22, N'郁南县'),
(44, 53, 81, N'罗定市');

/* 广西省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (45, N'广西壮族自治区', N'广西', N'桂');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 01, N'南宁市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 01, 01, N'市辖区'),
(45, 01, 02, N'兴宁区'),
(45, 01, 03, N'青秀区'),
(45, 01, 05, N'江南区'),
(45, 01, 07, N'西乡塘区'),
(45, 01, 08, N'良庆区'),
(45, 01, 09, N'邕宁区'),
(45, 01, 10, N'武鸣区'),
(45, 01, 23, N'隆安县'),
(45, 01, 24, N'马山县'),
(45, 01, 25, N'上林县'),
(45, 01, 26, N'宾阳县'),
(45, 01, 27, N'横县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 02, N'柳州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 02, 01, N'市辖区'),
(45, 02, 02, N'城中区'),
(45, 02, 03, N'鱼峰区'),
(45, 02, 04, N'柳南区'),
(45, 02, 05, N'柳北区'),
(45, 02, 06, N'柳江区'),
(45, 02, 22, N'柳城县'),
(45, 02, 23, N'鹿寨县'),
(45, 02, 24, N'融安县'),
(45, 02, 25, N'融水苗族自治县'),
(45, 02, 26, N'三江侗族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 03, N'桂林市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 03, 01, N'市辖区'),
(45, 03, 02, N'秀峰区'),
(45, 03, 03, N'叠彩区'),
(45, 03, 04, N'象山区'),
(45, 03, 05, N'七星区'),
(45, 03, 11, N'雁山区'),
(45, 03, 12, N'临桂区'),
(45, 03, 21, N'阳朔县'),
(45, 03, 23, N'灵川县'),
(45, 03, 24, N'全州县'),
(45, 03, 25, N'兴安县'),
(45, 03, 26, N'永福县'),
(45, 03, 27, N'灌阳县'),
(45, 03, 28, N'龙胜各族自治县'),
(45, 03, 29, N'资源县'),
(45, 03, 30, N'平乐县'),
(45, 03, 31, N'荔浦县'),
(45, 03, 32, N'恭城瑶族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 04, N'梧州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 04, 01, N'市辖区'),
(45, 04, 03, N'万秀区'),
(45, 04, 05, N'长洲区'),
(45, 04, 06, N'龙圩区'),
(45, 04, 21, N'苍梧县'),
(45, 04, 22, N'藤县'),
(45, 04, 23, N'蒙山县'),
(45, 04, 81, N'岑溪市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 05, N'北海市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 05, 01, N'市辖区'),
(45, 05, 02, N'海城区'),
(45, 05, 03, N'银海区'),
(45, 05, 12, N'铁山港区'),
(45, 05, 21, N'合浦县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 06, N'防城港市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 06, 01, N'市辖区'),
(45, 06, 02, N'港口区'),
(45, 06, 03, N'防城区'),
(45, 06, 21, N'上思县'),
(45, 06, 81, N'东兴市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 07, N'钦州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 07, 01, N'市辖区'),
(45, 07, 02, N'钦南区'),
(45, 07, 03, N'钦北区'),
(45, 07, 21, N'灵山县'),
(45, 07, 22, N'浦北县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 08, N'贵港市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 08, 01, N'市辖区'),
(45, 08, 02, N'港北区'),
(45, 08, 03, N'港南区'),
(45, 08, 04, N'覃塘区'),
(45, 08, 21, N'平南县'),
(45, 08, 81, N'桂平市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 09, N'玉林市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 09, 01, N'市辖区'),
(45, 09, 02, N'玉州区'),
(45, 09, 03, N'福绵区'),
(45, 09, 21, N'容县'),
(45, 09, 22, N'陆川县'),
(45, 09, 23, N'博白县'),
(45, 09, 24, N'兴业县'),
(45, 09, 81, N'北流市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 10, N'百色市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 10, 01, N'市辖区'),
(45, 10, 02, N'右江区'),
(45, 10, 21, N'田阳县'),
(45, 10, 22, N'田东县'),
(45, 10, 23, N'平果县'),
(45, 10, 24, N'德保县'),
(45, 10, 26, N'那坡县'),
(45, 10, 27, N'凌云县'),
(45, 10, 28, N'乐业县'),
(45, 10, 29, N'田林县'),
(45, 10, 30, N'西林县'),
(45, 10, 31, N'隆林各族自治县'),
(45, 10, 81, N'靖西市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 11, N'贺州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 11, 01, N'市辖区'),
(45, 11, 02, N'八步区'),
(45, 11, 03, N'平桂区'),
(45, 11, 21, N'昭平县'),
(45, 11, 22, N'钟山县'),
(45, 11, 23, N'富川瑶族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 12, N'河池市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 12, 01, N'市辖区'),
(45, 12, 02, N'金城江区'),
(45, 12, 21, N'南丹县'),
(45, 12, 22, N'天峨县'),
(45, 12, 23, N'凤山县'),
(45, 12, 24, N'东兰县'),
(45, 12, 25, N'罗城仫佬族自治县'),
(45, 12, 26, N'环江毛南族自治县'),
(45, 12, 27, N'巴马瑶族自治县'),
(45, 12, 28, N'都安瑶族自治县'),
(45, 12, 29, N'大化瑶族自治县'),
(45, 12, 81, N'宜州市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 13, N'来宾市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 13, 01, N'市辖区'),
(45, 13, 02, N'兴宾区'),
(45, 13, 21, N'忻城县'),
(45, 13, 22, N'象州县'),
(45, 13, 23, N'武宣县'),
(45, 13, 24, N'金秀瑶族自治县'),
(45, 13, 81, N'合山市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (45, 14, N'崇左市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(45, 14, 01, N'市辖区'),
(45, 14, 02, N'江州区'),
(45, 14, 21, N'扶绥县'),
(45, 14, 22, N'宁明县'),
(45, 14, 23, N'龙州县'),
(45, 14, 24, N'大新县'),
(45, 14, 25, N'天等县'),
(45, 14, 81, N'凭祥市');

/* 海南省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (46, N'海南省', N'海南', N'琼');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (46, 01, N'海口市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(46, 01, 01, N'市辖区'),
(46, 01, 05, N'秀英区'),
(46, 01, 06, N'龙华区'),
(46, 01, 07, N'琼山区'),
(46, 01, 08, N'美兰区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (46, 02, N'三亚市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(46, 02, 01, N'市辖区'),
(46, 02, 02, N'海棠区'),
(46, 02, 03, N'吉阳区'),
(46, 02, 04, N'天涯区'),
(46, 02, 05, N'崖州区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (46, 03, N'三沙市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (46, 04, N'儋州市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (46, 90, N'省直辖县级行政区划');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(46, 90, 01, N'五指山市'),
(46, 90, 02, N'琼海市'),
(46, 90, 05, N'文昌市'),
(46, 90, 06, N'万宁市'),
(46, 90, 07, N'东方市'),
(46, 90, 21, N'定安县'),
(46, 90, 22, N'屯昌县'),
(46, 90, 23, N'澄迈县'),
(46, 90, 24, N'临高县'),
(46, 90, 25, N'白沙黎族自治县'),
(46, 90, 26, N'昌江黎族自治县'),
(46, 90, 27, N'乐东黎族自治县'),
(46, 90, 28, N'陵水黎族自治县'),
(46, 90, 29, N'保亭黎族苗族自治县'),
(46, 90, 30, N'琼中黎族苗族自治县');

/* 重庆市 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (50, N'重庆市', N'重庆', N'渝');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (50, 01, N'市辖区');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(50, 01, 01, N'万州区'),
(50, 01, 02, N'涪陵区'),
(50, 01, 03, N'渝中区'),
(50, 01, 04, N'大渡口区'),
(50, 01, 05, N'江北区'),
(50, 01, 06, N'沙坪坝区'),
(50, 01, 07, N'九龙坡区'),
(50, 01, 08, N'南岸区'),
(50, 01, 09, N'北碚区'),
(50, 01, 10, N'綦江区'),
(50, 01, 11, N'大足区'),
(50, 01, 12, N'渝北区'),
(50, 01, 13, N'巴南区'),
(50, 01, 14, N'黔江区'),
(50, 01, 15, N'长寿区'),
(50, 01, 16, N'江津区'),
(50, 01, 17, N'合川区'),
(50, 01, 18, N'永川区'),
(50, 01, 19, N'南川区'),
(50, 01, 20, N'璧山区'),
(50, 01, 51, N'铜梁区'),
(50, 01, 52, N'潼南区'),
(50, 01, 53, N'荣昌区'),
(50, 01, 54, N'开州区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (50, 02, N'县');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(50, 02, 28, N'梁平县'),
(50, 02, 29, N'城口县'),
(50, 02, 30, N'丰都县'),
(50, 02, 31, N'垫江县'),
(50, 02, 32, N'武隆县'),
(50, 02, 33, N'忠县'),
(50, 02, 35, N'云阳县'),
(50, 02, 36, N'奉节县'),
(50, 02, 37, N'巫山县'),
(50, 02, 38, N'巫溪县'),
(50, 02, 40, N'石柱土家族自治县'),
(50, 02, 41, N'秀山土家族苗族自治县'),
(50, 02, 42, N'酉阳土家族苗族自治县'),
(50, 02, 43, N'彭水苗族土家族自治县');

/* 四川省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (51, N'四川省', N'四川', N'川');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 01, N'成都市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 01, 01, N'市辖区'),
(51, 01, 04, N'锦江区'),
(51, 01, 05, N'青羊区'),
(51, 01, 06, N'金牛区'),
(51, 01, 07, N'武侯区'),
(51, 01, 08, N'成华区'),
(51, 01, 12, N'龙泉驿区'),
(51, 01, 13, N'青白江区'),
(51, 01, 14, N'新都区'),
(51, 01, 15, N'温江区'),
(51, 01, 16, N'双流区'),
(51, 01, 21, N'金堂县'),
(51, 01, 24, N'郫县'),
(51, 01, 29, N'大邑县'),
(51, 01, 31, N'蒲江县'),
(51, 01, 32, N'新津县'),
(51, 01, 81, N'都江堰市'),
(51, 01, 82, N'彭州市'),
(51, 01, 83, N'邛崃市'),
(51, 01, 84, N'崇州市'),
(51, 01, 85, N'简阳市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 03, N'自贡市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 03, 01, N'市辖区'),
(51, 03, 02, N'自流井区'),
(51, 03, 03, N'贡井区'),
(51, 03, 04, N'大安区'),
(51, 03, 11, N'沿滩区'),
(51, 03, 21, N'荣县'),
(51, 03, 22, N'富顺县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 04, N'攀枝花市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 04, 01, N'市辖区'),
(51, 04, 02, N'东区'),
(51, 04, 03, N'西区'),
(51, 04, 11, N'仁和区'),
(51, 04, 21, N'米易县'),
(51, 04, 22, N'盐边县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 05, N'泸州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 05, 01, N'市辖区'),
(51, 05, 02, N'江阳区'),
(51, 05, 03, N'纳溪区'),
(51, 05, 04, N'龙马潭区'),
(51, 05, 21, N'泸县'),
(51, 05, 22, N'合江县'),
(51, 05, 24, N'叙永县'),
(51, 05, 25, N'古蔺县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 06, N'德阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 06, 01, N'市辖区'),
(51, 06, 03, N'旌阳区'),
(51, 06, 23, N'中江县'),
(51, 06, 26, N'罗江县'),
(51, 06, 81, N'广汉市'),
(51, 06, 82, N'什邡市'),
(51, 06, 83, N'绵竹市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 07, N'绵阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 07, 01, N'市辖区'),
(51, 07, 03, N'涪城区'),
(51, 07, 04, N'游仙区'),
(51, 07, 05, N'安州区'),
(51, 07, 22, N'三台县'),
(51, 07, 23, N'盐亭县'),
(51, 07, 25, N'梓潼县'),
(51, 07, 26, N'北川羌族自治县'),
(51, 07, 27, N'平武县'),
(51, 07, 81, N'江油市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 08, N'广元市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 08, 01, N'市辖区'),
(51, 08, 02, N'利州区'),
(51, 08, 11, N'昭化区'),
(51, 08, 12, N'朝天区'),
(51, 08, 21, N'旺苍县'),
(51, 08, 22, N'青川县'),
(51, 08, 23, N'剑阁县'),
(51, 08, 24, N'苍溪县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 09, N'遂宁市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 09, 01, N'市辖区'),
(51, 09, 03, N'船山区'),
(51, 09, 04, N'安居区'),
(51, 09, 21, N'蓬溪县'),
(51, 09, 22, N'射洪县'),
(51, 09, 23, N'大英县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 10, N'内江市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 10, 01, N'市辖区'),
(51, 10, 02, N'市中区'),
(51, 10, 11, N'东兴区'),
(51, 10, 24, N'威远县'),
(51, 10, 25, N'资中县'),
(51, 10, 28, N'隆昌县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 11, N'乐山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 11, 01, N'市辖区'),
(51, 11, 02, N'市中区'),
(51, 11, 11, N'沙湾区'),
(51, 11, 12, N'五通桥区'),
(51, 11, 13, N'金口河区'),
(51, 11, 23, N'犍为县'),
(51, 11, 24, N'井研县'),
(51, 11, 26, N'夹江县'),
(51, 11, 29, N'沐川县'),
(51, 11, 32, N'峨边彝族自治县'),
(51, 11, 33, N'马边彝族自治县'),
(51, 11, 81, N'峨眉山市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 13, N'南充市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 13, 01, N'市辖区'),
(51, 13, 02, N'顺庆区'),
(51, 13, 03, N'高坪区'),
(51, 13, 04, N'嘉陵区'),
(51, 13, 21, N'南部县'),
(51, 13, 22, N'营山县'),
(51, 13, 23, N'蓬安县'),
(51, 13, 24, N'仪陇县'),
(51, 13, 25, N'西充县'),
(51, 13, 81, N'阆中市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 14, N'眉山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 14, 01, N'市辖区'),
(51, 14, 02, N'东坡区'),
(51, 14, 03, N'彭山区'),
(51, 14, 21, N'仁寿县'),
(51, 14, 23, N'洪雅县'),
(51, 14, 24, N'丹棱县'),
(51, 14, 25, N'青神县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 15, N'宜宾市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 15, 01, N'市辖区'),
(51, 15, 02, N'翠屏区'),
(51, 15, 03, N'南溪区'),
(51, 15, 21, N'宜宾县'),
(51, 15, 23, N'江安县'),
(51, 15, 24, N'长宁县'),
(51, 15, 25, N'高县'),
(51, 15, 26, N'珙县'),
(51, 15, 27, N'筠连县'),
(51, 15, 28, N'兴文县'),
(51, 15, 29, N'屏山县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 16, N'广安市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 16, 01, N'市辖区'),
(51, 16, 02, N'广安区'),
(51, 16, 03, N'前锋区'),
(51, 16, 21, N'岳池县'),
(51, 16, 22, N'武胜县'),
(51, 16, 23, N'邻水县'),
(51, 16, 81, N'华蓥市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 17, N'达州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 17, 01, N'市辖区'),
(51, 17, 02, N'通川区'),
(51, 17, 03, N'达川区'),
(51, 17, 22, N'宣汉县'),
(51, 17, 23, N'开江县'),
(51, 17, 24, N'大竹县'),
(51, 17, 25, N'渠县'),
(51, 17, 81, N'万源市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 18, N'雅安市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 18, 01, N'市辖区'),
(51, 18, 02, N'雨城区'),
(51, 18, 03, N'名山区'),
(51, 18, 22, N'荥经县'),
(51, 18, 23, N'汉源县'),
(51, 18, 24, N'石棉县'),
(51, 18, 25, N'天全县'),
(51, 18, 26, N'芦山县'),
(51, 18, 27, N'宝兴县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 19, N'巴中市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 19, 01, N'市辖区'),
(51, 19, 02, N'巴州区'),
(51, 19, 03, N'恩阳区'),
(51, 19, 21, N'通江县'),
(51, 19, 22, N'南江县'),
(51, 19, 23, N'平昌县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 20, N'资阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 20, 01, N'市辖区'),
(51, 20, 02, N'雁江区'),
(51, 20, 21, N'安岳县'),
(51, 20, 22, N'乐至县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 32, N'阿坝藏族羌族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 32, 01, N'马尔康市'),
(51, 32, 21, N'汶川县'),
(51, 32, 22, N'理县'),
(51, 32, 23, N'茂县'),
(51, 32, 24, N'松潘县'),
(51, 32, 25, N'九寨沟县'),
(51, 32, 26, N'金川县'),
(51, 32, 27, N'小金县'),
(51, 32, 28, N'黑水县'),
(51, 32, 30, N'壤塘县'),
(51, 32, 31, N'阿坝县'),
(51, 32, 32, N'若尔盖县'),
(51, 32, 33, N'红原县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 33, N'甘孜藏族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 33, 01, N'康定市'),
(51, 33, 22, N'泸定县'),
(51, 33, 23, N'丹巴县'),
(51, 33, 24, N'九龙县'),
(51, 33, 25, N'雅江县'),
(51, 33, 26, N'道孚县'),
(51, 33, 27, N'炉霍县'),
(51, 33, 28, N'甘孜县'),
(51, 33, 29, N'新龙县'),
(51, 33, 30, N'德格县'),
(51, 33, 31, N'白玉县'),
(51, 33, 32, N'石渠县'),
(51, 33, 33, N'色达县'),
(51, 33, 34, N'理塘县'),
(51, 33, 35, N'巴塘县'),
(51, 33, 36, N'乡城县'),
(51, 33, 37, N'稻城县'),
(51, 33, 38, N'得荣县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (51, 34, N'凉山彝族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(51, 34, 01, N'西昌市'),
(51, 34, 22, N'木里藏族自治县'),
(51, 34, 23, N'盐源县'),
(51, 34, 24, N'德昌县'),
(51, 34, 25, N'会理县'),
(51, 34, 26, N'会东县'),
(51, 34, 27, N'宁南县'),
(51, 34, 28, N'普格县'),
(51, 34, 29, N'布拖县'),
(51, 34, 30, N'金阳县'),
(51, 34, 31, N'昭觉县'),
(51, 34, 32, N'喜德县'),
(51, 34, 33, N'冕宁县'),
(51, 34, 34, N'越西县'),
(51, 34, 35, N'甘洛县'),
(51, 34, 36, N'美姑县'),
(51, 34, 37, N'雷波县');

/* 贵州省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (52, N'贵州省', N'贵州', N'贵');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (52, 01, N'贵阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(52, 01, 01, N'市辖区'),
(52, 01, 02, N'南明区'),
(52, 01, 03, N'云岩区'),
(52, 01, 11, N'花溪区'),
(52, 01, 12, N'乌当区'),
(52, 01, 13, N'白云区'),
(52, 01, 15, N'观山湖区'),
(52, 01, 21, N'开阳县'),
(52, 01, 22, N'息烽县'),
(52, 01, 23, N'修文县'),
(52, 01, 81, N'清镇市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (52, 02, N'六盘水市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(52, 02, 01, N'钟山区'),
(52, 02, 03, N'六枝特区'),
(52, 02, 21, N'水城县'),
(52, 02, 22, N'盘县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (52, 03, N'遵义市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(52, 03, 01, N'市辖区'),
(52, 03, 02, N'红花岗区'),
(52, 03, 03, N'汇川区'),
(52, 03, 04, N'播州区'),
(52, 03, 22, N'桐梓县'),
(52, 03, 23, N'绥阳县'),
(52, 03, 24, N'正安县'),
(52, 03, 25, N'道真仡佬族苗族自治县'),
(52, 03, 26, N'务川仡佬族苗族自治县'),
(52, 03, 27, N'凤冈县'),
(52, 03, 28, N'湄潭县'),
(52, 03, 29, N'余庆县'),
(52, 03, 30, N'习水县'),
(52, 03, 81, N'赤水市'),
(52, 03, 82, N'仁怀市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (52, 04, N'安顺市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(52, 04, 01, N'市辖区'),
(52, 04, 02, N'西秀区'),
(52, 04, 03, N'平坝区'),
(52, 04, 22, N'普定县'),
(52, 04, 23, N'镇宁布依族苗族自治县'),
(52, 04, 24, N'关岭布依族苗族自治县'),
(52, 04, 25, N'紫云苗族布依族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (52, 05, N'毕节市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(52, 05, 01, N'市辖区'),
(52, 05, 02, N'七星关区'),
(52, 05, 21, N'大方县'),
(52, 05, 22, N'黔西县'),
(52, 05, 23, N'金沙县'),
(52, 05, 24, N'织金县'),
(52, 05, 25, N'纳雍县'),
(52, 05, 26, N'威宁彝族回族苗族自治县'),
(52, 05, 27, N'赫章县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (52, 06, N'铜仁市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(52, 06, 01, N'市辖区'),
(52, 06, 02, N'碧江区'),
(52, 06, 03, N'万山区'),
(52, 06, 21, N'江口县'),
(52, 06, 22, N'玉屏侗族自治县'),
(52, 06, 23, N'石阡县'),
(52, 06, 24, N'思南县'),
(52, 06, 25, N'印江土家族苗族自治县'),
(52, 06, 26, N'德江县'),
(52, 06, 27, N'沿河土家族自治县'),
(52, 06, 28, N'松桃苗族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (52, 23, N'黔西南布依族苗族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(52, 23, 01, N'兴义市'),
(52, 23, 22, N'兴仁县'),
(52, 23, 23, N'普安县'),
(52, 23, 24, N'晴隆县'),
(52, 23, 25, N'贞丰县'),
(52, 23, 26, N'望谟县'),
(52, 23, 27, N'册亨县'),
(52, 23, 28, N'安龙县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (52, 26, N'黔东南苗族侗族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(52, 26, 01, N'凯里市'),
(52, 26, 22, N'黄平县'),
(52, 26, 23, N'施秉县'),
(52, 26, 24, N'三穗县'),
(52, 26, 25, N'镇远县'),
(52, 26, 26, N'岑巩县'),
(52, 26, 27, N'天柱县'),
(52, 26, 28, N'锦屏县'),
(52, 26, 29, N'剑河县'),
(52, 26, 30, N'台江县'),
(52, 26, 31, N'黎平县'),
(52, 26, 32, N'榕江县'),
(52, 26, 33, N'从江县'),
(52, 26, 34, N'雷山县'),
(52, 26, 35, N'麻江县'),
(52, 26, 36, N'丹寨县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (52, 27, N'黔南布依族苗族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(52, 27, 01, N'都匀市'),
(52, 27, 02, N'福泉市'),
(52, 27, 22, N'荔波县'),
(52, 27, 23, N'贵定县'),
(52, 27, 25, N'瓮安县'),
(52, 27, 26, N'独山县'),
(52, 27, 27, N'平塘县'),
(52, 27, 28, N'罗甸县'),
(52, 27, 29, N'长顺县'),
(52, 27, 30, N'龙里县'),
(52, 27, 31, N'惠水县'),
(52, 27, 32, N'三都水族自治县');

/* 云南省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (53, N'云南省', N'云南', N'云');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 01, N'昆明市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 01, 01, N'市辖区'),
(53, 01, 02, N'五华区'),
(53, 01, 03, N'盘龙区'),
(53, 01, 11, N'官渡区'),
(53, 01, 12, N'西山区'),
(53, 01, 13, N'东川区'),
(53, 01, 14, N'呈贡区'),
(53, 01, 22, N'晋宁县'),
(53, 01, 24, N'富民县'),
(53, 01, 25, N'宜良县'),
(53, 01, 26, N'石林彝族自治县'),
(53, 01, 27, N'嵩明县'),
(53, 01, 28, N'禄劝彝族苗族自治县'),
(53, 01, 29, N'寻甸回族彝族自治县'),
(53, 01, 81, N'安宁市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 03, N'曲靖市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 03, 01, N'市辖区'),
(53, 03, 02, N'麒麟区'),
(53, 03, 03, N'沾益区'),
(53, 03, 21, N'马龙县'),
(53, 03, 22, N'陆良县'),
(53, 03, 23, N'师宗县'),
(53, 03, 24, N'罗平县'),
(53, 03, 25, N'富源县'),
(53, 03, 26, N'会泽县'),
(53, 03, 81, N'宣威市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 04, N'玉溪市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 04, 01, N'市辖区'),
(53, 04, 02, N'红塔区'),
(53, 04, 03, N'江川区'),
(53, 04, 22, N'澄江县'),
(53, 04, 23, N'通海县'),
(53, 04, 24, N'华宁县'),
(53, 04, 25, N'易门县'),
(53, 04, 26, N'峨山彝族自治县'),
(53, 04, 27, N'新平彝族傣族自治县'),
(53, 04, 28, N'元江哈尼族彝族傣族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 05, N'保山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 05, 01, N'市辖区'),
(53, 05, 02, N'隆阳区'),
(53, 05, 21, N'施甸县'),
(53, 05, 23, N'龙陵县'),
(53, 05, 24, N'昌宁县'),
(53, 05, 81, N'腾冲市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 06, N'昭通市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 06, 01, N'市辖区'),
(53, 06, 02, N'昭阳区'),
(53, 06, 21, N'鲁甸县'),
(53, 06, 22, N'巧家县'),
(53, 06, 23, N'盐津县'),
(53, 06, 24, N'大关县'),
(53, 06, 25, N'永善县'),
(53, 06, 26, N'绥江县'),
(53, 06, 27, N'镇雄县'),
(53, 06, 28, N'彝良县'),
(53, 06, 29, N'威信县'),
(53, 06, 30, N'水富县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 07, N'丽江市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 07, 01, N'市辖区'),
(53, 07, 02, N'古城区'),
(53, 07, 21, N'玉龙纳西族自治县'),
(53, 07, 22, N'永胜县'),
(53, 07, 23, N'华坪县'),
(53, 07, 24, N'宁蒗彝族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 08, N'普洱市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 08, 01, N'市辖区'),
(53, 08, 02, N'思茅区'),
(53, 08, 21, N'宁洱哈尼族彝族自治县'),
(53, 08, 22, N'墨江哈尼族自治县'),
(53, 08, 23, N'景东彝族自治县'),
(53, 08, 24, N'景谷傣族彝族自治县'),
(53, 08, 25, N'镇沅彝族哈尼族拉祜族自治县'),
(53, 08, 26, N'江城哈尼族彝族自治县'),
(53, 08, 27, N'孟连傣族拉祜族佤族自治县'),
(53, 08, 28, N'澜沧拉祜族自治县'),
(53, 08, 29, N'西盟佤族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 09, N'临沧市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 09, 01, N'市辖区'),
(53, 09, 02, N'临翔区'),
(53, 09, 21, N'凤庆县'),
(53, 09, 22, N'云县'),
(53, 09, 23, N'永德县'),
(53, 09, 24, N'镇康县'),
(53, 09, 25, N'双江拉祜族佤族布朗族傣族自治县'),
(53, 09, 26, N'耿马傣族佤族自治县'),
(53, 09, 27, N'沧源佤族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 23, N'楚雄彝族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 23, 01, N'楚雄市'),
(53, 23, 22, N'双柏县'),
(53, 23, 23, N'牟定县'),
(53, 23, 24, N'南华县'),
(53, 23, 25, N'姚安县'),
(53, 23, 26, N'大姚县'),
(53, 23, 27, N'永仁县'),
(53, 23, 28, N'元谋县'),
(53, 23, 29, N'武定县'),
(53, 23, 31, N'禄丰县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 25, N'红河哈尼族彝族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 25, 01, N'个旧市'),
(53, 25, 02, N'开远市'),
(53, 25, 03, N'蒙自市'),
(53, 25, 04, N'弥勒市'),
(53, 25, 23, N'屏边苗族自治县'),
(53, 25, 24, N'建水县'),
(53, 25, 25, N'石屏县'),
(53, 25, 27, N'泸西县'),
(53, 25, 28, N'元阳县'),
(53, 25, 29, N'红河县'),
(53, 25, 30, N'金平苗族瑶族傣族自治县'),
(53, 25, 31, N'绿春县'),
(53, 25, 32, N'河口瑶族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 26, N'文山壮族苗族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 26, 01, N'文山市'),
(53, 26, 22, N'砚山县'),
(53, 26, 23, N'西畴县'),
(53, 26, 24, N'麻栗坡县'),
(53, 26, 25, N'马关县'),
(53, 26, 26, N'丘北县'),
(53, 26, 27, N'广南县'),
(53, 26, 28, N'富宁县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 28, N'西双版纳傣族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 28, 01, N'景洪市'),
(53, 28, 22, N'勐海县'),
(53, 28, 23, N'勐腊县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 29, N'大理白族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 29, 01, N'大理市'),
(53, 29, 22, N'漾濞彝族自治县'),
(53, 29, 23, N'祥云县'),
(53, 29, 24, N'宾川县'),
(53, 29, 25, N'弥渡县'),
(53, 29, 26, N'南涧彝族自治县'),
(53, 29, 27, N'巍山彝族回族自治县'),
(53, 29, 28, N'永平县'),
(53, 29, 29, N'云龙县'),
(53, 29, 30, N'洱源县'),
(53, 29, 31, N'剑川县'),
(53, 29, 32, N'鹤庆县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 31, N'德宏傣族景颇族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 31, 02, N'瑞丽市'),
(53, 31, 03, N'芒市'),
(53, 31, 22, N'梁河县'),
(53, 31, 23, N'盈江县'),
(53, 31, 24, N'陇川县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 33, N'怒江傈僳族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 33, 01, N'泸水市'),
(53, 33, 23, N'福贡县'),
(53, 33, 24, N'贡山独龙族怒族自治县'),
(53, 33, 25, N'兰坪白族普米族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (53, 34, N'迪庆藏族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(53, 34, 01, N'香格里拉市'),
(53, 34, 22, N'德钦县'),
(53, 34, 23, N'维西傈僳族自治县');

/* 西藏自治区 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (54, N'西藏自治区', N'西藏', N'藏');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (54, 01, N'拉萨市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(54, 01, 01, N'市辖区'),
(54, 01, 02, N'城关区'),
(54, 01, 03, N'堆龙德庆区'),
(54, 01, 21, N'林周县'),
(54, 01, 22, N'当雄县'),
(54, 01, 23, N'尼木县'),
(54, 01, 24, N'曲水县'),
(54, 01, 26, N'达孜县'),
(54, 01, 27, N'墨竹工卡县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (54, 02, N'日喀则市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(54, 02, 02, N'桑珠孜区'),
(54, 02, 21, N'南木林县'),
(54, 02, 22, N'江孜县'),
(54, 02, 23, N'定日县'),
(54, 02, 24, N'萨迦县'),
(54, 02, 25, N'拉孜县'),
(54, 02, 26, N'昂仁县'),
(54, 02, 27, N'谢通门县'),
(54, 02, 28, N'白朗县'),
(54, 02, 29, N'仁布县'),
(54, 02, 30, N'康马县'),
(54, 02, 31, N'定结县'),
(54, 02, 32, N'仲巴县'),
(54, 02, 33, N'亚东县'),
(54, 02, 34, N'吉隆县'),
(54, 02, 35, N'聂拉木县'),
(54, 02, 36, N'萨嘎县'),
(54, 02, 37, N'岗巴县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (54, 03, N'昌都市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(54, 03, 02, N'卡若区'),
(54, 03, 21, N'江达县'),
(54, 03, 22, N'贡觉县'),
(54, 03, 23, N'类乌齐县'),
(54, 03, 24, N'丁青县'),
(54, 03, 25, N'察雅县'),
(54, 03, 26, N'八宿县'),
(54, 03, 27, N'左贡县'),
(54, 03, 28, N'芒康县'),
(54, 03, 29, N'洛隆县'),
(54, 03, 30, N'边坝县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (54, 04, N'林芝市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(54, 04, 02, N'巴宜区'),
(54, 04, 21, N'工布江达县'),
(54, 04, 22, N'米林县'),
(54, 04, 23, N'墨脱县'),
(54, 04, 24, N'波密县'),
(54, 04, 25, N'察隅县'),
(54, 04, 26, N'朗县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (54, 05, N'山南市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(54, 05, 01, N'市辖区'),
(54, 05, 02, N'乃东区'),
(54, 05, 21, N'扎囊县'),
(54, 05, 22, N'贡嘎县'),
(54, 05, 23, N'桑日县'),
(54, 05, 24, N'琼结县'),
(54, 05, 25, N'曲松县'),
(54, 05, 26, N'措美县'),
(54, 05, 27, N'洛扎县'),
(54, 05, 28, N'加查县'),
(54, 05, 29, N'隆子县'),
(54, 05, 30, N'错那县'),
(54, 05, 31, N'浪卡子县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (54, 24, N'那曲地区');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(54, 24, 21, N'那曲县'),
(54, 24, 22, N'嘉黎县'),
(54, 24, 23, N'比如县'),
(54, 24, 24, N'聂荣县'),
(54, 24, 25, N'安多县'),
(54, 24, 26, N'申扎县'),
(54, 24, 27, N'索县'),
(54, 24, 28, N'班戈县'),
(54, 24, 29, N'巴青县'),
(54, 24, 30, N'尼玛县'),
(54, 24, 31, N'双湖县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (54, 25, N'阿里地区');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(54, 25, 21, N'普兰县'),
(54, 25, 22, N'札达县'),
(54, 25, 23, N'噶尔县'),
(54, 25, 24, N'日土县'),
(54, 25, 25, N'革吉县'),
(54, 25, 26, N'改则县'),
(54, 25, 27, N'措勤县');

/* 陕西省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (61, N'陕西省', N'陕西', N'陕');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (61, 01, N'西安市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(61, 01, 01, N'市辖区'),
(61, 01, 02, N'新城区'),
(61, 01, 03, N'碑林区'),
(61, 01, 04, N'莲湖区'),
(61, 01, 11, N'灞桥区'),
(61, 01, 12, N'未央区'),
(61, 01, 13, N'雁塔区'),
(61, 01, 14, N'阎良区'),
(61, 01, 15, N'临潼区'),
(61, 01, 16, N'长安区'),
(61, 01, 17, N'高陵区'),
(61, 01, 22, N'蓝田县'),
(61, 01, 24, N'周至县'),
(61, 01, 25, N'户县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (61, 02, N'铜川市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(61, 02, 01, N'市辖区'),
(61, 02, 02, N'王益区'),
(61, 02, 03, N'印台区'),
(61, 02, 04, N'耀州区'),
(61, 02, 22, N'宜君县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (61, 03, N'宝鸡市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(61, 03, 01, N'市辖区'),
(61, 03, 02, N'渭滨区'),
(61, 03, 03, N'金台区'),
(61, 03, 04, N'陈仓区'),
(61, 03, 22, N'凤翔县'),
(61, 03, 23, N'岐山县'),
(61, 03, 24, N'扶风县'),
(61, 03, 26, N'眉县'),
(61, 03, 27, N'陇县'),
(61, 03, 28, N'千阳县'),
(61, 03, 29, N'麟游县'),
(61, 03, 30, N'凤县'),
(61, 03, 31, N'太白县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (61, 04, N'咸阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(61, 04, 01, N'市辖区'),
(61, 04, 02, N'秦都区'),
(61, 04, 03, N'杨陵区'),
(61, 04, 04, N'渭城区'),
(61, 04, 22, N'三原县'),
(61, 04, 23, N'泾阳县'),
(61, 04, 24, N'乾县'),
(61, 04, 25, N'礼泉县'),
(61, 04, 26, N'永寿县'),
(61, 04, 27, N'彬县'),
(61, 04, 28, N'长武县'),
(61, 04, 29, N'旬邑县'),
(61, 04, 30, N'淳化县'),
(61, 04, 31, N'武功县'),
(61, 04, 81, N'兴平市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (61, 05, N'渭南市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(61, 05, 01, N'市辖区'),
(61, 05, 02, N'临渭区'),
(61, 05, 03, N'华州区'),
(61, 05, 22, N'潼关县'),
(61, 05, 23, N'大荔县'),
(61, 05, 24, N'合阳县'),
(61, 05, 25, N'澄城县'),
(61, 05, 26, N'蒲城县'),
(61, 05, 27, N'白水县'),
(61, 05, 28, N'富平县'),
(61, 05, 81, N'韩城市'),
(61, 05, 82, N'华阴市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (61, 06, N'延安市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(61, 06, 01, N'市辖区'),
(61, 06, 02, N'宝塔区'),
(61, 06, 03, N'安塞区'),
(61, 06, 21, N'延长县'),
(61, 06, 22, N'延川县'),
(61, 06, 23, N'子长县'),
(61, 06, 25, N'志丹县'),
(61, 06, 26, N'吴起县'),
(61, 06, 27, N'甘泉县'),
(61, 06, 28, N'富县'),
(61, 06, 29, N'洛川县'),
(61, 06, 30, N'宜川县'),
(61, 06, 31, N'黄龙县'),
(61, 06, 32, N'黄陵县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (61, 07, N'汉中市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(61, 07, 01, N'市辖区'),
(61, 07, 02, N'汉台区'),
(61, 07, 21, N'南郑县'),
(61, 07, 22, N'城固县'),
(61, 07, 23, N'洋县'),
(61, 07, 24, N'西乡县'),
(61, 07, 25, N'勉县'),
(61, 07, 26, N'宁强县'),
(61, 07, 27, N'略阳县'),
(61, 07, 28, N'镇巴县'),
(61, 07, 29, N'留坝县'),
(61, 07, 30, N'佛坪县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (61, 08, N'榆林市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(61, 08, 01, N'市辖区'),
(61, 08, 02, N'榆阳区'),
(61, 08, 03, N'横山区'),
(61, 08, 21, N'神木县'),
(61, 08, 22, N'府谷县'),
(61, 08, 24, N'靖边县'),
(61, 08, 25, N'定边县'),
(61, 08, 26, N'绥德县'),
(61, 08, 27, N'米脂县'),
(61, 08, 28, N'佳县'),
(61, 08, 29, N'吴堡县'),
(61, 08, 30, N'清涧县'),
(61, 08, 31, N'子洲县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (61, 09, N'安康市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(61, 09, 01, N'市辖区'),
(61, 09, 02, N'汉滨区'),
(61, 09, 21, N'汉阴县'),
(61, 09, 22, N'石泉县'),
(61, 09, 23, N'宁陕县'),
(61, 09, 24, N'紫阳县'),
(61, 09, 25, N'岚皋县'),
(61, 09, 26, N'平利县'),
(61, 09, 27, N'镇坪县'),
(61, 09, 28, N'旬阳县'),
(61, 09, 29, N'白河县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (61, 10, N'商洛市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(61, 10, 01, N'市辖区'),
(61, 10, 02, N'商州区'),
(61, 10, 21, N'洛南县'),
(61, 10, 22, N'丹凤县'),
(61, 10, 23, N'商南县'),
(61, 10, 24, N'山阳县'),
(61, 10, 25, N'镇安县'),
(61, 10, 26, N'柞水县');

/* 甘肃省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (62, N'甘肃省', N'甘肃', N'甘');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 01, N'兰州市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 01, 01, N'市辖区'),
(62, 01, 02, N'城关区'),
(62, 01, 03, N'七里河区'),
(62, 01, 04, N'西固区'),
(62, 01, 05, N'安宁区'),
(62, 01, 11, N'红古区'),
(62, 01, 21, N'永登县'),
(62, 01, 22, N'皋兰县'),
(62, 01, 23, N'榆中县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 02, N'嘉峪关市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES (62, 02, 01, N'市辖区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 03, N'金昌市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 03, 01, N'市辖区'),
(62, 03, 02, N'金川区'),
(62, 03, 21, N'永昌县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 04, N'白银市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 04, 01, N'市辖区'),
(62, 04, 02, N'白银区'),
(62, 04, 03, N'平川区'),
(62, 04, 21, N'靖远县'),
(62, 04, 22, N'会宁县'),
(62, 04, 23, N'景泰县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 05, N'天水市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 05, 01, N'市辖区'),
(62, 05, 02, N'秦州区'),
(62, 05, 03, N'麦积区'),
(62, 05, 21, N'清水县'),
(62, 05, 22, N'秦安县'),
(62, 05, 23, N'甘谷县'),
(62, 05, 24, N'武山县'),
(62, 05, 25, N'张家川回族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 06, N'武威市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 06, 01, N'市辖区'),
(62, 06, 02, N'凉州区'),
(62, 06, 21, N'民勤县'),
(62, 06, 22, N'古浪县'),
(62, 06, 23, N'天祝藏族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 07, N'张掖市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 07, 01, N'市辖区'),
(62, 07, 02, N'甘州区'),
(62, 07, 21, N'肃南裕固族自治县'),
(62, 07, 22, N'民乐县'),
(62, 07, 23, N'临泽县'),
(62, 07, 24, N'高台县'),
(62, 07, 25, N'山丹县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 08, N'平凉市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 08, 01, N'市辖区'),
(62, 08, 02, N'崆峒区'),
(62, 08, 21, N'泾川县'),
(62, 08, 22, N'灵台县'),
(62, 08, 23, N'崇信县'),
(62, 08, 24, N'华亭县'),
(62, 08, 25, N'庄浪县'),
(62, 08, 26, N'静宁县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 09, N'酒泉市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 09, 01, N'市辖区'),
(62, 09, 02, N'肃州区'),
(62, 09, 21, N'金塔县'),
(62, 09, 22, N'瓜州县'),
(62, 09, 23, N'肃北蒙古族自治县'),
(62, 09, 24, N'阿克塞哈萨克族自治县'),
(62, 09, 81, N'玉门市'),
(62, 09, 82, N'敦煌市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 10, N'庆阳市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 10, 01, N'市辖区'),
(62, 10, 02, N'西峰区'),
(62, 10, 21, N'庆城县'),
(62, 10, 22, N'环县'),
(62, 10, 23, N'华池县'),
(62, 10, 24, N'合水县'),
(62, 10, 25, N'正宁县'),
(62, 10, 26, N'宁县'),
(62, 10, 27, N'镇原县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 11, N'定西市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 11, 01, N'市辖区'),
(62, 11, 02, N'安定区'),
(62, 11, 21, N'通渭县'),
(62, 11, 22, N'陇西县'),
(62, 11, 23, N'渭源县'),
(62, 11, 24, N'临洮县'),
(62, 11, 25, N'漳县'),
(62, 11, 26, N'岷县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 12, N'陇南市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 12, 01, N'市辖区'),
(62, 12, 02, N'武都区'),
(62, 12, 21, N'成县'),
(62, 12, 22, N'文县'),
(62, 12, 23, N'宕昌县'),
(62, 12, 24, N'康县'),
(62, 12, 25, N'西和县'),
(62, 12, 26, N'礼县'),
(62, 12, 27, N'徽县'),
(62, 12, 28, N'两当县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 29, N'临夏回族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 29, 01, N'临夏市'),
(62, 29, 21, N'临夏县'),
(62, 29, 22, N'康乐县'),
(62, 29, 23, N'永靖县'),
(62, 29, 24, N'广河县'),
(62, 29, 25, N'和政县'),
(62, 29, 26, N'东乡族自治县'),
(62, 29, 27, N'积石山保安族东乡族撒拉族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (62, 30, N'甘南藏族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(62, 30, 01, N'合作市'),
(62, 30, 21, N'临潭县'),
(62, 30, 22, N'卓尼县'),
(62, 30, 23, N'舟曲县'),
(62, 30, 24, N'迭部县'),
(62, 30, 25, N'玛曲县'),
(62, 30, 26, N'碌曲县'),
(62, 30, 27, N'夏河县');

/* 青海省 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (63, N'青海省', N'青海', N'青');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (63, 01, N'西宁市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(63, 01, 01, N'市辖区'),
(63, 01, 02, N'城东区'),
(63, 01, 03, N'城中区'),
(63, 01, 04, N'城西区'),
(63, 01, 05, N'城北区'),
(63, 01, 21, N'大通回族土族自治县'),
(63, 01, 22, N'湟中县'),
(63, 01, 23, N'湟源县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (63, 02, N'海东市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(63, 02, 02, N'乐都区'),
(63, 02, 03, N'平安区'),
(63, 02, 22, N'民和回族土族自治县'),
(63, 02, 23, N'互助土族自治县'),
(63, 02, 24, N'化隆回族自治县'),
(63, 02, 25, N'循化撒拉族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (63, 22, N'海北藏族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(63, 22, 21, N'门源回族自治县'),
(63, 22, 22, N'祁连县'),
(63, 22, 23, N'海晏县'),
(63, 22, 24, N'刚察县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (63, 23, N'黄南藏族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(63, 23, 21, N'同仁县'),
(63, 23, 22, N'尖扎县'),
(63, 23, 23, N'泽库县'),
(63, 23, 24, N'河南蒙古族自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (63, 25, N'海南藏族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(63, 25, 21, N'共和县'),
(63, 25, 22, N'同德县'),
(63, 25, 23, N'贵德县'),
(63, 25, 24, N'兴海县'),
(63, 25, 25, N'贵南县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (63, 26, N'果洛藏族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(63, 26, 21, N'玛沁县'),
(63, 26, 22, N'班玛县'),
(63, 26, 23, N'甘德县'),
(63, 26, 24, N'达日县'),
(63, 26, 25, N'久治县'),
(63, 26, 26, N'玛多县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (63, 27, N'玉树藏族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(63, 27, 01, N'玉树市'),
(63, 27, 22, N'杂多县'),
(63, 27, 23, N'称多县'),
(63, 27, 24, N'治多县'),
(63, 27, 25, N'囊谦县'),
(63, 27, 26, N'曲麻莱县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (63, 28, N'海西蒙古族藏族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(63, 28, 01, N'格尔木市'),
(63, 28, 02, N'德令哈市'),
(63, 28, 21, N'乌兰县'),
(63, 28, 22, N'都兰县'),
(63, 28, 23, N'天峻县');

/* 宁夏回族自治区 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (64, N'宁夏回族自治区', N'宁夏', N'宁');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (64, 01, N'银川市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(64, 01, 01, N'市辖区'),
(64, 01, 04, N'兴庆区'),
(64, 01, 05, N'西夏区'),
(64, 01, 06, N'金凤区'),
(64, 01, 21, N'永宁县'),
(64, 01, 22, N'贺兰县'),
(64, 01, 81, N'灵武市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (64, 02, N'石嘴山市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(64, 02, 01, N'市辖区'),
(64, 02, 02, N'大武口区'),
(64, 02, 05, N'惠农区'),
(64, 02, 21, N'平罗县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (64, 03, N'吴忠市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(64, 03, 01, N'市辖区'),
(64, 03, 02, N'利通区'),
(64, 03, 03, N'红寺堡区'),
(64, 03, 23, N'盐池县'),
(64, 03, 24, N'同心县'),
(64, 03, 81, N'青铜峡市');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (64, 04, N'固原市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(64, 04, 01, N'市辖区'),
(64, 04, 02, N'原州区'),
(64, 04, 22, N'西吉县'),
(64, 04, 23, N'隆德县'),
(64, 04, 24, N'泾源县'),
(64, 04, 25, N'彭阳县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (64, 05, N'中卫市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(64, 05, 01, N'市辖区'),
(64, 05, 02, N'沙坡头区'),
(64, 05, 21, N'中宁县'),
(64, 05, 22, N'海原县');

/* 新疆维吾尔自治区 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (65, N'新疆维吾尔自治区', N'新疆', N'新');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 01, N'乌鲁木齐市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 01, 01, N'市辖区'),
(65, 01, 02, N'天山区'),
(65, 01, 03, N'沙依巴克区'),
(65, 01, 04, N'新市区'),
(65, 01, 05, N'水磨沟区'),
(65, 01, 06, N'头屯河区'),
(65, 01, 07, N'达坂城区'),
(65, 01, 09, N'米东区'),
(65, 01, 21, N'乌鲁木齐县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 02, N'克拉玛依市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 02, 01, N'市辖区'),
(65, 02, 02, N'独山子区'),
(65, 02, 03, N'克拉玛依区'),
(65, 02, 04, N'白碱滩区'),
(65, 02, 05, N'乌尔禾区');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 04, N'吐鲁番市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 04, 02, N'高昌区'),
(65, 04, 21, N'鄯善县'),
(65, 04, 22, N'托克逊县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 05, N'哈密市');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 05, 02, N'伊州区'),
(65, 05, 21, N'巴里坤哈萨克自治县'),
(65, 05, 22, N'伊吾县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 23, N'昌吉回族自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 23, 01, N'昌吉市'),
(65, 23, 02, N'阜康市'),
(65, 23, 23, N'呼图壁县'),
(65, 23, 24, N'玛纳斯县'),
(65, 23, 25, N'奇台县'),
(65, 23, 27, N'吉木萨尔县'),
(65, 23, 28, N'木垒哈萨克自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 27, N'博尔塔拉蒙古自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 27, 01, N'博乐市'),
(65, 27, 02, N'阿拉山口市'),
(65, 27, 22, N'精河县'),
(65, 27, 23, N'温泉县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 28, N'巴音郭楞蒙古自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 28, 01, N'库尔勒市'),
(65, 28, 22, N'轮台县'),
(65, 28, 23, N'尉犁县'),
(65, 28, 24, N'若羌县'),
(65, 28, 25, N'且末县'),
(65, 28, 26, N'焉耆回族自治县'),
(65, 28, 27, N'和静县'),
(65, 28, 28, N'和硕县'),
(65, 28, 29, N'博湖县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 29, N'阿克苏地区');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 29, 01, N'阿克苏市'),
(65, 29, 22, N'温宿县'),
(65, 29, 23, N'库车县'),
(65, 29, 24, N'沙雅县'),
(65, 29, 25, N'新和县'),
(65, 29, 26, N'拜城县'),
(65, 29, 27, N'乌什县'),
(65, 29, 28, N'阿瓦提县'),
(65, 29, 29, N'柯坪县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 30, N'克孜勒苏柯尔克孜自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 30, 01, N'阿图什市'),
(65, 30, 22, N'阿克陶县'),
(65, 30, 23, N'阿合奇县'),
(65, 30, 24, N'乌恰县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 31, N'喀什地区');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 31, 01, N'喀什市'),
(65, 31, 21, N'疏附县'),
(65, 31, 22, N'疏勒县'),
(65, 31, 23, N'英吉沙县'),
(65, 31, 24, N'泽普县'),
(65, 31, 25, N'莎车县'),
(65, 31, 26, N'叶城县'),
(65, 31, 27, N'麦盖提县'),
(65, 31, 28, N'岳普湖县'),
(65, 31, 29, N'伽师县'),
(65, 31, 30, N'巴楚县'),
(65, 31, 31, N'塔什库尔干塔吉克自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 32, N'和田地区');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 32, 01, N'和田市'),
(65, 32, 21, N'和田县'),
(65, 32, 22, N'墨玉县'),
(65, 32, 23, N'皮山县'),
(65, 32, 24, N'洛浦县'),
(65, 32, 25, N'策勒县'),
(65, 32, 26, N'于田县'),
(65, 32, 27, N'民丰县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 40, N'伊犁哈萨克自治州');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 40, 02, N'伊宁市'),
(65, 40, 03, N'奎屯市'),
(65, 40, 04, N'霍尔果斯市'),
(65, 40, 21, N'伊宁县'),
(65, 40, 22, N'察布查尔锡伯自治县'),
(65, 40, 23, N'霍城县'),
(65, 40, 24, N'巩留县'),
(65, 40, 25, N'新源县'),
(65, 40, 26, N'昭苏县'),
(65, 40, 27, N'特克斯县'),
(65, 40, 28, N'尼勒克县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 42, N'塔城地区');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 42, 01, N'塔城市'),
(65, 42, 02, N'乌苏市'),
(65, 42, 21, N'额敏县'),
(65, 42, 23, N'沙湾县'),
(65, 42, 24, N'托里县'),
(65, 42, 25, N'裕民县'),
(65, 42, 26, N'和布克赛尔蒙古自治县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 43, N'阿勒泰地区');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 43, 01, N'阿勒泰市'),
(65, 43, 21, N'布尔津县'),
(65, 43, 22, N'富蕴县'),
(65, 43, 23, N'福海县'),
(65, 43, 24, N'哈巴河县'),
(65, 43, 25, N'青河县'),
(65, 43, 26, N'吉木乃县');

INSERT INTO City (ProvinceId, CityId, Name) VALUES (65, 90, N'自治区直辖县级行政区划');
INSERT INTO District (ProvinceId, CityId, DistrictId, Name) VALUES
(65, 90, 01, N'石河子市'),
(65, 90, 02, N'阿拉尔市'),
(65, 90, 03, N'图木舒克市'),
(65, 90, 04, N'五家渠市'),
(65, 90, 06, N'铁门关市');

/* 港澳台 */

INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (71, N'台湾省', N'台湾', N'台');
INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (81, N'香港特别行政区', N'香港', N'港');
INSERT INTO Province (ProvinceId, Name, Abbr, Alias) VALUES (82, N'澳门特别行政区', N'澳门', N'澳');
