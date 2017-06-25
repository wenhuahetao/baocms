/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : 52jscn

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-07-14 15:14:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bao_activity`
-- ----------------------------
DROP TABLE IF EXISTS `bao_activity`;
CREATE TABLE `bao_activity` (
  `activity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) DEFAULT '0',
  `shop_id` int(10) DEFAULT NULL,
  `tuan_id` int(11) DEFAULT '0',
  `city_id` smallint(5) unsigned DEFAULT '0',
  `area_id` smallint(5) unsigned DEFAULT '0',
  `business_id` smallint(5) unsigned DEFAULT '0',
  `title` varchar(128) DEFAULT NULL,
  `intro` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `thumb` text,
  `details` text,
  `price` decimal(32,0) DEFAULT NULL,
  `bg_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `time` varchar(64) DEFAULT NULL,
  `sign_end` date DEFAULT NULL,
  `addr` varchar(1024) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT NULL,
  `audit` tinyint(2) DEFAULT '0',
  `closed` tinyint(2) DEFAULT '0',
  `sign_num` int(10) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `template` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_activity_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_activity_cate`;
CREATE TABLE `bao_activity_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` tinyint(3) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_activity_cate
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_activity_sign`
-- ----------------------------
DROP TABLE IF EXISTS `bao_activity_sign`;
CREATE TABLE `bao_activity_sign` (
  `sign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `num` int(5) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_activity_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_ad`
-- ----------------------------
DROP TABLE IF EXISTS `bao_ad`;
CREATE TABLE `bao_ad` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` smallint(6) DEFAULT '0',
  `city_id` smallint(5) unsigned DEFAULT '0',
  `title` varchar(64) DEFAULT NULL,
  `link_url` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `code` varchar(1024) DEFAULT NULL,
  `bg_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_ad
-- ----------------------------
INSERT INTO `bao_ad` VALUES ('1', '1', '1', 'BAOCMS发布啦', 'http://www.haoid.cn', '2014/09/19/541c2c0a0a93b.jpg', '', '2014-09-18', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('2', '1', '1', '首页横幅广告', '#', '2014/09/19/541c44c9c5aec.gif', '', '2014-09-18', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('3', '3', '1', '演示婚庆1', '/shop/detail/shop_id/2.html', '2014/10/10/54374be48e09d.jpg', '', '2014-09-14', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('4', '3', '1', '演示婚庆2', '/shop/detail/shop_id/3.html', '2014/10/10/54374c8d7e8b1.jpg', '', '2014-10-09', '2020-01-01', '1', '2');
INSERT INTO `bao_ad` VALUES ('5', '3', '1', '解馋牛排时尚牛排火锅', '/shop/detail/shop_id/41.html', '2014/10/10/543794a9c24d3.jpg', '', '2014-10-01', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('6', '3', '1', '家居广告1', '/shop/index/cat/7.html', '2014/10/10/54379e4d767bd.jpg', '', '2014-10-01', '2020-01-01', '1', '100');
INSERT INTO `bao_ad` VALUES ('7', '188', '1', '美食', '/mobile/shop/index/cat/1.html', '', '', '2014-11-15', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('8', '88', '1', '小吃快餐', '/mobile/shop/index/cat/2.html', '', '', '2014-11-15', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('9', '88', '1', '看电影', '/mobile/shop/index/cat/54.html', '', '', '2014-11-15', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('10', '88', '1', '找优惠', '/mobile/tuan/index.html', '', '', '2014-11-15', '2020-01-01', '0', '4');
INSERT INTO `bao_ad` VALUES ('11', '88', '1', '订酒店', '/mobile/shop/index/cat/13.html', '', '', '2014-11-15', '2020-01-01', '0', '5');
INSERT INTO `bao_ad` VALUES ('12', '2', '1', '轮播1', 'http://www.haoid.cn', '2015/10/05/56127a62be56d.jpg', '', '2014-11-15', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('13', '2', '1', '轮播2', 'http://www.haoid.cn', '2015/10/05/56127a830f4bc.jpg', '', '2014-11-15', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('14', '2', '1', '美食', 'http://www.haoid.cn', '2015/10/05/56127a9146f6f.jpg', '', '2014-11-15', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('15', '3', '1', '美丽人生婚礼顾问馆', '/mobile/shop/index/cat/2.html', '2014/11/18/546b2816677f9.jpg', '', '2014-11-18', '2020-01-01', '1', '2');
INSERT INTO `bao_ad` VALUES ('16', '4', '1', '美丽人生婚礼顾问馆', '/shop/detail/shop_id/2.html', '2015/04/23/5538c6dae19c4.jpg', '', '2014-11-19', '2020-01-01', '0', '12');
INSERT INTO `bao_ad` VALUES ('17', '4', '1', '一人心婚礼造梦机构二周年庆典，精彩不断', '/shop/detail/shop_id/2.html', '2015/04/24/5539aca987408.jpg', '', '2014-11-11', '2020-01-01', '0', '23');
INSERT INTO `bao_ad` VALUES ('18', '4', '1', '美丽人生婚礼顾问馆', '/shop/detail/shop_id/2.html', '2015/04/24/5539ac9b918e2.jpg', '', '2014-11-06', '2020-01-01', '0', '5');
INSERT INTO `bao_ad` VALUES ('19', '4', '1', '双11优惠券', '/shop/detail/shop_id/2.html', '2015/09/13/55f57eaa75b8a.jpg', '', '2014-11-06', '2020-01-01', '0', '4');
INSERT INTO `bao_ad` VALUES ('20', '5', '1', '积分商城BANNER', '/shop/detail/shop_id/85.html', '2015/09/13/55f57d12e8a2d.jpg', '积分商城BANNER', '2014-11-20', '2020-01-01', '1', '2');
INSERT INTO `bao_ad` VALUES ('21', '7', '1', 'PC首页广告', '/shop/detail/shop_id/30.html', '2015/04/24/5539af4a076f8.jpg', 'PC首页广告', '2014-11-20', '2020-01-01', '1', '2');
INSERT INTO `bao_ad` VALUES ('22', '8', '1', '轮播广告', '/shop/detail/shop_id/55.html', '2015/04/23/5538bb2e90d19.jpg', '', '2014-11-21', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('23', '1', '1', '家政', 'http://www.haoid.cn/', '2015/11/22/5651c943dddf1.jpg', '', '2014-11-24', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('24', '7', '1', '首页广告3', 'http://www.haoid.cn', '2014/11/27/547684ed9e88e.jpg', '', '2014-11-26', '2020-01-01', '1', '3');
INSERT INTO `bao_ad` VALUES ('25', '11', '1', '最新上线', 'http://www.baidu.com', '2014/12/29/54a121043953a.jpg', '', '2014-12-29', '2020-01-01', '0', '23');
INSERT INTO `bao_ad` VALUES ('26', '9', '1', '品牌热区', 'http://www.jd.com', '2014/12/29/54a1216663781.png', '', '2014-12-15', '2020-01-01', '0', '34');
INSERT INTO `bao_ad` VALUES ('27', '10', '1', '风潮来袭', 'http://www.sina.com', '2014/12/29/54a1219463de0.png', '', '2014-12-04', '2020-01-01', '0', '100');
INSERT INTO `bao_ad` VALUES ('28', '9', '1', '品牌热区', 'http://www.baidu.com', '2014/12/29/54a1252dcb10e.png', '', '2014-12-22', '2020-01-01', '0', '11');
INSERT INTO `bao_ad` VALUES ('29', '13', '1', '蜀王烤鱼火锅怎么样', 'http://www.taobao.com', '2014/12/30/54a243123212b.png', '', '2014-12-29', '2020-01-01', '0', '34');
INSERT INTO `bao_ad` VALUES ('30', '12', '1', '蜀王烤鱼火锅', 'http://www.jd.com', '2014/12/30/54a24460e87b5.png', '', '2014-12-29', '2020-01-01', '0', '12');
INSERT INTO `bao_ad` VALUES ('31', '12', '1', '蜀王烤鱼火锅', 'http://www.google.cn/', '2014/12/30/54a2441d5319a.png', '', '2014-12-29', '2020-01-01', '0', '35');
INSERT INTO `bao_ad` VALUES ('32', '13', '1', '品牌热区', 'http://www.sina.com', '2014/12/30/54a242f2d1caa.png', '', '2014-12-29', '2020-01-01', '0', '23');
INSERT INTO `bao_ad` VALUES ('33', '12', '1', '蜀王烤鱼火锅', 'http://www.qzone.qq.com', '2014/12/30/54a2448f3a145.png', '', '2014-12-28', '2020-01-01', '0', '100');
INSERT INTO `bao_ad` VALUES ('34', '14', '1', '商家新闻列表BANNER', '/shop/detail/shop_id/21.html', '2015/04/24/5539ade1809f4.jpg', '', '2015-01-05', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('35', '15', '1', '文章资讯列表页', '/shop/detail/shop_id/49.html', '2015/04/23/5538c5b08e194.jpg', '文章资讯列表页', '2015-01-06', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('36', '1', '1', '商家加盟', 'http://www.haoid.cn/', '2015/11/22/5651c6b3aa5ff.png', '', '2015-01-06', '2020-01-01', '1', '2');
INSERT INTO `bao_ad` VALUES ('37', '5', '1', 'PC首页餐饮频道轮播广告', '/shop/detail/shop_id/85.html', '2016/02/27/56d1580e551c3.jpg', '', '2015-01-06', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('38', '17', '1', '下班去哪玩', '/tuan/detail/tuan_id/13.html', '2015/01/07/54ac9f5c1b483.jpg', '', '2015-01-05', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('39', '16', '1', '0元抽奖等你来', '/tuan/detail/tuan_id/12.html', '2015/04/23/5538c9268922f.jpg', '', '2015-01-06', '2020-01-01', '0', '12');
INSERT INTO `bao_ad` VALUES ('40', '16', '1', '0元抽奖等你来', '/shop/detail/shop_id/39.html', '2015/04/23/5538c60f8c405.jpg', '', '2015-01-06', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('41', '16', '1', '0元抽奖等你来', '/shop/detail/shop_id/39.html', '2015/04/23/5538c5ec81821.jpg', '', '2015-01-06', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('42', '16', '1', '0元抽奖等你来', '/shop/detail/shop_id/39.html', '2015/04/23/5538c5d598232.jpg', '', '2015-01-06', '2020-01-01', '0', '23');
INSERT INTO `bao_ad` VALUES ('43', '17', '1', '下班去哪玩1', '/tuan/detail/tuan_id/13.html', '2015/01/07/54ac9f5c1b483.jpg', '', '2015-01-05', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('44', '17', '1', '下班去哪玩2', '/tuan/detail/tuan_id/13.html', '2015/01/07/54ac9f5c1b483.jpg', '', '2015-01-05', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('45', '17', '1', '活动', 'http://www.haoid.cn/huodong/detail/activity_id/16.html', '2015/04/28/553f333bc1a07.jpg', '', '2015-01-05', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('46', '18', '1', '优惠券轮播', '/coupon/detail/coupon_id/12.html', '2015/04/24/553a14654b69f.jpg', '', '2015-01-04', '2020-01-01', '0', '23');
INSERT INTO `bao_ad` VALUES ('47', '18', '1', '优惠券轮播', '/coupon/detail/coupon_id/12.html', '2015/04/24/553a1459348a3.jpg', '', '2015-01-04', '2020-01-01', '0', '23');
INSERT INTO `bao_ad` VALUES ('48', '19', '1', '优惠券轮播', '/coupon/detail/coupon_id/12.html', '2015/04/24/553a14462fe13.jpg', '', '2015-01-04', '2020-01-01', '1', '23');
INSERT INTO `bao_ad` VALUES ('49', '19', '1', 'PC生活信息首页横幅广告', 'http://www.haoid.cn/tuan/detail/tuan_id/2.html', '2015/04/24/553a149f57f17.jpg', '', '2015-01-13', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('50', '20', '1', '右侧二维码图片', '#', '2015/04/24/5539dd54ed0b5.jpg', '', '2015-01-13', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('51', '19', '1', '购物广告', '/mall/detail/goods_id/12.html', '2015/04/25/553af8986171e.jpg', '', '2015-01-12', '2020-01-01', '1', '12');
INSERT INTO `bao_ad` VALUES ('52', '5', '1', '品牌热区', '/shop/detail/shop_id/85.html', '2016/02/27/56d157ecc6834.jpg', '', '2015-01-04', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('53', '555', '1', 'PC活动首页轮播广告位', 'http://www.haoid.cn/mall/detail/goods_id/16.html', '2015/04/25/553af4fd56053.jpg', '', '2015-01-13', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('54', '22', '1', '汽车1', '/shop/detail/shop_id/118.html', '2015/10/17/56222f7f957b1.jpg', '', '2015-01-12', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('55', '22', '1', '结婚1', '/mobile/shop/index/cat/1.html', '2015/10/17/56222f75a43e6.jpg', '', '2015-01-12', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('56', '21', '1', '丽人3', '/shop/detail/shop_id/133.html', '2015/04/24/5539f3a0e1db2.jpg', '', '2015-01-12', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('57', '21', '1', '家居1', '/mobile/shop/index/cat/2.html', '2015/04/24/5539f3b6e49ad.jpg', '', '2015-01-12', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('58', '28', '1', '母婴1', '/shop/detail/shop_id/21.html', '2015/04/24/5539f3e0cb112.jpg', '', '2015-01-12', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('59', '29', '1', '培训1', '/shop/detail/shop_id/55.html', '2015/04/24/5539f485b1899.jpg', '', '2015-01-12', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('60', '22', '1', '餐饮广告2', '/shop/detail/shop_id/2.html', '2015/10/17/56222f6ada016.jpg', '', '2015-01-13', '2020-01-01', '0', '34');
INSERT INTO `bao_ad` VALUES ('61', '23', '1', '家具', '/huodong/detail/activity_id/16.html', '2015/04/27/553d91cd3f0b7.jpg', '', '2015-01-05', '2020-01-01', '0', '23');
INSERT INTO `bao_ad` VALUES ('62', '30', '1', '韩都衣舍', '/tuan/detail/tuan_id/5.html', '2015/01/16/54b8a2baa9d65.jpg', '', '2015-01-06', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('63', '30', '1', '巨一', '/tuan/detail/tuan_id/5.html', '2015/01/30/54cb3b4310ed6.png', '', '2015-01-06', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('64', '31', '1', '三鼎家政', '/tuan/detail/tuan_id/5.html', '2015/01/30/54cb3b600b9f4.png', '', '2015-01-06', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('65', '31', '1', '完美', '/tuan/detail/tuan_id/5.html', '2015/01/30/54cb3b77ab8f3.png', '', '2015-01-06', '2020-01-01', '0', '4');
INSERT INTO `bao_ad` VALUES ('66', '31', '1', '生活家装饰', '/tuan/detail/tuan_id/5.html', '2015/01/30/54cb3cbea8d12.png', '', '2015-01-06', '2020-01-01', '0', '5');
INSERT INTO `bao_ad` VALUES ('67', '31', '1', 'LG', '/tuan/detail/tuan_id/5.html', '2015/01/30/54cb3ba231784.png', '', '2015-01-06', '2020-01-01', '0', '6');
INSERT INTO `bao_ad` VALUES ('68', '31', '1', '缤纷尚城', '/tuan/detail/tuan_id/5.html', '2015/01/30/54cb3bb35edfd.png', '', '2015-01-06', '2020-01-01', '0', '7');
INSERT INTO `bao_ad` VALUES ('69', '32', '1', 'PC一卡通', '#', '2015/10/23/56299f48ab982.jpg', '', '2015-01-17', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('70', '36', '1', '广告位', '/mall/detail/goods_id/1.html', '2015/01/17/54ba2dd9392a0.jpg', '', '2015-01-07', '2020-01-01', '1', '34');
INSERT INTO `bao_ad` VALUES ('71', '33', '1', '广告位', '/mall/detail/goods_id/1.html', '2015/10/09/561738b85ef8a.png', '', '2015-01-07', '2020-01-01', '0', '34');
INSERT INTO `bao_ad` VALUES ('72', '35', '1', '广告位', '/mall/detail/goods_id/1.html', '2015/04/25/553b2178c7231.jpg', '', '2015-01-07', '2020-01-01', '1', '34');
INSERT INTO `bao_ad` VALUES ('73', '33', '1', '广告位', '/mall/detail/goods_id/1.html', '2015/10/09/561738c8c11b8.png', '', '2015-01-07', '2020-01-01', '0', '34');
INSERT INTO `bao_ad` VALUES ('74', '7', '1', '4.0震撼发布', '/shop/detail/shop_id/30.html', '2015/04/24/5539af39aa4b1.jpg', '', '2015-01-26', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('75', '7', '1', 'Baocms4.0震撼来袭', '/shop/detail/shop_id/30.html', '2015/04/24/5539af1cdbb22.jpg', '', '2015-01-26', '2020-01-01', '1', '2');
INSERT INTO `bao_ad` VALUES ('76', '1', '0', '全新商户中心', 'http://www.haoid.cn/', '2016/05/25/574518740480e.png', '', '2015-01-26', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('77', '7', '1', 'Baocms震撼来袭', '/shop/detail/shop_id/29.html', '2016/02/27/56d159431e855.jpg', '', '2015-01-26', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('78', '7', '1', 'Baocms震撼来袭', '/shop/detail/shop_id/29.html', '2016/02/27/56d159383a339.png', '', '2015-01-26', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('79', '7', '1', 'Baocms震撼来袭', '/shop/detail/shop_id/29.html', '2016/02/27/56d1592bda769.jpg', '', '2015-01-26', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('80', '24', '1', 'Baocms震撼来袭', 'http://www.haoid.cn/jifen/main.html', '2015/04/24/5539d955ec5b6.jpg', '', '2015-01-26', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('81', '24', '1', 'Baocms震撼来袭', 'http://www.haoid.cn/jifen/main.html', '2015/04/24/5539da88cb0b5.jpg', '', '2015-01-26', '2020-01-01', '1', '2');
INSERT INTO `bao_ad` VALUES ('82', '35', '1', 'Baocms震撼来袭', 'http://www.haoid.cn/', '2016/01/18/569c623473cb5.jpg', '', '2015-01-26', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('83', '24', '1', 'Baocms', 'http://www.haoid.cn/', '2016/04/01/56fe3173b2c21.jpg', '', '2015-01-26', '2020-01-01', '0', '4');
INSERT INTO `bao_ad` VALUES ('84', '55', '1', '汽车2', '/shop/detail/shop_id/33.html', '2015/01/29/54c9fb4c679ad.png', '', '2015-01-12', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('85', '55', '1', '汽车3', '/shop/detail/shop_id/35.html', '2015/01/29/54c9fba36691a.png', '', '2015-01-12', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('86', '36', '1', '汽车4', '/shop/detail/shop_id/36.html', '2015/01/29/54ca01f60a6aa.png', '', '2015-01-20', '2020-01-01', '0', '86');
INSERT INTO `bao_ad` VALUES ('87', '34', '1', '汽车广告1', '/shop/detail/shop_id/38.html', '2015/01/29/54ca0698dff2e.png', '', '2015-01-30', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('88', '34', '1', '汽车广告2', '/shop/detail/shop_id/114.html', '2015/01/30/54cadcec28049.png', '', '2015-01-07', '2020-01-01', '0', '10');
INSERT INTO `bao_ad` VALUES ('89', '35', '1', '生活信息', '/life/detail/life_id/8.html', '2015/04/25/553b2178c7231.jpg', '', '2015-01-30', '2020-01-01', '1', '1');
INSERT INTO `bao_ad` VALUES ('90', '35', '1', '结婚广告2', '/shop/detail/shop_id/130.html', '2015/04/25/553b2178c7231.jpg', '', '2015-01-30', '2020-01-01', '1', '2');
INSERT INTO `bao_ad` VALUES ('91', '36', '1', '丽人广告1', '#', '2015/04/25/553b259b83e3c.jpg', '', '2015-01-30', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('92', '36', '1', '丽人广告2', '/shop/detail/shop_id/50.html', '2015/01/30/54ca62dcf2694.png', '', '2015-01-30', '2020-01-01', '1', '2');
INSERT INTO `bao_ad` VALUES ('93', '60', '1', '餐饮广告2', '/shop/detail/shop_id/11.html', '2015/09/13/55f57f70856d3.jpg', '<div style=\"width: 300px; height: 100px; float: left;\">\r\n\r\n                            <input type=\"hidden\" name=\"data[logo]\" value=\"<{$CONFIG.site.logo}>\" id=\"data_photo\" />\r\n\r\n                            <input id=\"photo_file\" name=\"photo_file\" type=\"file\" multiple=\"true\" value=\"\" />\r\n\r\n                        </div>', '2015-01-01', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('94', '3', '1', '餐饮广告3', '/shop/detail/shop_id/11.html', '2015/09/13/55f57f5b44ebb.jpg', '', '2015-01-01', '2020-01-01', '1', '3');
INSERT INTO `bao_ad` VALUES ('95', '3', '1', '餐饮广告4', '/shop/detail/shop_id/11.html', '2015/09/13/55f57f47d107c.jpg', '', '2015-01-01', '2020-01-01', '0', '4');
INSERT INTO `bao_ad` VALUES ('96', '55', '1', '结婚2', '/shop/detail/shop_id/124.html', '2015/01/30/54cae2d2ad09b.png', '', '2015-01-01', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('97', '55', '1', '结婚3', '/shop/detail/shop_id/128.html', '2015/01/30/54cae387880c2.png', '', '2015-01-01', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('98', '25', '1', '结婚4', '/shop/detail/shop_id/8.html', '2015/01/30/54cae3c816eb1.png', '', '2015-01-01', '2020-01-01', '0', '4');
INSERT INTO `bao_ad` VALUES ('99', '26', '1', '丽人2', '/shop/detail/shop_id/49.html', '2015/01/30/54cae95139b62.png', '', '2015-01-01', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('100', '26', '1', '丽人3', '/shop/detail/shop_id/50.html', '2015/01/30/54cae982f3cea.png', '', '2015-01-01', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('101', '26', '1', '丽人4', '/shop/detail/shop_id/52.html', '2015/01/30/54cae9c90003b.png', '', '2015-01-01', '2020-01-01', '0', '4');
INSERT INTO `bao_ad` VALUES ('102', '27', '1', '家居2', '/shop/detail/shop_id/11.html', '2015/01/30/54caebb878f39.png', '', '2015-01-01', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('103', '27', '1', '家居3', '/shop/detail/shop_id/12.html', '2015/01/30/54caec129509f.png', '', '2015-01-01', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('104', '27', '1', '家居4', '/shop/detail/shop_id/17.html', '2015/01/30/54caec51dee7d.png', '', '2015-01-01', '2020-01-01', '0', '4');
INSERT INTO `bao_ad` VALUES ('105', '37', '1', '家居广告1', '/shop/detail/shop_id/18.html', '2015/04/25/553b0e58b6c52.jpg', '', '2015-01-01', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('106', '37', '1', '家居广告2', '/shop/detail/shop_id/14.html', '2015/04/25/553b0e254774b.jpg', '', '2015-01-01', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('107', '28', '1', '母婴2', 'n/shop/detail/shop_id/28.html', '2015/01/30/54caf67d5dd4d.png', '', '2015-01-01', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('108', '28', '1', '母婴3', '/shop/detail/shop_id/27.html', '2015/01/30/54caf6b0588ce.png', '', '2015-01-01', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('109', '28', '1', '母婴4', '/shop/detail/shop_id/26.html', '2015/01/30/54cb046d8d07c.png', '', '2015-01-01', '2020-01-01', '0', '4');
INSERT INTO `bao_ad` VALUES ('110', '38', '1', '电器', '/shop/index/cat/7.html', '2015/10/05/56128d0723ea5.jpg', '', '2015-01-01', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('111', '38', '1', '抢购', '/shop/detail/shop_id/76.html', '2015/10/05/56128cfbd816c.jpg', '', '2015-01-01', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('112', '29', '1', '培训2', '/shop/detail/shop_id/56.html', '2015/01/30/54cafabfd3c1b.png', '', '2015-01-01', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('113', '29', '1', '培训3', '/shop/detail/shop_id/57.html', '2015/01/30/54cb0185c18fb.png', '', '2015-01-01', '2020-01-01', '0', '3');
INSERT INTO `bao_ad` VALUES ('114', '30', '1', '培训4', '/shop/detail/shop_id/58.html', '2015/01/30/54cb01f2b5423.png', '', '2015-01-01', '2020-01-01', '0', '4');
INSERT INTO `bao_ad` VALUES ('115', '39', '1', '培训广告1', '/shop/detail/shop_id/59.html', '2015/01/30/54cafb4be3443.png', '', '2015-01-01', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('116', '39', '1', '培训广告2', '/shop/detail/shop_id/61.html', '2015/01/30/54cafb7e1e2b1.png', '', '2015-01-01', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('117', '33', '1', '商家主页广告', '/mall/main/order/1.html', '2015/04/25/553b32a7d10d3.jpg', '', '2015-02-24', '2020-01-01', '1', '2');
INSERT INTO `bao_ad` VALUES ('118', '40', '1', '商家主页广告', '/mall/main/order/1.html', '2015/04/25/553b3288cd71e.jpg', '', '2015-02-24', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('119', '40', '1', '商家主页广告', '/mall/detail/goods_id/23.html', '2015/04/25/553b327b07027.jpg', '', '2015-02-24', '2020-01-01', '0', '5');
INSERT INTO `bao_ad` VALUES ('120', '41', '1', '卖场首页广告', '/mobile/shop/index.html', '2015/02/25/54ed36763a34d.jpg', '', '2015-02-24', '2020-01-01', '0', '5');
INSERT INTO `bao_ad` VALUES ('121', '41', '1', '卖场首页广告', '/coupon/index/cat/1.html', '2015/04/25/553b3a47293b4.jpg', '', '2015-02-24', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('122', '41', '1', '卖场首页广告', '/coupon/index/cat/1.html', '2015/04/25/553b371052f6d.jpg', '', '2015-02-24', '2020-01-01', '0', '2');
INSERT INTO `bao_ad` VALUES ('123', '42', '1', '五周年庆典快来买吧', '/mall/detail/goods_id/1.html', '2015/04/27/553db004cce01.jpg', '', '2015-03-03', '2018-04-07', '0', '1');
INSERT INTO `bao_ad` VALUES ('124', '43', '1', '浪漫女装', '/mall/detail/goods_id/14.html', '2015/03/13/5502b9c7d194a.jpg', '', '2015-03-05', '2018-04-05', '0', '23');
INSERT INTO `bao_ad` VALUES ('125', '43', '1', '休闲皮鞋', '/mall/detail/goods_id/22.html', '2015/03/13/5502b9fb525eb.jpg', '', '2015-03-05', '2019-04-04', '0', '43');
INSERT INTO `bao_ad` VALUES ('126', '43', '1', '奥林巴斯微单相机', '/mall/detail/goods_id/13.html', '2015/03/13/5502ba3c3e094.jpg', '', '2015-03-05', '2019-03-26', '0', '23');
INSERT INTO `bao_ad` VALUES ('127', '43', '1', '化妆品', '/mall/detail/goods_id/15.html', '2015/03/13/5502ba8642bb5.jpg', '', '2015-03-05', '2019-04-04', '0', '11');
INSERT INTO `bao_ad` VALUES ('128', '43', '1', '兰芝真白新品上市', '/mall/detail/goods_id/16.html', '2015/03/13/5502bab9aa3bb.jpg', '', '2015-03-12', '2018-03-22', '0', '1');
INSERT INTO `bao_ad` VALUES ('129', '43', '1', '春季尚新精品男装', '/mall/detail/goods_id/17.html', '2015/03/13/5502baf1f1166.jpg', '', '2015-03-09', '2018-03-22', '0', '33');
INSERT INTO `bao_ad` VALUES ('130', '44', '1', '推荐商家1', '/mobile/ele/shop/shop_id/46.html', '2015/04/25/553b3eb989735.jpg', '', '2015-03-03', '2019-03-30', '0', '1');
INSERT INTO `bao_ad` VALUES ('131', '44', '1', '推荐商家2', '/mobile/ele/shop/shop_id/46.html', '2015/04/25/553b3f11a73ed.jpg', '', '2015-03-04', '2019-04-04', '0', '2');
INSERT INTO `bao_ad` VALUES ('132', '44', '1', '推荐商家3', '/shop/detail/shop_id/1.html', '2015/03/14/55038e97994ba.png', '', '2015-03-02', '2019-04-05', '1', '4');
INSERT INTO `bao_ad` VALUES ('133', '44', '1', '推荐商家4', '/shop/detail/shop_id/1.html', '2015/03/14/55038edb6e8a9.png', '', '2015-03-03', '2019-03-28', '1', '46');
INSERT INTO `bao_ad` VALUES ('134', '44', '1', '推荐商家5', '/shop/detail/shop_id/1.html', '2015/03/14/55038f0981fbd.png', '', '2015-03-02', '2018-03-29', '1', '88');
INSERT INTO `bao_ad` VALUES ('135', '45', '1', '生活日用', '#', '2015/04/25/553afbae79f32.jpg', '', '2015-03-03', '2019-03-27', '0', '1');
INSERT INTO `bao_ad` VALUES ('136', '46', '1', '附近工作', '#', '2015/04/25/553afc4dbcdf0.jpg', '', '2015-03-03', '2019-03-25', '0', '23');
INSERT INTO `bao_ad` VALUES ('137', '47', '1', '笔记本电脑', '/mall/detail/goods_id/10.html', '2015/03/14/55039e9dcf293.jpg', '', '2015-03-02', '2019-03-26', '0', '3');
INSERT INTO `bao_ad` VALUES ('138', '47', '1', '大屏手机', '/mall/detail/goods_id/9.html', '2015/03/14/55039ebff115c.jpg', '', '2015-03-11', '2019-03-26', '0', '5');
INSERT INTO `bao_ad` VALUES ('139', '47', '1', '泸州老窖白酒', '/mall/detail/goods_id/8.html', '2015/03/14/55039eea25928.jpg', '', '2015-03-04', '2019-03-27', '0', '45');
INSERT INTO `bao_ad` VALUES ('140', '47', '1', '电饭锅', '/mall/detail/goods_id/8.html', '2015/03/14/55039f08ae3ac.jpg', '', '2015-03-03', '2019-03-25', '0', '7');
INSERT INTO `bao_ad` VALUES ('141', '48', '1', '2F左侧', '/mall/index/cate_id/14.html', '2015/04/25/553b278189b33.jpg', '', '2015-03-24', '2023-03-24', '0', '24');
INSERT INTO `bao_ad` VALUES ('142', '49', '1', '2F中间', '/mall/detail/goods_id/10.html', '2015/03/24/5511295e3f1a3.jpg', '', '2015-03-11', '2019-03-29', '0', '43');
INSERT INTO `bao_ad` VALUES ('143', '50', '1', '3F左侧', '/mall/index/cate_id/2.html', '2015/03/24/55112a77dc5b0.png', '', '2015-03-06', '2019-03-27', '0', '1');
INSERT INTO `bao_ad` VALUES ('144', '51', '1', '3F中间', '/mall/detail/goods_id/16.html', '2015/03/24/55112aa2deaa4.jpg', '', '2015-03-05', '2019-03-28', '0', '4');
INSERT INTO `bao_ad` VALUES ('145', '25', '1', 'PC活动首页轮播广告位', 'http://www.haoid.cn/mall/detail/goods_id/16.html', '2015/04/25/553af4cc07f06.jpg', '', '2015-01-13', '2020-01-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('146', '8', '1', '教育', '/shop/detail/shop_id/55.html', '2015/04/23/5538bb4f9ef3c.jpg', '', '2015-04-08', '2015-06-16', '0', '2');
INSERT INTO `bao_ad` VALUES ('147', '8', '1', '教育', '/shop/detail/shop_id/55.html', '2015/04/23/5538bba766128.jpg', '', '2015-04-02', '2015-08-12', '0', '3');
INSERT INTO `bao_ad` VALUES ('148', '14', '1', '母婴', '/shop/detail/shop_id/21.html', '2015/04/24/5539adcf0f924.jpg', '', '2015-04-01', '2015-06-26', '1', '1');
INSERT INTO `bao_ad` VALUES ('149', '14', '1', '母婴', '/shop/detail/shop_id/21.html', '2015/04/24/5539adbce04d6.jpg', '', '2015-04-09', '2015-08-23', '1', '2');
INSERT INTO `bao_ad` VALUES ('150', '15', '1', '母婴', '/shop/detail/shop_id/49.html', '2015/04/23/5538c890914bd.jpg', '', '2015-04-02', '2015-08-23', '0', '2');
INSERT INTO `bao_ad` VALUES ('151', '15', '1', '丽人', '/shop/detail/shop_id/49.html', '2015/04/23/5538c8d36260a.jpg', '', '2015-04-02', '2015-07-23', '0', '1');
INSERT INTO `bao_ad` VALUES ('152', '19', '1', '锅', 'http://www.haoid.cn/tuan/detail/tuan_id/2.html', '2015/04/24/553a14d12b3a8.jpg', '', '2015-04-01', '2015-07-08', '1', '2');
INSERT INTO `bao_ad` VALUES ('153', '19', '1', '优惠', 'http://www.haoid.cn/tuan/detail/tuan_id/2.html', '2015/09/13/55f57de98ce81.png', '', '2015-04-03', '2015-07-24', '0', '2');
INSERT INTO `bao_ad` VALUES ('154', '19', '1', '核桃', 'http://www.haoid.cn/tuan/detail/tuan_id/2.html', '2015/09/13/55f57dcadff97.png', '', '2015-04-09', '2015-06-24', '0', '2');
INSERT INTO `bao_ad` VALUES ('155', '21', '1', '抢购', 'http://www.haoid.cn/mall/detail/goods_id/16.html', '2015/04/28/553f35820675d.jpg', '', '2015-04-09', '2015-08-06', '1', '1');
INSERT INTO `bao_ad` VALUES ('156', '48', '1', '生活信息', '/mall/index/cate_id/14.html', '2015/04/25/553b279abfc36.jpg', '', '2015-04-09', '2015-07-25', '0', '1');
INSERT INTO `bao_ad` VALUES ('157', '48', '1', '生活信息', '/mall/index/cate_id/14.html', '2015/04/25/553b27b5d5deb.jpg', '', '2015-04-08', '2015-06-27', '0', '1');
INSERT INTO `bao_ad` VALUES ('158', '48', '1', '生活信息', '/mall/index/cate_id/14.html', '2015/04/25/553b27d3cd7fd.jpg', '', '2015-04-10', '2015-06-24', '0', '1');
INSERT INTO `bao_ad` VALUES ('159', '48', '1', '生活信息', '/mall/index/cate_id/14.html', '2015/04/25/553b27f619505.jpg', '', '2015-04-03', '2015-07-31', '0', '1');
INSERT INTO `bao_ad` VALUES ('160', '48', '1', '生活信息', 'http://www.haoid.cn/mall/index/cate_id/14.html', '2015/04/25/553b28905b305.jpg', '', '2015-04-11', '2015-06-11', '0', '1');
INSERT INTO `bao_ad` VALUES ('161', '42', '1', '浪奇高端除菌洗衣液4斤促销装', '/mall/detail/goods_id/75.html', '2015/04/27/553dad170a01c.jpg', '', '2015-04-27', '2018-04-27', '0', '2');
INSERT INTO `bao_ad` VALUES ('162', '42', '1', '慕尼思丹茶几客厅家具', '/mall/detail/goods_id/84.html', '2015/04/27/553daf3c83fc1.jpg', '', '2015-04-27', '2018-04-27', '0', '3');
INSERT INTO `bao_ad` VALUES ('163', '23', '1', '万里挑一，为你而选', '/coupon/detail/coupon_id/18.html', '2015/10/17/562231e983db0.jpg', '', '2015-04-28', '2018-04-28', '0', '24');
INSERT INTO `bao_ad` VALUES ('164', '23', '1', 'BAOCMS家居频道诚意奉献', '/coupon/detail/coupon_id/5.html', '2015/10/17/562231dea6d60.jpg', '', '2015-04-28', '2018-04-28', '0', '25');
INSERT INTO `bao_ad` VALUES ('165', '17', '1', '超级囤货日，童装玩具全场满减', '/huodong/detail/activity_id/20.html', '2015/04/28/553f3025011ad.jpg', '', '2015-04-28', '2018-04-28', '0', '2');
INSERT INTO `bao_ad` VALUES ('166', '17', '1', '清仓四连发，底价1-4折', '/huodong/detail/activity_id/26.html', '2015/04/28/553f31adb993f.jpg', '', '2015-04-28', '2018-04-28', '0', '35');
INSERT INTO `bao_ad` VALUES ('167', '21', '1', '五月亲子节，深情钜惠', '/mall/detail/goods_id/16.html', '2015/04/28/553f34dc85803.jpg', '', '2015-04-28', '2018-04-28', '1', '2');
INSERT INTO `bao_ad` VALUES ('168', '21', '1', '儿童节', 'http://www.haoid.cn/mall/detail/goods_id/78.html', '2015/10/17/56222fea2a541.jpg', '', '2015-04-22', '2015-06-26', '0', '1');
INSERT INTO `bao_ad` VALUES ('169', '21', '1', '大换购', 'http://www.haoid.cn/mall/detail/goods_id/13.html', '2015/10/17/56222fdabca0c.jpg', '', '2015-04-15', '2016-06-03', '0', '1');
INSERT INTO `bao_ad` VALUES ('170', '52', '1', '大换购', '#', '2015/06/24/558a649ac8152.jpg', '', '2015-06-24', '2019-06-19', '0', '1');
INSERT INTO `bao_ad` VALUES ('171', '52', '1', 'php微信O2O生活宝门户系统', '#', '2015/06/24/558a648d1ba8f.jpg', '', '2015-06-16', '2015-06-27', '0', '2');
INSERT INTO `bao_ad` VALUES ('172', '2', '1', 'hao', 'http://www.baidu.com', '2015/07/07/559ba90dae9d9.png', 'hao', '2015-07-15', '2015-07-24', '1', '1');
INSERT INTO `bao_ad` VALUES ('173', '14', '0', '外卖', 'http://www.haoid.cn/', '2016/04/01/56fe31ccf1423.jpg', '', '2015-09-01', '2019-10-04', '0', '1');
INSERT INTO `bao_ad` VALUES ('174', '57', '1', '手机首页', 'http://baocms.5maiche.cn/', '2015/10/08/5615ffd428769.jpg', '', '2015-10-08', '2019-11-07', '1', '1');
INSERT INTO `bao_ad` VALUES ('175', '57', '1', '手机首页', 'http://www.haoid.cn/', '2015/12/21/5677840ae7c21.jpg', '', '2015-10-08', '2018-10-19', '1', '2');
INSERT INTO `bao_ad` VALUES ('176', '22', '0', '餐饮广告2', '/shop/detail/shop_id/2.html', '2015/10/17/56222f8b6edde.jpg', '', '2015-10-17', '2018-10-30', '0', '6');
INSERT INTO `bao_ad` VALUES ('177', '21', '0', '餐饮广告2', '/shop/detail/shop_id/2.html', '2015/10/17/5622302b43bdd.jpg', '', '2015-10-17', '2019-10-17', '0', '3');
INSERT INTO `bao_ad` VALUES ('178', '57', '0', '手机首页', 'http://www.haoid.cn/', '2016/05/22/57412eaf51f18.png', '', '2015-12-20', '2019-12-25', '0', '0');
INSERT INTO `bao_ad` VALUES ('179', '59', '0', '登录页面', 'http://www.haoid.cn/', '2016/01/15/5698826845272.jpg', '', '2015-12-30', '2019-12-26', '0', '0');
INSERT INTO `bao_ad` VALUES ('180', '6', '0', '品牌热区', '/shop/detail/shop_id/85.html', '2016/02/27/56d158dd4cfcd.jpg', '', '2016-02-27', '2020-02-27', '0', '1');
INSERT INTO `bao_ad` VALUES ('181', '6', '0', '品牌热区', '/shop/detail/shop_id/85.html', '2016/02/27/56d158f021a10.png', '', '2016-02-27', '2020-02-27', '0', '2');
INSERT INTO `bao_ad` VALUES ('182', '6', '0', '品牌热区', '/shop/detail/shop_id/85.html', '2016/02/27/56d159061128b.jpg', '', '2016-02-27', '2020-02-27', '0', '3');
INSERT INTO `bao_ad` VALUES ('183', '60', '0', 'PC一元云购', 'http://www.haoid.cn/', '2016/03/01/56d55e00172bb.png', '', '2016-03-01', '2020-03-01', '0', '1');
INSERT INTO `bao_ad` VALUES ('184', '1', '0', '蜂蜜源码', 'http://www.haoid.cn/', '2016/05/25/5745180619479.png', '', '2016-03-22', '2020-03-25', '0', '2');
INSERT INTO `bao_ad` VALUES ('185', '1', '0', '蜂蜜源码', 'http://www.haoid.cn/', '2016/05/25/57451702c751f.png', '', '2016-03-23', '2020-03-19', '0', '1');
INSERT INTO `bao_ad` VALUES ('186', '61', '0', '手机黄页657*106', 'http://www.haoid.cn/', '2016/03/31/56fcc790d368c.png', '', '2016-03-31', '2020-03-26', '0', '1');
INSERT INTO `bao_ad` VALUES ('187', '62', '0', 'wap首页左320*420（文字广告）', 'http://www.haoid.cn/', '2016/05/22/57412ec20086a.png', '', '2016-04-14', '2020-04-22', '0', '1');
INSERT INTO `bao_ad` VALUES ('188', '63', '0', 'wap首页右上510*240 ', 'http://www.haoid.cn/', '2016/05/22/57412ed6572a5.png', '', '2016-04-14', '2020-04-23', '0', '2');
INSERT INTO `bao_ad` VALUES ('189', '64', '0', 'wap首页右下_左260*251', 'http://www.haoid.cn/', '2016/05/22/57412efab3f4b.png', '', '2016-04-14', '2019-04-25', '0', '3');
INSERT INTO `bao_ad` VALUES ('190', '65', '0', 'wap首页右下_右260*250', 'http://www.haoid.cn/', '2016/05/22/57412f0c28b85.png', '', '2016-04-14', '2020-04-30', '0', '4');
INSERT INTO `bao_ad` VALUES ('191', '57', '0', '草鱼火锅', 'http://www.haoid.cn/', '2016/05/22/57412ea1958ab.png', '', '2016-04-25', '2019-05-01', '0', '0');
INSERT INTO `bao_ad` VALUES ('192', '66', '0', '二手面条出售，10元一碗，需要的联系', 'http://www.haoid.cn/', '2016/05/25/574512a3d5e97.png', '', '2016-05-25', '2020-05-29', '0', '0');
INSERT INTO `bao_ad` VALUES ('193', '67', '0', 'pc顶部横幅', 'http://www.haoid.cn/', '2016/05/27/5748474609695.jpg', '', '2016-05-27', '2018-05-23', '0', '1');

-- ----------------------------
-- Table structure for `bao_admin`
-- ----------------------------
DROP TABLE IF EXISTS `bao_admin`;
CREATE TABLE `bao_admin` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `role_id` smallint(5) DEFAULT NULL,
  `city_id` smallint(6) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  `last_ip` varchar(20) DEFAULT NULL,
  `is_ip` tinyint(1) NOT NULL DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_admin
-- ----------------------------
INSERT INTO `bao_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '7', '15000000000', '1441886203', '127.0.0.1', '1468479253', '0.0.0.0', '1', '0');
INSERT INTO `bao_admin` VALUES ('5', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', '1', '0', '13355895566', '1450145726', '12.16.153.38', '1465634400', '123.125.1.160', '1', '0');
INSERT INTO `bao_admin` VALUES ('6', 'ceshi', 'cc17c30cd111c7215fc8f51f8790e0e1', '2', '1', '13356782345', '1456631504', '12.16.31.218', '1465102413', '14.125.241.145', '0', '0');
INSERT INTO `bao_admin` VALUES ('7', '测试1', '49d92f4ddd6164663ed8fe915d915dc9', '2', '0', '13355666666', '1456740370', '12.16.154.172', '0', '', '0', '1');
INSERT INTO `bao_admin` VALUES ('8', 'ceshi1', '9464c3798239e316379036767f0ff7d1', '2', '7', '13366776677', '1456740406', '12.16.154.172', '1463966715', '117.139.14.176', '0', '0');
INSERT INTO `bao_admin` VALUES ('9', '何总', 'e10adc3949ba59abbe56e057f20f883e', '2', '0', '13345678765', '1460956329', '12.16.28.237', '0', '', '0', '0');
INSERT INTO `bao_admin` VALUES ('10', 'tgo', '0eb1a71dec5d0eef642f58f218b6a53c', '1', '0', '15860111111', '1465631087', '117.136.11.173', null, null, '0', '0');

-- ----------------------------
-- Table structure for `bao_ad_site`
-- ----------------------------
DROP TABLE IF EXISTS `bao_ad_site`;
CREATE TABLE `bao_ad_site` (
  `site_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(32) DEFAULT NULL,
  `site_name` varchar(64) DEFAULT NULL,
  `site_type` tinyint(1) DEFAULT NULL,
  `site_place` smallint(5) DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_ad_site
-- ----------------------------
INSERT INTO `bao_ad_site` VALUES ('1', 'default', 'PC首页热门关注轮播图片广告位', '2', '1');
INSERT INTO `bao_ad_site` VALUES ('2', 'default', 'PC首页右侧轮播图片广告位', '2', '1');
INSERT INTO `bao_ad_site` VALUES ('3', 'default', 'PC活动首页轮播图片广告位', '2', '3');
INSERT INTO `bao_ad_site` VALUES ('4', 'default', 'PC上门服务图片广告位', '2', '4');
INSERT INTO `bao_ad_site` VALUES ('5', 'default', 'PC商城首页3张轮播750*300', '2', '5');
INSERT INTO `bao_ad_site` VALUES ('6', 'default', 'PC商城首页3张轮播下面250*100广告3张（1）上', '2', '5');
INSERT INTO `bao_ad_site` VALUES ('7', 'default', 'PC商城首页3张轮播下面250*170广告3张（2）下', '2', '5');
INSERT INTO `bao_ad_site` VALUES ('8', 'default', 'PC同城优购主页1楼图片广告', '2', '5');
INSERT INTO `bao_ad_site` VALUES ('9', 'default', 'PC同城优购主页2楼图片广告', '2', '5');
INSERT INTO `bao_ad_site` VALUES ('10', 'default', 'PC同城优购主页3楼图片广告', '2', '5');
INSERT INTO `bao_ad_site` VALUES ('11', 'default', 'PC同城优购主页4楼图片广告', '2', '5');
INSERT INTO `bao_ad_site` VALUES ('12', 'default', 'PC同城优购主页5楼图片广告', '2', '5');
INSERT INTO `bao_ad_site` VALUES ('13', 'default', 'PC同城优购主页6楼图片广告', '2', '5');
INSERT INTO `bao_ad_site` VALUES ('14', 'default', 'PC外卖首页轮播图片广告位', '2', '6');
INSERT INTO `bao_ad_site` VALUES ('15', 'default', 'PC订座首页右侧轮播图片广告', '2', '7');
INSERT INTO `bao_ad_site` VALUES ('16', 'default', 'PC订座列表右侧轮播图片广告', '2', '7');
INSERT INTO `bao_ad_site` VALUES ('17', 'default', 'PC订座新单右侧轮播图片广告', '2', '7');
INSERT INTO `bao_ad_site` VALUES ('18', 'default', 'PC订座热门右侧轮播图片广告', '2', '7');
INSERT INTO `bao_ad_site` VALUES ('19', 'default', 'PC同城信息主页头部轮播图片广告位', '2', '8');
INSERT INTO `bao_ad_site` VALUES ('20', 'default', 'PC同城信息主页右侧轮播图片广告位', '2', '8');
INSERT INTO `bao_ad_site` VALUES ('21', 'default', 'PC同城信息主页底部轮播图片广告位', '2', '8');
INSERT INTO `bao_ad_site` VALUES ('22', 'default', 'PC同城信息首页右侧轮播图片广告位', '2', '8');
INSERT INTO `bao_ad_site` VALUES ('23', 'default', 'PC优惠券首页轮播图片广告位', '2', '9');
INSERT INTO `bao_ad_site` VALUES ('24', 'default', 'PC积分商城首页轮播图片广告位', '2', '11');
INSERT INTO `bao_ad_site` VALUES ('25', 'default', 'PC专题1首页图片广告位', '2', '13');
INSERT INTO `bao_ad_site` VALUES ('26', 'default', 'PC专题2首页图片广告位', '2', '13');
INSERT INTO `bao_ad_site` VALUES ('27', 'default', 'PC专题3首页图片广告位', '2', '13');
INSERT INTO `bao_ad_site` VALUES ('28', 'default', 'PC专题4首页图片广告位', '2', '13');
INSERT INTO `bao_ad_site` VALUES ('29', 'default', 'PC专题5首页图片广告位', '2', '13');
INSERT INTO `bao_ad_site` VALUES ('30', 'default', '手机同城优购首页轮播广告位', '2', '18');
INSERT INTO `bao_ad_site` VALUES ('31', 'default', '手机家政首页图片广告位', '2', '19');
INSERT INTO `bao_ad_site` VALUES ('32', 'default', '手机优惠券首页轮播图片广告位', '2', '23');
INSERT INTO `bao_ad_site` VALUES ('33', 'default', '手机社区详情页轮播图片广告位', '2', '24');
INSERT INTO `bao_ad_site` VALUES ('34', 'default', '手机卖场首页轮播图片广告位', '2', '25');
INSERT INTO `bao_ad_site` VALUES ('35', 'default', '手机微店列表页轮播图片广告位', '2', '29');
INSERT INTO `bao_ad_site` VALUES ('36', 'default', '手机附近工作图片广告位', '2', '32');
INSERT INTO `bao_ad_site` VALUES ('37', 'default', '手机APP首页轮播图片广告位', '2', '33');
INSERT INTO `bao_ad_site` VALUES ('38', 'default', 'PC酒店首页幻灯', '2', '34');
INSERT INTO `bao_ad_site` VALUES ('56', 'default', 'PC首页顶部广告', '2', '1');
INSERT INTO `bao_ad_site` VALUES ('57', 'default', 'WAP手机首页广告', '1', '14');
INSERT INTO `bao_ad_site` VALUES ('58', 'default', '444455', '2', '1');
INSERT INTO `bao_ad_site` VALUES ('59', 'default', 'PC登录注册广告', '2', '33');
INSERT INTO `bao_ad_site` VALUES ('60', 'default', 'PC一元云购首页轮播', '1', '12');
INSERT INTO `bao_ad_site` VALUES ('61', 'default', '手机黄页657*106', '1', '28');
INSERT INTO `bao_ad_site` VALUES ('62', 'default', 'wap首页左320*420', '1', '14');
INSERT INTO `bao_ad_site` VALUES ('63', 'default', 'wap首页右上510*240', '1', '14');
INSERT INTO `bao_ad_site` VALUES ('64', 'default', 'wap首页右下_左260*251', '1', '14');
INSERT INTO `bao_ad_site` VALUES ('65', 'default', 'wap首页右下_右260*250', '1', '14');
INSERT INTO `bao_ad_site` VALUES ('66', 'default', 'PC自媒体首页1200*200', '1', '4');
INSERT INTO `bao_ad_site` VALUES ('67', 'default', 'pc全局顶部横幅1200*60', '2', '1');

-- ----------------------------
-- Table structure for `bao_area`
-- ----------------------------
DROP TABLE IF EXISTS `bao_area`;
CREATE TABLE `bao_area` (
  `area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` smallint(5) DEFAULT '0',
  `area_name` varchar(32) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_area
-- ----------------------------
INSERT INTO `bao_area` VALUES ('2', '7', '电白', '2');
INSERT INTO `bao_area` VALUES ('28', '7', '茂南', '3');
INSERT INTO `bao_area` VALUES ('29', '7', '市中心', '1');

-- ----------------------------
-- Table structure for `bao_around`
-- ----------------------------
DROP TABLE IF EXISTS `bao_around`;
CREATE TABLE `bao_around` (
  `around_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '1代表常去，2代表我家，3代表公司',
  `name` varchar(128) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`around_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_around
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_article`
-- ----------------------------
DROP TABLE IF EXISTS `bao_article`;
CREATE TABLE `bao_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `cate_id` smallint(5) DEFAULT '0',
  `city_id` smallint(5) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `shop_id` int(10) NOT NULL DEFAULT '0',
  `source` varchar(32) DEFAULT NULL,
  `profiles` text,
  `keywords` varchar(256) DEFAULT NULL,
  `orderby` tinyint(4) NOT NULL DEFAULT '100',
  `photo` varchar(128) DEFAULT NULL,
  `details` text,
  `istop` int(2) NOT NULL DEFAULT '0',
  `isroll` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `zan` int(6) NOT NULL DEFAULT '0',
  `donate_num` varchar(12) NOT NULL DEFAULT '0',
  `closed` tinyint(2) NOT NULL DEFAULT '0',
  `valuate` tinyint(2) DEFAULT '0',
  `audit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_article
-- ----------------------------
INSERT INTO `bao_article` VALUES ('1', '#消夏计划#美景 美食 人情——这就是台湾。8天7晚台湾东线环岛,把烦恼都丢进太平样', '3', '1', '2', '1', '作者', '美景、美食、人情，这就是台湾！ 去台湾，一次真的逛不够，吃不够，玩不够！', '百度', '5', '', '<p>写在前面的话：&nbsp;</p><p><br/></p><p><img src=\"http://www.haoid.cn/attachs/editor/2016/05/25/thumb_5745119b94a98.jpeg\" _src=\"http://www.haoid.cn/attachs/editor/2016/05/25/thumb_5745119b94a98.jpeg\" style=\"\"/></p><p><br/></p><p><br/></p><p><img src=\"http://www.haoid.cn/attachs/editor/2016/05/25/thumb_574511a7247f1.jpeg\" _src=\"http://www.haoid.cn/attachs/editor/2016/05/25/thumb_574511a7247f1.jpeg\" style=\"\"/></p><p>一直期待着踏上那片傲娇而又萌萌哒的宝岛！感受台湾人嗲嗲的“国语”，</p><p><br/></p><p><br/></p><p>吃台湾地道的小吃，像台湾小清新电影一样环岛旅行……&nbsp;</p><p><br/></p><p><br/></p><p><img src=\"http://www.haoid.cn/attachs/editor/2016/05/25/thumb_574511a2f37a8.jpeg\" _src=\"http://www.haoid.cn/attachs/editor/2016/05/25/thumb_574511a2f37a8.jpeg\" style=\"white-space: normal;\"/></p><p><br/></p><p>今年6月底，终于和小伙伴们踏上了一水之隔的宝岛台湾，开始了这次的台湾之旅！ 那么，在接下来的游记中，大家主要会看到这些人……</p><p><img src=\"http://www.haoid.cn/attachs/editor/2016/05/25/thumb_5745119f94670.jpeg\" _src=\"http://www.haoid.cn/attachs/editor/2016/05/25/thumb_5745119f94670.jpeg\" style=\"white-space: normal;\"/></p><p><br/></p>', '0', '0', '1464143822', '12.18.78.222', '165', '1', '0', '0', '0', '1');
INSERT INTO `bao_article` VALUES ('2', '8748/', '2', '7', '2', '1', '脆皮玉米', '+3+ ', '+659', '100', '2016/06/03/thumb_575132f4d3afb.jpg', '<p>63256</p>', '0', '0', '1464939257', '223.154.96.164', '34', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `bao_article_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_article_cate`;
CREATE TABLE `bao_article_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_article_cate
-- ----------------------------
INSERT INTO `bao_article_cate` VALUES ('1', '新闻', '0', '1');
INSERT INTO `bao_article_cate` VALUES ('2', '重庆大事记', '1', '1');
INSERT INTO `bao_article_cate` VALUES ('3', '重庆民生', '2', '1');

-- ----------------------------
-- Table structure for `bao_article_comment`
-- ----------------------------
DROP TABLE IF EXISTS `bao_article_comment`;
CREATE TABLE `bao_article_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级评论id,若是一级评论则为0',
  `nickname` varchar(100) DEFAULT NULL COMMENT '评论人昵称',
  `user_id` int(11) DEFAULT NULL COMMENT '评论人UID',
  `post_id` int(11) DEFAULT NULL COMMENT '新闻编号',
  `content` text COMMENT '评论内容',
  `zan` int(6) NOT NULL DEFAULT '0',
  `cai` int(6) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL COMMENT '评论或回复发表时间',
  `create_ip` varchar(20) NOT NULL,
  `audit` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_article_comment
-- ----------------------------
INSERT INTO `bao_article_comment` VALUES ('1', '0', '测试号', '1', '1', '其实我不是谢娜', '0', '0', '1464144922', '12.18.78.222', '1');
INSERT INTO `bao_article_comment` VALUES ('2', '0', '测试号', '1', '1', '其实我不是谢娜', '0', '0', '1464144924', '12.18.78.222', '1');
INSERT INTO `bao_article_comment` VALUES ('3', '0', '测试号', '1', '1', '其实我不是谢娜', '0', '0', '1464144928', '12.18.78.222', '1');
INSERT INTO `bao_article_comment` VALUES ('4', '0', '测试号', '1', '1', '其实我不是谢娜', '0', '0', '1464144933', '12.18.78.222', '1');
INSERT INTO `bao_article_comment` VALUES ('5', '0', '测试号', '1', '1', '其实我不是谢娜', '0', '0', '1464144934', '12.18.78.222', '1');
INSERT INTO `bao_article_comment` VALUES ('6', '0', '测试号', '1', '1', '其实我不是谢娜', '0', '0', '1464144937', '12.18.78.222', '1');
INSERT INTO `bao_article_comment` VALUES ('7', '0', '测试号', '1', '1', '其实我不是谢娜', '0', '0', '1464144938', '12.18.78.222', '1');
INSERT INTO `bao_article_comment` VALUES ('8', '0', '测试号', '1', '1', '其实我不是谢娜', '0', '0', '1464144944', '12.18.78.222', '1');
INSERT INTO `bao_article_comment` VALUES ('9', '0', '测试号', '1', '1', '其实我不是谢娜', '0', '0', '1464144961', '12.18.78.222', '1');
INSERT INTO `bao_article_comment` VALUES ('10', '0', '测试号', '1', '1', '你好', '0', '0', '1464145094', '12.18.78.222', '1');
INSERT INTO `bao_article_comment` VALUES ('11', '0', '测试号', '1', '1', '你刚好', '0', '0', '1464145109', '12.18.78.222', '1');

-- ----------------------------
-- Table structure for `bao_article_donate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_article_donate`;
CREATE TABLE `bao_article_donate` (
  `donate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `city_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL COMMENT '新闻编号',
  `money` varchar(10) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL COMMENT '评论或回复发表时间',
  `create_ip` varchar(20) NOT NULL,
  PRIMARY KEY (`donate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_article_donate
-- ----------------------------
INSERT INTO `bao_article_donate` VALUES ('14', '1', '3', '2', '100', '1463234325', '27.13.24.87');
INSERT INTO `bao_article_donate` VALUES ('15', '1', '3', '2', '1000', '1463234980', '27.13.24.87');
INSERT INTO `bao_article_donate` VALUES ('16', '1', '3', '2', '200', '1463235255', '27.13.24.87');
INSERT INTO `bao_article_donate` VALUES ('17', '1', '3', '1', '200', '1464095594', '12.18.78.222');
INSERT INTO `bao_article_donate` VALUES ('18', '1', '3', '1', '100', '1464095604', '12.18.78.222');
INSERT INTO `bao_article_donate` VALUES ('19', '1', '3', '1', '1000', '1464095611', '12.18.78.222');
INSERT INTO `bao_article_donate` VALUES ('20', '1', '3', '1', '1200', '1464098241', '12.18.78.222');

-- ----------------------------
-- Table structure for `bao_article_photos`
-- ----------------------------
DROP TABLE IF EXISTS `bao_article_photos`;
CREATE TABLE `bao_article_photos` (
  `pic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_article_photos
-- ----------------------------
INSERT INTO `bao_article_photos` VALUES ('9', '0', '46', 'http://images4.5maiche.cn/2016-05-14_57373f69c7cdf.jpg');
INSERT INTO `bao_article_photos` VALUES ('10', '0', '47', 'http://images4.5maiche.cn/2016-05-21_57403ce1432da.jpg');
INSERT INTO `bao_article_photos` VALUES ('11', '0', '47', 'http://images4.5maiche.cn/2016-05-21_57403ce53761a.jpg');
INSERT INTO `bao_article_photos` VALUES ('12', '0', '47', 'http://images4.5maiche.cn/2016-05-21_57403ceb6c301.jpg');
INSERT INTO `bao_article_photos` VALUES ('13', '0', '11', '2016/05/25/574514cfb190c.jpg');

-- ----------------------------
-- Table structure for `bao_award`
-- ----------------------------
DROP TABLE IF EXISTS `bao_award`;
CREATE TABLE `bao_award` (
  `award_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `type` enum('shark','scratch','lottery') DEFAULT NULL COMMENT '摇一摇 刮刮卡  抽奖大转盘',
  `explain` varchar(1024) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `is_online` tinyint(1) DEFAULT '0' COMMENT '1就是在线状态了',
  PRIMARY KEY (`award_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_award
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_award_goods`
-- ----------------------------
DROP TABLE IF EXISTS `bao_award_goods`;
CREATE TABLE `bao_award_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `award_id` int(11) DEFAULT NULL,
  `award_name` varchar(32) DEFAULT NULL,
  `goods_name` varchar(64) DEFAULT NULL,
  `prob` int(11) DEFAULT '0' COMMENT '数值越大概率越低',
  `num` int(11) DEFAULT '0',
  `surplus` int(11) DEFAULT '0',
  PRIMARY KEY (`goods_id`),
  KEY `award_id` (`award_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_award_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_award_share`
-- ----------------------------
DROP TABLE IF EXISTS `bao_award_share`;
CREATE TABLE `bao_award_share` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `award_id` int(11) DEFAULT NULL,
  `is_used` tinyint(4) DEFAULT '0' COMMENT '1代表抽过奖了',
  `ip` varchar(15) DEFAULT NULL,
  `num` int(11) DEFAULT '0' COMMENT '点击的数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`,`award_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_award_share
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_award_winning`
-- ----------------------------
DROP TABLE IF EXISTS `bao_award_winning`;
CREATE TABLE `bao_award_winning` (
  `winning_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `award_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `goods_id` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `randstr` varchar(6) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`winning_id`),
  KEY `award_id` (`award_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_award_winning
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_billboard`
-- ----------------------------
DROP TABLE IF EXISTS `bao_billboard`;
CREATE TABLE `bao_billboard` (
  `list_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `intro` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `cate_id` int(10) DEFAULT NULL,
  `looknum` int(11) DEFAULT '0',
  `orderby` int(10) DEFAULT '100',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `is_hot` tinyint(1) DEFAULT '0',
  `is_new` tinyint(1) DEFAULT NULL,
  `is_chose` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_billboard
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_bill_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_bill_cate`;
CREATE TABLE `bao_bill_cate` (
  `cate_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(128) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  `photo` varchar(128) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_bill_cate
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_bill_order`
-- ----------------------------
DROP TABLE IF EXISTS `bao_bill_order`;
CREATE TABLE `bao_bill_order` (
  `bill_order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT '0',
  `city_id` smallint(5) unsigned DEFAULT '0',
  `area_id` smallint(5) unsigned DEFAULT '0',
  `mobile` varchar(11) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `sum` int(10) unsigned DEFAULT '0',
  `money` int(10) unsigned DEFAULT '0',
  `interest` decimal(15,2) unsigned DEFAULT '0.00',
  `create_time` int(11) unsigned DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '0' COMMENT '0等待处理  1代表已成功  2代表已退款',
  `admin_id` int(11) unsigned DEFAULT '0',
  `admin_time` int(11) unsigned DEFAULT '0',
  `admin_memo` varchar(255) DEFAULT NULL,
  `bill_type_id` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bill_order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_bill_order
-- ----------------------------
INSERT INTO `bao_bill_order` VALUES ('51', '3', '1', '0', '请输入手机', '请输入姓名', '请输入身份证号', '', '50000', '50050', '0.00', '1459770538', '12.16.31.151', '0', '0', '0', '', '1');
INSERT INTO `bao_bill_order` VALUES ('52', '3', '1', '2', '周总', '李总', '13367783245', '', '10000', '10010', '0.00', '1459771185', '12.16.31.151', '0', '0', '0', '', '1');
INSERT INTO `bao_bill_order` VALUES ('53', '3', '1', '2', '周总', '李总', '13367783245', '', '10000', '10010', '0.00', '1459771194', '12.16.31.151', '0', '0', '0', '', '1');
INSERT INTO `bao_bill_order` VALUES ('54', '3', '1', '2', '13367891234', '何总', '12121212', '', '2900', '2902', '0.00', '1459771233', '12.16.31.151', '0', '0', '0', '', '1');
INSERT INTO `bao_bill_order` VALUES ('55', '3', '1', '2', '13367891234', '何总', '12121212', '', '2900', '2902', '0.00', '1459771298', '12.16.31.151', '0', '0', '0', '', '1');
INSERT INTO `bao_bill_order` VALUES ('56', '3', '1', '2', '1336789', '何总', '121212', '', '22200', '22222', '0.00', '1459771508', '12.16.31.151', '0', '0', '0', '', '1');
INSERT INTO `bao_bill_order` VALUES ('57', '3', '1', '2', '1336789', '何总', '121212', '', '22200', '22222', '0.00', '1459771549', '12.16.31.151', '0', '0', '0', '', '1');
INSERT INTO `bao_bill_order` VALUES ('58', '3', '1', '2', '1336789', '何总', '121212', '', '22200', '22222', '0.00', '1459771551', '12.16.31.151', '0', '0', '0', '', '1');
INSERT INTO `bao_bill_order` VALUES ('59', '3', '1', '0', '请输入手机', '请输入姓名', '请输入身份证号', '', '50000', '50050', '0.00', '1459771849', '12.16.31.151', '0', '0', '0', '', '1');

-- ----------------------------
-- Table structure for `bao_bill_shop`
-- ----------------------------
DROP TABLE IF EXISTS `bao_bill_shop`;
CREATE TABLE `bao_bill_shop` (
  `bill_id` int(10) NOT NULL AUTO_INCREMENT,
  `list_id` int(10) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `votenum` int(11) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_bill_shop
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_bill_type`
-- ----------------------------
DROP TABLE IF EXISTS `bao_bill_type`;
CREATE TABLE `bao_bill_type` (
  `bill_type_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `bill_type_name` varchar(20) DEFAULT NULL,
  `bill_fields` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sms_notify` tinyint(1) DEFAULT NULL,
  `fee_rate` decimal(10,2) unsigned DEFAULT '0.00',
  `integral` int(11) unsigned DEFAULT '0',
  `bill_fields_label` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `areas` text,
  PRIMARY KEY (`bill_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_bill_type
-- ----------------------------
INSERT INTO `bao_bill_type` VALUES ('1', '2016年第二期代办C1驾驶证费', 'realname,mobile,account', '1', '1', '0.10', '10', '姓名,手机,身份证号', '需要代办的速度，3800元一个人。', '2,3');

-- ----------------------------
-- Table structure for `bao_bill_vote`
-- ----------------------------
DROP TABLE IF EXISTS `bao_bill_vote`;
CREATE TABLE `bao_bill_vote` (
  `vote_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `bill_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_bill_vote
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_breaks_order`
-- ----------------------------
DROP TABLE IF EXISTS `bao_breaks_order`;
CREATE TABLE `bao_breaks_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `amount` decimal(8,2) DEFAULT '0.00',
  `exception` decimal(8,2) DEFAULT '0.00',
  `need_pay` decimal(8,2) DEFAULT '0.00',
  `status` tinyint(1) DEFAULT '0' COMMENT '0未支付，1已支付',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_breaks_order
-- ----------------------------
INSERT INTO `bao_breaks_order` VALUES ('6', '1', '1', '100.00', '0.00', '90.00', '1', '1464597947', '27.13.26.107');
INSERT INTO `bao_breaks_order` VALUES ('7', '1', '1', '111.00', '112.00', '111.10', '0', '1464667921', '125.67.46.78');

-- ----------------------------
-- Table structure for `bao_business`
-- ----------------------------
DROP TABLE IF EXISTS `bao_business`;
CREATE TABLE `bao_business` (
  `business_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `business_name` varchar(32) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `is_hot` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`business_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_business
-- ----------------------------
INSERT INTO `bao_business` VALUES ('1', '生态公园', '2', '1', '1');
INSERT INTO `bao_business` VALUES ('2', '胜利广场', '1', '2', '0');
INSERT INTO `bao_business` VALUES ('3', '和平广场', '1', '1', '1');
INSERT INTO `bao_business` VALUES ('4', '大东门', '1', '3', '1');
INSERT INTO `bao_business` VALUES ('5', '长江批发市场', '1', '11', '0');
INSERT INTO `bao_business` VALUES ('6', '车站', '1', '12', '1');
INSERT INTO `bao_business` VALUES ('7', '胜利路', '1', '7', '1');
INSERT INTO `bao_business` VALUES ('8', '七里塘', '1', '8', '1');
INSERT INTO `bao_business` VALUES ('9', '三孝口', '5', '13', '1');
INSERT INTO `bao_business` VALUES ('10', '双岗', '1', '14', '1');
INSERT INTO `bao_business` VALUES ('11', '逍遥津', '1', '1', '1');
INSERT INTO `bao_business` VALUES ('12', '步行街', '1', '2', '1');
INSERT INTO `bao_business` VALUES ('36', '111', '8', '1', '0');
INSERT INTO `bao_business` VALUES ('14', '天鹅湖', '4', '23', '0');
INSERT INTO `bao_business` VALUES ('15', '大铺头', '6', '58', '0');
INSERT INTO `bao_business` VALUES ('16', '宁国路', '3', '99', '0');
INSERT INTO `bao_business` VALUES ('17', '国购广场', '6', '12', '0');
INSERT INTO `bao_business` VALUES ('18', '滨湖世纪城', '7', '0', '0');
INSERT INTO `bao_business` VALUES ('19', '湿地公园', '7', '0', '0');
INSERT INTO `bao_business` VALUES ('21', '万达广场', '4', '22', '0');
INSERT INTO `bao_business` VALUES ('24', '测试', '11', '100', '0');
INSERT INTO `bao_business` VALUES ('25', '测试', '11', '100', '0');
INSERT INTO `bao_business` VALUES ('26', '测试', '11', '100', '0');
INSERT INTO `bao_business` VALUES ('27', '测试', '11', '100', '0');
INSERT INTO `bao_business` VALUES ('28', '安庆下面的商家111', '22', '22', '1');
INSERT INTO `bao_business` VALUES ('29', '安庆下面的商家11122', '22', '32', '0');
INSERT INTO `bao_business` VALUES ('30', '黔江下面的商圈111', '20', '32', '1');
INSERT INTO `bao_business` VALUES ('31', '黔江下面的商圈2222222', '20', '35', '1');
INSERT INTO `bao_business` VALUES ('32', '火车北站', '23', '1', '1');
INSERT INTO `bao_business` VALUES ('33', '汽车站', '10', '1', '1');
INSERT INTO `bao_business` VALUES ('35', '西安的商圈', '24', '1', '0');
INSERT INTO `bao_business` VALUES ('37', '嗯嗯', '29', '1', '0');

-- ----------------------------
-- Table structure for `bao_city`
-- ----------------------------
DROP TABLE IF EXISTS `bao_city`;
CREATE TABLE `bao_city` (
  `city_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `pinyin` varchar(32) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0',
  `domain` tinyint(1) NOT NULL DEFAULT '0',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `first_letter` char(1) DEFAULT NULL,
  `theme` varchar(21) NOT NULL DEFAULT 'default',
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_city
-- ----------------------------
INSERT INTO `bao_city` VALUES ('7', '新疆', '2016/05/22/574123f646ec5.jpg', 'xinjiang', '1', '0', '107.101768', '26.631671', '2', 'M', 'default');

-- ----------------------------
-- Table structure for `bao_cloud_goods`
-- ----------------------------
DROP TABLE IF EXISTS `bao_cloud_goods`;
CREATE TABLE `bao_cloud_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0' COMMENT '0表示后台发布',
  `city_id` int(10) DEFAULT '0',
  `area_id` int(10) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '1表示1元夺宝，2代表5元夺宝，3代表10元夺宝',
  `title` varchar(64) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `details` text,
  `join` int(10) DEFAULT '0' COMMENT '已参与',
  `price` int(10) DEFAULT '0' COMMENT '总价格',
  `max` int(10) DEFAULT '0' COMMENT '该件商品最大允许的参与数',
  `settlement_price` int(10) DEFAULT '0',
  `photo` varchar(128) DEFAULT '',
  `thumb` text,
  `status` tinyint(4) DEFAULT '0' COMMENT '0表示正在云购中，1表示已结束',
  `win_user_id` int(10) DEFAULT '0' COMMENT '中奖UID',
  `win_number` int(10) DEFAULT '0' COMMENT '中奖编号',
  `closed` tinyint(1) DEFAULT '0',
  `audit` tinyint(1) DEFAULT '0',
  `lottery_time` int(10) DEFAULT '0' COMMENT '开奖时间',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_cloud_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_cloud_logs`
-- ----------------------------
DROP TABLE IF EXISTS `bao_cloud_logs`;
CREATE TABLE `bao_cloud_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `num` int(10) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `microtime` varchar(3) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_cloud_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_community`
-- ----------------------------
DROP TABLE IF EXISTS `bao_community`;
CREATE TABLE `bao_community` (
  `community_id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '物业管理员',
  `city_id` smallint(5) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `tel` varchar(50) NOT NULL,
  `pic` varchar(64) NOT NULL,
  `village_id` smallint(5) DEFAULT NULL,
  `property` varchar(128) DEFAULT NULL COMMENT '物业',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `tag` varchar(200) NOT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `orderby` int(5) DEFAULT '100',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`community_id`),
  KEY `city_id` (`city_id`,`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='小区表';

-- ----------------------------
-- Records of bao_community
-- ----------------------------
INSERT INTO `bao_community` VALUES ('1', '', '1', '7', '2', '0', '阳光花园', '重庆市何春去大河镇3组', '13345678922', '2016/05/23/thumb_5742d6b4ee4c7.jpg', '0', '大河村物业公司', '110.369372', '33.518414', '', '0', '1', '1463998171', '12.18.78.222');
INSERT INTO `bao_community` VALUES ('2', null, '21', '7', '28', '0', '新疆茂南小区', '新疆省茂南县城大河村3组', '13388888888', '2016/06/12/thumb_575cce995cc0f.jpg', '0', '大河村物业公司', '110.916692', '32.198258', '', '0', '2', '1465700014', '12.18.78.208');

-- ----------------------------
-- Table structure for `bao_community_ad`
-- ----------------------------
DROP TABLE IF EXISTS `bao_community_ad`;
CREATE TABLE `bao_community_ad` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `title` varchar(64) DEFAULT '',
  `link_url` varchar(128) DEFAULT '',
  `photo` varchar(128) DEFAULT '',
  `orderby` tinyint(1) DEFAULT '100',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_community_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_community_news`
-- ----------------------------
DROP TABLE IF EXISTS `bao_community_news`;
CREATE TABLE `bao_community_news` (
  `news_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `intro` varchar(1024) DEFAULT NULL,
  `details` text,
  `views` int(11) DEFAULT '0',
  `audit` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_community_news
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_community_order`
-- ----------------------------
DROP TABLE IF EXISTS `bao_community_order`;
CREATE TABLE `bao_community_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `order_date` char(7) DEFAULT '2015-10',
  `user_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_community_order
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_community_order_logs`
-- ----------------------------
DROP TABLE IF EXISTS `bao_community_order_logs`;
CREATE TABLE `bao_community_order_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `money` int(10) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_community_order_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_community_order_products`
-- ----------------------------
DROP TABLE IF EXISTS `bao_community_order_products`;
CREATE TABLE `bao_community_order_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0' COMMENT '1水费  2电费 3燃气费 4停车费 5物业费',
  `order_id` int(10) DEFAULT '0',
  `money` int(10) DEFAULT '0',
  `bg_date` char(10) DEFAULT NULL,
  `end_date` char(10) DEFAULT NULL,
  `is_pay` tinyint(1) DEFAULT '0' COMMENT '0未缴 1已缴',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_community_order_products
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_community_owner`
-- ----------------------------
DROP TABLE IF EXISTS `bao_community_owner`;
CREATE TABLE `bao_community_owner` (
  `owner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` int(10) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `name` varchar(32) DEFAULT '' COMMENT '称呼',
  `number` int(10) DEFAULT '0' COMMENT '户号',
  `location` varchar(64) DEFAULT '' COMMENT '具体地址',
  `audit` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_community_owner
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_community_posts`
-- ----------------------------
DROP TABLE IF EXISTS `bao_community_posts`;
CREATE TABLE `bao_community_posts` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(80) NOT NULL,
  `community_id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `views` int(11) DEFAULT '0',
  `audit` tinyint(11) DEFAULT '0',
  `gallery` varchar(500) NOT NULL,
  `view_num` int(10) NOT NULL DEFAULT '0',
  `reply_num` int(10) NOT NULL DEFAULT '0',
  `zan_num` int(10) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL,
  `create_ip` varchar(30) NOT NULL,
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_community_posts
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_community_replys`
-- ----------------------------
DROP TABLE IF EXISTS `bao_community_replys`;
CREATE TABLE `bao_community_replys` (
  `reply_id` int(10) NOT NULL AUTO_INCREMENT,
  `community_id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL DEFAULT '0',
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `gallery` varchar(500) NOT NULL,
  `create_time` int(10) NOT NULL,
  `create_ip` varchar(20) NOT NULL,
  `audit` int(11) DEFAULT '0',
  PRIMARY KEY (`reply_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_community_replys
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_community_users`
-- ----------------------------
DROP TABLE IF EXISTS `bao_community_users`;
CREATE TABLE `bao_community_users` (
  `join_id` int(10) NOT NULL AUTO_INCREMENT,
  `community_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`join_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_community_users
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_connect`
-- ----------------------------
DROP TABLE IF EXISTS `bao_connect`;
CREATE TABLE `bao_connect` (
  `connect_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('weibo','test','weixin','qq') DEFAULT 'qq' COMMENT 'test 作为调试的时候使用！以免不懂得用户误会小弟啊',
  `open_id` varchar(32) DEFAULT NULL,
  `token` varchar(512) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `headimgurl` varchar(500) DEFAULT NULL,
  `unionid` varchar(32) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`connect_id`),
  UNIQUE KEY `type` (`type`,`open_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_connect
-- ----------------------------
INSERT INTO `bao_connect` VALUES ('1', 'weixin', 'o8rTpwZSjIkAPuNy2E0rfrlX055U', '1UFtyHqMCmAZqllxohI2mPHqDWsfRZdJhRJdRSW0yJm0Ct5R1g_bG9dmCDrhXXbco0ItMl2CPfgX-q3nNKWkZVX6oc5jtOIrc4A8dCUw-5M', '', '', '', '5');
INSERT INTO `bao_connect` VALUES ('2', 'weixin', 'o8rTpwc6Gru27_T2TcolJpaMa1pw', 'fOEk9doBLZU-CHRsMA3QVfpRPIpWkifxEokP04zlRrrlozG0O6OIJ3X3YlsStC7SX5Nh8DXJzq0VQp5acvKA4kbcHrdAn8it_-fCi73Lxew', 'LZD', 'http://wx.qlogo.cn/mmopen/5IbsibPRrLUbSkia5Wbic7DmZhoHbAPdap9bEzGtWwwHTcuCrJjQIg689dmCdcBXxRHSNZDNlfXG91MBK1UuOXialXoO2htgC5SW/0', '', '6');
INSERT INTO `bao_connect` VALUES ('3', 'weixin', 'o8rTpwVHUdp_ZqWAoKxfoXQUzHWg', 'w1rFQnBEdIA2Ri0QQ358NqESLnQqiPNBakwPMJdn6JOtBadvngTftnCMyEi2OEIADk6efbBHVxsHyeMpKG8HPSKLc3UxiZdt2kaj6SBzKtU', 'Liyo', 'http://wx.qlogo.cn/mmopen/5IbsibPRrLUbE16BgGVLXHWxUB8nIDpKebDvm6LcemHN7KJHoiaojQaSx069yoIx8cNIt1HSaGLfbympMpFHZ3iafE5MAItRv2W/0', '', '7');
INSERT INTO `bao_connect` VALUES ('4', 'weixin', 'o8rTpwf6hQI-Qb1p54aDUxkCDUyE', '0OiHqfT5OXL1LdNIVc22l3k20GoOJ35LBBLtgg_RpQfr6HZMNar-lBuwZEbU2cMEWGFh0MvwWPbExpEAiTHjPQNItGcMUQuxoS8kj_3sBdw', '八斗营销策划', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7IAw6qJdS9CYhc7m0vasA5hiaTtZGm2dqv1QprGBKmOoIf0gxKqMrIwr6xfj6brAo6KFXo0aSYMMVg3mwicXCHXhKibmuJvAbRn4/0', '', '8');
INSERT INTO `bao_connect` VALUES ('5', 'weixin', 'o8rTpwez0x_B7mQutrriUDbDV0os', '5gS5BWjyS4gAypDdkA09Mh-jaUuUElgt2FhEKAHb7H6ErARxcHc9Bao_7lMxDSWtzvXsdt3Npxp26fKNqJ3TXBt5Ci6GyVuFA-XgX3nO1JM', 'Sam', 'http://wx.qlogo.cn/mmopen/KPUD5JJqM2CjicmrGibgTUMnYU9uIDYa8v2EKEQrsVxqAobRlVV7aoMibic50ia8IiaVFwQIAr4F7Vaq1NRiaQVMLXAP63hFKSlEw7X/0', '', '10');
INSERT INTO `bao_connect` VALUES ('6', 'weixin', 'o8rTpwWShqawzJPsEfoyYYTeVRDE', 'nfH_tcErQizJRAfSDU_6Tp1RJT9to4cZXNr1VEb6Rm4cTiJC01jJOvtAIBVkmc4ntCP0IzIv2zmH5JoOaQQzxCmfsC6-G7lSUzNDST9_dic', '缘来是你', 'http://wx.qlogo.cn/mmopen/KPUD5JJqM2D2zGxr1icGRrW6ehEIGh9aoBYsjicZu5u0biclMnbekFakXeNz3dSG0QeXNYex4Cic2bnNT0ia0ZjF6TGwt2hjgiaibqib/0', '', '11');
INSERT INTO `bao_connect` VALUES ('7', 'weixin', 'o8rTpwZ9s6kew5IVf2f-t0oNio0g', 'CDsKkvOdQzrT0WmZpYnH8NfBTuwdGMHr3aCzHBsO8iuOvHPzaXzWd3uEDS_3OWe8czWnoq37BlIq5-fAAWMGueUqb8Gw4NFcZi6kMVL8viU', '小業', 'http://wx.qlogo.cn/mmopen/3tZ9zmXU5ot5GrrBbqXnkHia8Xt8kE2WypNNY1V6rV8KOBiax2m6cOwHYGwyL0MGluZpXeR9RYvcL3dmeWXdJA7uKSkeTYmUN3/0', '', '14');
INSERT INTO `bao_connect` VALUES ('8', 'weixin', 'o8rTpwaMdX8qEbeqHzqDUAu90meo', 'nf8KDCVkvD8bGOODRS_9176BTpe_71G7jSxYKn0_7E_rxeDU4Fcuiht8cWFYPPr5XvabmUhcTssaDS-aCOrR7oKbDA_r2z_EBgTQlPNPJoY', '郑锐祥15107358990', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4ElAIcDus4AMI1bibxJsgiakcmMTFx4KjRGSXMrUzWZB7AYmia53SKdbRq4ohYrnV2JcycYKO4ew8mEDkicf4WLsN45DbyRRwNEAQ/0', '', '15');
INSERT INTO `bao_connect` VALUES ('9', 'weixin', 'o8rTpwex_AIWTeqQ40FQ0vPushd4', 'H9K19t144KC8DiIecPe5MYi9MC0YsKfKmvGZW6Gu8xjvvdFovl0NmBAclcJvtjIEzJvsush7LSx4dgJ6KyazYXvfGMnzFQvf8xLRWTrISyQ', '*     Eva ', 'http://wx.qlogo.cn/mmopen/3UliaCLckbNdN17RJucEWKY4t7VqLD7iauLzU68GNwibA4rZZTr1bJ8YtL4hSvEoXea66J5ictu0BAE2BicaZt7egaKLsxOVnicytib/0', '', '16');
INSERT INTO `bao_connect` VALUES ('10', 'weixin', 'o8rTpwdnf1lTKwQfR8uP5FXDsU8g', 'KXyHRigAq-_-om2I7yuNnEsJWUMpDQI95UczhezCMd6e5Jwtp5KOM3rn84VFSmQTCHoaBJW4jVvXqjxzCIMHiDUvafM-ce1yvRIFnmy6MAI', 'AAA 众星无线', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAvIqclibqN5gKicAwYiazia9v7whMuy6NnPDtChibqxQpicSXohIZXeCbqakW2UD4ytUYrw7WRBe12xj6Q/0', '', '17');
INSERT INTO `bao_connect` VALUES ('11', 'weixin', 'o8rTpwSn6TZWSantI1nv1ZTRCgsk', 'G2p56n8CS7sdZuflu8B_9yWV693_oo66l7f5O37PTHEFEwqiTi7x6fqA_JnjCop7tJQGxe_xri_WwbAv4oCojF4YgxUb-UZaitzoM9oxUBY', 'Sun', 'http://wx.qlogo.cn/mmopen/3tZ9zmXU5ovJASApbuOr7NrN3nULMqPyaJgOWlmmicuWMFQOZTemvQB11t4sGqEBGt98O3ic12ZfGvicSricHTIKnSqdN1caqzG3/0', '', '18');
INSERT INTO `bao_connect` VALUES ('12', 'weixin', 'o8rTpwaIQcHH7BUFJ7-uGKDrjf6E', 'D1R0ZdaaSU-dHgiOfys0Nj8cUWi-pAeaNWLRr7Dh0DISYIUjRakRdw8tbzrbdiBI_kqBoXYszxv46szqFsYXUv8T9HgGizEkzWTPpIX_ZN0', '陈伟平689702', 'http://wx.qlogo.cn/mmopen/5IbsibPRrLUbSkia5Wbic7Dmfh9D7QnHrnaAtAvNFUDwYUQ9U1aJTmPVZicCLLWiaUByGJXBl9tKnz1Y5yLTCGJURwPORSicHtNrEb/0', '', '19');
INSERT INTO `bao_connect` VALUES ('13', 'weixin', 'o8rTpwcUocni59RhgKoRVoUieDw0', 'P05ZabZ9YmDp1Uq6BGgL8rLPZ0AOv3vbPcD_jHkcxKpMYyenDrwPcuSTuzB1ReonLAzLj3faIBE6KwyKezSxFmIZ-esWPU2pebiEyFnn6f8', '印记', 'http://wx.qlogo.cn/mmopen/6mXOeYa4HU85WKTgMXHuQGaFxDRbBOQdXr8MffLF63iaFQva7gMW4micBYk6g27SQfTianYr1lS7AoQs73Pk34EdVk8ZS6EIy73/0', '', '20');
INSERT INTO `bao_connect` VALUES ('14', 'weixin', 'o8rTpwUZS-sOMWsUlCQIEtQMbm60', 'c1LZzgkEnzQ0V_rcV3c82qMZ2YMVvegfH_KAEdjuSAFcHuzGA7iO1V1RPjxf05JtWlA5esuFAon47Va_GqbJiGIvDpcm66kSxy_NorD8JT8', 'seoer', 'http://wx.qlogo.cn/mmopen/5IbsibPRrLUbSkia5Wbic7Dmbd2ia12XteckfK2YCUQaeFZMxGLo7aiaF9xgQZZFnrFOCTiclsOG5OQLIpoX3mhgFJ5yQ4Aer4ibZPG/0', null, '26');
INSERT INTO `bao_connect` VALUES ('15', 'weixin', 'oRxFIwxVmqJDq9piS6s3uJKffbhM', 'zBR0tsFRFomgnqAf9x4qImKcJV_oif-1TngKZD3nJiDgFY1UAHUUDMRs5dtu7WIVF1IgKkj_hMY1jv9SD7S-5AbfbeQXLXaOnT4Ep2PSRHk', '六个石头', 'http://wx.qlogo.cn/mmopen/NoFChqEQomFxQMeGY3iaNDLO1YOtftluwlU7d0BFJH7mBCorlY51wQyjl6m6AP5YI23giak7P7Yc2owuR5XVh6icA/0', null, '27');
INSERT INTO `bao_connect` VALUES ('16', 'weixin', 'oRxFIwyP548camyWb5gvKgARXNQ0', 'lwiJteiTN2wrwNmqKrfPuo-sxZd5tW1zmmnVP6w_SJS9QOQJIjjmgwJsgIlCfLSRjXDahbh2IfMQ0EwTKZG4PbRonTmsaKQLbxoIljNoYSk', '岁月凉茶', 'http://wx.qlogo.cn/mmopen/1mVwCZPawUtTrpiaBjOe6VgNtESaBVGPLDq4IyoACib6Fgh53iaRWwbBkyRIGeQoI89nXkRY5xZ9ic6hNTfhMuwYIH0nSUdoCIXy/0', null, '28');
INSERT INTO `bao_connect` VALUES ('17', 'weixin', 'oRxFIw7K9WtjW3IU6FJEFkc157Ik', 'uCvP4lApdFC_FZXi1Oi4jBU_vcOf6MBhOWj2FhmRX04VF6uU-_b7VkH9dGnEwKGQW9Ur01N3My7usVoz9D9npst0tfT7WWPRV0tDJvb2p6E', '掌上汶上·刘海旭', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6d9Bb61Kyibia8pXxl9OhlmZ6NpFHooh87OJ6DohFdlCk2Hibde64ibxGkMeD3YYI2WruVfzqZo1JicEJBgoDwUserGPIoIic7BSw4w/0', null, '29');
INSERT INTO `bao_connect` VALUES ('18', 'weixin', 'oRxFIwyeSQUdGUvXLuYAOT4Z0O-M', 'Mw6yFh1dhaKoBC6LGQzXEaORVmVPIXdevt51-JbhLa3vwTrYVNfL189SY_U71dMOcvRO_EbA50LAHdmUrgQmsXZO-bpgQ25iKlwHnAE1fJQ', '屌丝', 'http://wx.qlogo.cn/mmopen/8KRQciczTl93MicYXuQN2iaROMVlKJvICDfqZosSwBPY4ib8qkrD68KPTWJ9rwrFmlMNHibaFAAFjMuQkHLxA5uia0gA/0', null, '30');

-- ----------------------------
-- Table structure for `bao_convenient_phone`
-- ----------------------------
DROP TABLE IF EXISTS `bao_convenient_phone`;
CREATE TABLE `bao_convenient_phone` (
  `phone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `community_id` smallint(6) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `orderby` tinyint(4) DEFAULT NULL,
  `details` text NOT NULL,
  `audit` int(11) DEFAULT NULL,
  PRIMARY KEY (`phone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_convenient_phone
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_convenient_phone_maps`
-- ----------------------------
DROP TABLE IF EXISTS `bao_convenient_phone_maps`;
CREATE TABLE `bao_convenient_phone_maps` (
  `phone_id` int(11) DEFAULT NULL,
  `community_id` smallint(6) DEFAULT NULL,
  `audit` int(2) NOT NULL DEFAULT '0',
  UNIQUE KEY `phone_id` (`phone_id`,`community_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_convenient_phone_maps
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_convenient_phone_villages`
-- ----------------------------
DROP TABLE IF EXISTS `bao_convenient_phone_villages`;
CREATE TABLE `bao_convenient_phone_villages` (
  `phone_id` int(11) DEFAULT NULL,
  `village_id` smallint(6) DEFAULT NULL,
  UNIQUE KEY `phone_id` (`phone_id`,`village_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_convenient_phone_villages
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `bao_coupon`;
CREATE TABLE `bao_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `cate_id` smallint(6) DEFAULT NULL,
  `city_id` smallint(6) DEFAULT '0',
  `area_id` smallint(6) DEFAULT '0',
  `business_id` smallint(6) DEFAULT '0',
  `title` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `downloads` int(11) DEFAULT '0',
  `intro` varchar(1024) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  `num` int(11) DEFAULT '9999999',
  `limit_num` tinyint(3) DEFAULT '0' COMMENT '0代表不限制',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`coupon_id`),
  KEY `cate_id` (`cate_id`,`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_coupon
-- ----------------------------
INSERT INTO `bao_coupon` VALUES ('1', '1', '45', '7', '2', '0', '111', '2016/06/04/thumb_57527bcc984d1.png', '2016-06-30', '5', '0', '547', '1', '50', '1', '0', '1465023495', '14.125.241.145');
INSERT INTO `bao_coupon` VALUES ('2', '4', '42', '7', '2', '0', '111', '2016/06/04/thumb_57527ee5656d5.png', '2016-06-30', '0', '0', '5488', '1', '5', '1', '0', '1465024246', '14.125.241.145');

-- ----------------------------
-- Table structure for `bao_coupon_download`
-- ----------------------------
DROP TABLE IF EXISTS `bao_coupon_download`;
CREATE TABLE `bao_coupon_download` (
  `download_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `mobile` char(11) DEFAULT NULL,
  `code` char(8) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT '0',
  `is_sms` tinyint(1) DEFAULT '0',
  `used_time` int(11) DEFAULT NULL,
  `used_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`download_id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_coupon_download
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_dayu_tag`
-- ----------------------------
DROP TABLE IF EXISTS `bao_dayu_tag`;
CREATE TABLE `bao_dayu_tag` (
  `dayu_id` int(11) NOT NULL AUTO_INCREMENT,
  `dayu_local` varchar(60) DEFAULT NULL,
  `dayu_name` varchar(128) DEFAULT NULL,
  `dayu_tag` varchar(36) DEFAULT NULL,
  `dayu_note` varchar(256) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`dayu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_dayu_tag
-- ----------------------------
INSERT INTO `bao_dayu_tag` VALUES ('1', 'sms_shop_recognition_adm', '认领商家通知网站管理员', 'SMS_7265626', '尊敬的管理员，${name}认领的商家${shop_name}，请登录网站查看。', '1');
INSERT INTO `bao_dayu_tag` VALUES ('2', 'sms_yzm', '验证码', 'SMS_6720152', '尊敬的用户：您在${sitename}手机认证的验证码是${code}千万别告诉别人！', '1');
INSERT INTO `bao_dayu_tag` VALUES ('4', 'sms_shop_yuyue_code', '预约商家给用户发送电子优惠券', 'SMS_6840016', '尊敬的用户您好,您预约了${shop_name}的电子优惠券：${code},亲可以前往${shop_name}进行消费;商家地址:${shop_addr},电话${shop_tel};', '1');
INSERT INTO `bao_dayu_tag` VALUES ('5', 'sms_tgdx', '团购后发送短信', 'SMS_7235752', '尊敬的${nickname}您在${sitename}订购的${tuan}的电子券是${code}；千万别告诉其他人！', '1');
INSERT INTO `bao_dayu_tag` VALUES ('6', 'sms_user_newpwd', '找回密码', 'SMS_7225707', '尊敬的用户：您好，您在${sitename}的密码被重置成${newpwd}您可以使用${newpwd}重新登录！', '1');
INSERT INTO `bao_dayu_tag` VALUES ('7', 'sms_sctzsj', '商城通知商家短信', 'SMS_6745739', '您好，您在${sitename}有新的订单！', '1');
INSERT INTO `bao_dayu_tag` VALUES ('8', 'sms_tgtzsj', '团购通知商家', 'SMS_6720153', '您好，您在${sitename}有新的订单！', '1');
INSERT INTO `bao_dayu_tag` VALUES ('9', 'sms_dcdx', '订餐后发送短信给用户', 'SMS_6755182', '尊敬的${nickname}您在${shopname}点的外卖订单已经生成，请耐心等待美食的到来。', '1');
INSERT INTO `bao_dayu_tag` VALUES ('10', 'sms_ele_shop', '新订单通知外卖商家', 'SMS_6700154', '您好，您在${sitename}有新的订单！', '1');
INSERT INTO `bao_dayu_tag` VALUES ('11', 'sms_yycd', '预约场地', 'SMS_6145804', '${name}预约了您的场地，请及时登录你的网站回复。', '1');
INSERT INTO `bao_dayu_tag` VALUES ('12', 'sms_jftz', '缴费成功通知用户', 'SMS_6735152', '您好，您在${sitename}的${billtype}缴费订单已处理。', '1');
INSERT INTO `bao_dayu_tag` VALUES ('13', 'sms_tktz', '缴费退款通知', 'SMS_6740178', '您好，您在${sitename}的{billtype}缴费订单已退款，处理说明：${memo}', '1');
INSERT INTO `bao_dayu_tag` VALUES ('14', 'sms_tuan_user', '客户下单后，发送团购劵到用户手机上。', 'SMS_6735153', '尊敬的${user}，您在${shop_name}预定的抢购验证密码为：${code}，请及时消费哦', '1');
INSERT INTO `bao_dayu_tag` VALUES ('15', 'sms_gwtxsj', '商家提醒', 'SMS_6760150', '你好，有顾客在你的店铺购买了商品，请及时处理。\r\n(顾客购物后的商家提醒)', '1');
INSERT INTO `bao_dayu_tag` VALUES ('16', 'sms_dytz', '下载电子优惠券用户通知', 'SMS_6740176', '尊敬的用户您好，您下载了商家${shop_name}的电子优惠券${coupon_title}，电子优惠券为${code}，你可以在${expire_date}之前使用该优惠券！', '1');
INSERT INTO `bao_dayu_tag` VALUES ('17', 'sms_shop_recognition_user', '认领商家成功通知用户', 'SMS_7280671', '尊敬的${name}，您认领的商家${shop_name}已通过审核，请登录${sitename}查看。', '1');
INSERT INTO `bao_dayu_tag` VALUES ('18', 'sms_shop_yuyue_shop', '客户预约商户【黄页】通知商家。', 'SMS_7275592', '尊敬的商家，${name}，合计${number}人，手机：${mobile},预约时间{yuyue_date}。', '1');
INSERT INTO `bao_dayu_tag` VALUES ('19', 'tuan_TZ_user', '抢购劵验证后通知用户已验证', 'SMS_8205249', '您抢购的${name}.已于${data}成功消费.如有问题请联系客服${tel}.', '1');

-- ----------------------------
-- Table structure for `bao_delivery`
-- ----------------------------
DROP TABLE IF EXISTS `bao_delivery`;
CREATE TABLE `bao_delivery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '',
  `mobile` varchar(11) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL,
  `delivery_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_delivery
-- ----------------------------
INSERT INTO `bao_delivery` VALUES ('1', '123456', 'e10adc3949ba59abbe56e057f20f883e', '李合琴', '13356782345', '1459816885', '0');
INSERT INTO `bao_delivery` VALUES ('2', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '雅马哈', '15521893101', '1465028729', '0');

-- ----------------------------
-- Table structure for `bao_delivery_order`
-- ----------------------------
DROP TABLE IF EXISTS `bao_delivery_order`;
CREATE TABLE `bao_delivery_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '0是商城，1是外卖，2是快件',
  `type_order_id` int(10) unsigned NOT NULL COMMENT '关联的分类中的订单编号',
  `delivery_id` int(10) unsigned NOT NULL COMMENT '配送员ID',
  `shop_id` int(10) unsigned NOT NULL,
  `city_id` int(10) NOT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `shop_name` varchar(64) NOT NULL DEFAULT '',
  `shop_addr` varchar(64) NOT NULL DEFAULT '',
  `shop_mobile` varchar(64) DEFAULT '',
  `user_name` varchar(64) NOT NULL DEFAULT '',
  `user_addr` varchar(64) NOT NULL DEFAULT '',
  `user_mobile` varchar(11) DEFAULT '',
  `create_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '接单时间',
  `end_time` int(10) DEFAULT '0' COMMENT '完成时间 ',
  `status` tinyint(1) unsigned NOT NULL COMMENT '0是货到付款，1是已付款，2是配送中，8是已完成。',
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_delivery_order
-- ----------------------------
INSERT INTO `bao_delivery_order` VALUES ('1', '0', '1', '1', '1', '7', '39.123041', '124.145211', '1', '脆皮玉米', '重庆市合川区大河村2组', '023-68341234', '测试号', '测试能不能跳转回去', '13345678902', '1464915878', '1464916012', '0', '8', '0');
INSERT INTO `bao_delivery_order` VALUES ('2', '0', '2', '1', '1', '7', '39.123041', '124.145211', '1', '脆皮玉米', '重庆市合川区大河村2组', '023-68341234', '测试号', '测试能不能跳转回去', '13345678902', '1464933504', '1465028930', '0', '2', '0');

-- ----------------------------
-- Table structure for `bao_ele`
-- ----------------------------
DROP TABLE IF EXISTS `bao_ele`;
CREATE TABLE `bao_ele` (
  `shop_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(64) DEFAULT NULL COMMENT '冗余方便查询',
  `city_id` smallint(5) unsigned DEFAULT NULL,
  `area_id` smallint(5) DEFAULT '0',
  `business_id` smallint(5) DEFAULT '0',
  `cate` varchar(64) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0' COMMENT '1 代表营业中',
  `busihour` varchar(100) NOT NULL,
  `tags` varchar(128) DEFAULT NULL,
  `is_pay` tinyint(1) DEFAULT '0' COMMENT '1代表支持在线付款',
  `is_fan` tinyint(1) DEFAULT '0' COMMENT '1 代表返现',
  `fan_money` int(10) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `full_money` int(10) DEFAULT '0' COMMENT '满多少MONEY 立刻减几元',
  `new_money` int(10) DEFAULT '0' COMMENT '减多少钱  比如说 满20减5元 那么  每增加10块钱 将额外减一元',
  `logistics` int(10) DEFAULT '0' COMMENT '0代表不收取配送费 填写其他的将代表收取',
  `since_money` int(10) DEFAULT NULL COMMENT '起送价',
  `sold_num` int(10) DEFAULT NULL,
  `month_num` int(10) DEFAULT NULL,
  `intro` varchar(1024) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100' COMMENT '数字越小排序越高',
  `distribution` tinyint(3) DEFAULT '30' COMMENT '分钟  配送时间',
  `audit` tinyint(3) unsigned DEFAULT '0' COMMENT '0审核中1成功入驻2未通过',
  `rate` int(11) DEFAULT '60' COMMENT '费率 每个商品的结算价格',
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_ele
-- ----------------------------
INSERT INTO `bao_ele` VALUES ('3', '测试', '1', '2', '1', '1,2,3,4,5,6', '', '', '1', '', '', '1', '1', '0', '1', '2000', '200', '200', '2100', '21', '1', '急急急急急急急', '100', '23', '1', '0');
INSERT INTO `bao_ele` VALUES ('1', '脆皮玉米', '7', '2', '0', '1,2', '124.145211', '39.123041', '1', '', '', '1', '1', '400', '1', '2400', '400', '400', '2400', '0', '0', '&lt;p&gt;41204&lt;/p&gt;', '100', '100', '1', '60');
INSERT INTO `bao_ele` VALUES ('6', '华艺影城', '7', '2', '0', '1', '107.101768', '26.631671', '1', '', null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '&lt;p&gt;啊&lt;/p&gt;', '100', '100', '1', '60');

-- ----------------------------
-- Table structure for `bao_ele_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_ele_cate`;
CREATE TABLE `bao_ele_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `cate_name` varchar(32) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  `closed` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`cate_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_ele_cate
-- ----------------------------
INSERT INTO `bao_ele_cate` VALUES ('12', '3', '凉菜', '2', '0');
INSERT INTO `bao_ele_cate` VALUES ('13', '3', '热菜', '2', '0');
INSERT INTO `bao_ele_cate` VALUES ('14', '1', '面食', '1', '0');
INSERT INTO `bao_ele_cate` VALUES ('15', '1', '回锅肉', '1', '0');
INSERT INTO `bao_ele_cate` VALUES ('16', '9', '中餐', '5', '0');
INSERT INTO `bao_ele_cate` VALUES ('17', '1', '凉菜', '1', '0');
INSERT INTO `bao_ele_cate` VALUES ('18', '1', '熟食', '1', '0');
INSERT INTO `bao_ele_cate` VALUES ('19', '1', '甜点', '0', '0');
INSERT INTO `bao_ele_cate` VALUES ('20', '1', '海鲜', '0', '0');
INSERT INTO `bao_ele_cate` VALUES ('21', '1', '拌菜', '1', '0');
INSERT INTO `bao_ele_cate` VALUES ('22', '1', '蒸菜', '1', '0');
INSERT INTO `bao_ele_cate` VALUES ('23', '1', '水果', '0', '0');
INSERT INTO `bao_ele_cate` VALUES ('24', '1', '小吃', '0', '0');
INSERT INTO `bao_ele_cate` VALUES ('25', '6', '饮料', '1', '0');

-- ----------------------------
-- Table structure for `bao_ele_dianping`
-- ----------------------------
DROP TABLE IF EXISTS `bao_ele_dianping`;
CREATE TABLE `bao_ele_dianping` (
  `dianping_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `speed` tinyint(3) unsigned DEFAULT '0',
  `cost` int(11) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `reply` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `show_date` date DEFAULT NULL,
  `closed` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `dianping_id` (`dianping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_ele_dianping
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_ele_dianping_pics`
-- ----------------------------
DROP TABLE IF EXISTS `bao_ele_dianping_pics`;
CREATE TABLE `bao_ele_dianping_pics` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `dianping_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_ele_dianping_pics
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_ele_order`
-- ----------------------------
DROP TABLE IF EXISTS `bao_ele_order`;
CREATE TABLE `bao_ele_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `addr_id` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT '0',
  `logistics` int(11) DEFAULT '0',
  `need_pay` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `new_money` int(11) DEFAULT '0',
  `fan_money` int(11) DEFAULT '0',
  `settlement_price` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0' COMMENT '1等待处理  2代表已经确认  8代表配送完成',
  `is_pay` tinyint(1) DEFAULT '0' COMMENT '0是货到付款，1是在线支付',
  `is_store` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `audit_time` int(11) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `month` int(11) DEFAULT '201501',
  `message` varchar(100) DEFAULT NULL,
  `is_dianping` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_ele_order
-- ----------------------------
INSERT INTO `bao_ele_order` VALUES ('1', '1', '1', '0', '3600', '0', '3600', '3', '0', '0', '3384', '2', '0', '0', '1463902418', '27.13.29.14', '0', '0', '201605', '请提供餐具', '0');
INSERT INTO `bao_ele_order` VALUES ('2', '3', '9', '0', '2600', '200', '2400', '2', '200', '0', '2400', '0', '0', '0', '1464786570', '171.114.183.246', '0', '0', '201606', '', '0');
INSERT INTO `bao_ele_order` VALUES ('3', '3', '9', '0', '2600', '200', '2600', '2', '0', '0', '2600', '0', '0', '0', '1464793131', '171.114.183.246', '0', '0', '201606', '', '0');
INSERT INTO `bao_ele_order` VALUES ('4', '3', '9', '0', '2600', '200', '2600', '2', '0', '0', '2600', '0', '0', '0', '1464793132', '171.114.183.246', '0', '0', '201606', '', '0');
INSERT INTO `bao_ele_order` VALUES ('5', '3', '1', '1', '2600', '200', '2400', '2', '200', '0', '2400', '1', '0', '0', '1464830575', '1.188.194.175', '0', '0', '201606', '', '0');
INSERT INTO `bao_ele_order` VALUES ('6', '1', '13', '0', '3300', '400', '2900', '29', '400', '0', '2726', '0', '0', '0', '1464962193', '223.154.96.164', '0', '0', '201606', '', '0');
INSERT INTO `bao_ele_order` VALUES ('7', '6', '27', '0', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '1467344741', '106.35.37.171', '0', '0', '201607', null, '0');
INSERT INTO `bao_ele_order` VALUES ('8', '6', '27', '0', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '1467351615', '106.35.37.171', '0', '0', '201607', null, '0');

-- ----------------------------
-- Table structure for `bao_ele_order_product`
-- ----------------------------
DROP TABLE IF EXISTS `bao_ele_order_product`;
CREATE TABLE `bao_ele_order_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_ele_order_product
-- ----------------------------
INSERT INTO `bao_ele_order_product` VALUES ('1', '1', '1', '3', '3600', '201605');
INSERT INTO `bao_ele_order_product` VALUES ('2', '2', '1', '2', '2400', '201606');
INSERT INTO `bao_ele_order_product` VALUES ('3', '3', '1', '2', '2400', '201606');
INSERT INTO `bao_ele_order_product` VALUES ('4', '4', '1', '2', '2400', '201606');
INSERT INTO `bao_ele_order_product` VALUES ('5', '5', '1', '2', '2400', '201606');
INSERT INTO `bao_ele_order_product` VALUES ('6', '6', '2', '26', '2600', '201606');
INSERT INTO `bao_ele_order_product` VALUES ('7', '6', '3', '3', '300', '201606');
INSERT INTO `bao_ele_order_product` VALUES ('8', '7', '4', '1', '1', '201607');
INSERT INTO `bao_ele_order_product` VALUES ('9', '8', '4', '1', '1', '201607');

-- ----------------------------
-- Table structure for `bao_ele_product`
-- ----------------------------
DROP TABLE IF EXISTS `bao_ele_product`;
CREATE TABLE `bao_ele_product` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(32) DEFAULT NULL,
  `desc` varchar(255) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `settlement_price` int(11) unsigned DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT '0',
  `is_hot` tinyint(1) DEFAULT '0',
  `is_tuijian` tinyint(1) DEFAULT '0',
  `sold_num` int(11) DEFAULT '0',
  `month_num` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_ele_product
-- ----------------------------
INSERT INTO `bao_ele_product` VALUES ('1', '回锅肉', '很不懂的', '3', '18', '2016/05/22/thumb_5741606abcf3e.jpg', '1200', '1128', '1', '1', '1', '0', '0', '1463902321', '27.13.29.14', '0', '1');
INSERT INTO `bao_ele_product` VALUES ('2', '42145', '45245', '1', '14', '2016/06/03/thumb_57518afa64541.jpg', '100', '94', '1', '1', '1', '0', '0', '1464961792', '223.154.96.164', '0', '1');
INSERT INTO `bao_ele_product` VALUES ('3', '2052', '101', '1', '15', '2016/06/03/thumb_57518bf43d16a.jpg', '100', '94', '1', '1', '1', '0', '0', '1464962042', '223.154.96.164', '0', '1');
INSERT INTO `bao_ele_product` VALUES ('4', '百事可乐（测试勿买）', '111', '6', '25', '2016/07/01/thumb_5775e716db4c8.jpg', '1', '0', '0', '0', '0', '0', '0', '1467344666', '106.35.37.171', '0', '1');

-- ----------------------------
-- Table structure for `bao_email`
-- ----------------------------
DROP TABLE IF EXISTS `bao_email`;
CREATE TABLE `bao_email` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_key` varchar(32) DEFAULT NULL,
  `email_explain` varchar(1024) DEFAULT NULL,
  `email_tmpl` text,
  `is_open` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `email_key` (`email_key`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_email
-- ----------------------------
INSERT INTO `bao_email` VALUES ('1', 'email_rz', '邮件认证模版支持标签：\r\n{link}', '<p>尊敬的用户：</p><p>&nbsp; &nbsp; &nbsp;您复制以下链接即可完成邮件认证！</p><p>&nbsp; &nbsp; &nbsp;{link}</p><p>&nbsp; &nbsp; &nbsp;成为认证客户后可以申请更多的推广机会！</p><p>&nbsp; &nbsp; &nbsp;<strong>{sitename}</strong>祝您在本平台获得更多客户！客服联系电话：{tel}</p>', '1');
INSERT INTO `bao_email` VALUES ('2', 'email_newpwd', '找回密码：\r\n1、{newpwd}新密码', '<p>尊敬的用户：您好，您再{sitename}的密码被重置成{newpwd}您可以使用{newpwd}重新登录！【{sitename}】</p>', '1');
INSERT INTO `bao_email` VALUES ('3', 'email_yuyue', '{name}客户姓名\r\n{yuyue_date}时间\r\n{number}人数\r\n{content}内容\r\n{yuyue_time}预约几点\r\n{mobile}预约手机号', '<p>你好，尊敬的商家。</p><p>客户姓名：<span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 12px; line-height: normal; white-space: normal; float: none;\">{name}</span></p><p>客户手机：{mobile}</p><p><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 12px; line-height: normal; white-space: normal; float: none;\">客户人数：<span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 12px; line-height: normal; white-space: normal; float: none;\">{number}</span></span></p><p>预约时间：{yuyue_date}-{yuyue_time}</p><p>内容：{content}。</p><p>请及时登录<span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: normal; white-space: normal; float: none;\">{sitename}处理信息！</span></p>', '1');
INSERT INTO `bao_email` VALUES ('4', 'email_lifeservice_yuyue', '{name}：预约人姓名\r\n{date}：年，月，日\r\n{time}：预约时间\r\n{addr}：预约地址\r\n{tel}：预约电话\r\n{contents}：预约内容\r\n', '<p>尊敬的商家，{name}在<span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\">{date}<span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\">{time}预约了你的家政服务！</span></span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\">预约人电话：<span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\">{tel}</span></span></span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\">预约人姓名：<span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\">{name}</span></span></span></span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\">预约人地址：<span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\">{addr}</span></span></span></span></span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><br/></span></span></span></span></span></p><p><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\"><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\">预约内容：<span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\">{contents}！</span></span></span></span></span></span></p><p>请登录<span style=\"color: rgb(0, 0, 0); line-height: normal; white-space: normal; float: none;\">{sitename}</span>查看！<br/></p>', '1');
INSERT INTO `bao_email` VALUES ('5', 'email_sj_lifeservice_yuyue', '{name}：预约人姓名\r\n{date}：年，月，日\r\n{time}：预约时间\r\n{addr}：预约地址\r\n{tel}：预约电话\r\n{contents}：预约内容\r\n', '<p style=\"white-space: normal;\">尊敬的网站管理员，{name}在<span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\">{date}<span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\">{time}预约了你的家政服务！</span></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\">预约人电话：<span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\">{tel}</span></span></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\">预约人姓名：<span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\">{name}</span></span></span></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\">预约人地址：<span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\">{addr}</span></span></span></span></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\"><span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\">预约内容：<span style=\"font-size: 12px; line-height: normal; color: rgb(0, 0, 0); float: none;\">{contents}！</span></span></span></span></span></span></p><p style=\"white-space: normal;\">请登录<span style=\"line-height: normal; color: rgb(0, 0, 0); float: none;\">{sitename}</span>查看！</p><p><br/></p>', '1');
INSERT INTO `bao_email` VALUES ('6', 'email_huodong_email', '{name}：预约人姓名\r\n{mobile}：预约人手机\r\n{num}：预约人数\r\n\r\n', '<p>你好，商家：{name}预约了您的活动了，人数{num}人，手机号：{mobile}，请尽快登录：<span style=\"color: rgb(0, 0, 0); line-height: normal; white-space: normal; float: none;\">{sitename}查看！</span></p>', '1');
INSERT INTO `bao_email` VALUES ('7', 'email_recognition', '{shop_name}商家名字\r\n{name}姓名\r\n{mobile}手机\r\n{content}理由\r\n{reply}回复', '<p>你好：{name}你在<span style=\"color: rgb(0, 0, 0); line-height: normal; white-space: normal; float: none;\">{sitename}认领的商家{shop_name}已通过审核：</span></p><p><span style=\"color: rgb(0, 0, 0); line-height: normal; white-space: normal; float: none;\"><br/></span></p><p><span style=\"color: rgb(0, 0, 0); line-height: normal; white-space: normal; float: none;\">审核理由：{reply}，</span></p><p><span style=\"color: rgb(0, 0, 0); line-height: normal; white-space: normal; float: none;\"><br/></span></p><p><span style=\"color: rgb(0, 0, 0); line-height: normal; white-space: normal; float: none;\">请登录：<span style=\"color: rgb(0, 0, 0); line-height: normal; white-space: normal; float: none;\">{sitename}查看！</span></span></p>', '1');
INSERT INTO `bao_email` VALUES ('8', 'pc_email_recognition', '用户申请认领邮件通知网站管理员！pc_email_recognition', '<p style=\"white-space: normal;\">你好，<span style=\"color: rgb(0, 0, 0); line-height: normal; white-space: normal; float: none;\">{sitename}</span>管理员：{name}你在<span style=\"line-height: normal; color: rgb(0, 0, 0); float: none;\">{sitename}认领的商家{shop_name}</span></p><p style=\"white-space: normal;\"><span style=\"line-height: normal; color: rgb(0, 0, 0); float: none;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"line-height: normal; color: rgb(0, 0, 0); float: none;\">申请理由：{content}！</span></p><p style=\"white-space: normal;\"><span style=\"line-height: normal; color: rgb(0, 0, 0); float: none;\">用户的手机号码：{mobile}。</span></p><p style=\"white-space: normal;\"><span style=\"line-height: normal; color: rgb(0, 0, 0); float: none;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"line-height: normal; color: rgb(0, 0, 0); float: none;\">请登录：<span style=\"line-height: normal; color: rgb(0, 0, 0); float: none;\">{sitename}查看！及时联系申请人！</span></span></p><p><br/></p>', '1');
INSERT INTO `bao_email` VALUES ('9', 'email_tz_delivery', '物流抢单后，通知购买人', '<p>你好：你的订单已被配送，请及时关注，或者登陆<span style=\"color: rgb(0, 0, 0); line-height: normal; white-space: normal; float: none;\">{sitename}查看,电话{tel}</span></p>', '1');
INSERT INTO `bao_email` VALUES ('10', 'email_tuisongemail', '邮件推送群发\r\n{title}\r\n{content}', '<p>你好，{title}，标题。</p><p><br/></p><p>内容：{content}</p><p><br/></p>', '1');

-- ----------------------------
-- Table structure for `bao_express`
-- ----------------------------
DROP TABLE IF EXISTS `bao_express`;
CREATE TABLE `bao_express` (
  `express_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT '0',
  `city_id` int(10) DEFAULT '0',
  `area_id` int(10) DEFAULT '0',
  `cid` int(10) DEFAULT '0',
  `business_id` int(10) DEFAULT '0',
  `title` varchar(64) DEFAULT NULL,
  `from_name` varchar(32) DEFAULT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `from_mobile` varchar(11) DEFAULT NULL,
  `to_name` varchar(32) DEFAULT NULL,
  `to_addr` varchar(255) DEFAULT NULL,
  `to_mobile` varchar(11) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0未处理，1已接单，2已完成，-1已拒收',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `update_time` int(20) DEFAULT NULL,
  PRIMARY KEY (`express_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_express
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `bao_feedback`;
CREATE TABLE `bao_feedback` (
  `feed_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `details` text,
  `reply` text,
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `reply_time` int(11) DEFAULT NULL,
  `reply_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_feedback
-- ----------------------------
INSERT INTO `bao_feedback` VALUES ('1', '1', '1', '你好', '你好', null, '0', '1465700062', '12.18.78.208', null, null);

-- ----------------------------
-- Table structure for `bao_found`
-- ----------------------------
DROP TABLE IF EXISTS `bao_found`;
CREATE TABLE `bao_found` (
  `found_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  `link_url` varchar(128) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`found_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_found
-- ----------------------------
INSERT INTO `bao_found` VALUES ('1', '发现生活第一季', '2014/11/19/thumb_546c3d32803b3.png', '/mobile/shop/index/cat/1.html', '1416379727', '127.0.0.1', '1');

-- ----------------------------
-- Table structure for `bao_goods`
-- ----------------------------
DROP TABLE IF EXISTS `bao_goods`;
CREATE TABLE `bao_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `intro` varchar(128) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  `guige` varchar(64) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `shopcate_id` int(11) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `business_id` smallint(5) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `city_id` varchar(64) DEFAULT NULL,
  `branch_id` varchar(64) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `wei_pic` varchar(256) DEFAULT NULL COMMENT '购物二维码',
  `price` int(11) DEFAULT NULL,
  `mall_price` int(11) DEFAULT NULL,
  `mobile_fan` int(11) NOT NULL,
  `min_price` int(11) NOT NULL,
  `settlement_price` int(11) DEFAULT '0',
  `sold_num` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `instructions` text,
  `details` text,
  `end_date` date DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `is_mall` tinyint(3) DEFAULT '0',
  `is_vs1` int(2) DEFAULT '0',
  `is_vs2` int(2) DEFAULT '0',
  `is_vs3` int(2) DEFAULT '0',
  `is_vs4` int(2) DEFAULT '0',
  `is_vs5` int(2) DEFAULT '0',
  `is_vs6` int(2) DEFAULT '0',
  `commission` int(11) DEFAULT '0',
  `share` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `orderby` tinyint(4) DEFAULT '100',
  `use_integral` int(11) DEFAULT '0' COMMENT '可使用积分数',
  `profit_enable` int(1) DEFAULT '0',
  `profit_rate1` tinyint(3) DEFAULT '0',
  `profit_rate2` tinyint(3) DEFAULT '0',
  `profit_rate3` tinyint(3) DEFAULT '0',
  `profit_rank_id` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_goods
-- ----------------------------
INSERT INTO `bao_goods` VALUES ('1', '港版苹果Apple 笔记本电脑', ' MacBook Air 15年版新款 11英寸128GBMJVM2ZP/A', '97', '11英寸128GBMJVM2ZP/A', '5', '0', '2', '1', '1', '7', '', '2016/05/26/thumb_5746c85a65ef2.jpg', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQG_8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xLy1EcDQ2b1RraTI3eUo5Q3o1eFkyAAIEG9FQVwMEAAAAAA%3D%3D', '668800', '568800', '1000', '0', '560000', '25', '286', '<p>&nbsp;MacBook Air 15年版新款 11英寸128GBMJVM2ZP/A&nbsp;MacBook Air 15年版新款 11英寸128GBMJVM2ZP/A</p>', '<p>&nbsp;MacBook Air 15年版新款 11英寸128GBMJVM2ZP/A&nbsp;MacBook Air 15年版新款 11英寸128GBMJVM2ZP/A</p>', '2016-11-26', '1', '0', '1', '1', '1', '0', '0', '0', '0', '1000', '0', '1464256629', '59.172.163.23', '0', '100', '1', '1', '1', '1', '0');
INSERT INTO `bao_goods` VALUES ('2', '商品名称1', '商品名称1', '111', '个', '3', '2', '2', '1', '4', '7', '', '2016/06/04/thumb_5752356906cf7.jpg', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEW8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL1hUb1h6MnprXzI2Q1MzR0ppQlkyAAIEQzBSVwMEAAAAAA%3D%3D', '1100', '1100', '0', '0', '1079', '0', '3', '<p>11商品名称1商品名称1商品名称1</p>', '<p>商品名称1商品名称1商品名称1商品名称1</p>', '2016-06-17', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1465005439', '175.164.163.235', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `bao_goods` VALUES ('3', '中国劲酒 258mL ', '中国劲酒 258mL 中国劲酒 258mL ', '440', '58mL ', '2', '2', '2', '1', '4', '7', '', '2016/06/04/thumb_57528056acc84.jpg', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQE77zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL3VUcE44blhrdEc3Tmk1V2gwaFkyAAIEfntSVwMEAAAAAA%3D%3D', '1980', '1989', '0', '0', '1943', '0', '12', '<p>1212121212<br/></p>', '<p>12121212<br/></p>', '2016-06-30', '1', '0', '1', '1', '1', '1', '0', '0', '1', '0', '0', '1465024699', '14.125.241.145', '100', '300', '0', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for `bao_goods_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_goods_cate`;
CREATE TABLE `bao_goods_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `rate` int(11) DEFAULT '60' COMMENT '结算费率',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_goods_cate
-- ----------------------------
INSERT INTO `bao_goods_cate` VALUES ('1', '休闲零食', '0', '1', '40');
INSERT INTO `bao_goods_cate` VALUES ('2', '糖果/巧克力', '1', '1', '23');
INSERT INTO `bao_goods_cate` VALUES ('3', '巧克力', '2', '1', '19');
INSERT INTO `bao_goods_cate` VALUES ('4', '手机', '0', '2', '68');
INSERT INTO `bao_goods_cate` VALUES ('5', '苹果手机', '4', '3', '62');

-- ----------------------------
-- Table structure for `bao_goods_dianping`
-- ----------------------------
DROP TABLE IF EXISTS `bao_goods_dianping`;
CREATE TABLE `bao_goods_dianping` (
  `order_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT '0',
  `score` int(11) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `reply` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `show_date` date DEFAULT NULL,
  `closed` tinyint(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_goods_dianping
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_goods_dianping_pics`
-- ----------------------------
DROP TABLE IF EXISTS `bao_goods_dianping_pics`;
CREATE TABLE `bao_goods_dianping_pics` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT '0',
  `order_id` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `dianping_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_goods_dianping_pics
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_goods_photos`
-- ----------------------------
DROP TABLE IF EXISTS `bao_goods_photos`;
CREATE TABLE `bao_goods_photos` (
  `pic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_goods_photos
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_goods_shopcate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_goods_shopcate`;
CREATE TABLE `bao_goods_shopcate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_goods_shopcate
-- ----------------------------
INSERT INTO `bao_goods_shopcate` VALUES ('1', '测试', '1', '1');
INSERT INTO `bao_goods_shopcate` VALUES ('2', '111', '4', '1');

-- ----------------------------
-- Table structure for `bao_housekeeping_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_housekeeping_cate`;
CREATE TABLE `bao_housekeeping_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `orderby` tinyint(3) NOT NULL DEFAULT '100',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_housekeeping_cate
-- ----------------------------
INSERT INTO `bao_housekeeping_cate` VALUES ('1', '家政一级', '0', '1');
INSERT INTO `bao_housekeeping_cate` VALUES ('2', '家政', '0', '2');

-- ----------------------------
-- Table structure for `bao_housework`
-- ----------------------------
DROP TABLE IF EXISTS `bao_housework`;
CREATE TABLE `bao_housework` (
  `housework_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` tinyint(3) DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `svctime` varchar(20) DEFAULT NULL,
  `addr` varchar(128) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `buy_num` tinyint(3) DEFAULT '0',
  `contents` varchar(1024) DEFAULT NULL,
  `is_real` tinyint(1) DEFAULT '0' COMMENT '1代表客服已经确认过是有效的',
  `num` tinyint(3) DEFAULT '0' COMMENT '未填数字就代表使用全局的',
  `gold` tinyint(3) DEFAULT '0' COMMENT '未填数字代表应用全局的设置',
  `city_id` smallint(5) DEFAULT '0',
  PRIMARY KEY (`housework_id`),
  KEY `svc_id` (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_housework
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_housework_look`
-- ----------------------------
DROP TABLE IF EXISTS `bao_housework_look`;
CREATE TABLE `bao_housework_look` (
  `look_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `housework_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`look_id`),
  UNIQUE KEY `housework_id` (`housework_id`,`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_housework_look
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_housework_setting`
-- ----------------------------
DROP TABLE IF EXISTS `bao_housework_setting`;
CREATE TABLE `bao_housework_setting` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) DEFAULT '0',
  `city_id` smallint(6) DEFAULT NULL,
  `area_id` smallint(6) DEFAULT NULL,
  `shop_id` int(10) DEFAULT '0',
  `name` varchar(21) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `unit` varchar(32) DEFAULT NULL,
  `gongju` varchar(64) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `thumb` text,
  `user` varchar(32) DEFAULT NULL,
  `tel` varchar(32) DEFAULT NULL,
  `biz_time` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `contents` text,
  `yuyue_num` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_housework_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_huodong`
-- ----------------------------
DROP TABLE IF EXISTS `bao_huodong`;
CREATE TABLE `bao_huodong` (
  `huodong_id` int(10) NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `limit_num` int(6) NOT NULL DEFAULT '0',
  `intro` varchar(128) DEFAULT NULL,
  `time` varchar(64) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `addr` varchar(1024) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `traffic` tinyint(2) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `views` int(10) NOT NULL DEFAULT '0',
  `sign_num` int(11) DEFAULT '0',
  `ping_num` int(10) NOT NULL DEFAULT '0',
  `lat` varchar(15) DEFAULT '' COMMENT '纬度',
  `lng` varchar(15) DEFAULT '0' COMMENT '经度',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`huodong_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_huodong
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_huodong_dianping`
-- ----------------------------
DROP TABLE IF EXISTS `bao_huodong_dianping`;
CREATE TABLE `bao_huodong_dianping` (
  `dianping_id` int(11) NOT NULL,
  `huodong_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `show_date` date DEFAULT NULL,
  `closed` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`dianping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_huodong_dianping
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_huodong_looks`
-- ----------------------------
DROP TABLE IF EXISTS `bao_huodong_looks`;
CREATE TABLE `bao_huodong_looks` (
  `huodong_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `num` int(5) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`huodong_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_huodong_looks
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_huodong_sign`
-- ----------------------------
DROP TABLE IF EXISTS `bao_huodong_sign`;
CREATE TABLE `bao_huodong_sign` (
  `sign_id` int(10) NOT NULL AUTO_INCREMENT,
  `huodong_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `num` int(5) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_huodong_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_integral_exchange`
-- ----------------------------
DROP TABLE IF EXISTS `bao_integral_exchange`;
CREATE TABLE `bao_integral_exchange` (
  `exchange_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `addr_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0' COMMENT '1代表后台已经确认了那么发货是前台发货还是什么流程',
  PRIMARY KEY (`exchange_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_integral_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_integral_goods`
-- ----------------------------
DROP TABLE IF EXISTS `bao_integral_goods`;
CREATE TABLE `bao_integral_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `face_pic` varchar(64) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `is_vip` tinyint(1) DEFAULT '0' COMMENT '1代表只能是本店的VIP 才能兑换该物品',
  `integral` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `limit_num` int(11) DEFAULT '0',
  `exchange_num` int(11) DEFAULT '0',
  `details` text,
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(255) DEFAULT NULL,
  `audit` tinyint(4) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0' COMMENT '1代表已经下架',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_integral_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `bao_keyword`;
CREATE TABLE `bao_keyword` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) DEFAULT NULL,
  `type` tinyint(2) DEFAULT '0' COMMENT '搜索关键字，0不限，1表示团购，2表示商家',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_keyword
-- ----------------------------
INSERT INTO `bao_keyword` VALUES ('1', '培训', '1', '1420630100', '127.0.0.1');
INSERT INTO `bao_keyword` VALUES ('2', '家装', '2', '1420630101', '127.0.0.1');
INSERT INTO `bao_keyword` VALUES ('3', '酒店', '0', '1420630623', '127.0.0.1');
INSERT INTO `bao_keyword` VALUES ('4', '聚餐', '1', '1420630623', '127.0.0.1');
INSERT INTO `bao_keyword` VALUES ('5', '电影', '2', '1420630623', '127.0.0.1');
INSERT INTO `bao_keyword` VALUES ('6', '面包', '2', '1420630623', '127.0.0.1');
INSERT INTO `bao_keyword` VALUES ('7', '甜点', '3', '1420630623', '127.0.0.1');
INSERT INTO `bao_keyword` VALUES ('9', '商务宴请', '6', '1439453259', '127.0.0.1');
INSERT INTO `bao_keyword` VALUES ('10', '特色美食', '6', '1439453303', '127.0.0.1');

-- ----------------------------
-- Table structure for `bao_life`
-- ----------------------------
DROP TABLE IF EXISTS `bao_life`;
CREATE TABLE `bao_life` (
  `life_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `cate_id` smallint(5) DEFAULT '0',
  `city_id` smallint(5) DEFAULT '0',
  `area_id` smallint(5) DEFAULT '0',
  `business_id` smallint(5) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `is_shop` tinyint(1) DEFAULT '0',
  `text1` varchar(64) DEFAULT NULL,
  `text2` varchar(64) DEFAULT NULL,
  `text3` varchar(64) DEFAULT NULL,
  `num1` int(11) DEFAULT NULL,
  `num2` int(11) DEFAULT NULL,
  `select1` int(11) DEFAULT NULL,
  `select2` int(11) DEFAULT NULL,
  `select3` int(11) DEFAULT NULL,
  `select4` int(11) DEFAULT NULL,
  `select5` int(11) DEFAULT NULL,
  `urgent_date` date DEFAULT '0000-00-00',
  `top_date` date DEFAULT '0000-00-00',
  `photo` varchar(64) DEFAULT NULL,
  `contact` varchar(32) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `qq` varchar(15) DEFAULT NULL,
  `addr` varchar(128) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `last_time` int(11) DEFAULT '0',
  `audit` tinyint(1) DEFAULT '0',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`life_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_life
-- ----------------------------
INSERT INTO `bao_life` VALUES ('1', '二手面条出售，10元一碗，需要的联系', '11', '1', '2', '1', '1', '1', '', '', '', '100', '0', '198', '200', '210', '0', '0', '2018-05-25', '2019-05-25', '2016/05/25/thumb_57450ee1c754f.jpg', '何娟', '13356782345', '223456787', '何春去新村路12浩', '133', '1464143629', '12.18.78.222', '1466735629', '1', '114.98386', '28.088938', '0');
INSERT INTO `bao_life` VALUES ('2', '大面积套房', '47', '7', '2', '1', '1', '1', '', '', '', '0', '0', '1339', '1343', '1350', '0', '0', '2016-06-12', '2016-06-12', '2016/06/12/thumb_575ccba265dcd.jpg', '本公告', '18932866542', '', '', '1', '1465699275', '121.26.221.10', '1468291275', '1', '94.04903', '30.801418', '0');

-- ----------------------------
-- Table structure for `bao_lifeservice_dianping`
-- ----------------------------
DROP TABLE IF EXISTS `bao_lifeservice_dianping`;
CREATE TABLE `bao_lifeservice_dianping` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `reply` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `show_date` date DEFAULT NULL,
  `closed` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_lifeservice_dianping
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_lifeservice_dianping_pics`
-- ----------------------------
DROP TABLE IF EXISTS `bao_lifeservice_dianping_pics`;
CREATE TABLE `bao_lifeservice_dianping_pics` (
  `pic_id` int(10) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_lifeservice_dianping_pics
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_life_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_life_cate`;
CREATE TABLE `bao_life_cate` (
  `cate_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` tinyint(3) DEFAULT '0',
  `cate_name` varchar(32) DEFAULT NULL,
  `num` int(11) DEFAULT '0' COMMENT '信息数冗余',
  `text1` varchar(32) DEFAULT NULL COMMENT '文本字段一',
  `text2` varchar(32) DEFAULT NULL COMMENT '文本字段2',
  `text3` varchar(32) DEFAULT NULL,
  `num1` varchar(32) DEFAULT NULL,
  `num2` varchar(32) DEFAULT NULL COMMENT '5个text字段，如果text 字段没有设置那么就不启用',
  `unit1` varchar(32) DEFAULT NULL,
  `unit2` varchar(32) DEFAULT NULL,
  `select1` varchar(32) DEFAULT NULL,
  `select2` varchar(32) DEFAULT NULL,
  `select3` varchar(32) DEFAULT NULL,
  `select4` varchar(32) DEFAULT NULL COMMENT '多选1',
  `select5` varchar(32) DEFAULT NULL COMMENT '多选2',
  `orderby` tinyint(3) DEFAULT '100',
  `is_hot` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_life_cate
-- ----------------------------
INSERT INTO `bao_life_cate` VALUES ('1', '1', '手机及配件', '0', '新旧程度', '', '', '原价', '现价', '元', '元', '供求', '品牌', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('2', '1', '数码产品', '0', '新旧程度', '', '', '原价', '现价', '', '', '供求', '分类', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('3', '1', '门票卡券', '0', '', '', '', '原价', '现价', '', '', '供求', '类型', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('4', '1', '家用电器', '0', '新旧程度', '', '', '原价', '现价', '', '', '供求', '分类', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('5', '1', '日常用品', '0', '新旧程度', '', '', '原价', '现价', '', '', '供求', '类型', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('8', '1', '运动/图书/乐器', '0', '新旧程度', '', '', '原价', '现价', '', '', '供求', '类型', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('6', '1', '办公经营设备', '0', '新旧程度', '', '', '原价', '现价', '', '', '供求', '类型', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('7', '1', '服装/配饰/鞋包', '0', '新旧程度', '', '', '原价', '现价', '', '', '供求', '类型', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('9', '1', '笔记本', '0', '新旧程度', '', '', '原价', '现价', '', '', '供求', '品牌', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('10', '1', '家具/办公家具', '0', '新旧程度', '', '', '原价', '现价', '', '', '供求', '类型', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('11', '1', '手机号码', '0', '', '', '', '价格', '', '', '', '供求', '类型', '价格', '', '', '1', '1');
INSERT INTO `bao_life_cate` VALUES ('12', '1', '母婴/玩具', '0', '新旧程度', '', '', '原价', '现价', '', '', '供求', '类型', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('13', '1', '工艺品/收藏品', '0', '商品描述', '', '', '价格', '', '', '', '供求', '类型', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('14', '1', '台式电脑及配件', '0', '新旧程度', '', '', '原价', '现价', '', '', '供求', '品牌', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('15', '1', '食品/农产品', '0', '商品描述', '', '', '价格', '', '', '', '供求', '类型', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('16', '1', '设备租赁', '0', '设备功能描述', '', '', '价格', '', '', '', '供求', '服务内容', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('17', '1', '平板电脑', '0', '新旧程度', '', '', '原价', '现价', '', '', '供求', '品牌', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('18', '1', '工业设备', '0', '功能描述', '', '', '原价', '现价', '', '', '供求', '类型', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('19', '1', '其他物品', '0', '商品描述', '', '', '价格', '', '', '', '供求', '价格', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('20', '1', '物品回收', '0', '', '', '', '', '', '', '', '', '类型', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('21', '2', '二手轿车', '0', '新旧程度', '', '', '原价', '现价', '', '', '价格', '车型级别', '品牌', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('23', '2', '个人车源', '0', '新旧程度', '', '', '原价', '现价', '', '', '价格', '车型级别', '品牌', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('24', '2', '电动车', '0', '新旧程度', '', '', '原价', '现价', '', '', '分类', '品牌', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('25', '2', '自行车', '0', '新旧描述', '', '', '原价', '现价', '', '', '类型', '品牌', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('26', '2', '二手货车', '0', '新旧程度', '', '', '原价', '现价', '', '', '类型', '品牌', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('27', '2', '摩托车/燃气车', '0', '新旧程度', '', '', '原价', '现价', '', '', '类型', '品牌', '价格', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('28', '2', '拼车/顺风车', '0', '', '', '', '', '', '', '', '车辆情况', '类型', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('29', '2', '汽车用品/配件', '0', '商品描述', '', '', '价格', '', '', '', '供求', '类型', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('30', '2', '新车优惠/4S店', '0', '', '', '', '价格', '', '', '', '品牌', '价格', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('31', '2', '汽修保养', '0', '服务描述', '', '', '', '', '', '', '服务类型', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('32', '2', '二手工程车', '0', '新旧程度', '', '', '原价', '现价', '', '', '类型', '品牌', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('33', '2', '过户/验车', '0', '', '', '', '', '', '', '', '类型', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('34', '2', '面包车/客车', '0', '', '新旧程度', '', '原价', '现价', '', '', '类型', '品牌', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('35', '2', '拖拉机/收割机', '0', '新旧程度', '', '', '原价', '现价', '', '', '类型', '品牌', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('36', '2', '本地下线车', '0', '', '', '', '价格', '', '', '', '车辆级别', '品牌', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('37', '2', '车辆收购/评估', '0', '', '', '', '', '', '', '', '分类', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('38', '3', '全职求职意向', '0', '', '', '', '', '', '', '', '求职意向', '性别', '学历', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('39', '3', '兼职求职意向', '0', '', '', '', '', '', '', '', '求职意向', '性别', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('40', '4', '结伴活动', '0', '', '', '', '', '', '', '', '类型', '性别', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('41', '4', '征婚', '0', '', '', '', '', '', '', '', '性别', '年龄', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('42', '4', '找女友/找男友', '0', '', '', '', '', '', '', '', '性别', '年龄', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('43', '4', '婚介服务', '0', '', '', '', '', '', '', '', '', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('44', '4', '技能交流', '0', '', '', '', '', '', '', '', '我会', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('45', '4', '找人/寻物', '0', '', '', '', '', '', '', '', '类型', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('46', '4', '拼车/顺风车', '0', '', '', '', '', '', '', '', '车辆情况', '类型', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('47', '5', '租房/出租', '0', '', '', '', '', '', '', '', '租房类型', '租金', '房型', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('48', '5', '个人租房', '0', '', '', '', '', '', '', '', '租房类型', '租金', '房型', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('49', '5', '二手房出售', '0', '', '', '', '原价', '现价', '', '', '面积', '价格', '房型', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('50', '5', '商铺出售', '0', '', '', '', '', '', '', '', '类型', '面积', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('51', '5', '店铺转让/出租', '0', '', '', '', '', '', '', '', '类型', '面积', '租金', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('52', '5', '求租/求购', '0', '', '', '', '', '', '', '', '', '', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('53', '5', '写字楼出租', '0', '', '', '', '', '', '', '', '类型', '面积', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('54', '5', '日租/短租', '0', '', '', '', '', '', '', '', '类型', '出租形式', '租金', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('55', '5', '厂房/仓库/土地', '0', '', '', '', '', '', '', '', '面积', '价格', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('56', '5', '写字楼出售', '0', '', '', '', '', '', '', '', '类型', '面积', '价格', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('57', '5', '新房出售', '0', '', '', '', '', '', '', '', '面积', '价格', '房型', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('58', '6', '中小学教育', '0', '', '', '', '', '', '', '', '培训类型', '课程费用', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('59', '6', '职业技能', '0', '', '', '', '', '', '', '', '培训类型', '课程费用', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('60', '6', '学历教育', '0', '', '', '', '', '', '', '', '培训类型', '课程费用', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('61', '6', '电脑培训', '0', '', '', '', '', '', '', '', '培训类型', '课程费用', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('62', '6', '艺术培训', '0', '', '', '', '', '', '', '', '培训类型', '课程费用', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('63', '6', '外语培训', '0', '', '', '', '', '', '', '', '培训类型', '课程费用', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('64', '6', '设计培训', '0', '', '', '', '', '', '', '', '培训类型', '课程费用', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('65', '6', '婴幼儿教育', '0', '', '', '', '', '', '', '', '培训类型', '课程费用', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('66', '6', '体育培训', '0', '', '', '', '', '', '', '', '培训类型', '课程费用', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('67', '7', '工人/技工', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('68', '7', '销售/金融', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('69', '7', '保健按摩', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('70', '7', '美工/设计', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('71', '7', '人事/行政/文员', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('72', '7', '营业员/促销/零售', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '工作时间', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('73', '7', '服务员/收银员', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('74', '7', '厨师/切配', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('75', '7', '送货/快递/仓管', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('76', '7', '保安', '0', '', '', '', '', '', '', '', '薪资水平', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('77', '7', '家政/保洁', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('78', '7', '司机/驾驶员', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('79', '7', '老师/培训师', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('80', '7', '财务/会计', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('81', '7', '淘宝招聘', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '工作时间', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('82', '7', '客服', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('83', '7', '美容美发', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('84', '7', '计算机/网络/通信', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '经验要求', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('85', '7', '市场/公关/媒介', '0', '', '', '', '', '', '', '', '职位类别', '薪资水平', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('86', '7', '人才招聘会', '0', '地点、时间', '', '', '', '', '', '', '', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('87', '7', '翻译', '0', '', '', '', '', '', '', '', '翻译语种', '薪资水平', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('88', '7', '出国劳务', '0', '工作描述', '', '', '', '', '', '', '', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('89', '7', '其他招聘', '0', '工作描述', '', '', '', '', '', '', '薪资水平', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('90', '8', '招商加盟', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('91', '8', '担保/贷款', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('92', '8', '家电维修', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('93', '8', '建材装饰', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('94', '8', '公司注册', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('95', '8', '房屋装修', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('96', '8', '投资理财', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('97', '8', '会计/审计', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('98', '8', '电脑维修', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('99', '8', '快递/物流', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('100', '8', '农林牧副渔', '0', '', '', '', '', '', '', '', '类别', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('101', '8', '设计策划', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('102', '8', '管道疏通', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('103', '8', '租车服务', '0', '', '', '', '', '', '', '', '服务内容', '价格/天', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('104', '8', '旅游度假', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('105', '8', '摄像摄影', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('106', '8', '保洁/清洗', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('107', '8', '陪驾/代驾', '0', '', '', '', '', '', '', '', '价格', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('108', '8', '搬家服务', '0', '搬家说明', '', '', '', '', '', '', '', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('109', '8', '驾校服务', '0', '', '', '', '', '', '', '', '驾驶证类型', '价格', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('110', '8', '开锁/修锁', '0', '', '', '', '', '', '', '', '', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('111', '8', '休闲娱乐', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('112', '8', '印刷/喷绘', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('113', '8', '机票/签证', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('114', '8', '礼品定制', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('115', '8', '家具维修', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('116', '8', '美容纤体', '0', '', '', '', '', '', '', '', '服务内容', '价格', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('117', '8', '保姆/月嫂', '0', '', '', '', '', '', '', '', '发布人', '服务内容', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('118', '8', '网站建设', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('119', '8', '鲜花/盆景', '0', '说明', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('120', '8', '婚庆/化妆', '0', '', '', '', '', '', '', '', '服务内容', '价格', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('121', '8', '庆典/演出', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('122', '8', '律师服务', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('123', '8', '外卖/送水', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('124', '8', '酒店/宾馆', '0', '', '', '', '', '', '', '', '服务内容', '价格/天', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('125', '8', '本地名站', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('126', '8', '翻译/速记', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('127', '8', '整形美容', '0', '', '', '', '', '', '', '', '服务类别', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('128', '8', '医疗健康', '0', '', '', '', '', '', '', '', '服务内容', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('129', '8', '其他服务', '0', '服务描述', '', '', '', '', '', '', '', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('130', '9', '其他兼职', '0', '', '', '', '', '', '', '', '兼职类型', '工资/天', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('131', '9', '家教/老师', '0', '', '', '', '', '', '', '', '类型', '工资/小时', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('132', '9', '派发/促销', '0', '', '', '', '', '', '', '', '类型', '工资/小时', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('133', '9', '模特/礼仪', '0', '', '', '', '', '', '', '', '类型', '工资/小时', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('134', '9', '学生兼职', '0', '', '', '', '', '', '', '', '工资/小时', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('135', '9', '餐厅/服务员', '0', '', '', '', '', '', '', '', '工资/小时', '工作时间', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('136', '9', '网站/设计', '0', '', '', '', '', '', '', '', '类型', '工资/天', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('137', '9', '会计/财务', '0', '', '', '', '', '', '', '', '工资/天', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('138', '9', '客服', '0', '', '', '', '', '', '', '', '工资/天', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('139', '9', '市场调查', '0', '', '', '', '', '', '', '', '工资/天', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('140', '9', '充场/座谈会', '0', '', '', '', '', '', '', '', '工资/天', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('141', '9', '演员', '0', '', '', '', '', '', '', '', '工资/天', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('142', '10', '狗狗', '0', '狗狗描述', '', '', '', '', '', '', '品种', '价格', '公母', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('143', '10', '其它宠物', '0', '描述', '', '', '', '', '', '', '分类', '价格', '', '', '', '100', '1');
INSERT INTO `bao_life_cate` VALUES ('144', '10', '宠物免费赠送', '0', '', '', '', '', '', '', '', '供求', '类型', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('145', '10', '猫猫', '0', '猫猫描述', '', '', '', '', '', '', '品种', '价格', '公母', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('146', '10', '宠物服务/配种', '0', '需求描述', '', '', '', '', '', '', '服务类别', '', '', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('147', '10', '宠物用品/食品', '0', '说明', '测试1', '测试2', '原价', '现价', '', '', '类型', '供求', '测试3', '', '', '100', '0');
INSERT INTO `bao_life_cate` VALUES ('148', '5', '出售理解阳光', '0', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `bao_life_cate_attr`
-- ----------------------------
DROP TABLE IF EXISTS `bao_life_cate_attr`;
CREATE TABLE `bao_life_cate_attr` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(5) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `attr_name` varchar(32) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2684 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_life_cate_attr
-- ----------------------------
INSERT INTO `bao_life_cate_attr` VALUES ('1', '1', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('2', '1', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('3', '1', 'select2', '苹果', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('4', '1', 'select2', '三星', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('5', '1', 'select2', '魅族', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('6', '1', 'select2', 'htc', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('7', '1', 'select3', '500元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('8', '1', 'select3', '500-1000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('9', '1', 'select3', '1000-2000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('10', '1', 'select3', '2000-3000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('11', '1', 'select3', '3000-4000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('12', '1', 'select3', '4000-5000元', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('13', '1', 'select3', '5000元以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1705', '67', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('15', '2', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('16', '2', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('36', '2', 'select2', 'MP3/MP4', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('37', '2', 'select2', '镜头/配件', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('38', '2', 'select2', '其他', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('34', '2', 'select2', '相机', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('35', '2', 'select2', '手机及其配件', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('24', '3', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('25', '3', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('26', '3', 'select3', '50以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('27', '3', 'select3', '50—150', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('28', '3', 'select3', '150—300', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('29', '3', 'select3', '300—500', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('30', '3', 'select3', '500—1000', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('31', '3', 'select3', '1000以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('32', '4', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('33', '4', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('39', '2', 'select3', '200以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('40', '2', 'select3', '200—500', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('41', '2', 'select3', '500—1000', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('42', '2', 'select3', '1000—2000', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('43', '2', 'select3', '2000以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('44', '4', 'select2', '空调', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('45', '4', 'select2', '冰箱/冰柜', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('46', '4', 'select2', '厨房电器', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('47', '4', 'select2', '电视机', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('48', '4', 'select2', '居家电器', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('49', '4', 'select2', '洗衣机', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('50', '4', 'select2', '卫浴/护理器', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('51', '4', 'select2', '音响电器', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('52', '4', 'select2', '其它', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('53', '4', 'select3', '200以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('54', '4', 'select3', '200—500', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('55', '4', 'select3', '500—800', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('56', '4', 'select3', '800—1200', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('57', '4', 'select3', '1200—1600', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('58', '4', 'select3', '1600—2200', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('59', '4', 'select3', '2200—3000', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('60', '4', 'select3', '3000以上', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('61', '3', 'select2', '健身/游泳', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('62', '3', 'select2', '旅游/景点/酒店', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('63', '3', 'select2', '演出/电影', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('64', '3', 'select2', '超市', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('65', '3', 'select2', '美食', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('66', '3', 'select2', '月饼券', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('91', '3', 'select2', '其它', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('68', '5', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('69', '5', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('70', '5', 'select2', '家居用品', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('71', '5', 'select2', '化妆品', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('72', '5', 'select2', '家纺', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('73', '5', 'select2', '烟酒', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('74', '5', 'select2', '其它', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('75', '5', 'select3', '50以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('76', '5', 'select3', '50—150', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('77', '5', 'select3', '150—350', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('78', '5', 'select3', '350—600', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('79', '5', 'select3', '600—1000', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('80', '5', 'select3', '1000—2000', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('81', '5', 'select3', '2000以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('82', '1', 'select2', '小米', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('83', '1', 'select2', '诺基亚', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('84', '1', 'select2', '华为', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('85', '1', 'select2', '联想', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('86', '1', 'select2', '中兴', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('87', '1', 'select2', 'oppo', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('88', '1', 'select2', '步步高', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('89', '1', 'select2', '金立', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('90', '1', 'select2', '其它', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('92', '6', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('93', '6', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('94', '6', 'select2', '打印机', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('95', '6', 'select2', '复印/扫描/投影', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('96', '6', 'select2', '文具', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('97', '6', 'select2', '其它', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('98', '6', 'select3', '50以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('99', '6', 'select3', '50—150', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('100', '6', 'select3', '150—300', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('101', '6', 'select3', '300—500', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('102', '6', 'select3', '500—800', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('103', '6', 'select3', '800—1200', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('104', '6', 'select3', '1200以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('105', '7', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('106', '7', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('120', '7', 'select2', '女装', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('121', '7', 'select2', '男装', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('122', '7', 'select2', '鞋子', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('123', '7', 'select2', '手表', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('124', '7', 'select2', '配饰', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('125', '7', 'select2', '羽绒服', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('126', '7', 'select2', '其他', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('128', '7', 'select3', '30以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('129', '7', 'select3', '30—50', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('130', '7', 'select3', '50—100', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('131', '7', 'select3', '100—150', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('132', '7', 'select3', '150—200', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('133', '7', 'select3', '200—300', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('134', '7', 'select3', '300—500', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('135', '7', 'select3', '500以上', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('136', '8', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('137', '8', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('139', '8', 'select2', '运动器材', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('140', '8', 'select2', '图书/音响', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('141', '8', 'select2', '器材', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('142', '8', 'select2', '其它', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('144', '8', 'select3', '300以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('145', '8', 'select3', '300—500', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('146', '8', 'select3', '500—800', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('147', '8', 'select3', '800—1200', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('148', '8', 'select3', '1200—1600', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('149', '8', 'select3', '1600以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('150', '9', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('151', '9', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('153', '9', 'select2', 'Gateway/捷威', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('154', '9', 'select2', 'QHTF/清华同方', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('155', '9', 'select2', 'Toshiba/东芝', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('156', '9', 'select2', 'ASUS/华硕', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('157', '9', 'select2', 'Dell/戴尔', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('158', '9', 'select2', 'Lenovo/联想', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('159', '9', 'select2', 'Acer/宏碁', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('160', '9', 'select2', 'SAMSUNG/三星', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('161', '9', 'select2', 'Apple/苹果', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('162', '9', 'select2', 'HP/惠普', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('163', '9', 'select2', '联想ThinkPad/IBMA', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('164', '9', 'select2', 'Fujitsu/富士通', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('165', '9', 'select2', '山寨/高仿', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('166', '9', 'select2', 'Haier/海尔', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('167', '9', 'select2', 'BENQ/明基', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('168', '9', 'select2', '日立', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('169', '9', 'select2', 'NEC', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('170', '9', 'select2', 'HASEE/神舟', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('171', '9', 'select2', '方正', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('172', '9', 'select2', '其它', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('174', '9', 'select3', '500以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('175', '9', 'select3', '500—800', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('176', '9', 'select3', '800—1200', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('177', '9', 'select3', '1200—1600', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('178', '9', 'select3', '1600—2000', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('179', '9', 'select3', '2000—3000', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('180', '9', 'select3', '3000以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('181', '10', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('182', '10', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('184', '10', 'select2', '桌子/椅子/凳子', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('185', '10', 'select2', '床/床垫', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('186', '10', 'select2', '沙发/茶几', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('187', '10', 'select2', '架子', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('188', '10', 'select2', '柜橱', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('189', '10', 'select2', '其它', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('191', '10', 'select3', '100以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('192', '10', 'select3', '100—200', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('193', '10', 'select3', '200—400', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('194', '10', 'select3', '400—600', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('195', '10', 'select3', '600—800', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('196', '10', 'select3', '800—1200', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('197', '10', 'select3', '1200以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('198', '11', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('199', '11', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('200', '11', 'select2', '移动', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('201', '11', 'select2', '联通', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('202', '11', 'select2', '电信', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('203', '11', 'select2', '小灵通/固话', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('204', '11', 'select2', 'QQ/微信', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('206', '11', 'select2', '流量卡', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('207', '11', 'select2', '游戏帐号', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('208', '11', 'select2', '其它', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('210', '11', 'select3', '20以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('211', '11', 'select3', '20—50', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('212', '11', 'select3', '50—100', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('213', '11', 'select3', '100—200', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('214', '11', 'select3', '200—500', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('215', '11', 'select3', '500以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('216', '12', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('217', '12', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('219', '12', 'select2', '婴孩服饰', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('220', '12', 'select2', '食品/奶粉', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('221', '12', 'select2', '玩具', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('222', '12', 'select2', '母婴用品', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('223', '12', 'select2', '婴儿床', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('224', '12', 'select2', '婴儿车', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('225', '12', 'select2', '其它', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('227', '12', 'select3', '50以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('228', '12', 'select3', '50—100', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('229', '12', 'select3', '100—200', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('230', '12', 'select3', '200—300', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('231', '12', 'select3', '300—500', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('232', '12', 'select3', '500以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('233', '13', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('234', '13', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('236', '13', 'select2', '十字绣', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('237', '13', 'select2', '珠宝/玉器/名石', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('238', '13', 'select2', '书画', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('239', '13', 'select2', '钱币/邮票/票证', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('240', '13', 'select2', '古玩', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('241', '13', 'select2', '钟表', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('242', '13', 'select2', '瓷器', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('243', '13', 'select2', '其它', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('245', '13', 'select3', '300以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('246', '13', 'select3', '300—500', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('247', '13', 'select3', '500—1000', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('248', '13', 'select3', '1000—2000', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('249', '13', 'select3', '2000—4000', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('250', '13', 'select3', '4000—8000', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('251', '13', 'select3', '8000—12000', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('252', '13', 'select3', '12000—20000', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('253', '13', 'select3', '20000以上', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('254', '14', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('255', '14', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('257', '14', 'select2', 'Gateway/捷威', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('258', '14', 'select2', 'QHTF/清华同方', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('259', '14', 'select2', 'Toshiba/东芝', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('260', '14', 'select2', 'ASUS/华硕', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('261', '14', 'select2', 'Dell/戴尔', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('262', '14', 'select2', 'Lenovo/联想', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('263', '14', 'select2', 'Acer/宏碁', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('264', '14', 'select2', 'SAMSUNG/三星', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('265', '14', 'select2', 'Apple/苹果', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('266', '14', 'select2', 'HP/惠普', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('267', '14', 'select2', '联想ThinkPad/IBMA', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('268', '14', 'select2', 'Fujitsu/富士通', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('269', '14', 'select2', '山寨/高仿', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('270', '14', 'select2', 'Haier/海尔', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('271', '14', 'select2', 'BENQ/明基', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('272', '14', 'select2', '日立', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('273', '14', 'select2', 'NEC', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('274', '14', 'select2', 'HASEE/神舟', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('275', '14', 'select2', '方正', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('276', '14', 'select2', '其它', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('278', '14', 'select3', '300以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('279', '14', 'select3', '300—500', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('280', '14', 'select3', '500—1000', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('281', '14', 'select3', '1000—2000', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('282', '14', 'select3', '2000—3000', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('283', '14', 'select3', '3000—5000', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('284', '14', 'select3', '5000以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('285', '15', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('286', '15', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('288', '15', 'select2', '苗木/种子', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('289', '15', 'select2', '茶叶/饮品', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('290', '15', 'select2', '肉蛋禽/生鲜', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('291', '15', 'select2', '休闲/保健食品', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('292', '15', 'select2', '粮油/蔬果', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('293', '15', 'select2', '其它', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('295', '15', 'select3', '20以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('296', '15', 'select3', '20—50', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('297', '15', 'select3', '50—200', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('298', '15', 'select3', '200—500', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('299', '15', 'select3', '500以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('300', '16', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('301', '16', 'select1', '强哥', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('303', '16', 'select2', '机械设备', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('304', '16', 'select2', '工程车械', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('305', '16', 'select2', '物品租赁', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('306', '16', 'select2', '灯光影响', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('307', '16', 'select2', '场地租赁', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('308', '16', 'select2', '服装租赁', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('309', '16', 'select2', '办公用品租赁', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('310', '16', 'select2', '家具租赁', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('311', '16', 'select2', '汽车租赁', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('312', '16', 'select2', '脚手架租赁', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('313', '16', 'select2', '其它', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('315', '16', 'select3', '200以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('316', '16', 'select3', '200—500', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('317', '16', 'select3', '500—1000', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('318', '16', 'select3', '1000—2000', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('319', '16', 'select3', '2000—5000', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('320', '16', 'select3', '5000以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('321', '17', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('322', '17', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('324', '17', 'select2', '纽曼', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('325', '17', 'select2', '摩托罗拉', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('326', '17', 'select2', 'ThinkPad', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('327', '17', 'select2', '索尼', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('328', '17', 'select2', '戴尔', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('329', '17', 'select2', '华硕', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('330', '17', 'select2', '宏碁', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('331', '17', 'select2', '汉王', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('332', '17', 'select2', '爱可视', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('333', '17', 'select2', 'e途', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('334', '17', 'select2', 'HTC', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('335', '17', 'select2', 'KindleFire', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('336', '17', 'select2', '山寨/高仿', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('337', '17', 'select2', '华为', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('338', '17', 'select2', '三星', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('339', '17', 'select2', '优派', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('340', '17', 'select2', 'Google', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('341', '17', 'select2', 'iPad', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('342', '17', 'select2', '联想', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('343', '17', 'select2', '其它', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('345', '17', 'select3', '200以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('346', '17', 'select3', '200—500', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('347', '17', 'select3', '500—800', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('348', '17', 'select3', '800—1200', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('349', '17', 'select3', '1200—1800', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('350', '17', 'select3', '1800—2500', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('351', '17', 'select3', '2500以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('352', '18', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('353', '18', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('355', '18', 'select2', '械仪器仪表', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('356', '18', 'select2', '印刷/塑料机', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('357', '18', 'select2', '发电/化工设备', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('358', '18', 'select2', '纺织/农业/木工', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('359', '18', 'select2', '食品机械', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('360', '18', 'select2', '工程机械机床', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('361', '18', 'select2', '其它', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('363', '18', 'select3', '300以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('364', '18', 'select3', '300—600', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('365', '18', 'select3', '600—1000', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('366', '18', 'select3', '1000—1800', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('367', '18', 'select3', '1800—3000', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('368', '18', 'select3', '3000以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('369', '19', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('370', '19', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('372', '19', 'select2', '50以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('373', '19', 'select2', '50—200', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('374', '19', 'select2', '200—500', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('375', '19', 'select2', '500—1000', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('376', '19', 'select2', '1000以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('378', '20', 'select2', '礼品回收', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('379', '20', 'select2', '卡券回收', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('380', '20', 'select2', '办公耗材回收', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('381', '20', 'select2', '数码产品回收', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('382', '20', 'select2', '设备机械回收', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('383', '20', 'select2', '家具回收', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('384', '20', 'select2', '黄金回收', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('385', '20', 'select2', '家电回收', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('386', '20', 'select2', '电脑回收', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('387', '20', 'select2', '废旧物品回收', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('389', '21', 'select1', '2万以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('390', '21', 'select1', '2万—5万', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('391', '21', 'select1', '5万—8万', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('392', '21', 'select1', '8万—12万', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('393', '21', 'select1', '12万—18万', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('394', '21', 'select1', '18万—25万', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('395', '21', 'select1', '25万以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('397', '21', 'select2', '跑车', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('398', '21', 'select2', 'MPV/商务车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('399', '21', 'select2', '豪华车', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('400', '21', 'select2', '中型车', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('401', '21', 'select2', 'SUV/越野车', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('402', '21', 'select2', '小型车', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('404', '21', 'select2', '其它', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('406', '21', 'select3', '东风', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('407', '21', 'select3', '奔驰', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('408', '21', 'select3', '标致', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('409', '21', 'select3', '福田', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('410', '21', 'select3', '马自达', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('411', '21', 'select3', '比亚迪', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('412', '21', 'select3', '瑞麒', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('413', '21', 'select3', '长安', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('414', '21', 'select3', '起亚', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('415', '21', 'select3', '福特', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('416', '21', 'select3', '宝马', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('417', '21', 'select3', '奥迪', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('418', '21', 'select3', '丰田', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('419', '21', 'select3', '雪佛兰', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('420', '21', 'select3', '日产', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('421', '21', 'select3', '江淮', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('422', '21', 'select3', '本田', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('423', '21', 'select3', '别克', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('424', '21', 'select3', '现代', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('425', '21', 'select3', '大众', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('426', '21', 'select3', '奇瑞', '22');
INSERT INTO `bao_life_cate_attr` VALUES ('427', '21', 'select3', '长城   ', '23');
INSERT INTO `bao_life_cate_attr` VALUES ('428', '21', 'select3', ' 雪铁龙   ', '24');
INSERT INTO `bao_life_cate_attr` VALUES ('429', '21', 'select3', '中华  ', '25');
INSERT INTO `bao_life_cate_attr` VALUES ('430', '21', 'select3', ' 荣威  ', '26');
INSERT INTO `bao_life_cate_attr` VALUES ('431', '21', 'select3', ' 铃木 ', '27');
INSERT INTO `bao_life_cate_attr` VALUES ('432', '21', 'select3', ' MG ', '42');
INSERT INTO `bao_life_cate_attr` VALUES ('433', '21', 'select3', ' 开瑞   ', '43');
INSERT INTO `bao_life_cate_attr` VALUES ('434', '21', 'select3', '一汽   ', '44');
INSERT INTO `bao_life_cate_attr` VALUES ('435', '21', 'select3', '沃尔沃   ', '45');
INSERT INTO `bao_life_cate_attr` VALUES ('436', '21', 'select3', '金杯', '46');
INSERT INTO `bao_life_cate_attr` VALUES ('437', '21', 'select3', '三菱', '47');
INSERT INTO `bao_life_cate_attr` VALUES ('438', '21', 'select3', '莲花   ', '48');
INSERT INTO `bao_life_cate_attr` VALUES ('439', '21', 'select3', '凯迪拉克    ', '49');
INSERT INTO `bao_life_cate_attr` VALUES ('440', '21', 'select3', '海马   ', '50');
INSERT INTO `bao_life_cate_attr` VALUES ('441', '21', 'select3', '哈飞   ', '51');
INSERT INTO `bao_life_cate_attr` VALUES ('442', '21', 'select3', '长丰     ', '52');
INSERT INTO `bao_life_cate_attr` VALUES ('443', '21', 'select3', '东南    ', '41');
INSERT INTO `bao_life_cate_attr` VALUES ('444', '21', 'select3', '吉利    ', '40');
INSERT INTO `bao_life_cate_attr` VALUES ('445', '21', 'select3', '斯柯达    ', '39');
INSERT INTO `bao_life_cate_attr` VALUES ('446', '21', 'select3', '夏利    ', '28');
INSERT INTO `bao_life_cate_attr` VALUES ('447', '21', 'select3', '昌河   ', '29');
INSERT INTO `bao_life_cate_attr` VALUES ('448', '21', 'select3', '双环   ', '30');
INSERT INTO `bao_life_cate_attr` VALUES ('449', '21', 'select3', '双龙   ', '31');
INSERT INTO `bao_life_cate_attr` VALUES ('450', '21', 'select3', '西安奥拓   ', '32');
INSERT INTO `bao_life_cate_attr` VALUES ('451', '21', 'select3', '斯巴鲁    ', '33');
INSERT INTO `bao_life_cate_attr` VALUES ('452', '21', 'select3', '萨博    ', '34');
INSERT INTO `bao_life_cate_attr` VALUES ('453', '21', 'select3', '中兴   ', '35');
INSERT INTO `bao_life_cate_attr` VALUES ('454', '21', 'select3', '宝骏    ', '36');
INSERT INTO `bao_life_cate_attr` VALUES ('455', '21', 'select3', '众泰   ', '37');
INSERT INTO `bao_life_cate_attr` VALUES ('456', '21', 'select3', 'MINI(迷你)   ', '38');
INSERT INTO `bao_life_cate_attr` VALUES ('457', '21', 'select3', '解放    ', '53');
INSERT INTO `bao_life_cate_attr` VALUES ('458', '21', 'select3', '保时捷    ', '54');
INSERT INTO `bao_life_cate_attr` VALUES ('459', '21', 'select3', '北汽制造    ', '55');
INSERT INTO `bao_life_cate_attr` VALUES ('460', '21', 'select3', '宾利    ', '56');
INSERT INTO `bao_life_cate_attr` VALUES ('461', '21', 'select3', '奔腾   ', '57');
INSERT INTO `bao_life_cate_attr` VALUES ('462', '21', 'select3', '英菲尼迪         ', '58');
INSERT INTO `bao_life_cate_attr` VALUES ('463', '21', 'select3', '吉利英伦   ', '59');
INSERT INTO `bao_life_cate_attr` VALUES ('464', '21', 'select3', '新凯   ', '60');
INSERT INTO `bao_life_cate_attr` VALUES ('465', '21', 'select3', '东风风神     ', '61');
INSERT INTO `bao_life_cate_attr` VALUES ('466', '21', 'select3', '江铃   ', '62');
INSERT INTO `bao_life_cate_attr` VALUES ('467', '21', 'select3', '东风风行    ', '63');
INSERT INTO `bao_life_cate_attr` VALUES ('468', '21', 'select3', '捷豹    ', '64');
INSERT INTO `bao_life_cate_attr` VALUES ('469', '21', 'select3', '菲亚特   ', '65');
INSERT INTO `bao_life_cate_attr` VALUES ('470', '21', 'select3', '克莱斯勒    ', '66');
INSERT INTO `bao_life_cate_attr` VALUES ('471', '21', 'select3', '吉普   ', '67');
INSERT INTO `bao_life_cate_attr` VALUES ('472', '21', 'select3', '吉奥  ', '68');
INSERT INTO `bao_life_cate_attr` VALUES ('473', '21', 'select3', '红旗    ', '69');
INSERT INTO `bao_life_cate_attr` VALUES ('474', '21', 'select3', '华普    ', '70');
INSERT INTO `bao_life_cate_attr` VALUES ('475', '21', 'select3', '华泰   ', '71');
INSERT INTO `bao_life_cate_attr` VALUES ('476', '21', 'select3', '黄海   ', '72');
INSERT INTO `bao_life_cate_attr` VALUES ('477', '21', 'select3', '雷克萨斯    ', '73');
INSERT INTO `bao_life_cate_attr` VALUES ('478', '21', 'select3', '雷诺    ', '74');
INSERT INTO `bao_life_cate_attr` VALUES ('479', '21', 'select3', '欧宝   ', '75');
INSERT INTO `bao_life_cate_attr` VALUES ('480', '21', 'select3', '吉利帝豪   ', '76');
INSERT INTO `bao_life_cate_attr` VALUES ('481', '21', 'select3', '道奇   ', '77');
INSERT INTO `bao_life_cate_attr` VALUES ('482', '21', 'select3', '大迪    ', '78');
INSERT INTO `bao_life_cate_attr` VALUES ('483', '21', 'select3', '讴歌    ', '79');
INSERT INTO `bao_life_cate_attr` VALUES ('484', '21', 'select3', '路虎    ', '80');
INSERT INTO `bao_life_cate_attr` VALUES ('485', '21', 'select3', '力帆     ', '81');
INSERT INTO `bao_life_cate_attr` VALUES ('486', '21', 'select3', '林肯    ', '82');
INSERT INTO `bao_life_cate_attr` VALUES ('487', '21', 'select3', '法拉利    ', '83');
INSERT INTO `bao_life_cate_attr` VALUES ('488', '21', 'select3', '陆风川汽  ', '84');
INSERT INTO `bao_life_cate_attr` VALUES ('489', '21', 'select3', ' 野马   ', '85');
INSERT INTO `bao_life_cate_attr` VALUES ('490', '21', 'select3', '玛莎拉蒂', '86');
INSERT INTO `bao_life_cate_attr` VALUES ('491', '21', 'select3', '兰博基尼', '87');
INSERT INTO `bao_life_cate_attr` VALUES ('492', '21', 'select3', '其他', '88');
INSERT INTO `bao_life_cate_attr` VALUES ('494', '22', 'select1', '2万以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('495', '22', 'select1', '2万—4万', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('496', '22', 'select1', '4万—8万', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('497', '22', 'select1', '8万—12万', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('498', '22', 'select1', '12万—18万', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('499', '22', 'select1', '18万—25万', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('500', '22', 'select1', '25万—50万', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('501', '22', 'select1', '50万以上', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('503', '22', 'select2', '小型车', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('504', '22', 'select2', '中型车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('505', '22', 'select2', 'SUV/越野车', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('506', '22', 'select2', '豪华车', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('507', '22', 'select2', 'MPV/商务车', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('508', '22', 'select2', '跑车', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('509', '22', 'select2', '其它', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('511', '22', 'select3', '奇瑞   ', '46');
INSERT INTO `bao_life_cate_attr` VALUES ('512', '22', 'select3', '大众   ', '55');
INSERT INTO `bao_life_cate_attr` VALUES ('513', '22', 'select3', '现代   ', '56');
INSERT INTO `bao_life_cate_attr` VALUES ('514', '22', 'select3', '别克   ', '58');
INSERT INTO `bao_life_cate_attr` VALUES ('515', '22', 'select3', '本田   ', '59');
INSERT INTO `bao_life_cate_attr` VALUES ('516', '22', 'select3', '江淮   ', '60');
INSERT INTO `bao_life_cate_attr` VALUES ('517', '22', 'select3', '日产   ', '61');
INSERT INTO `bao_life_cate_attr` VALUES ('518', '22', 'select3', '雪佛兰   ', '64');
INSERT INTO `bao_life_cate_attr` VALUES ('519', '22', 'select3', '丰田   ', '54');
INSERT INTO `bao_life_cate_attr` VALUES ('520', '22', 'select3', '奥迪   ', '66');
INSERT INTO `bao_life_cate_attr` VALUES ('521', '22', 'select3', '宝马   ', '65');
INSERT INTO `bao_life_cate_attr` VALUES ('522', '22', 'select3', '福特  ', '62');
INSERT INTO `bao_life_cate_attr` VALUES ('523', '22', 'select3', '起亚  ', '47');
INSERT INTO `bao_life_cate_attr` VALUES ('524', '22', 'select3', '长安   ', '48');
INSERT INTO `bao_life_cate_attr` VALUES ('525', '22', 'select3', '瑞麒   ', '49');
INSERT INTO `bao_life_cate_attr` VALUES ('526', '22', 'select3', '比亚迪    ', '50');
INSERT INTO `bao_life_cate_attr` VALUES ('527', '22', 'select3', '马自达   ', '51');
INSERT INTO `bao_life_cate_attr` VALUES ('528', '22', 'select3', '福田    ', '52');
INSERT INTO `bao_life_cate_attr` VALUES ('529', '22', 'select3', '标致    ', '53');
INSERT INTO `bao_life_cate_attr` VALUES ('530', '22', 'select3', '奔驰   ', '67');
INSERT INTO `bao_life_cate_attr` VALUES ('531', '22', 'select3', '东风   ', '79');
INSERT INTO `bao_life_cate_attr` VALUES ('532', '22', 'select3', '长城   ', '72');
INSERT INTO `bao_life_cate_attr` VALUES ('533', '22', 'select3', '雪铁龙   ', '80');
INSERT INTO `bao_life_cate_attr` VALUES ('534', '22', 'select3', '中华  ', '81');
INSERT INTO `bao_life_cate_attr` VALUES ('535', '22', 'select3', '荣威  ', '82');
INSERT INTO `bao_life_cate_attr` VALUES ('536', '22', 'select3', '铃木  ', '83');
INSERT INTO `bao_life_cate_attr` VALUES ('537', '22', 'select3', 'MG  ', '57');
INSERT INTO `bao_life_cate_attr` VALUES ('538', '22', 'select3', '开瑞   ', '84');
INSERT INTO `bao_life_cate_attr` VALUES ('539', '22', 'select3', '一汽   ', '85');
INSERT INTO `bao_life_cate_attr` VALUES ('540', '22', 'select3', '沃尔沃   ', '86');
INSERT INTO `bao_life_cate_attr` VALUES ('541', '22', 'select3', '金杯   ', '87');
INSERT INTO `bao_life_cate_attr` VALUES ('542', '22', 'select3', '三菱   ', '78');
INSERT INTO `bao_life_cate_attr` VALUES ('543', '22', 'select3', '莲花   ', '77');
INSERT INTO `bao_life_cate_attr` VALUES ('544', '22', 'select3', '凯迪拉克   ', '68');
INSERT INTO `bao_life_cate_attr` VALUES ('545', '22', 'select3', ' 海马  ', '63');
INSERT INTO `bao_life_cate_attr` VALUES ('546', '22', 'select3', ' 哈飞   ', '70');
INSERT INTO `bao_life_cate_attr` VALUES ('547', '22', 'select3', '长丰     ', '71');
INSERT INTO `bao_life_cate_attr` VALUES ('548', '22', 'select3', '东南    ', '73');
INSERT INTO `bao_life_cate_attr` VALUES ('549', '22', 'select3', '吉利    ', '74');
INSERT INTO `bao_life_cate_attr` VALUES ('550', '22', 'select3', '斯柯达    ', '75');
INSERT INTO `bao_life_cate_attr` VALUES ('551', '22', 'select3', '夏利    ', '69');
INSERT INTO `bao_life_cate_attr` VALUES ('552', '22', 'select3', '昌河  ', '44');
INSERT INTO `bao_life_cate_attr` VALUES ('553', '22', 'select3', ' 双环   ', '76');
INSERT INTO `bao_life_cate_attr` VALUES ('554', '22', 'select3', '双龙   ', '45');
INSERT INTO `bao_life_cate_attr` VALUES ('555', '22', 'select3', '西安奥拓   ', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('556', '22', 'select3', '斯巴鲁   ', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('557', '22', 'select3', ' 萨博    ', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('558', '22', 'select3', '中兴   ', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('559', '22', 'select3', '宝骏    ', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('560', '22', 'select3', '众泰   ', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('561', '22', 'select3', 'MINI(迷你)   ', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('562', '22', 'select3', '解放    ', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('563', '22', 'select3', '保时捷    ', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('564', '22', 'select3', '北汽制造    ', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('565', '22', 'select3', '宾利    ', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('566', '22', 'select3', '奔腾   ', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('567', '22', 'select3', '英菲尼迪         ', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('568', '22', 'select3', '吉利英伦   ', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('569', '22', 'select3', '新凯   ', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('570', '22', 'select3', '东风风神     ', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('571', '22', 'select3', '江铃   ', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('572', '22', 'select3', '东风风行    ', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('573', '22', 'select3', '捷豹    ', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('574', '22', 'select3', '菲亚特   ', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('575', '22', 'select3', '克莱斯勒    ', '22');
INSERT INTO `bao_life_cate_attr` VALUES ('576', '22', 'select3', '吉普   ', '23');
INSERT INTO `bao_life_cate_attr` VALUES ('577', '22', 'select3', '吉奥  ', '24');
INSERT INTO `bao_life_cate_attr` VALUES ('578', '22', 'select3', '红旗    ', '36');
INSERT INTO `bao_life_cate_attr` VALUES ('579', '22', 'select3', '华普    ', '37');
INSERT INTO `bao_life_cate_attr` VALUES ('580', '22', 'select3', '华泰   ', '38');
INSERT INTO `bao_life_cate_attr` VALUES ('581', '22', 'select3', '黄海   ', '39');
INSERT INTO `bao_life_cate_attr` VALUES ('582', '22', 'select3', '雷克萨斯    ', '40');
INSERT INTO `bao_life_cate_attr` VALUES ('583', '22', 'select3', '雷诺    ', '41');
INSERT INTO `bao_life_cate_attr` VALUES ('584', '22', 'select3', '欧宝   ', '42');
INSERT INTO `bao_life_cate_attr` VALUES ('585', '22', 'select3', '吉利帝豪   ', '43');
INSERT INTO `bao_life_cate_attr` VALUES ('586', '22', 'select3', '道奇   ', '35');
INSERT INTO `bao_life_cate_attr` VALUES ('587', '22', 'select3', '大迪    ', '34');
INSERT INTO `bao_life_cate_attr` VALUES ('588', '22', 'select3', '讴歌    ', '33');
INSERT INTO `bao_life_cate_attr` VALUES ('589', '22', 'select3', '路虎    ', '25');
INSERT INTO `bao_life_cate_attr` VALUES ('590', '22', 'select3', '力帆     ', '26');
INSERT INTO `bao_life_cate_attr` VALUES ('591', '22', 'select3', '林肯    ', '27');
INSERT INTO `bao_life_cate_attr` VALUES ('592', '22', 'select3', '法拉利   ', '28');
INSERT INTO `bao_life_cate_attr` VALUES ('593', '22', 'select3', ' 陆风川汽   ', '29');
INSERT INTO `bao_life_cate_attr` VALUES ('594', '22', 'select3', '野马   ', '30');
INSERT INTO `bao_life_cate_attr` VALUES ('595', '22', 'select3', '玛莎拉蒂', '31');
INSERT INTO `bao_life_cate_attr` VALUES ('596', '22', 'select3', '拉博基尼', '32');
INSERT INTO `bao_life_cate_attr` VALUES ('597', '22', 'select3', '其它', '88');
INSERT INTO `bao_life_cate_attr` VALUES ('599', '23', 'select1', '2万以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('600', '23', 'select1', '2万—5万', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('601', '23', 'select1', '5万—10万', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('602', '23', 'select1', '10万—20万', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('603', '23', 'select1', '20万—30万', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('604', '23', 'select1', '30万以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('607', '23', 'select2', '小型车   ', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('608', '23', 'select2', 'SUV/越野车      ', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('609', '23', 'select2', '中型车      ', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('610', '23', 'select2', '豪华车    ', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('611', '23', 'select2', 'MPV/商务车     ', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('612', '23', 'select2', '跑车    ', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('613', '23', 'select2', '其他', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('614', '23', 'select3', '奇瑞    ', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('615', '23', 'select3', '大众   ', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('616', '23', 'select3', '现代   ', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('617', '23', 'select3', '别克   ', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('618', '23', 'select3', '本田   ', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('619', '23', 'select3', '江淮   ', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('620', '23', 'select3', '日产   ', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('621', '23', 'select3', '雪佛兰   ', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('622', '23', 'select3', '丰田   ', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('623', '23', 'select3', '奥迪   ', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('624', '23', 'select3', '宝马   ', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('625', '23', 'select3', '福特  ', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('626', '23', 'select3', '起亚  ', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('627', '23', 'select3', '长安   ', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('628', '23', 'select3', '瑞麒   ', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('629', '23', 'select3', '比亚迪    ', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('630', '23', 'select3', '马自达   ', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('631', '23', 'select3', '福田    ', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('632', '23', 'select3', '标致    ', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('633', '23', 'select3', '奔驰   ', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('634', '23', 'select3', '东风   ', '22');
INSERT INTO `bao_life_cate_attr` VALUES ('635', '23', 'select3', '长城   ', '23');
INSERT INTO `bao_life_cate_attr` VALUES ('636', '23', 'select3', '雪铁龙   ', '24');
INSERT INTO `bao_life_cate_attr` VALUES ('637', '23', 'select3', '中华  ', '25');
INSERT INTO `bao_life_cate_attr` VALUES ('638', '23', 'select3', '荣威  ', '26');
INSERT INTO `bao_life_cate_attr` VALUES ('639', '23', 'select3', '铃木  ', '27');
INSERT INTO `bao_life_cate_attr` VALUES ('640', '23', 'select3', 'MG  ', '28');
INSERT INTO `bao_life_cate_attr` VALUES ('641', '23', 'select3', '开瑞   ', '29');
INSERT INTO `bao_life_cate_attr` VALUES ('642', '23', 'select3', '一汽   ', '30');
INSERT INTO `bao_life_cate_attr` VALUES ('643', '23', 'select3', '沃尔沃   ', '31');
INSERT INTO `bao_life_cate_attr` VALUES ('644', '23', 'select3', '金杯   ', '32');
INSERT INTO `bao_life_cate_attr` VALUES ('645', '23', 'select3', '三菱   ', '33');
INSERT INTO `bao_life_cate_attr` VALUES ('646', '23', 'select3', '莲花   ', '34');
INSERT INTO `bao_life_cate_attr` VALUES ('647', '23', 'select3', '凯迪拉克    ', '35');
INSERT INTO `bao_life_cate_attr` VALUES ('648', '23', 'select3', '海马   ', '36');
INSERT INTO `bao_life_cate_attr` VALUES ('649', '23', 'select3', '哈飞   ', '37');
INSERT INTO `bao_life_cate_attr` VALUES ('650', '23', 'select3', '长丰     ', '38');
INSERT INTO `bao_life_cate_attr` VALUES ('651', '23', 'select3', '东南    ', '39');
INSERT INTO `bao_life_cate_attr` VALUES ('652', '23', 'select3', '吉利    ', '40');
INSERT INTO `bao_life_cate_attr` VALUES ('653', '23', 'select3', '斯柯达    ', '41');
INSERT INTO `bao_life_cate_attr` VALUES ('654', '23', 'select3', '夏利    ', '42');
INSERT INTO `bao_life_cate_attr` VALUES ('655', '23', 'select3', '昌河   ', '43');
INSERT INTO `bao_life_cate_attr` VALUES ('656', '23', 'select3', '双环   ', '44');
INSERT INTO `bao_life_cate_attr` VALUES ('657', '23', 'select3', '双龙   ', '45');
INSERT INTO `bao_life_cate_attr` VALUES ('658', '23', 'select3', '西安奥拓   ', '46');
INSERT INTO `bao_life_cate_attr` VALUES ('659', '23', 'select3', '斯巴鲁    ', '47');
INSERT INTO `bao_life_cate_attr` VALUES ('660', '23', 'select3', '萨博    ', '48');
INSERT INTO `bao_life_cate_attr` VALUES ('661', '23', 'select3', '中兴   ', '49');
INSERT INTO `bao_life_cate_attr` VALUES ('662', '23', 'select3', '宝骏    ', '50');
INSERT INTO `bao_life_cate_attr` VALUES ('663', '23', 'select3', '众泰   ', '51');
INSERT INTO `bao_life_cate_attr` VALUES ('664', '23', 'select3', 'MINI(迷你)   ', '52');
INSERT INTO `bao_life_cate_attr` VALUES ('665', '23', 'select3', '解放    ', '53');
INSERT INTO `bao_life_cate_attr` VALUES ('666', '23', 'select3', '保时捷    ', '54');
INSERT INTO `bao_life_cate_attr` VALUES ('667', '23', 'select3', '北汽制造    ', '55');
INSERT INTO `bao_life_cate_attr` VALUES ('668', '23', 'select3', '宾利    ', '56');
INSERT INTO `bao_life_cate_attr` VALUES ('669', '23', 'select3', '奔腾   ', '57');
INSERT INTO `bao_life_cate_attr` VALUES ('670', '23', 'select3', '英菲尼迪         ', '58');
INSERT INTO `bao_life_cate_attr` VALUES ('671', '23', 'select3', '吉利英伦   ', '59');
INSERT INTO `bao_life_cate_attr` VALUES ('672', '23', 'select3', '新凯   ', '60');
INSERT INTO `bao_life_cate_attr` VALUES ('673', '23', 'select3', '东风风神     ', '61');
INSERT INTO `bao_life_cate_attr` VALUES ('674', '23', 'select3', '江铃   ', '62');
INSERT INTO `bao_life_cate_attr` VALUES ('675', '23', 'select3', '东风风行    ', '63');
INSERT INTO `bao_life_cate_attr` VALUES ('676', '23', 'select3', '捷豹    ', '64');
INSERT INTO `bao_life_cate_attr` VALUES ('677', '23', 'select3', '菲亚特   ', '65');
INSERT INTO `bao_life_cate_attr` VALUES ('678', '23', 'select3', '克莱斯勒    ', '66');
INSERT INTO `bao_life_cate_attr` VALUES ('679', '23', 'select3', '吉普   ', '67');
INSERT INTO `bao_life_cate_attr` VALUES ('680', '23', 'select3', '吉奥  ', '68');
INSERT INTO `bao_life_cate_attr` VALUES ('681', '23', 'select3', '红旗    ', '69');
INSERT INTO `bao_life_cate_attr` VALUES ('682', '23', 'select3', '华普    ', '70');
INSERT INTO `bao_life_cate_attr` VALUES ('683', '23', 'select3', '华泰   ', '71');
INSERT INTO `bao_life_cate_attr` VALUES ('684', '23', 'select3', '黄海   ', '72');
INSERT INTO `bao_life_cate_attr` VALUES ('685', '23', 'select3', '雷克萨斯    ', '73');
INSERT INTO `bao_life_cate_attr` VALUES ('686', '23', 'select3', '雷诺    ', '74');
INSERT INTO `bao_life_cate_attr` VALUES ('687', '23', 'select3', '欧宝   ', '75');
INSERT INTO `bao_life_cate_attr` VALUES ('688', '23', 'select3', '吉利帝豪   ', '76');
INSERT INTO `bao_life_cate_attr` VALUES ('689', '23', 'select3', '道奇   ', '77');
INSERT INTO `bao_life_cate_attr` VALUES ('690', '23', 'select3', '大迪    ', '78');
INSERT INTO `bao_life_cate_attr` VALUES ('691', '23', 'select3', '讴歌    ', '79');
INSERT INTO `bao_life_cate_attr` VALUES ('692', '23', 'select3', '路虎    ', '80');
INSERT INTO `bao_life_cate_attr` VALUES ('693', '23', 'select3', '力帆     ', '81');
INSERT INTO `bao_life_cate_attr` VALUES ('694', '23', 'select3', '林肯    ', '82');
INSERT INTO `bao_life_cate_attr` VALUES ('695', '23', 'select3', '法拉利    ', '83');
INSERT INTO `bao_life_cate_attr` VALUES ('696', '23', 'select3', '陆风川汽   ', '84');
INSERT INTO `bao_life_cate_attr` VALUES ('697', '23', 'select3', '野马   ', '85');
INSERT INTO `bao_life_cate_attr` VALUES ('698', '23', 'select3', '玛莎拉蒂', '86');
INSERT INTO `bao_life_cate_attr` VALUES ('699', '23', 'select3', '兰博基尼', '87');
INSERT INTO `bao_life_cate_attr` VALUES ('700', '23', 'select3', '其他', '88');
INSERT INTO `bao_life_cate_attr` VALUES ('702', '24', 'select1', '电动摩托车', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('703', '24', 'select1', '电动自行车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('704', '24', 'select1', '电动三轮车', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('705', '24', 'select1', '其它', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('707', '24', 'select2', '爱玛', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('708', '24', 'select2', '新日', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('709', '24', 'select2', '绿源', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('710', '24', 'select2', '立马', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('711', '24', 'select2', '雅迪', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('712', '24', 'select2', '小刀', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('713', '24', 'select2', '其它', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('715', '24', 'select3', '300元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('716', '24', 'select3', '300元—600元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('717', '24', 'select3', '600元—1000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('718', '24', 'select3', '1000元—1500元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('719', '24', 'select3', '1500元—2000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('720', '24', 'select3', '2000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('722', '25', 'select1', '山地车 ', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('723', '25', 'select1', '死飞    ', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('724', '25', 'select1', '普通车    ', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('725', '25', 'select1', '公路车    ', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('726', '25', 'select1', '折叠车    ', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('727', '25', 'select1', '休闲车    ', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('728', '25', 'select1', '三轮车    ', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('729', '25', 'select1', '折叠童车', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('730', '25', 'select1', '其他', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('732', '25', 'select2', '捷安特   ', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('733', '25', 'select2', '美利达   ', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('734', '25', 'select2', '凤凰   ', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('735', '25', 'select2', '永久   ', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('736', '25', 'select2', '富士达    ', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('737', '25', 'select2', '喜德盛    ', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('738', '25', 'select2', '捷马   ', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('739', '25', 'select2', '飞鸽    ', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('740', '25', 'select2', '飞跃   ', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('741', '25', 'select2', '英克莱  ', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('742', '25', 'select2', '其他', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('744', '25', 'select3', '100元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('745', '25', 'select3', '100元—200元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('746', '25', 'select3', '200元—500元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('747', '25', 'select3', '500元—1000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('748', '25', 'select3', '1000以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('750', '26', 'select1', '自卸车   ', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('751', '26', 'select1', '厢式货车    ', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('752', '26', 'select1', '平板车    ', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('753', '26', 'select1', '半挂车    ', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('754', '26', 'select1', '油罐车    ', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('755', '26', 'select1', '水泥罐车   ', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('756', '26', 'select1', '牵引车  ', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('757', '26', 'select1', '随车吊   ', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('758', '26', 'select1', '其他', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('760', '26', 'select2', '瑞沃奥威   ', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('761', '26', 'select2', '欧曼   ', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('762', '26', 'select2', '解放    ', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('763', '26', 'select2', '江淮   ', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('764', '26', 'select2', '时代金刚   ', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('765', '26', 'select2', '东风天龙   ', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('766', '26', 'select2', '高栏   ', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('767', '26', 'select2', '东风   ', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('768', '26', 'select2', '福田   ', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('769', '26', 'select2', '陕汽德龙       ', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('770', '26', 'select2', '斯太尔   ', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('771', '26', 'select2', '豪沃      ', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('772', '26', 'select2', '红岩    ', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('773', '26', 'select2', '陕汽奥龙   ', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('774', '26', 'select2', '康明斯   ', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('775', '26', 'select2', '悍威   ', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('776', '26', 'select2', '新大威    ', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('777', '26', 'select2', '解放赛龙    ', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('778', '26', 'select2', '跃进   ', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('779', '26', 'select2', '威铃    ', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('780', '26', 'select2', '凯马   ', '22');
INSERT INTO `bao_life_cate_attr` VALUES ('781', '26', 'select2', '中国重汽    ', '23');
INSERT INTO `bao_life_cate_attr` VALUES ('782', '26', 'select2', '江铃   ', '24');
INSERT INTO `bao_life_cate_attr` VALUES ('783', '26', 'select2', '中国重汽豪运   ', '25');
INSERT INTO `bao_life_cate_attr` VALUES ('784', '26', 'select2', '其他', '26');
INSERT INTO `bao_life_cate_attr` VALUES ('786', '26', 'select3', '5万以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('787', '26', 'select3', '5万—8万', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('788', '26', 'select3', '8万—12万', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('789', '26', 'select3', '12万—18万', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('790', '26', 'select3', '18万—25万', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('791', '26', 'select3', '25万以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('793', '27', 'select1', '踏板', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('794', '27', 'select1', '轻骑', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('795', '27', 'select1', '跑车', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('796', '27', 'select1', '越野', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('797', '27', 'select1', '其它', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('799', '27', 'select2', '建设    ', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('800', '27', 'select2', '雅马哈    ', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('801', '27', 'select2', '本田   ', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('802', '27', 'select2', '铃木  ', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('803', '27', 'select2', '轻骑   ', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('804', '27', 'select2', '豪爵   ', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('805', '27', 'select2', '钱江   ', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('806', '27', 'select2', '光阳   ', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('807', '27', 'select2', '宗申  ', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('808', '27', 'select2', '金城   ', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('809', '27', 'select2', '隆鑫   ', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('810', '27', 'select2', '踏板   ', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('811', '27', 'select2', '巧格   ', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('812', '27', 'select2', '力帆   ', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('813', '27', 'select2', '迅鹰   ', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('814', '27', 'select2', '三阳   ', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('815', '27', 'select2', '川崎   ', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('816', '27', 'select2', '新大洲    ', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('817', '27', 'select2', '林海   ', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('818', '27', 'select2', '凌鹰   ', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('819', '27', 'select2', '哈雷   ', '22');
INSERT INTO `bao_life_cate_attr` VALUES ('820', '27', 'select2', '春风   ', '23');
INSERT INTO `bao_life_cate_attr` VALUES ('821', '27', 'select2', '飞鹰   ', '24');
INSERT INTO `bao_life_cate_attr` VALUES ('822', '27', 'select2', '街车   ', '25');
INSERT INTO `bao_life_cate_attr` VALUES ('823', '27', 'select2', '劲隆       ', '26');
INSERT INTO `bao_life_cate_attr` VALUES ('824', '27', 'select2', '小帅哥    ', '27');
INSERT INTO `bao_life_cate_attr` VALUES ('825', '27', 'select2', '呈捷    ', '28');
INSERT INTO `bao_life_cate_attr` VALUES ('826', '27', 'select2', '大地鹰王    ', '29');
INSERT INTO `bao_life_cate_attr` VALUES ('827', '27', 'select2', '钻豹   ', '30');
INSERT INTO `bao_life_cate_attr` VALUES ('828', '27', 'select2', '龟王   ', '31');
INSERT INTO `bao_life_cate_attr` VALUES ('829', '27', 'select2', '天剑   ', '32');
INSERT INTO `bao_life_cate_attr` VALUES ('830', '27', 'select2', '越野    ', '33');
INSERT INTO `bao_life_cate_attr` VALUES ('831', '27', 'select2', '大阳    ', '34');
INSERT INTO `bao_life_cate_attr` VALUES ('832', '27', 'select2', '祖玛   ', '35');
INSERT INTO `bao_life_cate_attr` VALUES ('833', '27', 'select2', '重庆大运         ', '36');
INSERT INTO `bao_life_cate_attr` VALUES ('834', '27', 'select2', '马杰斯特   ', '37');
INSERT INTO `bao_life_cate_attr` VALUES ('835', '27', 'select2', '公主   ', '38');
INSERT INTO `bao_life_cate_attr` VALUES ('836', '27', 'select2', '大帅哥   ', '39');
INSERT INTO `bao_life_cate_attr` VALUES ('837', '27', 'select2', '太子   ', '40');
INSERT INTO `bao_life_cate_attr` VALUES ('838', '27', 'select2', '高赛   ', '41');
INSERT INTO `bao_life_cate_attr` VALUES ('839', '27', 'select2', '南方   ', '42');
INSERT INTO `bao_life_cate_attr` VALUES ('840', '27', 'select2', '铁马   ', '43');
INSERT INTO `bao_life_cate_attr` VALUES ('841', '27', 'select2', '猎鹰   ', '44');
INSERT INTO `bao_life_cate_attr` VALUES ('842', '27', 'select2', '五羊   ', '45');
INSERT INTO `bao_life_cate_attr` VALUES ('843', '27', 'select2', '邦德   ', '46');
INSERT INTO `bao_life_cate_attr` VALUES ('844', '27', 'select2', '巡洋舰   ', '47');
INSERT INTO `bao_life_cate_attr` VALUES ('845', '27', 'select2', '福喜  ', '48');
INSERT INTO `bao_life_cate_attr` VALUES ('846', '27', 'select2', '小未战    ', '49');
INSERT INTO `bao_life_cate_attr` VALUES ('847', '27', 'select2', '大未战   ', '50');
INSERT INTO `bao_life_cate_attr` VALUES ('848', '27', 'select2', '海王星    ', '51');
INSERT INTO `bao_life_cate_attr` VALUES ('849', '27', 'select2', '幸福   ', '52');
INSERT INTO `bao_life_cate_attr` VALUES ('850', '27', 'select2', '大绵羊    ', '53');
INSERT INTO `bao_life_cate_attr` VALUES ('851', '27', 'select2', '长江   ', '54');
INSERT INTO `bao_life_cate_attr` VALUES ('852', '27', 'select2', '其他', '55');
INSERT INTO `bao_life_cate_attr` VALUES ('854', '27', 'select3', '500元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('855', '27', 'select3', '500元—1000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('856', '27', 'select3', '1000元—2000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('857', '27', 'select3', '2000元—3000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('858', '27', 'select3', '3000元以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('861', '28', 'select1', '没车', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('862', '28', 'select1', '有车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('863', '28', 'select2', '长途拼车', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('864', '28', 'select2', '上下班拼车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('865', '28', 'select2', '上下学拼车', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('866', '28', 'select2', '其它拼车', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('867', '29', 'select1', '供应', '1');
INSERT INTO `bao_life_cate_attr` VALUES ('868', '29', 'select1', '求购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('870', '29', 'select2', '配件   ', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('871', '29', 'select2', '影音电器    ', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('872', '29', 'select2', '清洁保养   ', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('873', '29', 'select2', 'GPS   ', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('874', '29', 'select2', '外饰    ', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('875', '29', 'select2', '内饰', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('876', '29', 'select2', '坐垫/脚垫   ', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('877', '29', 'select2', ' 轮胎/轮毂    ', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('878', '29', 'select2', '其他', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('880', '29', 'select3', '50元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('881', '29', 'select3', '50元—150元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('882', '29', 'select3', '150元—300元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('883', '29', 'select3', '300元—500元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('884', '29', 'select3', '500元—1000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('885', '29', 'select3', '1000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('887', '30', 'select1', '吉利   ', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('888', '30', 'select1', '比亚迪    ', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('889', '30', 'select1', '吉利帝豪    ', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('890', '30', 'select1', '奇瑞    ', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('891', '30', 'select1', '大众    ', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('892', '30', 'select1', '荣威    ', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('893', '30', 'select1', 'MG   ', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('894', '30', 'select1', '东风   ', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('895', '30', 'select1', '东风风神    ', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('896', '30', 'select1', '别克        ', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('897', '30', 'select1', '起亚     ', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('898', '30', 'select1', '宝马    ', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('899', '30', 'select1', '福特    ', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('900', '30', 'select1', '现代    ', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('901', '30', 'select1', '铃木    ', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('902', '30', 'select1', '本田    ', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('903', '30', 'select1', '雪佛兰    ', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('904', '30', 'select1', '奥迪   ', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('905', '30', 'select1', '江铃   ', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('906', '30', 'select1', '沃尔沃    ', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('907', '30', 'select1', '解放    ', '22');
INSERT INTO `bao_life_cate_attr` VALUES ('908', '30', 'select1', '开瑞   ', '23');
INSERT INTO `bao_life_cate_attr` VALUES ('909', '30', 'select1', '奔驰    ', '24');
INSERT INTO `bao_life_cate_attr` VALUES ('910', '30', 'select1', '雪铁龙    ', '25');
INSERT INTO `bao_life_cate_attr` VALUES ('911', '30', 'select1', '道奇   ', '26');
INSERT INTO `bao_life_cate_attr` VALUES ('912', '30', 'select1', '江淮    ', '27');
INSERT INTO `bao_life_cate_attr` VALUES ('913', '30', 'select1', '捷豹    ', '28');
INSERT INTO `bao_life_cate_attr` VALUES ('914', '30', 'select1', '北汽制造     ', '29');
INSERT INTO `bao_life_cate_attr` VALUES ('915', '30', 'select1', '一汽    ', '30');
INSERT INTO `bao_life_cate_attr` VALUES ('916', '30', 'select1', '标致    ', '31');
INSERT INTO `bao_life_cate_attr` VALUES ('917', '30', 'select1', '莲花   ', '32');
INSERT INTO `bao_life_cate_attr` VALUES ('918', '30', 'select1', '东风风行   ', '33');
INSERT INTO `bao_life_cate_attr` VALUES ('919', '30', 'select1', '瑞麒   ', '34');
INSERT INTO `bao_life_cate_attr` VALUES ('920', '30', 'select1', '三菱    ', '35');
INSERT INTO `bao_life_cate_attr` VALUES ('921', '30', 'select1', '斯巴鲁   ', '36');
INSERT INTO `bao_life_cate_attr` VALUES ('922', '30', 'select1', '奔腾    ', '37');
INSERT INTO `bao_life_cate_attr` VALUES ('923', '30', 'select1', '日产   ', '38');
INSERT INTO `bao_life_cate_attr` VALUES ('924', '30', 'select1', '斯柯达    ', '39');
INSERT INTO `bao_life_cate_attr` VALUES ('925', '30', 'select1', '萨博    ', '40');
INSERT INTO `bao_life_cate_attr` VALUES ('926', '30', 'select1', '双环    ', '41');
INSERT INTO `bao_life_cate_attr` VALUES ('927', '30', 'select1', '西安奥拓    ', '42');
INSERT INTO `bao_life_cate_attr` VALUES ('928', '30', 'select1', '双龙    ', '43');
INSERT INTO `bao_life_cate_attr` VALUES ('929', '30', 'select1', '保时捷  ', '44');
INSERT INTO `bao_life_cate_attr` VALUES ('930', '30', 'select1', '中兴   ', '45');
INSERT INTO `bao_life_cate_attr` VALUES ('931', '30', 'select1', '中华    ', '46');
INSERT INTO `bao_life_cate_attr` VALUES ('932', '30', 'select1', '众泰    ', '47');
INSERT INTO `bao_life_cate_attr` VALUES ('933', '30', 'select1', '宝骏   ', '48');
INSERT INTO `bao_life_cate_attr` VALUES ('934', '30', 'select1', 'MINI(迷你)   ', '49');
INSERT INTO `bao_life_cate_attr` VALUES ('935', '30', 'select1', '长丰    ', '50');
INSERT INTO `bao_life_cate_attr` VALUES ('936', '30', 'select1', '长城   ', '51');
INSERT INTO `bao_life_cate_attr` VALUES ('937', '30', 'select1', '新凯   ', '52');
INSERT INTO `bao_life_cate_attr` VALUES ('938', '30', 'select1', '英菲尼迪  ', '53');
INSERT INTO `bao_life_cate_attr` VALUES ('939', '30', 'select1', '吉利英伦   ', '54');
INSERT INTO `bao_life_cate_attr` VALUES ('940', '30', 'select1', '长安  ', '55');
INSERT INTO `bao_life_cate_attr` VALUES ('941', '30', 'select1', '夏利   ', '56');
INSERT INTO `bao_life_cate_attr` VALUES ('942', '30', 'select1', '马自达   ', '57');
INSERT INTO `bao_life_cate_attr` VALUES ('943', '30', 'select1', '华泰    ', '58');
INSERT INTO `bao_life_cate_attr` VALUES ('944', '30', 'select1', '华普   ', '59');
INSERT INTO `bao_life_cate_attr` VALUES ('945', '30', 'select1', '黄海  ', '60');
INSERT INTO `bao_life_cate_attr` VALUES ('946', '30', 'select1', '吉奥   ', '61');
INSERT INTO `bao_life_cate_attr` VALUES ('947', '30', 'select1', '大迪    ', '62');
INSERT INTO `bao_life_cate_attr` VALUES ('948', '30', 'select1', '吉普    ', '63');
INSERT INTO `bao_life_cate_attr` VALUES ('949', '30', 'select1', '红旗   ', '64');
INSERT INTO `bao_life_cate_attr` VALUES ('950', '30', 'select1', '海马   ', '65');
INSERT INTO `bao_life_cate_attr` VALUES ('951', '30', 'select1', '丰田     ', '66');
INSERT INTO `bao_life_cate_attr` VALUES ('952', '30', 'select1', '菲亚特  ', '67');
INSERT INTO `bao_life_cate_attr` VALUES ('953', '30', 'select1', '东南   ', '68');
INSERT INTO `bao_life_cate_attr` VALUES ('954', '30', 'select1', '福田   ', '69');
INSERT INTO `bao_life_cate_attr` VALUES ('955', '30', 'select1', '哈飞    ', '70');
INSERT INTO `bao_life_cate_attr` VALUES ('956', '30', 'select1', '金杯   ', '71');
INSERT INTO `bao_life_cate_attr` VALUES ('957', '30', 'select1', '川汽野马   ', '72');
INSERT INTO `bao_life_cate_attr` VALUES ('958', '30', 'select1', '路虎   ', '73');
INSERT INTO `bao_life_cate_attr` VALUES ('959', '30', 'select1', '陆风   ', '74');
INSERT INTO `bao_life_cate_attr` VALUES ('960', '30', 'select1', '法拉利    ', '75');
INSERT INTO `bao_life_cate_attr` VALUES ('961', '30', 'select1', '讴歌    ', '76');
INSERT INTO `bao_life_cate_attr` VALUES ('962', '30', 'select1', '欧宝    ', '77');
INSERT INTO `bao_life_cate_attr` VALUES ('963', '30', 'select1', '昌河    ', '78');
INSERT INTO `bao_life_cate_attr` VALUES ('964', '30', 'select1', '林肯', '79');
INSERT INTO `bao_life_cate_attr` VALUES ('965', '30', 'select1', '克莱斯勒   ', '80');
INSERT INTO `bao_life_cate_attr` VALUES ('966', '30', 'select1', '凯迪拉克    ', '81');
INSERT INTO `bao_life_cate_attr` VALUES ('967', '30', 'select1', '雷克萨斯   ', '82');
INSERT INTO `bao_life_cate_attr` VALUES ('968', '30', 'select1', '雷诺   ', '83');
INSERT INTO `bao_life_cate_attr` VALUES ('969', '30', 'select1', '力帆   ', '84');
INSERT INTO `bao_life_cate_attr` VALUES ('970', '30', 'select1', '宾利   ', '85');
INSERT INTO `bao_life_cate_attr` VALUES ('971', '30', 'select1', '玛莎拉蒂', '86');
INSERT INTO `bao_life_cate_attr` VALUES ('972', '30', 'select1', '兰博基尼', '87');
INSERT INTO `bao_life_cate_attr` VALUES ('973', '30', 'select1', '其他', '88');
INSERT INTO `bao_life_cate_attr` VALUES ('975', '30', 'select2', '10万以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('976', '30', 'select2', '10万—20万', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('977', '30', 'select2', '20万—30万', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('978', '30', 'select2', '30万—50万', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('979', '30', 'select2', '50万—100万', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('980', '30', 'select2', '100万以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('982', '31', 'select1', '汽车保养', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('983', '31', 'select1', '汽车美容', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('984', '31', 'select1', '汽车改装', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('985', '31', 'select1', '汽车检修', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('986', '31', 'select1', '洗车', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('987', '31', 'select1', '其它', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('989', '32', 'select1', '装载机', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('990', '32', 'select1', '叉车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('991', '32', 'select1', '挖掘机', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('992', '32', 'select1', '吊车', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('993', '32', 'select1', '搅拌车', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('994', '32', 'select1', '推土机', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('995', '32', 'select1', '压路机', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('996', '32', 'select1', '随车吊', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('997', '32', 'select1', '其他', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('999', '32', 'select2', '龙工', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1000', '32', 'select2', '柳工', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1001', '32', 'select2', '小松', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1002', '32', 'select2', '临工', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1003', '32', 'select2', '徐工', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1004', '32', 'select2', '玉柴', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1005', '32', 'select2', '豪沃', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1006', '32', 'select2', '日立', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1007', '32', 'select2', '山推', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1008', '32', 'select2', '现代', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1009', '32', 'select2', '山河智能', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1010', '32', 'select2', '尼桑', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1011', '32', 'select2', '东方红', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1012', '32', 'select2', '卡特', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('1013', '32', 'select2', '长江', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('1014', '32', 'select2', '宣化', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('1015', '32', 'select2', '三一重工', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('1016', '32', 'select2', '其他', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('1018', '32', 'select3', '2万以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1019', '32', 'select3', '2万—5万', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1020', '32', 'select3', '5万—8万', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1021', '32', 'select3', '8万—12万', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1022', '32', 'select3', '12万—18万', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1023', '32', 'select3', '18万—25万', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1024', '32', 'select3', '25万以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1026', '33', 'select1', '过户上牌', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1027', '33', 'select1', '年检验车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1028', '33', 'select1', '车辆保险', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1030', '34', 'select1', '面包车', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1031', '34', 'select1', '小巴车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1032', '34', 'select1', '中巴车', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1033', '34', 'select1', '大客车', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1035', '34', 'select2', '五菱', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1036', '34', 'select2', '长安', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1037', '34', 'select2', '东风小康', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1038', '34', 'select2', '江淮', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1039', '34', 'select2', '开瑞', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1040', '34', 'select2', '哈飞', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1041', '34', 'select2', '金杯', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1042', '34', 'select2', '金龙', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1043', '34', 'select2', '东南', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1044', '34', 'select2', '依维柯', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1045', '34', 'select2', '佳宝', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1046', '34', 'select2', '昌河', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1047', '34', 'select2', '松花江', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1048', '34', 'select2', '宇通', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('1049', '34', 'select2', '福田', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('1050', '34', 'select2', '少林', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('1051', '34', 'select2', '全顺', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('1052', '34', 'select2', '丰田', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('1053', '34', 'select2', '江铃', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('1054', '34', 'select2', '其他', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('1056', '34', 'select3', '2万以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1057', '34', 'select3', '2万—3万', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1058', '34', 'select3', '3万—5万', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1059', '34', 'select3', '5万—8万', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1060', '34', 'select3', '8万—12万', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1061', '34', 'select3', '12万—20万', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1062', '34', 'select3', '20万以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1064', '35', 'select1', '拖拉机', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1065', '35', 'select1', '收割机', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1066', '35', 'select1', '旋耕/微耕机', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1067', '35', 'select1', '插秧机', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1068', '35', 'select1', '抽水机', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1069', '35', 'select1', '其他', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1072', '35', 'select2', '常林', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1073', '35', 'select2', '常发', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1074', '35', 'select2', '五征', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1075', '35', 'select2', '四方', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1076', '35', 'select2', '黄金海马', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1077', '35', 'select2', '沭河', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1078', '35', 'select2', '约翰迪尔', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1079', '35', 'select2', '福田雷沃', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1080', '35', 'select2', '东风', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1081', '35', 'select2', '纽荷兰', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1082', '35', 'select2', '时风', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1083', '35', 'select2', '东方红', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1084', '35', 'select2', '其他', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1085', '35', 'select3', '1万以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1086', '35', 'select3', '1万—2万', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1087', '35', 'select3', '2万—4万', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1088', '35', 'select3', '4万—6万', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1089', '35', 'select3', '6万—8万', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1090', '35', 'select3', '8万以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1092', '36', 'select1', '小型车', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1093', '36', 'select1', 'SUV/越野车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1094', '36', 'select1', '中型车', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1095', '36', 'select1', '豪华车', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1096', '36', 'select1', 'MPV/商务车', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1097', '36', 'select1', '跑车', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1098', '36', 'select1', '面包车', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1101', '36', 'select1', '其它', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1102', '36', 'select2', '奇瑞   ', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1103', '36', 'select2', '大众    ', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1104', '36', 'select2', '现代   ', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1105', '36', 'select2', '别克   ', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1106', '36', 'select2', '本田   ', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1107', '36', 'select2', '江淮   ', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1108', '36', 'select2', '日产   ', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1109', '36', 'select2', '雪佛兰   ', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1110', '36', 'select2', '丰田   ', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1111', '36', 'select2', '奥迪   ', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1112', '36', 'select2', '宝马   ', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1113', '36', 'select2', '福特  ', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1114', '36', 'select2', '起亚  ', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1115', '36', 'select2', '长安   ', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('1116', '36', 'select2', '瑞麒   ', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('1117', '36', 'select2', '比亚迪    ', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('1118', '36', 'select2', '马自达   ', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('1119', '36', 'select2', '福田    ', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('1120', '36', 'select2', '标致    ', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('1121', '36', 'select2', '奔驰   ', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('1122', '36', 'select2', '东风   ', '22');
INSERT INTO `bao_life_cate_attr` VALUES ('1123', '36', 'select2', '长城   ', '23');
INSERT INTO `bao_life_cate_attr` VALUES ('1124', '36', 'select2', '雪铁龙   ', '24');
INSERT INTO `bao_life_cate_attr` VALUES ('1125', '36', 'select2', '中华  ', '25');
INSERT INTO `bao_life_cate_attr` VALUES ('1126', '36', 'select2', '荣威  ', '26');
INSERT INTO `bao_life_cate_attr` VALUES ('1127', '36', 'select2', '铃木  ', '27');
INSERT INTO `bao_life_cate_attr` VALUES ('1128', '36', 'select2', 'MG  ', '28');
INSERT INTO `bao_life_cate_attr` VALUES ('1129', '36', 'select2', '开瑞   ', '29');
INSERT INTO `bao_life_cate_attr` VALUES ('1130', '36', 'select2', '一汽   ', '30');
INSERT INTO `bao_life_cate_attr` VALUES ('1131', '36', 'select2', '沃尔沃   ', '31');
INSERT INTO `bao_life_cate_attr` VALUES ('1132', '36', 'select2', '金杯   ', '32');
INSERT INTO `bao_life_cate_attr` VALUES ('1133', '36', 'select2', '三菱   ', '33');
INSERT INTO `bao_life_cate_attr` VALUES ('1134', '36', 'select2', '莲花   ', '34');
INSERT INTO `bao_life_cate_attr` VALUES ('1135', '36', 'select2', '凯迪拉克    ', '35');
INSERT INTO `bao_life_cate_attr` VALUES ('1136', '36', 'select2', '海马   ', '36');
INSERT INTO `bao_life_cate_attr` VALUES ('1137', '36', 'select2', '哈飞   ', '37');
INSERT INTO `bao_life_cate_attr` VALUES ('1138', '36', 'select2', '长丰     ', '38');
INSERT INTO `bao_life_cate_attr` VALUES ('1139', '36', 'select2', '东南    ', '39');
INSERT INTO `bao_life_cate_attr` VALUES ('1140', '36', 'select2', '吉利    ', '40');
INSERT INTO `bao_life_cate_attr` VALUES ('1141', '36', 'select2', '斯柯达    ', '41');
INSERT INTO `bao_life_cate_attr` VALUES ('1142', '36', 'select2', '夏利    ', '42');
INSERT INTO `bao_life_cate_attr` VALUES ('1143', '36', 'select2', '昌河   ', '43');
INSERT INTO `bao_life_cate_attr` VALUES ('1144', '36', 'select2', '双环   ', '44');
INSERT INTO `bao_life_cate_attr` VALUES ('1145', '36', 'select2', '双龙   ', '45');
INSERT INTO `bao_life_cate_attr` VALUES ('1146', '36', 'select2', '西安奥拓   ', '46');
INSERT INTO `bao_life_cate_attr` VALUES ('1147', '36', 'select2', '斯巴鲁    ', '47');
INSERT INTO `bao_life_cate_attr` VALUES ('1148', '36', 'select2', '萨博    ', '48');
INSERT INTO `bao_life_cate_attr` VALUES ('1149', '36', 'select2', '中兴   ', '49');
INSERT INTO `bao_life_cate_attr` VALUES ('1150', '36', 'select2', '宝骏    ', '50');
INSERT INTO `bao_life_cate_attr` VALUES ('1151', '36', 'select2', '众泰   ', '51');
INSERT INTO `bao_life_cate_attr` VALUES ('1152', '36', 'select2', 'MINI(迷你)   ', '52');
INSERT INTO `bao_life_cate_attr` VALUES ('1153', '36', 'select2', '解放    ', '53');
INSERT INTO `bao_life_cate_attr` VALUES ('1154', '36', 'select2', '保时捷    ', '54');
INSERT INTO `bao_life_cate_attr` VALUES ('1155', '36', 'select2', '北汽制造    ', '55');
INSERT INTO `bao_life_cate_attr` VALUES ('1156', '36', 'select2', '宾利    ', '56');
INSERT INTO `bao_life_cate_attr` VALUES ('1157', '36', 'select2', '奔腾   ', '57');
INSERT INTO `bao_life_cate_attr` VALUES ('1158', '36', 'select2', '英菲尼迪         ', '58');
INSERT INTO `bao_life_cate_attr` VALUES ('1159', '36', 'select2', '吉利英伦   ', '59');
INSERT INTO `bao_life_cate_attr` VALUES ('1160', '36', 'select2', '新凯   ', '60');
INSERT INTO `bao_life_cate_attr` VALUES ('1161', '36', 'select2', '东风风神     ', '61');
INSERT INTO `bao_life_cate_attr` VALUES ('1162', '36', 'select2', '江铃   ', '62');
INSERT INTO `bao_life_cate_attr` VALUES ('1163', '36', 'select2', '东风风行    ', '63');
INSERT INTO `bao_life_cate_attr` VALUES ('1164', '36', 'select2', '捷豹    ', '64');
INSERT INTO `bao_life_cate_attr` VALUES ('1165', '36', 'select2', '菲亚特   ', '65');
INSERT INTO `bao_life_cate_attr` VALUES ('1166', '36', 'select2', '克莱斯勒    ', '66');
INSERT INTO `bao_life_cate_attr` VALUES ('1167', '36', 'select2', '吉普   ', '67');
INSERT INTO `bao_life_cate_attr` VALUES ('1168', '36', 'select2', '吉奥  ', '68');
INSERT INTO `bao_life_cate_attr` VALUES ('1169', '36', 'select2', '红旗    ', '69');
INSERT INTO `bao_life_cate_attr` VALUES ('1170', '36', 'select2', '华普    ', '70');
INSERT INTO `bao_life_cate_attr` VALUES ('1171', '36', 'select2', '华泰   ', '71');
INSERT INTO `bao_life_cate_attr` VALUES ('1172', '36', 'select2', '黄海   ', '72');
INSERT INTO `bao_life_cate_attr` VALUES ('1173', '36', 'select2', '雷克萨斯    ', '73');
INSERT INTO `bao_life_cate_attr` VALUES ('1174', '36', 'select2', '雷诺    ', '74');
INSERT INTO `bao_life_cate_attr` VALUES ('1175', '36', 'select2', '欧宝   ', '75');
INSERT INTO `bao_life_cate_attr` VALUES ('1176', '36', 'select2', '吉利帝豪   ', '76');
INSERT INTO `bao_life_cate_attr` VALUES ('1177', '36', 'select2', '道奇   ', '77');
INSERT INTO `bao_life_cate_attr` VALUES ('1178', '36', 'select2', '大迪    ', '78');
INSERT INTO `bao_life_cate_attr` VALUES ('1179', '36', 'select2', '讴歌    ', '79');
INSERT INTO `bao_life_cate_attr` VALUES ('1180', '36', 'select2', '路虎    ', '80');
INSERT INTO `bao_life_cate_attr` VALUES ('1181', '36', 'select2', '力帆     ', '81');
INSERT INTO `bao_life_cate_attr` VALUES ('1182', '36', 'select2', '林肯    ', '82');
INSERT INTO `bao_life_cate_attr` VALUES ('1183', '36', 'select2', '法拉利    ', '83');
INSERT INTO `bao_life_cate_attr` VALUES ('1184', '36', 'select2', '陆风川汽   ', '84');
INSERT INTO `bao_life_cate_attr` VALUES ('1185', '36', 'select2', '野马   ', '85');
INSERT INTO `bao_life_cate_attr` VALUES ('1186', '36', 'select2', '玛莎拉蒂', '86');
INSERT INTO `bao_life_cate_attr` VALUES ('1187', '36', 'select2', '兰博基尼', '87');
INSERT INTO `bao_life_cate_attr` VALUES ('1188', '36', 'select2', '其他', '88');
INSERT INTO `bao_life_cate_attr` VALUES ('1189', '36', 'select3', '1万以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1190', '36', 'select3', '1万—2万', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1191', '36', 'select3', '2万—4万', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1192', '36', 'select3', '4万以上', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1194', '37', 'select1', '车辆收购', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1195', '37', 'select1', '车辆评估', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1199', '38', 'select1', '快递员', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1200', '38', 'select1', '送货员', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1201', '38', 'select1', '保安', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1202', '38', 'select1', '编辑', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1203', '38', 'select1', '前台', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1204', '38', 'select1', '收银员', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1205', '38', 'select1', '店长', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1206', '38', 'select1', '摄影/影视', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1207', '38', 'select1', '广告/美工/设计', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1208', '38', 'select1', '保健按摩', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1209', '38', 'select1', 'KTV/酒吧', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1210', '38', 'select1', '美容美发', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1211', '38', 'select1', '网管', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1212', '38', 'select1', '翻译', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('1213', '38', 'select1', '仓管', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('1214', '38', 'select1', '切配', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('1215', '38', 'select1', '厨师', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('1216', '38', 'select1', '司机', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('1217', '38', 'select1', '文员', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('1218', '38', 'select1', '人事', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('1219', '38', 'select1', '客服', '22');
INSERT INTO `bao_life_cate_attr` VALUES ('1220', '38', 'select1', '服务员', '23');
INSERT INTO `bao_life_cate_attr` VALUES ('1221', '38', 'select1', '营业员', '24');
INSERT INTO `bao_life_cate_attr` VALUES ('1222', '38', 'select1', '工人/技工', '25');
INSERT INTO `bao_life_cate_attr` VALUES ('1223', '38', 'select1', '行政', '26');
INSERT INTO `bao_life_cate_attr` VALUES ('1224', '38', 'select1', '房产经纪人', '27');
INSERT INTO `bao_life_cate_attr` VALUES ('1225', '38', 'select1', '助理', '28');
INSERT INTO `bao_life_cate_attr` VALUES ('1226', '38', 'select1', '教育/培训/咨询', '29');
INSERT INTO `bao_life_cate_attr` VALUES ('1227', '38', 'select1', '金融/银行/保险', '30');
INSERT INTO `bao_life_cate_attr` VALUES ('1228', '38', 'select1', '财务/会计/出纳', '31');
INSERT INTO `bao_life_cate_attr` VALUES ('1229', '38', 'select1', '家政', '32');
INSERT INTO `bao_life_cate_attr` VALUES ('1230', '38', 'select1', '保洁', '33');
INSERT INTO `bao_life_cate_attr` VALUES ('1231', '38', 'select1', '销售/业务员', '34');
INSERT INTO `bao_life_cate_attr` VALUES ('1232', '38', 'select1', '程序工程师', '35');
INSERT INTO `bao_life_cate_attr` VALUES ('1233', '38', 'select1', '其他', '36');
INSERT INTO `bao_life_cate_attr` VALUES ('1234', '38', 'select2', '女', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1235', '38', 'select2', '男', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1236', '38', 'select3', '本科及以上', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1237', '38', 'select3', '大专', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1238', '38', 'select3', '高中/中专', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1239', '38', 'select3', '初中及以下', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1241', '39', 'select1', '翻译', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1242', '39', 'select1', '演员', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1243', '39', 'select1', '客服', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1244', '39', 'select1', '充场/座谈会', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1245', '39', 'select1', '摄影', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1246', '39', 'select1', '网站', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1247', '39', 'select1', '会计', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1248', '39', 'select1', '模特', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1249', '39', 'select1', '礼仪', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1250', '39', 'select1', '设计', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1251', '39', 'select1', '家教', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1252', '39', 'select1', '服务员', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1253', '39', 'select1', '场地布置', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1254', '39', 'select1', '其他', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('1256', '39', 'select2', '女', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1257', '39', 'select2', '男', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1259', '40', 'select1', '旅游', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1260', '40', 'select1', '运动', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1261', '40', 'select1', '唱歌/泡吧', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1262', '40', 'select1', '创业', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1263', '40', 'select1', '做公益', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1264', '40', 'select1', '逛街', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1265', '40', 'select1', '学习', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1266', '40', 'select1', '玩桌游', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1267', '40', 'select1', '看演出', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1268', '40', 'select1', '晨跑', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1269', '40', 'select1', '广场活动', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1270', '40', 'select1', '其他', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1272', '40', 'select2', '女', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1273', '40', 'select2', '男', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1275', '41', 'select1', '女', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1276', '41', 'select1', '男', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1278', '41', 'select2', '25岁以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1279', '41', 'select2', '25岁—30岁', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1280', '41', 'select2', '30岁—40岁', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1281', '41', 'select2', '40岁—50岁', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1282', '41', 'select2', '50岁—60岁', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1283', '41', 'select2', '60岁以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1285', '42', 'select1', '女', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1286', '42', 'select1', '男', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1288', '42', 'select2', '20岁以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1289', '42', 'select2', '20岁—25岁', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1290', '42', 'select2', '25岁—30岁岁', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1291', '42', 'select2', '30岁—40岁', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1292', '42', 'select2', '40岁—50岁', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1293', '42', 'select2', '50岁以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1295', '44', 'select1', '魔术', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('1296', '44', 'select1', '古玩鉴赏', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('1297', '44', 'select1', '电器维修', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('1298', '44', 'select1', '唱歌', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('1299', '44', 'select1', '方言', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('1300', '44', 'select1', '理财/金融', '22');
INSERT INTO `bao_life_cate_attr` VALUES ('1301', '44', 'select1', '数理化', '23');
INSERT INTO `bao_life_cate_attr` VALUES ('1302', '44', 'select1', '武术', '24');
INSERT INTO `bao_life_cate_attr` VALUES ('1303', '44', 'select1', '电工', '25');
INSERT INTO `bao_life_cate_attr` VALUES ('1304', '44', 'select1', '象棋/围棋', '26');
INSERT INTO `bao_life_cate_attr` VALUES ('1305', '44', 'select1', '中医', '27');
INSERT INTO `bao_life_cate_attr` VALUES ('1306', '44', 'select1', '平面设计', '28');
INSERT INTO `bao_life_cate_attr` VALUES ('1307', '44', 'select1', '服装设计', '29');
INSERT INTO `bao_life_cate_attr` VALUES ('1308', '44', 'select1', '会计/财务', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('1309', '44', 'select1', '乐器', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('1310', '44', 'select1', '美容/按摩', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1311', '44', 'select1', '外语', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1312', '44', 'select1', '开车', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1313', '44', 'select1', '电脑', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1314', '44', 'select1', '体育/打球', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1315', '44', 'select1', '跳舞', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1316', '44', 'select1', '室内设计', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1317', '44', 'select1', '摄影', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1318', '44', 'select1', '销售', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1319', '44', 'select1', '书法绘画', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1320', '44', 'select1', '烹饪', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1321', '44', 'select1', '投资/开店', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1322', '44', 'select1', '电脑程序', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1323', '44', 'select1', '其他', '30');
INSERT INTO `bao_life_cate_attr` VALUES ('1325', '45', 'select1', '寻人启事', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1326', '45', 'select1', '寻物启事', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1327', '45', 'select1', '寻宠物启事', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1328', '45', 'select1', '老乡', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1329', '45', 'select1', '其他', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1331', '46', 'select1', '没车', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1332', '46', 'select1', '有车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1334', '46', 'select2', '长途拼车', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1335', '46', 'select2', '上下班拼车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1336', '46', 'select2', '上下学拼车', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1337', '46', 'select2', '其他拼车', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1339', '47', 'select1', '整套出租', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1340', '47', 'select1', '单间出租', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1341', '47', 'select1', '床位出租', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1343', '47', 'select2', '500元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1344', '47', 'select2', '500元—1000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1345', '47', 'select2', '1000元—1500元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1346', '47', 'select2', '1500元—2500元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1347', '47', 'select2', '2500元—3500元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1348', '47', 'select2', '3500元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1350', '47', 'select3', '4室及以上', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1351', '47', 'select3', '3室', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1352', '47', 'select3', '2室', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1353', '47', 'select3', '1室', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1355', '48', 'select1', '整套出租', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1356', '48', 'select1', '单间出租', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1357', '48', 'select1', '床位出租', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1359', '48', 'select2', '500元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1360', '48', 'select2', '500元—1000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1361', '48', 'select2', '1000元—1500元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1362', '48', 'select2', '1500元—2500元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1363', '48', 'select2', '2500元—3500元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1364', '48', 'select2', '3500元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1366', '48', 'select3', '4室及以上', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1367', '48', 'select3', '3室', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1368', '48', 'select3', '2室', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1369', '48', 'select3', '1室', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1371', '49', 'select1', '限70平米以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1372', '49', 'select1', '70平米—90平米', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1373', '49', 'select1', '90平米—110平米', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1374', '49', 'select1', '110平米—150平米', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1375', '49', 'select1', '150平米以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1377', '49', 'select2', '30万以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1378', '49', 'select2', '30万—40万', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1379', '49', 'select2', '40万—50万', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1380', '49', 'select2', '50万—70万', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1381', '49', 'select2', '70万—90万', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1382', '49', 'select2', '90万—120万', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1383', '49', 'select2', '120万以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1385', '49', 'select3', '4室及以上', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1386', '49', 'select3', '3室2厅2卫', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1387', '49', 'select3', '3室2厅1卫', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1388', '49', 'select3', '3室1厅1卫', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1389', '49', 'select3', '2室2厅2卫', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1390', '49', 'select3', '1室1厅1卫', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1391', '49', 'select3', '2室1厅1卫', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1392', '49', 'select3', '2室2厅1卫', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1393', '49', 'select3', '1室0厅1卫', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1394', '49', 'select3', '其它', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1396', '50', 'select1', '临街店铺', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1397', '50', 'select1', '购物中心', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1398', '50', 'select1', '住宅底商摊位/柜台', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1399', '50', 'select1', '写字楼底商', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1400', '50', 'select1', '其他', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1402', '50', 'select2', '50平米以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1403', '50', 'select2', '50平米—100平米', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1404', '50', 'select2', '100平米—150平米', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1405', '50', 'select2', '150平米—250平米', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1406', '50', 'select2', '250平米以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1408', '50', 'select3', '30万以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1409', '50', 'select3', '30万—50万', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1410', '50', 'select3', '50万—80万', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1411', '50', 'select3', '80万—120万', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1412', '50', 'select3', '120万—300万', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1413', '50', 'select3', '300万—500万', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1414', '50', 'select3', '500万以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1418', '51', 'select1', '餐饮美食', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1419', '51', 'select1', '空铺转让', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1420', '51', 'select1', '服饰鞋包', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1421', '51', 'select1', '休闲娱乐', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1422', '51', 'select1', '美容美发', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1423', '51', 'select1', '酒店宾馆', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1424', '51', 'select1', '超市零售', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1425', '51', 'select1', '生活服务', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1426', '51', 'select1', '汽修美容', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1427', '51', 'select1', '家居建材', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1428', '51', 'select1', '电子通讯', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1429', '51', 'select1', '教育培训', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1430', '51', 'select1', '专柜转让', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1431', '51', 'select1', '医药保健', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('1432', '51', 'select1', '其它', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('1433', '51', 'select2', '50平米以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1434', '51', 'select2', '50平米—80平米', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1435', '51', 'select2', '80平米—120平米', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1436', '51', 'select2', '120平米—200平米', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1437', '51', 'select2', '200平米以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1438', '51', 'select3', '2000元/月以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1439', '51', 'select3', '2000元/月—3000元/月', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1440', '51', 'select3', '3000元/月—5000元/月', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1441', '51', 'select3', '5000元/月—8000元/月', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1442', '51', 'select3', '8000元/月—15000元/月', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1443', '51', 'select3', '15000元/月以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1447', '53', 'select1', '纯写字楼', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1448', '53', 'select1', '商务中心', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1449', '53', 'select1', '商住楼', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1450', '53', 'select1', '园区办公', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1451', '53', 'select1', '其他', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1452', '53', 'select2', '50平米以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1453', '53', 'select2', '50平米—100平米', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1454', '53', 'select2', '100平米—150平米', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1455', '53', 'select2', '150平米—200平米', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1456', '53', 'select2', '200平米—300平米', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1457', '53', 'select2', '300平米以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1458', '53', 'select3', '50元/平米/天以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1459', '53', 'select3', '50—100元/平米/天', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1460', '53', 'select3', '100—200元/平米/天', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1461', '53', 'select3', '200—400元/平米/天', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1462', '53', 'select3', '400以上元/平米/天', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1466', '54', 'select1', '家庭旅馆', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1467', '54', 'select1', '宾馆酒店', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1468', '54', 'select1', '高档公寓', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1469', '54', 'select1', '其他', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1470', '54', 'select2', '床位', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1471', '54', 'select2', '单间', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1472', '54', 'select2', '整套', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1473', '54', 'select3', '20元/天以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1474', '54', 'select3', '20元/天—50元/天', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1475', '54', 'select3', '50元/天—100元/天', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1476', '54', 'select3', '100元/天—200元/天', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1477', '54', 'select3', '200元/天—400元/天', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1478', '54', 'select3', '400元/天以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1480', '55', 'select1', '50平米以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1481', '55', 'select1', '50平米—150平米', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1482', '55', 'select1', '150平米—300平米', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1483', '55', 'select1', '300平米—500平米', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1484', '55', 'select1', '500平米—1000平米', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1485', '55', 'select1', '1000平米—3000平米', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1486', '55', 'select1', '3000平米以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1488', '55', 'select2', '50元/平米/天以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1489', '55', 'select2', '50—100元/平米/天', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1490', '55', 'select2', '100—200元/平米/天', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1491', '55', 'select2', '200—400元/平米/天', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1492', '55', 'select2', '400元/平米/天以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1496', '56', 'select1', '纯写字楼', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1497', '56', 'select1', '商务中心', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1498', '56', 'select1', '商住楼', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1499', '56', 'select1', '园区办公', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1500', '56', 'select1', '其他', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1501', '56', 'select2', '50平米以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1502', '56', 'select2', '50平米—80平米', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1503', '56', 'select2', '80平米—120平米', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1504', '56', 'select2', '120平米—180平米', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1505', '56', 'select2', '180平米—250平米', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1506', '56', 'select2', '250平米以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1507', '56', 'select3', '30万元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1508', '56', 'select3', '30万元—50万元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1509', '56', 'select3', '50万元—100万元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1510', '56', 'select3', '100万元—200万元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1511', '56', 'select3', '200万元—300万元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1512', '56', 'select3', '300万元—500万元', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1513', '56', 'select3', '500万元以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1515', '57', 'select1', '50平米以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1516', '57', 'select1', '50平米—80平米', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1517', '57', 'select1', '80平米—120平米', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1518', '57', 'select1', '120平米—150平米', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1519', '57', 'select1', '150平米—250平米', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1520', '57', 'select1', '250平米以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1522', '57', 'select2', '30万元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1523', '57', 'select2', '30万元—50万元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1524', '57', 'select2', '50万元—80万元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1525', '57', 'select2', '80万元—120万元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1526', '57', 'select2', '120万元—200万元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1527', '57', 'select2', '200万元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1529', '57', 'select3', '4室及以上', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1530', '57', 'select3', '3室2厅2卫', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1531', '57', 'select3', '3室2厅1卫', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1532', '57', 'select3', '3室1厅1卫', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1533', '57', 'select3', '2室2厅2卫', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1534', '57', 'select3', '1室1厅1卫', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1535', '57', 'select3', '2室1厅1卫', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1536', '57', 'select3', '2室2厅1卫1', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1537', '57', 'select3', '室0厅1卫', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1538', '57', 'select3', '其它', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1540', '58', 'select1', '初中', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1541', '58', 'select1', '高中', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1542', '58', 'select1', '小学', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1543', '58', 'select1', '小升初', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1544', '58', 'select1', '初升高', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1545', '58', 'select1', '其他', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1547', '58', 'select2', '30元/小时以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1548', '58', 'select2', '30元/小时—50元/小时', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1549', '58', 'select2', '50元/小时—100元/小时', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1550', '58', 'select2', '100元/小时—200元/小时', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1551', '58', 'select2', '200元/小时以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1553', '59', 'select1', '财会/金融', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1554', '59', 'select1', '建筑', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1555', '59', 'select1', '公务员', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1556', '59', 'select1', '美容美发', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1557', '59', 'select1', '经营/管理', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1558', '59', 'select1', '技工', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1559', '59', 'select1', '教师', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1560', '59', 'select1', '心理/医疗/保健', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1561', '59', 'select1', '厨师', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1562', '59', 'select1', '外贸/采购/物流', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1563', '59', 'select1', '司法考试', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1564', '59', 'select1', '网络技术', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1565', '59', 'select1', '面点', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1566', '59', 'select1', '其他', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('1568', '59', 'select2', '200元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1569', '59', 'select2', '200元—500元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1570', '59', 'select2', '500元—1000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1571', '59', 'select2', '1000元—3000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1572', '59', 'select2', '3000元—7000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1573', '59', 'select2', '7000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1575', '60', 'select1', '自考', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1576', '60', 'select1', '专科/本科', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1577', '60', 'select1', '网络/远程', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1578', '60', 'select1', '成人高考', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1579', '60', 'select1', '在职研究生', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1580', '60', 'select1', '出国留学', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1581', '60', 'select1', '考研', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1582', '60', 'select1', '其他', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1584', '60', 'select2', '500元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1585', '60', 'select2', '500元—2000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1586', '60', 'select2', '2000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1587', '60', 'select2', '5000元—10000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1588', '60', 'select2', '10000元以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1591', '61', 'select1', '办公自动化', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1592', '61', 'select1', '网络营销', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1593', '61', 'select1', '认证培训', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1594', '61', 'select1', '网络工程/管理', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1595', '61', 'select1', '硬件技术/维修', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1596', '61', 'select1', '影视动画', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1597', '61', 'select1', '软件开发', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1598', '61', 'select1', '数据库培训', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1599', '61', 'select1', '计算机等级考试', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1600', '61', 'select1', '计算机软考', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1601', '61', 'select1', 'app开发', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1602', '61', 'select1', '游戏开发', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1603', '61', 'select1', '其他', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1604', '61', 'select2', '500元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1605', '61', 'select2', '500元—1000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1606', '61', 'select2', '1000元—3000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1607', '61', 'select2', '3000元—7000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1608', '61', 'select2', '7000元以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1611', '62', 'select1', '书法', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1612', '62', 'select1', '美术', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1613', '62', 'select1', '舞蹈', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1614', '62', 'select1', '乐器', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1615', '62', 'select1', '声乐', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1616', '62', 'select1', '表演/礼仪', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1617', '62', 'select1', '其他', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1618', '62', 'select2', '500元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1619', '62', 'select2', '500—1000', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1620', '62', 'select2', '1000—2000', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1621', '62', 'select2', '2000—4000', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1622', '62', 'select2', '4000—7000', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1623', '62', 'select2', '7000以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1626', '63', 'select1', '韩语', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1627', '63', 'select1', '英语', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1628', '63', 'select1', '日语', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1629', '63', 'select1', '俄语', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1630', '63', 'select1', '考试类英语', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1631', '63', 'select1', '西班牙语', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1632', '63', 'select1', '法语', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1633', '63', 'select1', '德语', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1634', '63', 'select1', '其他语种', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1635', '63', 'select2', '500元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1636', '63', 'select2', '500元—1000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1637', '63', 'select2', '1000元—2000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1638', '63', 'select2', '2000元—3000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1639', '63', 'select2', '3000元以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1642', '64', 'select1', '室内设计', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1643', '64', 'select1', '平面设计', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1644', '64', 'select1', '模具设计', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1645', '64', 'select1', '网页设计', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1646', '64', 'select1', '广告设计', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1647', '64', 'select1', '建筑设计', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1648', '64', 'select1', '景观/园林设计', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1649', '64', 'select1', '家具设计', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1650', '64', 'select1', '形象设计', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1651', '64', 'select1', '动漫设计', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1652', '64', 'select1', '包装设计', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1653', '64', 'select1', '服装设计', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1654', '64', 'select1', '其他', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1655', '64', 'select2', '500元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1656', '64', 'select2', '500元—1000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1657', '64', 'select2', '1000元—3000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1658', '64', 'select2', '3000元—5000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1659', '64', 'select2', '5000元—8000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1660', '64', 'select2', '8000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1662', '65', 'select1', '学前教育', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1663', '65', 'select1', '亲子教育', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1664', '65', 'select1', '胎教', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1665', '65', 'select1', '母婴护理', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1666', '65', 'select1', '其他', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1668', '65', 'select2', '500元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1669', '65', 'select2', '500元—1000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1670', '65', 'select2', '1000元—3000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1671', '65', 'select2', '3000元—5000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1672', '65', 'select2', '5000元以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1674', '66', 'select1', '跆拳道', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1675', '66', 'select1', '球类', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1676', '66', 'select1', '游泳', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1677', '66', 'select1', '健身', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1678', '66', 'select1', '武术', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1679', '66', 'select1', '瑜伽', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1680', '66', 'select1', '棋类', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1681', '66', 'select1', '其他', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1683', '66', 'select2', '500元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1684', '66', 'select2', '500元—1000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1685', '66', 'select2', '1000元—3000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1686', '66', 'select2', '3000元以上', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1688', '67', 'select1', '普工', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1689', '67', 'select1', '安装/维修工', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1690', '67', 'select1', '焊工', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1691', '67', 'select1', '电工', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1692', '67', 'select1', '装卸/搬运工', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1693', '67', 'select1', '建筑/装修工', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1694', '67', 'select1', '缝纫/制衣工', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1695', '67', 'select1', '车工/铣工/钳工', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1696', '67', 'select1', '模具工', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1697', '67', 'select1', '油漆工', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1698', '67', 'select1', '木工', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1699', '67', 'select1', '生产主管/组长', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1700', '67', 'select1', '钳工', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1701', '67', 'select1', '车间主任', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('1702', '67', 'select1', '厂长/副厂长', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('1703', '67', 'select1', '其他', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('1706', '67', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1707', '67', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1708', '67', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1709', '67', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1710', '67', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1712', '68', 'select1', '销售专员', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1713', '68', 'select1', '电话销售', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1714', '68', 'select1', '销售经理/主管', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1715', '68', 'select1', '保险/金融顾问', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1716', '68', 'select1', '跟单员/助理', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1717', '68', 'select1', '网络销售', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1718', '68', 'select1', '房产经纪人', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1719', '68', 'select1', '保险经纪人', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1720', '68', 'select1', '证券/期货/外汇经纪人', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1721', '68', 'select1', '信用卡/银行卡业务', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1722', '68', 'select1', '股票/期货操盘手', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1723', '68', 'select1', '银行会计/柜员', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1724', '68', 'select1', '证券经理/总监', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1725', '68', 'select1', '银行经理/主任', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('1726', '68', 'select1', '其他', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('1728', '68', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1729', '68', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1730', '68', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1731', '68', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1732', '68', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1733', '68', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1735', '69', 'select1', '足疗师', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1736', '69', 'select1', '按摩师', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1737', '69', 'select1', '保健师', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1738', '69', 'select1', '其他', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1740', '69', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1741', '69', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1742', '69', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1743', '69', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1744', '69', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1745', '69', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1747', '70', 'select1', '室内设计', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1748', '70', 'select1', '平面设计', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1749', '70', 'select1', '广告设计', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1750', '70', 'select1', 'CAD制图', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1751', '70', 'select1', '网页设计', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1752', '70', 'select1', '店面/陈列设计', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1753', '70', 'select1', '摄影师', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1754', '70', 'select1', '包装设计', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1755', '70', 'select1', '服装设计', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1756', '70', 'select1', '其它', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1758', '70', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1759', '70', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1760', '70', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1761', '70', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1762', '70', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1763', '70', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1765', '71', 'select1', '文员', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1766', '71', 'select1', '行政专员/助理', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1767', '71', 'select1', '前台/总机/接待', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1768', '71', 'select1', '人事专员/助理', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1769', '71', 'select1', '秘书/助理', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1770', '71', 'select1', '编辑/文案', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1771', '71', 'select1', '后勤', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1772', '71', 'select1', '招聘经理/主管', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1773', '71', 'select1', '招聘专员/助理', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1774', '71', 'select1', '行政经理/主管', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1775', '71', 'select1', '人事经理/主管', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1776', '71', 'select1', '记者/采编', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1777', '71', 'select1', '猎头', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1778', '71', 'select1', '行政总监', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('1779', '71', 'select1', '总编/副总编/主编', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('1780', '71', 'select1', '其他', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('1782', '71', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1783', '71', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1784', '71', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1785', '71', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1786', '71', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1787', '71', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1789', '72', 'select1', '营业员', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1790', '72', 'select1', '导购员', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1791', '72', 'select1', '促销员', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1792', '72', 'select1', '店长', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1793', '72', 'select1', '理货员', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1794', '72', 'select1', '其他', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1797', '72', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1798', '72', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1799', '72', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1800', '72', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1801', '72', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1802', '72', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1803', '72', 'select3', '做六休一', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1804', '72', 'select3', '做二休一', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1805', '72', 'select3', '做五休二', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1806', '72', 'select3', '做一休一', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1807', '72', 'select3', '其他', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1809', '73', 'select1', '餐厅服务员', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1810', '73', 'select1', '收银员', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1811', '73', 'select1', '大堂服务员', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1812', '73', 'select1', '客房服务员', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1813', '73', 'select1', '大堂经理/领班', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1814', '73', 'select1', '迎宾/接待', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1815', '73', 'select1', '其他', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1817', '73', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1818', '73', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1819', '73', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1820', '73', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1821', '73', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1822', '73', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1824', '74', 'select1', '厨师', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1825', '74', 'select1', '切配/厨工', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1826', '74', 'select1', '面点师', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1827', '74', 'select1', '洗碗工', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1828', '74', 'select1', '其他', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1830', '74', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1831', '74', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1832', '74', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1833', '74', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1834', '74', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1835', '74', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1837', '75', 'select1', '送货员', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1838', '75', 'select1', '快递员', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1839', '75', 'select1', '仓库管理员', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1840', '75', 'select1', '跟单员', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1841', '75', 'select1', '送餐员', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1842', '75', 'select1', '调度员', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1843', '75', 'select1', '其它', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1845', '75', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1846', '75', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1847', '75', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1848', '75', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1849', '75', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1850', '75', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1852', '76', 'select1', '900元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1853', '76', 'select1', '900元—2000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1854', '76', 'select1', '2000元—3000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1855', '76', 'select1', '3000元以上', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1857', '77', 'select1', '保洁', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1858', '77', 'select1', '保姆', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1859', '77', 'select1', '钟点工', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1860', '77', 'select1', '陪护', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1861', '77', 'select1', '育婴师', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1862', '77', 'select1', '月嫂', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1863', '77', 'select1', '其它', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1865', '77', 'select2', '900元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1866', '77', 'select2', '900元—2000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1867', '77', 'select2', '2000元—3000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1868', '77', 'select2', '3000元以上', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1870', '78', 'select1', '货车', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1871', '78', 'select1', '出租车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1872', '78', 'select1', '轿车', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1873', '78', 'select1', '面包车', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1874', '78', 'select1', '客车', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1875', '78', 'select1', '挖掘机', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1876', '78', 'select1', '叉车/铲车/吊车', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1877', '78', 'select1', '驾校教练/陪驾', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1878', '78', 'select1', '其他', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1880', '78', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1881', '78', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1882', '78', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1883', '78', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1884', '78', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1885', '78', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1887', '79', 'select1', '中小学教师', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1888', '79', 'select1', '家教', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1889', '79', 'select1', '早教', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1890', '79', 'select1', '文艺/体育教师', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1891', '79', 'select1', '企业培训', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1892', '79', 'select1', '运动/健身教练', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1893', '79', 'select1', '校长', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1894', '79', 'select1', '瑜伽/舞蹈老师', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1895', '79', 'select1', '其他', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1897', '79', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1898', '79', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1899', '79', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1900', '79', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1901', '79', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1902', '79', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1904', '80', 'select1', '会计', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1905', '80', 'select1', '财务', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1906', '80', 'select1', '出纳', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1907', '80', 'select1', '统计员', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1908', '80', 'select1', '审计', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1909', '80', 'select1', '税务', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1910', '80', 'select1', '其他', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1912', '80', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1913', '80', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1914', '80', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1915', '80', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1916', '80', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1917', '80', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1919', '81', 'select1', '淘宝美工', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1920', '81', 'select1', '淘宝客服', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1921', '81', 'select1', '网店店长', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1922', '81', 'select1', '店铺运营/推广', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1923', '81', 'select1', '其它', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1925', '81', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1926', '81', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1927', '81', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1928', '81', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1929', '81', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1930', '81', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1932', '81', 'select3', '做六休一', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1933', '81', 'select3', '做二休一', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1934', '81', 'select3', '做五休二', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1935', '81', 'select3', '做一休一', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1936', '81', 'select3', '其他', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1938', '82', 'select1', '客服专员/助理', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1939', '82', 'select1', '客服经理/主管', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1940', '82', 'select1', '其他', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1942', '82', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1943', '82', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1944', '82', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1945', '82', 'select2', '5000元以上', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1947', '83', 'select1', '美发师', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1948', '83', 'select1', '化妆师', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1949', '83', 'select1', '美容师', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1950', '83', 'select1', '美发助理/学徒', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1951', '83', 'select1', '美容助理/学徒', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1952', '83', 'select1', '美甲师', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1953', '83', 'select1', '洗头工', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1954', '83', 'select1', '其它', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1956', '83', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1957', '83', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1958', '83', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1959', '83', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1960', '83', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1961', '83', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1963', '84', 'select1', '技术支持/维护', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1964', '84', 'select1', '游戏设计/开发', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1965', '84', 'select1', '网络工程师', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1966', '84', 'select1', '网站运营', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1967', '84', 'select1', '网站编辑', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1968', '84', 'select1', '技术专员/助理', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1969', '84', 'select1', '程序员', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('1970', '84', 'select1', '网络管理员', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('1971', '84', 'select1', '硬件工程师', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('1972', '84', 'select1', '技术总监/经理', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('1973', '84', 'select1', '软件工程师', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('1974', '84', 'select1', '产品经理/专员', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('1975', '84', 'select1', '测试员', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('1976', '84', 'select1', '通信工程师', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('1977', '84', 'select1', '架构师', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('1978', '84', 'select1', '数据库管理', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('1979', '84', 'select1', '其他', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('1981', '84', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1982', '84', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1983', '84', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1984', '84', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1985', '84', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1986', '84', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('1988', '84', 'select3', '无经验', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1989', '84', 'select3', '一年经验', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1990', '84', 'select3', '二年经验', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1991', '84', 'select3', '三年经验', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1992', '84', 'select3', '三年以上经验', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1994', '85', 'select1', '市场专员/助理', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('1995', '85', 'select1', '营销经理', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('1996', '85', 'select1', '市场经理/主管', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('1997', '85', 'select1', '客户经理/主管', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('1998', '85', 'select1', '公关专员/助理', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('1999', '85', 'select1', '公关经理/主管', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2000', '85', 'select1', '大客户经理', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2001', '85', 'select1', '其他', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2003', '85', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2004', '85', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2005', '85', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2006', '85', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2007', '85', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2008', '85', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2010', '87', 'select1', '德语', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2011', '87', 'select1', '英语', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2012', '87', 'select1', '韩语', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2013', '87', 'select1', '日语', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2014', '87', 'select1', '俄语', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2015', '87', 'select1', '西班牙语', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2016', '87', 'select1', '法语', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2017', '87', 'select1', '其它', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2019', '87', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2020', '87', 'select2', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2021', '87', 'select2', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2022', '87', 'select2', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2023', '87', 'select2', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2024', '87', 'select2', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2026', '89', 'select1', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2027', '89', 'select1', '2000元—3000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2028', '89', 'select1', '3000元—5000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2029', '89', 'select1', '5000元—8000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2030', '89', 'select1', '8000元—12000元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2031', '89', 'select1', '12000元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2033', '90', 'select1', '产品代理', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2034', '90', 'select1', '服装箱包', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2035', '90', 'select1', '餐饮加盟', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2036', '90', 'select1', '教育培训', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2037', '90', 'select1', '建材家居', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2038', '90', 'select1', '干洗加盟', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2039', '90', 'select1', '美容保健', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2040', '90', 'select1', '快递物流', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2041', '90', 'select1', '礼品饰品', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2042', '90', 'select1', '农业养殖', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2043', '90', 'select1', '母婴用品', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2044', '90', 'select1', '其他', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('2046', '91', 'select1', '无抵押贷款', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2047', '91', 'select1', '企业/个体户贷款', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2048', '91', 'select1', '汽车抵押贷款', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2049', '91', 'select1', '房产抵押贷款', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2050', '91', 'select1', '买房贷款', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2051', '91', 'select1', '买车贷款', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2052', '91', 'select1', '其它', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2054', '92', 'select1', '空调维修', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2055', '92', 'select1', '热水器维修', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2056', '92', 'select1', '空调移机', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2057', '92', 'select1', '洗衣机维修', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2058', '92', 'select1', '冰箱维修', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2059', '92', 'select1', '电视机维修', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2060', '92', 'select1', '饮水机维修', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2061', '92', 'select1', '电饭煲维修', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2062', '92', 'select1', '抽油烟机维修', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2063', '92', 'select1', '电磁炉维修', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2064', '92', 'select1', '其他', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2066', '93', 'select1', '吊顶', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2067', '93', 'select1', '门窗', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2068', '93', 'select1', '涂料', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2069', '93', 'select1', '钢材', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2070', '93', 'select1', '五金', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2071', '93', 'select1', '墙纸', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2072', '93', 'select1', '地板', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2073', '93', 'select1', '油漆', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2074', '93', 'select1', '卫浴洁具', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2075', '93', 'select1', '玻璃', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2076', '93', 'select1', '瓷砖', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2077', '93', 'select1', '窗帘', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('2078', '93', 'select1', '灯具', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('2079', '93', 'select1', '水泥', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('2080', '93', 'select1', '橱柜', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('2081', '93', 'select1', '厨卫电器', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('2082', '93', 'select1', '暖气地暖', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('2083', '93', 'select1', '其它', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('2085', '94', 'select1', '公司注册', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2086', '94', 'select1', '工商年检', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2087', '94', 'select1', '商标注册', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2088', '94', 'select1', '公司转让', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2089', '94', 'select1', '专利注册', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2090', '94', 'select1', '海外公司注册', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2091', '94', 'select1', '专项审批', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2092', '94', 'select1', '香港公司注册', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2093', '94', 'select1', '公司注销', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2094', '94', 'select1', '验资开户', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2095', '94', 'select1', '资质认证', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2096', '94', 'select1', '外资公司注册', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('2097', '94', 'select1', '其它', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('2099', '95', 'select1', '新房装修', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2100', '95', 'select1', '店铺装修', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2101', '95', 'select1', '办公室/写字楼装修', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2102', '95', 'select1', '二手房装修', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2103', '95', 'select1', '厂房装修', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2104', '95', 'select1', '拆旧', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2105', '95', 'select1', '学校/幼儿园装修', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2106', '95', 'select1', '商场/超市装修', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2107', '95', 'select1', '酒店装修', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2108', '95', 'select1', '其他', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2110', '96', 'select1', '理财产品', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2111', '96', 'select1', '期货', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2112', '96', 'select1', '股票', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2113', '96', 'select1', '黄金', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2114', '96', 'select1', '证券', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2115', '96', 'select1', '信用卡', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2116', '96', 'select1', '基金', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2117', '96', 'select1', '外汇', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2118', '96', 'select1', '保险', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2119', '96', 'select1', '其它', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2121', '97', 'select1', '会计', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2122', '97', 'select1', '审计', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2124', '98', 'select1', '电脑维修', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2125', '98', 'select1', '笔记本维修', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2126', '98', 'select1', '网络布线', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2127', '98', 'select1', 'IT外包', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2128', '98', 'select1', '打印机维修', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2129', '98', 'select1', '数据恢复', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2130', '98', 'select1', '传真机维修', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2131', '98', 'select1', '安防监控', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2132', '98', 'select1', 'ipad/平板电脑维修', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2133', '98', 'select1', '机房建设', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2134', '98', 'select1', '其它', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2136', '99', 'select1', '货运', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2137', '99', 'select1', '快递', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2138', '99', 'select1', '仓储', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2139', '99', 'select1', '行李托运', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2140', '99', 'select1', '进出口报关', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2141', '99', 'select1', '其它', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2143', '100', 'select1', '农产品加工/代理', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2144', '100', 'select1', '农作物', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2145', '100', 'select1', '畜禽养殖', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2146', '100', 'select1', '水产', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2147', '100', 'select1', '园林花卉', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2148', '100', 'select1', '动植物种苗', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2149', '100', 'select1', '农机具/设备', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2150', '100', 'select1', '饲料/兽药', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2151', '100', 'select1', '农药/肥料', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2152', '100', 'select1', '其它', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2154', '101', 'select1', '活动策划', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2155', '101', 'select1', '广告策划', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2156', '101', 'select1', '平面设计', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2157', '101', 'select1', '网页设计', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2158', '101', 'select1', 'Logo设计/VI设计', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2159', '101', 'select1', '工业设计', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2160', '101', 'select1', '景观设计', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2161', '101', 'select1', '影视/动画制作', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2162', '101', 'select1', '室内设计', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2163', '101', 'select1', '名片设计', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2164', '101', 'select1', '服装设计', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2165', '101', 'select1', '其它', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('2167', '102', 'select1', '管道疏通', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2168', '102', 'select1', '下水道疏通', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2169', '102', 'select1', '马桶疏通', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2170', '102', 'select1', '化粪池疏通', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2171', '102', 'select1', '管道清淤', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2172', '102', 'select1', '打捞', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2174', '103', 'select1', '带司机租车', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2175', '103', 'select1', '商务租车', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2176', '103', 'select1', '旅游租车', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2177', '103', 'select1', '婚车', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2178', '103', 'select1', '豪华车', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2179', '103', 'select1', '货车', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2180', '103', 'select1', '其他', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2182', '103', 'select2', '100元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2183', '103', 'select2', '200元—300元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2184', '103', 'select2', '300元—500元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2185', '103', 'select2', '500元—800元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2186', '103', 'select2', '800元—1200元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2187', '103', 'select2', '1200元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2189', '104', 'select1', '周边游', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2190', '104', 'select1', '农家乐', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2191', '104', 'select1', '旅行社', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2192', '104', 'select1', '导游', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2193', '104', 'select1', '港澳台游', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2194', '104', 'select1', '温泉', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2195', '104', 'select1', '出国游', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2196', '104', 'select1', '其它', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2198', '105', 'select1', '婚纱摄影', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2199', '105', 'select1', '艺术照', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2200', '105', 'select1', '写真', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2201', '105', 'select1', '摄像', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2202', '105', 'select1', '商业摄影', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2203', '105', 'select1', '儿童摄影', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2204', '105', 'select1', '其他', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2206', '106', 'select1', '日常保洁', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2207', '106', 'select1', '擦玻璃', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2208', '106', 'select1', '开荒保洁', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2209', '106', 'select1', '抽油烟机清洗', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2210', '106', 'select1', '地毯清洗', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2211', '106', 'select1', '外墙清洗', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2212', '106', 'select1', '干洗', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2213', '106', 'select1', '石材翻新/养护', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2214', '106', 'select1', '地板打蜡', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2215', '106', 'select1', '沙发清洗', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2216', '106', 'select1', '空调清洗', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2217', '106', 'select1', '灯具清洗', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('2218', '106', 'select1', '空气净化', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('2219', '106', 'select1', '瓷砖美缝', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('2220', '106', 'select1', '其他', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('2222', '107', 'select1', '100元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2223', '107', 'select1', '100元—200元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2224', '107', 'select1', '200元—300元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2225', '107', 'select1', '300元—500元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2226', '107', 'select1', '500元以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2228', '109', 'select1', 'C1(手动档汽车)', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2229', '109', 'select1', 'C2(自动挡汽车)', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2230', '109', 'select1', 'B1(中型客车)', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2231', '109', 'select1', 'B2(大型货车)', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2232', '109', 'select1', 'E(二轮摩托车)', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2233', '109', 'select1', 'F(轻便摩托车)', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2234', '109', 'select1', 'D(三轮摩托车)', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2235', '109', 'select1', 'A2(牵引车)', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2236', '109', 'select1', 'C3(载货汽车)', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2237', '109', 'select1', 'C4(三轮汽车)', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2238', '109', 'select1', 'C5(残疾人专用)', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2239', '109', 'select1', 'A(大型客车)', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('2240', '109', 'select1', 'A3(城市公交车)', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('2242', '109', 'select2', '2000元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2243', '109', 'select2', '2000元—5000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2244', '109', 'select2', '5000元—8000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2245', '109', 'select2', '8000元以上', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2247', '111', 'select1', '健身', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2248', '111', 'select1', '瑜伽', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2249', '111', 'select1', '按摩', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2250', '111', 'select1', '足疗', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2251', '111', 'select1', '会所', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2252', '111', 'select1', 'KTV', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2253', '111', 'select1', '洗浴', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2254', '111', 'select1', '酒吧', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2255', '111', 'select1', '桌游', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2256', '111', 'select1', '演唱会', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2257', '111', 'select1', '演出票务', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2258', '111', 'select1', '电影票', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('2259', '111', 'select1', '其他', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('2261', '112', 'select1', '印刷', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2262', '112', 'select1', '喷绘', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2263', '112', 'select1', '名片', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2264', '112', 'select1', '制卡', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2265', '112', 'select1', '灯箱', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2266', '112', 'select1', '易拉宝', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2267', '112', 'select1', '其他', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2269', '113', 'select1', '签证', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2270', '113', 'select1', '机票', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2271', '113', 'select1', '移民', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2273', '114', 'select1', '礼品定制', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2274', '114', 'select1', '商务礼品', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2275', '114', 'select1', '其它', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2277', '115', 'select1', '水电维修', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2278', '115', 'select1', '马桶维修', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2279', '115', 'select1', '防水补漏', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2280', '115', 'select1', '淋浴房维修', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2281', '115', 'select1', '家具维修', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2282', '115', 'select1', '门窗维修', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2283', '115', 'select1', '沙发维修', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2284', '115', 'select1', '其他', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2286', '116', 'select1', '美容', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2287', '116', 'select1', '减肥瘦身', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2288', '116', 'select1', '祛痘/祛斑', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2289', '116', 'select1', 'spa', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2290', '116', 'select1', '丰胸', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2291', '116', 'select1', '美发', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2292', '116', 'select1', '除皱', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2293', '116', 'select1', '脱毛', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2294', '116', 'select1', '美甲', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2297', '116', 'select2', '100元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2298', '116', 'select2', '100元—200元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2299', '116', 'select2', '200元—400元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2300', '116', 'select2', '400元—800元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2301', '116', 'select2', '800元—1200元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2302', '116', 'select2', '1200元—1500元', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2303', '116', 'select2', '1500元以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2305', '117', 'select1', '家政公司', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2306', '117', 'select1', '保姆', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2307', '117', 'select1', '东家', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2308', '117', 'select1', '其它', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2310', '117', 'select2', '钟点工', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2311', '117', 'select2', '做饭', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2312', '117', 'select2', '保姆', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2313', '117', 'select2', '照顾孩子', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2314', '117', 'select2', '住家阿姨', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2315', '117', 'select2', '照顾老人', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2316', '117', 'select2', '育婴师/育儿嫂', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2317', '117', 'select2', '月嫂', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2318', '117', 'select2', '催乳师', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2319', '117', 'select2', '护工/陪护', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2320', '117', 'select2', '其它', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2322', '118', 'select1', '网站建设', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2323', '118', 'select1', '网站推广', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2324', '118', 'select1', '网站维护/外包', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2325', '118', 'select1', '域名注册', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2326', '118', 'select1', '服务器', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2327', '118', 'select1', '企业邮箱', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2328', '118', 'select1', '其它', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2330', '119', 'select1', '绿植/盆栽', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2331', '119', 'select1', '园艺用品', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2332', '119', 'select1', '鲜花', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2333', '119', 'select1', '其它', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2335', '120', 'select1', '新娘化妆', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2336', '120', 'select1', '婚车租赁', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2337', '120', 'select1', '婚庆公司', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2338', '120', 'select1', '婚礼跟拍', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2339', '120', 'select1', '婚纱礼服', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2340', '120', 'select1', '司仪', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2341', '120', 'select1', '婚礼用品', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2342', '120', 'select1', '婚宴', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2343', '120', 'select1', '喜糖', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2344', '120', 'select1', '婚戒首饰', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2345', '120', 'select1', '其他', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2347', '120', 'select2', '500元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2348', '120', 'select2', '500元—1000元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2349', '120', 'select2', '1000元—2000元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2350', '120', 'select2', '2000元—4000元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2351', '120', 'select2', '4000元以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2353', '121', 'select1', '庆典公司', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2354', '121', 'select1', '场地布置', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2355', '121', 'select1', '灯光音响', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2356', '121', 'select1', '礼仪模特', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2357', '121', 'select1', '乐队演出', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2358', '121', 'select1', '司仪', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2359', '121', 'select1', '化妆', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2360', '121', 'select1', '其它', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2362', '122', 'select1', '债务纠纷', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2363', '122', 'select1', '合同纠纷', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2364', '122', 'select1', '交通事故', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2365', '122', 'select1', '离婚', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2366', '122', 'select1', '刑事辩护', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2367', '122', 'select1', '知识产权', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2368', '122', 'select1', '房产纠纷', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2369', '122', 'select1', '法律援助', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2370', '122', 'select1', '劳动纠纷', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2371', '122', 'select1', '其它', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2373', '123', 'select1', '快餐', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2374', '123', 'select1', '送水', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2375', '123', 'select1', '食材配送', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2376', '123', 'select1', '宴会外卖', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2377', '123', 'select1', '承包食堂', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2378', '123', 'select1', '其它', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2380', '124', 'select1', '星级酒店', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2381', '124', 'select1', '经济型酒店', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2382', '124', 'select1', '宾馆', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2383', '124', 'select1', '青年旅舍', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2384', '124', 'select1', '中等', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2385', '124', 'select1', '度假村', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2386', '124', 'select1', '连锁酒店', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2387', '124', 'select1', '其它', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2389', '124', 'select2', '100元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2390', '124', 'select2', '100元—200元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2391', '124', 'select2', '200元—300元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2392', '124', 'select2', '300元—500元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2393', '124', 'select2', '500元—800元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2394', '124', 'select2', '800元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2396', '125', 'select1', '购物', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2397', '125', 'select1', '休闲娱乐', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2398', '125', 'select1', '论坛', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2399', '125', 'select1', '新闻', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2400', '125', 'select1', '交通地图', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2401', '125', 'select1', '游戏', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2402', '125', 'select1', 'KTV', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2403', '125', 'select1', '会所', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2404', '125', 'select1', '茶庄', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2405', '125', 'select1', '其他', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2407', '126', 'select1', '笔译', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2408', '126', 'select1', '口译', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2409', '126', 'select1', '速记', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2410', '126', 'select1', '同声传译', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2411', '126', 'select1', '其它', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2413', '127', 'select1', '面部整形', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2414', '127', 'select1', '眼部整形', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2415', '127', 'select1', '鼻部整形', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2416', '127', 'select1', '唇部整形', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2417', '127', 'select1', '牙齿美容', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2418', '127', 'select1', '皮肤美容', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2419', '127', 'select1', '胸部整形', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2420', '127', 'select1', '微整形', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2421', '127', 'select1', '吸脂溶脂减肥', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2422', '127', 'select1', '私密整形', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2423', '127', 'select1', '激光脱毛', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2424', '127', 'select1', '假体取出', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('2425', '127', 'select1', '其他', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('2427', '128', 'select1', '肾病科', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2428', '128', 'select1', '皮肤病科', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2429', '128', 'select1', '风湿科', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2430', '128', 'select1', '眼科', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2431', '128', 'select1', '骨科', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2432', '128', 'select1', '儿科', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2433', '128', 'select1', '泌尿科', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2434', '128', 'select1', '肝病科', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2435', '128', 'select1', '不孕不育', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2436', '128', 'select1', '妇科', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2437', '128', 'select1', '性交障碍', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2438', '128', 'select1', '性病科', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('2439', '128', 'select1', '内分泌科', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('2440', '128', 'select1', '肿瘤科', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('2441', '128', 'select1', '男科', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('2442', '128', 'select1', '其它', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('2444', '130', 'select1', '摄影', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2445', '130', 'select1', '翻译', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2446', '130', 'select1', '装卸工', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2447', '130', 'select1', '地勤', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2448', '130', 'select1', '杂务', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2449', '130', 'select1', '其他', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2451', '130', 'select2', '100元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2452', '130', 'select2', '100元—200元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2453', '130', 'select2', '200元—300元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2454', '130', 'select2', '300元—500元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2455', '130', 'select2', '500元以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2457', '131', 'select1', '中学理科', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2458', '131', 'select1', '小学英语', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2459', '131', 'select1', '中学文科', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2460', '131', 'select1', '文艺体育', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2461', '131', 'select1', '奥数', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2462', '131', 'select1', '其他', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2464', '131', 'select2', '30元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2465', '131', 'select2', '30元—50元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2466', '131', 'select2', '50元—70元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2467', '131', 'select2', '70元—100元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2468', '131', 'select2', '100元—150元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2469', '131', 'select2', '150元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2471', '132', 'select1', '派发', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2472', '132', 'select1', '促销', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2473', '132', 'select1', '其它 ', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2475', '132', 'select2', '10元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2476', '132', 'select2', '10元—20元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2477', '132', 'select2', '20元—30元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2478', '132', 'select2', '30元—70元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2479', '132', 'select2', '70元以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2481', '133', 'select1', '礼仪', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2482', '133', 'select1', '模特', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2483', '133', 'select1', '其它', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2485', '133', 'select2', '20元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2486', '133', 'select2', '20元—30元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2487', '133', 'select2', '30元—60元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2488', '133', 'select2', '60元—100元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2489', '133', 'select2', '100元—150元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2490', '133', 'select2', '150元以上', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2492', '134', 'select1', '10元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2493', '134', 'select1', '10元—20元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2494', '134', 'select1', '20元—40元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2495', '134', 'select1', '40元—70元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2496', '134', 'select1', '70元以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2498', '135', 'select1', '10元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2499', '135', 'select1', '10元—20元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2500', '135', 'select1', '20元—30元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2501', '135', 'select1', '30元以上', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2503', '135', 'select2', '上午', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2504', '135', 'select2', '中午', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2505', '135', 'select2', '下午', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2506', '135', 'select2', '晚间', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2507', '135', 'select2', '晚9点以后', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2508', '135', 'select2', '其它', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2510', '136', 'select1', '设计', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2511', '136', 'select1', '网站', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2512', '136', 'select1', '其它', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2514', '136', 'select2', '50元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2515', '136', 'select2', '50—100', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2516', '136', 'select2', '100—200', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2517', '136', 'select2', '200以上', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2519', '137', 'select1', '50元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2520', '137', 'select1', '50元—100元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2521', '137', 'select1', '100元—200元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2522', '137', 'select1', '200元以上', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2524', '138', 'select1', '50元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2525', '138', 'select1', '50元—100元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2526', '138', 'select1', '100元—200元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2527', '138', 'select1', '200元以上', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2529', '139', 'select1', '50元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2530', '139', 'select1', '50元—100元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2531', '139', 'select1', '100元—200元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2532', '139', 'select1', '200元—500元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2533', '139', 'select1', '500元以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2535', '140', 'select1', '50元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2536', '140', 'select1', '50元—100元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2537', '140', 'select1', '100元—200元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2538', '140', 'select1', '200元以上', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2540', '141', 'select1', '50元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2541', '141', 'select1', '50元—100元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2542', '141', 'select1', '100元—200元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2543', '141', 'select1', '200元以上', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2545', '142', 'select1', '泰迪', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2546', '142', 'select1', '金毛', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2547', '142', 'select1', '比熊', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2548', '142', 'select1', '萨摩耶', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2549', '142', 'select1', '阿拉斯加', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2550', '142', 'select1', '博美', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2551', '142', 'select1', '哈士奇', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2552', '142', 'select1', '拉布拉多', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2553', '142', 'select1', '德国牧羊犬', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2554', '142', 'select1', '松狮', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2555', '142', 'select1', '秋田犬', '12');
INSERT INTO `bao_life_cate_attr` VALUES ('2556', '142', 'select1', '吉娃娃', '13');
INSERT INTO `bao_life_cate_attr` VALUES ('2557', '142', 'select1', '藏獒', '14');
INSERT INTO `bao_life_cate_attr` VALUES ('2558', '142', 'select1', '雪纳瑞', '15');
INSERT INTO `bao_life_cate_attr` VALUES ('2559', '142', 'select1', '贵宾', '16');
INSERT INTO `bao_life_cate_attr` VALUES ('2560', '142', 'select1', '边境牧羊犬', '17');
INSERT INTO `bao_life_cate_attr` VALUES ('2561', '142', 'select1', '巴哥犬', '18');
INSERT INTO `bao_life_cate_attr` VALUES ('2562', '142', 'select1', '古牧', '19');
INSERT INTO `bao_life_cate_attr` VALUES ('2563', '142', 'select1', '罗威纳', '20');
INSERT INTO `bao_life_cate_attr` VALUES ('2564', '142', 'select1', '银狐犬', '21');
INSERT INTO `bao_life_cate_attr` VALUES ('2565', '142', 'select1', '杜宾犬', '22');
INSERT INTO `bao_life_cate_attr` VALUES ('2566', '142', 'select1', '京巴', '23');
INSERT INTO `bao_life_cate_attr` VALUES ('2567', '142', 'select1', '比特', '24');
INSERT INTO `bao_life_cate_attr` VALUES ('2568', '142', 'select1', '苏格兰牧羊犬', '25');
INSERT INTO `bao_life_cate_attr` VALUES ('2569', '142', 'select1', '高加索犬', '26');
INSERT INTO `bao_life_cate_attr` VALUES ('2570', '142', 'select1', '灵缇犬', '27');
INSERT INTO `bao_life_cate_attr` VALUES ('2571', '142', 'select1', '西高地', '28');
INSERT INTO `bao_life_cate_attr` VALUES ('2572', '142', 'select1', '马犬', '29');
INSERT INTO `bao_life_cate_attr` VALUES ('2573', '142', 'select1', '喜乐蒂', '30');
INSERT INTO `bao_life_cate_attr` VALUES ('2574', '142', 'select1', '牛头梗', '31');
INSERT INTO `bao_life_cate_attr` VALUES ('2575', '142', 'select1', '雪橇犬', '32');
INSERT INTO `bao_life_cate_attr` VALUES ('2576', '142', 'select1', '西施犬', '33');
INSERT INTO `bao_life_cate_attr` VALUES ('2577', '142', 'select1', '大白熊', '34');
INSERT INTO `bao_life_cate_attr` VALUES ('2578', '142', 'select1', '卡斯罗', '35');
INSERT INTO `bao_life_cate_attr` VALUES ('2579', '142', 'select1', '沙皮犬', '36');
INSERT INTO `bao_life_cate_attr` VALUES ('2580', '142', 'select1', '蝴蝶犬', '37');
INSERT INTO `bao_life_cate_attr` VALUES ('2581', '142', 'select1', '伯恩山犬', '38');
INSERT INTO `bao_life_cate_attr` VALUES ('2582', '142', 'select1', '斗牛犬', '39');
INSERT INTO `bao_life_cate_attr` VALUES ('2583', '142', 'select1', '万能梗', '40');
INSERT INTO `bao_life_cate_attr` VALUES ('2584', '142', 'select1', '小鹿犬', '41');
INSERT INTO `bao_life_cate_attr` VALUES ('2585', '142', 'select1', '猎狐梗', '42');
INSERT INTO `bao_life_cate_attr` VALUES ('2586', '142', 'select1', '威玛烈犬', '43');
INSERT INTO `bao_life_cate_attr` VALUES ('2587', '142', 'select1', '柴犬', '44');
INSERT INTO `bao_life_cate_attr` VALUES ('2588', '142', 'select1', '斑点狗', '45');
INSERT INTO `bao_life_cate_attr` VALUES ('2589', '142', 'select1', '巴吉度猎犬', '46');
INSERT INTO `bao_life_cate_attr` VALUES ('2590', '142', 'select1', '阿富汗猎犬', '47');
INSERT INTO `bao_life_cate_attr` VALUES ('2591', '142', 'select1', '格力犬', '48');
INSERT INTO `bao_life_cate_attr` VALUES ('2592', '142', 'select1', '比格犬', '49');
INSERT INTO `bao_life_cate_attr` VALUES ('2593', '142', 'select1', '大丹犬', '50');
INSERT INTO `bao_life_cate_attr` VALUES ('2594', '142', 'select1', '腊肠犬', '51');
INSERT INTO `bao_life_cate_attr` VALUES ('2595', '142', 'select1', '可卡犬', '52');
INSERT INTO `bao_life_cate_attr` VALUES ('2596', '142', 'select1', '柯基犬', '53');
INSERT INTO `bao_life_cate_attr` VALUES ('2597', '142', 'select1', '圣伯纳', '54');
INSERT INTO `bao_life_cate_attr` VALUES ('2598', '142', 'select1', '其他', '55');
INSERT INTO `bao_life_cate_attr` VALUES ('2600', '142', 'select2', '100元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2601', '142', 'select2', '100元—300元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2602', '142', 'select2', '300元—500元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2603', '142', 'select2', '500元—800元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2604', '142', 'select2', '800元—1200元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2605', '142', 'select2', '1200元—2000元', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2606', '142', 'select2', '2000元以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2608', '142', 'select3', '公', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2609', '142', 'select3', '牧', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2611', '143', 'select1', '其他水族', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2612', '143', 'select1', '奇石盆景', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2613', '143', 'select1', '玩赏鸟', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2614', '143', 'select1', '观赏鱼', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2615', '143', 'select1', '其他', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2617', '143', 'select2', '100元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2618', '143', 'select2', '100元—300元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2619', '143', 'select2', '300元—500元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2620', '143', 'select2', '500元—800元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2621', '143', 'select2', '800元—1200元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2622', '143', 'select2', '1200元—2000元', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2623', '143', 'select2', '2000元以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2625', '144', 'select1', '赠送', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2626', '144', 'select1', '求赠', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2628', '144', 'select2', '狗', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2629', '144', 'select2', '猫', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2630', '144', 'select2', '鼠', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2631', '144', 'select2', '兔', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2632', '144', 'select2', '鸟', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2633', '144', 'select2', '水族', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2634', '144', 'select2', '蛇', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2635', '144', 'select2', '猪', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2636', '144', 'select2', '其他', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2638', '145', 'select1', '蓝猫', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2639', '145', 'select1', '短毛猫', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2640', '145', 'select1', '折耳猫', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2641', '145', 'select1', '加菲猫', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2642', '145', 'select1', '虎斑猫', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2643', '145', 'select1', '金吉拉', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2644', '145', 'select1', '波斯猫', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2645', '145', 'select1', '暹罗猫', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2646', '145', 'select1', '豹猫', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2647', '145', 'select1', '其他', '11');
INSERT INTO `bao_life_cate_attr` VALUES ('2649', '145', 'select2', '100元以下', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2650', '145', 'select2', '100元—300元', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2651', '145', 'select2', '300元—500元', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2652', '145', 'select2', '500元—800元', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2653', '145', 'select2', '800元—1200元', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2654', '145', 'select2', '1200元—2000元', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2655', '145', 'select2', '2000元以上', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2657', '145', 'select3', '公', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2658', '145', 'select3', '母', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2660', '146', 'select1', '配种', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2661', '146', 'select1', '训练', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2662', '146', 'select1', '寄养', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2663', '146', 'select1', '医院', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2664', '146', 'select1', '美容', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2665', '146', 'select1', '托运', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2666', '146', 'select1', '临时照看', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2667', '146', 'select1', '其他', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2669', '147', 'select1', '宠物衣服', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2670', '147', 'select1', '宠物除毛器', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2671', '147', 'select1', '宠物粮', '4');
INSERT INTO `bao_life_cate_attr` VALUES ('2672', '147', 'select1', '宠物链', '5');
INSERT INTO `bao_life_cate_attr` VALUES ('2673', '147', 'select1', '宠物鞋', '6');
INSERT INTO `bao_life_cate_attr` VALUES ('2674', '147', 'select1', '宠物配饰', '7');
INSERT INTO `bao_life_cate_attr` VALUES ('2675', '147', 'select1', '宠物其它应用', '8');
INSERT INTO `bao_life_cate_attr` VALUES ('2676', '147', 'select1', '宠物其它食品', '9');
INSERT INTO `bao_life_cate_attr` VALUES ('2677', '147', 'select1', '其它', '10');
INSERT INTO `bao_life_cate_attr` VALUES ('2679', '147', 'select2', '供应', '2');
INSERT INTO `bao_life_cate_attr` VALUES ('2680', '147', 'select2', '求购', '3');
INSERT INTO `bao_life_cate_attr` VALUES ('2681', '147', 'select3', '测试1', '100');
INSERT INTO `bao_life_cate_attr` VALUES ('2682', '147', 'select3', '测试2', '100');
INSERT INTO `bao_life_cate_attr` VALUES ('2683', '147', 'select3', '测试3', '100');

-- ----------------------------
-- Table structure for `bao_life_details`
-- ----------------------------
DROP TABLE IF EXISTS `bao_life_details`;
CREATE TABLE `bao_life_details` (
  `life_id` int(11) NOT NULL DEFAULT '0',
  `details` text,
  PRIMARY KEY (`life_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_life_details
-- ----------------------------
INSERT INTO `bao_life_details` VALUES ('65', '<p>你好，这个是我PC发布的分类信息测试下！</p>');
INSERT INTO `bao_life_details` VALUES ('66', '没了');
INSERT INTO `bao_life_details` VALUES ('67', '没了');
INSERT INTO `bao_life_details` VALUES ('68', '突突兔兔图');
INSERT INTO `bao_life_details` VALUES ('69', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0015.gif\" _src=\"http://img.baidu.com/hi/jx2/j_0015.gif\"/>测试了测试了测试了测试了</p>');
INSERT INTO `bao_life_details` VALUES ('70', '<p><img src=\"http://www.haoid.cn/attachs/editor/2016/03/10/thumb_56e1865cde3e0.jpg\" _src=\"http://www.haoid.cn/attachs/editor/2016/03/10/thumb_56e1865cde3e0.jpg\"/></p><p><img src=\"http://www.haoid.cn/attachs/editor/2016/03/10/thumb_56e18667dbff5.jpg\" _src=\"http://www.haoid.cn/attachs/editor/2016/03/10/thumb_56e18667dbff5.jpg\"/></p><p></p>');
INSERT INTO `bao_life_details` VALUES ('1', '<p>怎么样，这个分类信息不错吧！</p><p><span style=\"text-decoration:line-through;\"><img src=\"http://www.haoid.cn/attachs/editor/2016/05/25/thumb_57450f09a763d.jpg\" _src=\"http://www.haoid.cn/attachs/editor/2016/05/25/thumb_57450f09a763d.jpg\"/></span><br/></p>');
INSERT INTO `bao_life_details` VALUES ('2', '<p><img src=\"http://www.haoid.cn/attachs/editor/2016/06/12/thumb_575ccbb723d29.jpg\" _src=\"http://www.haoid.cn/attachs/editor/2016/06/12/thumb_575ccbb723d29.jpg\"/></p>');

-- ----------------------------
-- Table structure for `bao_life_love`
-- ----------------------------
DROP TABLE IF EXISTS `bao_life_love`;
CREATE TABLE `bao_life_love` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `life_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `life_id` (`life_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_life_love
-- ----------------------------
INSERT INTO `bao_life_love` VALUES ('1', '70', '148', '1457659409', '114.249.247.98');

-- ----------------------------
-- Table structure for `bao_life_photos`
-- ----------------------------
DROP TABLE IF EXISTS `bao_life_photos`;
CREATE TABLE `bao_life_photos` (
  `pic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `life_id` int(11) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_life_photos
-- ----------------------------
INSERT INTO `bao_life_photos` VALUES ('9', '1', '2016/05/25/thumb_57450ee55eda9.jpg');

-- ----------------------------
-- Table structure for `bao_life_report`
-- ----------------------------
DROP TABLE IF EXISTS `bao_life_report`;
CREATE TABLE `bao_life_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `life_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_life_report
-- ----------------------------
INSERT INTO `bao_life_report` VALUES ('1', '1', '3', '1460784554', '12.16.24.104');
INSERT INTO `bao_life_report` VALUES ('2', '1', '1', '1464146532', '12.18.78.222');

-- ----------------------------
-- Table structure for `bao_links`
-- ----------------------------
DROP TABLE IF EXISTS `bao_links`;
CREATE TABLE `bao_links` (
  `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(32) DEFAULT NULL,
  `link_url` varchar(128) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_links
-- ----------------------------
INSERT INTO `bao_links` VALUES ('1', 'baocms', 'http://www.haoid.cn', '1');
INSERT INTO `bao_links` VALUES ('2', '好站长源码社区', 'http://www.haoid.cn', '0');

-- ----------------------------
-- Table structure for `bao_lock`
-- ----------------------------
DROP TABLE IF EXISTS `bao_lock`;
CREATE TABLE `bao_lock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `t` char(8) DEFAULT '0' COMMENT 'UID 操作分钟级别锁',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`,`t`)
) ENGINE=MyISAM AUTO_INCREMENT=552 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_lock
-- ----------------------------
INSERT INTO `bao_lock` VALUES ('550', '3', '04121213');

-- ----------------------------
-- Table structure for `bao_market`
-- ----------------------------
DROP TABLE IF EXISTS `bao_market`;
CREATE TABLE `bao_market` (
  `market_id` int(11) NOT NULL AUTO_INCREMENT,
  `market_name` varchar(64) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT '0',
  `business_id` smallint(5) DEFAULT '0',
  `logo` varchar(64) DEFAULT '0',
  `photo` varchar(64) DEFAULT '0',
  `tel` varchar(64) DEFAULT NULL,
  `contact` varchar(32) DEFAULT NULL,
  `addr` varchar(64) DEFAULT NULL,
  `summary` text,
  `type1` varchar(20) NOT NULL,
  `type2` varchar(20) NOT NULL,
  `type3` varchar(20) NOT NULL,
  `type4` varchar(20) NOT NULL,
  `type5` varchar(20) NOT NULL,
  `type6` varchar(20) NOT NULL,
  `orderby` int(11) DEFAULT '100',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `tags` varchar(64) DEFAULT NULL,
  `fans_num` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `city_id` smallint(5) DEFAULT '0',
  PRIMARY KEY (`market_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_market
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_market_activity`
-- ----------------------------
DROP TABLE IF EXISTS `bao_market_activity`;
CREATE TABLE `bao_market_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `details` text,
  `views` int(11) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_market_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_market_details`
-- ----------------------------
DROP TABLE IF EXISTS `bao_market_details`;
CREATE TABLE `bao_market_details` (
  `market_id` int(11) NOT NULL DEFAULT '0',
  `details` text,
  `business_time` varchar(32) DEFAULT '9:00-18:00',
  `near` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`market_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_market_details
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_market_enter`
-- ----------------------------
DROP TABLE IF EXISTS `bao_market_enter`;
CREATE TABLE `bao_market_enter` (
  `enter_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`enter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_market_enter
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_market_favorites`
-- ----------------------------
DROP TABLE IF EXISTS `bao_market_favorites`;
CREATE TABLE `bao_market_favorites` (
  `favorites_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`favorites_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_market_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_market_floor`
-- ----------------------------
DROP TABLE IF EXISTS `bao_market_floor`;
CREATE TABLE `bao_market_floor` (
  `floor_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` int(11) DEFAULT NULL,
  `floor_name` varchar(20) NOT NULL DEFAULT '',
  `shop_id` int(11) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`floor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_market_floor
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_market_pic`
-- ----------------------------
DROP TABLE IF EXISTS `bao_market_pic`;
CREATE TABLE `bao_market_pic` (
  `pic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` int(11) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_market_pic
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_menu`
-- ----------------------------
DROP TABLE IF EXISTS `bao_menu`;
CREATE TABLE `bao_menu` (
  `menu_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(32) DEFAULT NULL,
  `menu_action` varchar(64) DEFAULT NULL,
  `parent_id` smallint(5) DEFAULT '0',
  `orderby` tinyint(3) unsigned DEFAULT '100' COMMENT '1排序第一',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '0代表不直接显示',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=774 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_menu
-- ----------------------------
INSERT INTO `bao_menu` VALUES ('1', '系统', '', '0', '1', '1');
INSERT INTO `bao_menu` VALUES ('2', '设置', '', '0', '2', '1');
INSERT INTO `bao_menu` VALUES ('3', '商家', '', '0', '3', '1');
INSERT INTO `bao_menu` VALUES ('4', '会员', '', '0', '4', '1');
INSERT INTO `bao_menu` VALUES ('5', '商城', '', '0', '5', '1');
INSERT INTO `bao_menu` VALUES ('203', '支付方式', 'payment/index', '202', '1', '1');
INSERT INTO `bao_menu` VALUES ('7', '功能', '', '0', '6', '1');
INSERT INTO `bao_menu` VALUES ('8', '运营', '', '0', '10', '1');
INSERT INTO `bao_menu` VALUES ('9', '管理员管理', '', '1', '2', '1');
INSERT INTO `bao_menu` VALUES ('11', '后台菜单管理', '', '1', '1', '1');
INSERT INTO `bao_menu` VALUES ('12', '菜单列表', 'menu/index', '11', '2', '1');
INSERT INTO `bao_menu` VALUES ('13', '新增菜单', 'menu/create', '11', '3', '0');
INSERT INTO `bao_menu` VALUES ('14', '编辑菜单', 'menu/edit', '11', '1', '0');
INSERT INTO `bao_menu` VALUES ('15', '删除菜单', 'menu/delete', '11', '3', '0');
INSERT INTO `bao_menu` VALUES ('16', '更新菜单', 'menu/update', '11', '4', '0');
INSERT INTO `bao_menu` VALUES ('17', '批量菜单', 'menu/action', '11', '1', '0');
INSERT INTO `bao_menu` VALUES ('18', '角色管理', 'role/index', '9', '2', '1');
INSERT INTO `bao_menu` VALUES ('25', '新增角色', 'role/create', '9', '7', '0');
INSERT INTO `bao_menu` VALUES ('26', '编辑角色', 'role/edit', '9', '1', '0');
INSERT INTO `bao_menu` VALUES ('27', '删除角色', 'role/delete', '9', '2', '0');
INSERT INTO `bao_menu` VALUES ('28', '角色授权', 'role/auth', '9', '8', '0');
INSERT INTO `bao_menu` VALUES ('29', '管理员管理', 'admin/index', '9', '1', '1');
INSERT INTO `bao_menu` VALUES ('30', '新增管理员', 'admin/create', '9', '2', '0');
INSERT INTO `bao_menu` VALUES ('31', '编辑管理员', 'admin/edit', '9', '2', '0');
INSERT INTO `bao_menu` VALUES ('32', '删除管理员', 'admin/delete', '9', '4', '0');
INSERT INTO `bao_menu` VALUES ('33', '会员管理', '', '4', '1', '1');
INSERT INTO `bao_menu` VALUES ('34', '会员管理', 'user/index', '33', '1', '1');
INSERT INTO `bao_menu` VALUES ('35', '新增会员', 'user/create', '33', '2', '0');
INSERT INTO `bao_menu` VALUES ('36', '编辑会员', 'user/edit', '33', '6', '0');
INSERT INTO `bao_menu` VALUES ('37', '删除会员', 'user/delete', '33', '4', '0');
INSERT INTO `bao_menu` VALUES ('60', '商家预约', '', '3', '4', '1');
INSERT INTO `bao_menu` VALUES ('39', '缓存管理', '', '8', '6', '1');
INSERT INTO `bao_menu` VALUES ('40', '清空缓存', 'clean/cache', '39', '100', '1');
INSERT INTO `bao_menu` VALUES ('41', '审核会员', 'user/audit', '33', '3', '0');
INSERT INTO `bao_menu` VALUES ('42', '商家分类', '', '3', '1', '1');
INSERT INTO `bao_menu` VALUES ('43', '商家管理', '', '3', '2', '1');
INSERT INTO `bao_menu` VALUES ('44', '分类列表', 'shopcate/index', '42', '1', '1');
INSERT INTO `bao_menu` VALUES ('45', '新增分类', 'shopcate/create', '42', '2', '0');
INSERT INTO `bao_menu` VALUES ('46', '编辑分类', 'shopcate/edit', '42', '3', '0');
INSERT INTO `bao_menu` VALUES ('47', '删除分类', 'shopcate/delete', '42', '4', '0');
INSERT INTO `bao_menu` VALUES ('48', '更新排序', 'shopcate/update', '42', '5', '0');
INSERT INTO `bao_menu` VALUES ('49', '基本设置', '', '2', '1', '1');
INSERT INTO `bao_menu` VALUES ('50', '区域设置', '', '2', '4', '1');
INSERT INTO `bao_menu` VALUES ('51', '区域管理', 'area/index', '50', '11', '1');
INSERT INTO `bao_menu` VALUES ('52', '新增区域', 'area/create', '50', '12', '0');
INSERT INTO `bao_menu` VALUES ('53', '编辑区域', 'area/edit', '50', '13', '0');
INSERT INTO `bao_menu` VALUES ('54', '删除区域', 'area/delete', '50', '14', '0');
INSERT INTO `bao_menu` VALUES ('55', '商圈管理', 'business/index', '50', '15', '0');
INSERT INTO `bao_menu` VALUES ('56', '新增商圈', 'business/create', '50', '19', '0');
INSERT INTO `bao_menu` VALUES ('57', '编辑商圈', 'business/edit', '50', '18', '0');
INSERT INTO `bao_menu` VALUES ('58', '删除商圈', 'business/delete', '50', '17', '0');
INSERT INTO `bao_menu` VALUES ('277', '审核商家', 'shop/audit', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('61', '文章内容', '', '7', '2', '1');
INSERT INTO `bao_menu` VALUES ('62', '抢购管理', '', '5', '5', '1');
INSERT INTO `bao_menu` VALUES ('65', '友情链接', '', '8', '4', '1');
INSERT INTO `bao_menu` VALUES ('66', '广告管理', '', '8', '1', '1');
INSERT INTO `bao_menu` VALUES ('202', '支付设置', '', '2', '3', '1');
INSERT INTO `bao_menu` VALUES ('215', '微信', '', '0', '8', '1');
INSERT INTO `bao_menu` VALUES ('70', '友情链接', 'links/index', '65', '100', '1');
INSERT INTO `bao_menu` VALUES ('71', '添加友情', 'links/create', '65', '100', '0');
INSERT INTO `bao_menu` VALUES ('72', '修改友情', 'links/edit', '65', '100', '0');
INSERT INTO `bao_menu` VALUES ('73', '删除友情', 'links/delete', '65', '100', '0');
INSERT INTO `bao_menu` VALUES ('278', '积分兑换', 'integralexchange/index', '234', '2', '1');
INSERT INTO `bao_menu` VALUES ('279', '设为已完成兑换', 'integralexchange/audit', '234', '2', '0');
INSERT INTO `bao_menu` VALUES ('280', '设为热门分类', 'shopcate/hots', '42', '6', '0');
INSERT INTO `bao_menu` VALUES ('80', '站点设置', 'setting/site', '49', '1', '1');
INSERT INTO `bao_menu` VALUES ('81', '附件设置', 'setting/attachs', '49', '4', '1');
INSERT INTO `bao_menu` VALUES ('270', '选择分类', 'activitycate/select', '244', '100', '0');
INSERT INTO `bao_menu` VALUES ('85', '全部商家列表', 'shop/index', '43', '1', '1');
INSERT INTO `bao_menu` VALUES ('86', '新增商家', 'shop/create', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('87', '修改商家', 'shop/edit', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('88', '删除商家', 'shop/delete', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('90', '异步选择会员', 'user/select', '33', '2', '0');
INSERT INTO `bao_menu` VALUES ('91', '异步查询商圈', 'business/child', '50', '20', '0');
INSERT INTO `bao_menu` VALUES ('95', '预定合作', 'shop/yuyue', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('96', '商家新闻', 'shopnews/index', '228', '2', '1');
INSERT INTO `bao_menu` VALUES ('97', '发布新闻', 'shopnews/create', '228', '1', '1');
INSERT INTO `bao_menu` VALUES ('98', '修改新闻', 'shopnews/edit', '228', '3', '0');
INSERT INTO `bao_menu` VALUES ('99', '删除新闻', 'shopnews/delete', '228', '4', '0');
INSERT INTO `bao_menu` VALUES ('100', '审核新闻', 'shopnews/audit', '228', '5', '0');
INSERT INTO `bao_menu` VALUES ('101', '商家异步查询', 'shop/select', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('102', '商家图片', 'shoppic/index', '43', '4', '1');
INSERT INTO `bao_menu` VALUES ('103', '删除图片', 'shoppic/delete', '43', '42', '0');
INSERT INTO `bao_menu` VALUES ('104', '异步查询', 'articlecate/child', '61', '3', '0');
INSERT INTO `bao_menu` VALUES ('105', '更新排序', 'articlecate/update', '61', '4', '0');
INSERT INTO `bao_menu` VALUES ('106', '删除分类', 'articlecate/delete', '61', '5', '0');
INSERT INTO `bao_menu` VALUES ('107', '编辑分类', 'articlecate/edit', '61', '6', '0');
INSERT INTO `bao_menu` VALUES ('108', '新增分类', 'articlecate/create', '61', '7', '0');
INSERT INTO `bao_menu` VALUES ('109', '分类列表', 'articlecate/index', '61', '1', '1');
INSERT INTO `bao_menu` VALUES ('110', '文章列表', 'article/index', '61', '2', '1');
INSERT INTO `bao_menu` VALUES ('111', '新增文章', 'article/create', '61', '2', '1');
INSERT INTO `bao_menu` VALUES ('112', '编辑文章', 'article/edit', '61', '9', '0');
INSERT INTO `bao_menu` VALUES ('113', '删除文章', 'article/delete', '61', '10', '0');
INSERT INTO `bao_menu` VALUES ('114', '贴吧管理', '', '7', '2', '1');
INSERT INTO `bao_menu` VALUES ('115', '敏感词过滤', 'sensitive/index', '49', '5', '1');
INSERT INTO `bao_menu` VALUES ('116', '新增敏感词', 'sensitive/create', '49', '6', '0');
INSERT INTO `bao_menu` VALUES ('117', '编辑敏感词', 'sensitive/edit', '49', '7', '0');
INSERT INTO `bao_menu` VALUES ('118', '删除敏感词', 'sensitive/delete', '49', '8', '0');
INSERT INTO `bao_menu` VALUES ('119', '帖子分享', 'post/index', '114', '1', '1');
INSERT INTO `bao_menu` VALUES ('120', '新增帖子', 'post/create', '114', '2', '0');
INSERT INTO `bao_menu` VALUES ('121', '编辑帖子', 'post/edit', '114', '3', '0');
INSERT INTO `bao_menu` VALUES ('122', '删除帖子', 'post/delete', '114', '4', '0');
INSERT INTO `bao_menu` VALUES ('123', '审核帖子', 'post/audit', '114', '5', '0');
INSERT INTO `bao_menu` VALUES ('509', '会员提现', '', '4', '100', '1');
INSERT INTO `bao_menu` VALUES ('125', '抢购列表', 'tuan/index', '62', '1', '1');
INSERT INTO `bao_menu` VALUES ('126', '新增抢购', 'tuan/create', '62', '14', '0');
INSERT INTO `bao_menu` VALUES ('127', '编辑抢购', 'tuan/edit', '62', '11', '0');
INSERT INTO `bao_menu` VALUES ('128', '删除抢购', 'tuan/delete', '62', '12', '0');
INSERT INTO `bao_menu` VALUES ('129', '审核抢购', 'tuan/audit', '62', '13', '0');
INSERT INTO `bao_menu` VALUES ('130', '订单管理', 'tuanorder/index', '62', '20', '1');
INSERT INTO `bao_menu` VALUES ('206', '支付日志', 'paymentlogs/index', '202', '4', '1');
INSERT INTO `bao_menu` VALUES ('134', '优惠券', '', '5', '7', '1');
INSERT INTO `bao_menu` VALUES ('135', '优惠券管理', 'coupon/index', '134', '1', '1');
INSERT INTO `bao_menu` VALUES ('136', '新增优惠券', 'coupon/create', '134', '2', '0');
INSERT INTO `bao_menu` VALUES ('137', '编辑优惠券', 'coupon/edit', '134', '3', '0');
INSERT INTO `bao_menu` VALUES ('138', '删除优惠券', 'coupon/delete', '134', '4', '0');
INSERT INTO `bao_menu` VALUES ('139', '审核优惠券', 'coupon/audit', '134', '5', '0');
INSERT INTO `bao_menu` VALUES ('140', '优惠券下载', 'coupondownload/index', '134', '6', '1');
INSERT INTO `bao_menu` VALUES ('142', '回复帖子', 'postreply/index', '114', '11', '1');
INSERT INTO `bao_menu` VALUES ('143', '新增回复', 'postreply/create', '114', '12', '0');
INSERT INTO `bao_menu` VALUES ('144', '编辑回复', 'postreply/edit', '114', '13', '0');
INSERT INTO `bao_menu` VALUES ('145', '删除回复', 'postreply/delete', '114', '14', '0');
INSERT INTO `bao_menu` VALUES ('146', '审核回复', 'postreply/audit', '114', '15', '0');
INSERT INTO `bao_menu` VALUES ('156', '短信设置', 'setting/sms', '49', '9', '1');
INSERT INTO `bao_menu` VALUES ('157', '邮件设置', 'setting/mail', '49', '10', '1');
INSERT INTO `bao_menu` VALUES ('158', '模版管理', '', '2', '5', '1');
INSERT INTO `bao_menu` VALUES ('159', '短信模版', 'sms/index', '158', '11', '1');
INSERT INTO `bao_menu` VALUES ('160', '新增短信模版', 'sms/create', '158', '12', '0');
INSERT INTO `bao_menu` VALUES ('161', '编辑短信模版', 'sms/edit', '158', '13', '0');
INSERT INTO `bao_menu` VALUES ('162', '关闭短信模版', 'sms/delete', '158', '14', '0');
INSERT INTO `bao_menu` VALUES ('163', '邮件模版', 'email/index', '158', '21', '1');
INSERT INTO `bao_menu` VALUES ('164', '新增邮件模版', 'email/create', '158', '22', '0');
INSERT INTO `bao_menu` VALUES ('165', '编辑邮件模版', 'email/edit', '158', '23', '0');
INSERT INTO `bao_menu` VALUES ('166', '关闭邮件模版', 'email/delete', '158', '24', '0');
INSERT INTO `bao_menu` VALUES ('167', 'SEO模版', 'seo/index', '158', '31', '1');
INSERT INTO `bao_menu` VALUES ('168', '新增SEO模版', 'seo/create', '158', '100', '0');
INSERT INTO `bao_menu` VALUES ('169', '编辑SEO模版', 'seo/edit', '158', '100', '0');
INSERT INTO `bao_menu` VALUES ('170', '删除SEO模版', 'seo/delete', '158', '100', '0');
INSERT INTO `bao_menu` VALUES ('171', '网站风格', 'template/index', '158', '40', '1');
INSERT INTO `bao_menu` VALUES ('172', '安装风格', 'template/install', '158', '42', '0');
INSERT INTO `bao_menu` VALUES ('173', '卸载风格', 'template/uninstall', '158', '41', '0');
INSERT INTO `bao_menu` VALUES ('174', '配置风格', 'template/setting', '158', '43', '0');
INSERT INTO `bao_menu` VALUES ('175', '批量开启短信', 'sms/audit', '158', '15', '0');
INSERT INTO `bao_menu` VALUES ('176', '开启邮件模版', 'email/audit', '158', '25', '0');
INSERT INTO `bao_menu` VALUES ('177', '商家点评', 'shopdianping/index', '230', '22', '1');
INSERT INTO `bao_menu` VALUES ('178', '发布点评', 'shopdianping/create', '230', '21', '1');
INSERT INTO `bao_menu` VALUES ('179', '编辑点评', 'shopdianping/edit', '230', '23', '0');
INSERT INTO `bao_menu` VALUES ('180', '删除点评', 'shopdianping/delete', '230', '24', '0');
INSERT INTO `bao_menu` VALUES ('181', '商家预约', 'shopyuyue/index', '60', '31', '1');
INSERT INTO `bao_menu` VALUES ('182', '新增预约', 'shopyuyue/create', '60', '32', '0');
INSERT INTO `bao_menu` VALUES ('183', '编辑预约', 'shopyuyue/edit', '60', '33', '0');
INSERT INTO `bao_menu` VALUES ('184', '删除预约', 'shopyuyue/delete', '60', '34', '0');
INSERT INTO `bao_menu` VALUES ('185', '系统文章', 'systemcontent/index', '61', '21', '1');
INSERT INTO `bao_menu` VALUES ('186', '新增系统文章', 'systemcontent/create', '61', '22', '0');
INSERT INTO `bao_menu` VALUES ('187', '编辑系统文章', 'systemcontent/edit', '61', '23', '0');
INSERT INTO `bao_menu` VALUES ('188', '删除系统文章', 'systemcontent/delete', '61', '24', '0');
INSERT INTO `bao_menu` VALUES ('189', '广告位设置', 'adsite/index', '66', '1', '1');
INSERT INTO `bao_menu` VALUES ('494', '人才招聘', '', '487', '10', '1');
INSERT INTO `bao_menu` VALUES ('495', '人才招聘', 'work/index', '494', '1', '1');
INSERT INTO `bao_menu` VALUES ('193', '广告管理', 'ad/index', '66', '11', '0');
INSERT INTO `bao_menu` VALUES ('194', '新增广告', 'ad/create', '66', '12', '0');
INSERT INTO `bao_menu` VALUES ('195', '编辑广告', 'ad/edit', '66', '13', '0');
INSERT INTO `bao_menu` VALUES ('196', '删除广告', 'ad/delete', '66', '14', '0');
INSERT INTO `bao_menu` VALUES ('197', '设为默认模版', 'template/df', '158', '44', '0');
INSERT INTO `bao_menu` VALUES ('198', '新增挂件', 'template/add', '158', '45', '0');
INSERT INTO `bao_menu` VALUES ('199', '编辑挂件', 'template/edit', '158', '46', '0');
INSERT INTO `bao_menu` VALUES ('200', '删除挂件', 'template/delete', '158', '47', '0');
INSERT INTO `bao_menu` VALUES ('201', '更新模版', 'template/update', '158', '48', '0');
INSERT INTO `bao_menu` VALUES ('204', '安装支付', 'payment/install', '202', '2', '0');
INSERT INTO `bao_menu` VALUES ('205', '卸载支付', 'payment/uninstall', '202', '3', '0');
INSERT INTO `bao_menu` VALUES ('259', '积分设置', 'setting/integral', '49', '11', '1');
INSERT INTO `bao_menu` VALUES ('441', '资金记录', 'shopmoney/index', '440', '1', '1');
INSERT INTO `bao_menu` VALUES ('209', '抢购券管理', 'tuancode/index', '62', '33', '1');
INSERT INTO `bao_menu` VALUES ('210', '删除抢购券', 'tuancode/delete', '62', '34', '0');
INSERT INTO `bao_menu` VALUES ('211', '积分日志', 'userintegrallogs/index', '291', '40', '1');
INSERT INTO `bao_menu` VALUES ('212', '增加积分', 'user/integral', '33', '8', '0');
INSERT INTO `bao_menu` VALUES ('213', '商户资金日志', 'usergoldlogs/index', '291', '42', '1');
INSERT INTO `bao_menu` VALUES ('214', '增加金块', 'user/gold', '33', '9', '0');
INSERT INTO `bao_menu` VALUES ('216', '微信O2O', '', '215', '1', '1');
INSERT INTO `bao_menu` VALUES ('217', '商家微信', '', '215', '2', '1');
INSERT INTO `bao_menu` VALUES ('218', '微信配置', 'setting/weixin', '216', '1', '1');
INSERT INTO `bao_menu` VALUES ('219', '微信关键字', 'weixinkeyword/index', '216', '2', '1');
INSERT INTO `bao_menu` VALUES ('220', '新增关键字', 'weixinkeyword/create', '216', '3', '0');
INSERT INTO `bao_menu` VALUES ('221', '编辑关键字', 'weixinkeyword/edit', '216', '4', '0');
INSERT INTO `bao_menu` VALUES ('222', '删除关键字', 'weixinkeyword/delete', '216', '5', '0');
INSERT INTO `bao_menu` VALUES ('223', '商家商品', 'goods/index', '231', '51', '1');
INSERT INTO `bao_menu` VALUES ('224', '新增商品', 'goods/create', '231', '52', '0');
INSERT INTO `bao_menu` VALUES ('225', '编辑商品', 'goods/edit', '231', '53', '0');
INSERT INTO `bao_menu` VALUES ('226', '删除商品', 'goods/delete', '231', '54', '0');
INSERT INTO `bao_menu` VALUES ('227', '审核商品', 'goods/audit', '231', '55', '0');
INSERT INTO `bao_menu` VALUES ('228', '商家新闻', '', '3', '6', '1');
INSERT INTO `bao_menu` VALUES ('230', '商家点评', '', '3', '5', '1');
INSERT INTO `bao_menu` VALUES ('231', '商家产品', '', '5', '1', '1');
INSERT INTO `bao_menu` VALUES ('486', '榜单分类', 'billcate/index', '483', '1', '1');
INSERT INTO `bao_menu` VALUES ('234', '积分商城', '', '5', '8', '1');
INSERT INTO `bao_menu` VALUES ('235', '商品列表', 'integralgoods/index', '234', '1', '1');
INSERT INTO `bao_menu` VALUES ('236', '新增商品', 'integralgoods/create', '234', '1', '0');
INSERT INTO `bao_menu` VALUES ('237', '修改商品', 'integralgoods/edit', '234', '1', '0');
INSERT INTO `bao_menu` VALUES ('238', '删除商品', 'integralgoods/delete', '234', '1', '0');
INSERT INTO `bao_menu` VALUES ('239', '审核商品', 'integralgoods/audit', '234', '1', '0');
INSERT INTO `bao_menu` VALUES ('240', '会员等级', 'userrank/index', '33', '21', '1');
INSERT INTO `bao_menu` VALUES ('241', '新增等级', 'userrank/create', '33', '22', '0');
INSERT INTO `bao_menu` VALUES ('242', '编辑等级', 'userrank/edit', '33', '23', '0');
INSERT INTO `bao_menu` VALUES ('243', '删除等级', 'userrank/delete', '33', '24', '0');
INSERT INTO `bao_menu` VALUES ('244', '活动管理', '', '7', '5', '1');
INSERT INTO `bao_menu` VALUES ('245', '活动列表', 'activity/index', '244', '2', '1');
INSERT INTO `bao_menu` VALUES ('246', '活动添加', 'activity/create', '244', '100', '0');
INSERT INTO `bao_menu` VALUES ('247', '活动审核', 'activity/audit', '244', '100', '0');
INSERT INTO `bao_menu` VALUES ('248', '活动编辑', 'activity/edit', '244', '100', '0');
INSERT INTO `bao_menu` VALUES ('249', '活动删除', 'activity/delete', '244', '100', '0');
INSERT INTO `bao_menu` VALUES ('262', '新增地址', 'useraddr/create', '260', '2', '0');
INSERT INTO `bao_menu` VALUES ('260', '收货地址', '', '4', '4', '1');
INSERT INTO `bao_menu` VALUES ('261', '收货地址', 'useraddr/index', '260', '1', '1');
INSERT INTO `bao_menu` VALUES ('255', '分类列表', 'activitycate/index', '244', '1', '1');
INSERT INTO `bao_menu` VALUES ('256', '添加分类', 'activitycate/create', '244', '100', '0');
INSERT INTO `bao_menu` VALUES ('257', '编辑分类', 'activitycate/edit', '244', '100', '0');
INSERT INTO `bao_menu` VALUES ('258', '删除分类', 'activitycate/delete', '244', '100', '0');
INSERT INTO `bao_menu` VALUES ('263', '编辑地址', 'useraddr/edit', '260', '3', '0');
INSERT INTO `bao_menu` VALUES ('264', '删除地址', 'useraddr/delete', '260', '4', '0');
INSERT INTO `bao_menu` VALUES ('265', '商品类别', 'goodscate/index', '231', '1', '1');
INSERT INTO `bao_menu` VALUES ('266', '新增分类', 'goodscate/create', '231', '2', '0');
INSERT INTO `bao_menu` VALUES ('267', '编辑分类', 'goodscate/edit', '231', '3', '0');
INSERT INTO `bao_menu` VALUES ('268', '更新分类', 'goodscate/update', '231', '4', '0');
INSERT INTO `bao_menu` VALUES ('269', '删除分类', 'goodscate/delete', '231', '5', '0');
INSERT INTO `bao_menu` VALUES ('271', '添加子分类', 'activitycate/child', '244', '100', '0');
INSERT INTO `bao_menu` VALUES ('274', '微信消息列表', 'weixinmsg/index', '216', '11', '1');
INSERT INTO `bao_menu` VALUES ('275', '第三方登录', 'setting/connect', '33', '10', '1');
INSERT INTO `bao_menu` VALUES ('281', '热门商圈', 'business/hots', '50', '16', '0');
INSERT INTO `bao_menu` VALUES ('282', '统计报表', '', '8', '5', '1');
INSERT INTO `bao_menu` VALUES ('283', '团购数分析', 'tongji/index', '282', '11', '1');
INSERT INTO `bao_menu` VALUES ('296', '抢购券退款', 'tuancode/refund', '62', '34', '1');
INSERT INTO `bao_menu` VALUES ('289', '团购金额', 'tongji/money', '282', '12', '1');
INSERT INTO `bao_menu` VALUES ('290', '威望设置', 'setting/prestige', '49', '12', '1');
INSERT INTO `bao_menu` VALUES ('291', '会员日志', '', '4', '5', '1');
INSERT INTO `bao_menu` VALUES ('292', '余额日志', 'usermoneylogs/index', '291', '43', '1');
INSERT INTO `bao_menu` VALUES ('297', '抢购券退款操作', 'tuancode/refunding', '62', '35', '0');
INSERT INTO `bao_menu` VALUES ('298', '抢购券过期', 'tuancode/overdue', '62', '35', '1');
INSERT INTO `bao_menu` VALUES ('299', '抢购券过期退款操作', 'tuancode/overdueing', '62', '35', '0');
INSERT INTO `bao_menu` VALUES ('490', '生成卡密', 'usercard/create', '488', '2', '0');
INSERT INTO `bao_menu` VALUES ('303', '手机功能', '', '487', '7', '1');
INSERT INTO `bao_menu` VALUES ('305', '新增发现', 'found/create', '303', '2', '0');
INSERT INTO `bao_menu` VALUES ('306', '编辑发现', 'found/edit', '303', '3', '0');
INSERT INTO `bao_menu` VALUES ('307', '删除发现', 'found/delete', '303', '4', '0');
INSERT INTO `bao_menu` VALUES ('308', '审核发现', 'found/audit', '303', '5', '0');
INSERT INTO `bao_menu` VALUES ('309', '消息管理', 'msg/index', '303', '6', '1');
INSERT INTO `bao_menu` VALUES ('310', '新增消息', 'msg/create', '303', '7', '0');
INSERT INTO `bao_menu` VALUES ('311', '编辑消息', 'msg/edit', '303', '8', '0');
INSERT INTO `bao_menu` VALUES ('312', '删除消息', 'msg/delete', '303', '9', '0');
INSERT INTO `bao_menu` VALUES ('313', '报名管理', 'activitysign/index', '244', '3', '1');
INSERT INTO `bao_menu` VALUES ('314', '商城订单', '', '5', '2', '1');
INSERT INTO `bao_menu` VALUES ('315', '订单汇总', 'order/index', '314', '1', '1');
INSERT INTO `bao_menu` VALUES ('316', '等待捡货', 'order/wait', '314', '2', '1');
INSERT INTO `bao_menu` VALUES ('317', '捡货单管理', 'order/picks', '314', '4', '1');
INSERT INTO `bao_menu` VALUES ('318', '发货管理', 'order/delivery', '314', '5', '1');
INSERT INTO `bao_menu` VALUES ('319', '加入捡货单', 'order/pick', '314', '100', '0');
INSERT INTO `bao_menu` VALUES ('320', '清空拣货单', 'order/clean', '314', '100', '0');
INSERT INTO `bao_menu` VALUES ('321', '创建捡货单', 'order/create', '314', '100', '0');
INSERT INTO `bao_menu` VALUES ('322', '捡货单详情', 'order/pickdetail', '314', '100', '0');
INSERT INTO `bao_menu` VALUES ('324', '打印配送单', 'order/send', '314', '100', '0');
INSERT INTO `bao_menu` VALUES ('325', '订单发货', 'order/distribution', '314', '100', '0');
INSERT INTO `bao_menu` VALUES ('326', '增加余额', 'user/money', '33', '100', '0');
INSERT INTO `bao_menu` VALUES ('327', '新增商家资金', 'shopmoney/create', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('328', '商家审核列表', 'shop/apply', '43', '3', '1');
INSERT INTO `bao_menu` VALUES ('329', '分类列表', 'sharecate/index', '114', '1', '1');
INSERT INTO `bao_menu` VALUES ('330', '添加分类', 'sharecate/create', '114', '100', '0');
INSERT INTO `bao_menu` VALUES ('331', '选择分类', 'sharecate/select', '114', '100', '0');
INSERT INTO `bao_menu` VALUES ('332', '添加子分类', 'sharecate/child', '114', '100', '0');
INSERT INTO `bao_menu` VALUES ('333', '编辑分类', 'sharecate/edit', '114', '100', '0');
INSERT INTO `bao_menu` VALUES ('334', '删除分类', 'sharecate/delete', '114', '100', '0');
INSERT INTO `bao_menu` VALUES ('335', '频道', '', '0', '7', '1');
INSERT INTO `bao_menu` VALUES ('336', '自定义菜单', 'setting/weixinmenu', '216', '6', '1');
INSERT INTO `bao_menu` VALUES ('337', '删除微信消息', 'weixinmsg/delete', '216', '12', '0');
INSERT INTO `bao_menu` VALUES ('338', '分类信息', '', '335', '1', '1');
INSERT INTO `bao_menu` VALUES ('339', '分类管理', 'lifecate/index', '338', '1', '1');
INSERT INTO `bao_menu` VALUES ('340', '新增分类', 'lifecate/create', '338', '2', '0');
INSERT INTO `bao_menu` VALUES ('341', '编辑分类', 'lifecate/edit', '338', '3', '0');
INSERT INTO `bao_menu` VALUES ('342', '删除分类', 'lifecate/delete', '338', '4', '0');
INSERT INTO `bao_menu` VALUES ('343', '属性设置', 'lifecate/setting', '338', '5', '0');
INSERT INTO `bao_menu` VALUES ('344', '抢购分类', '', '5', '4', '1');
INSERT INTO `bao_menu` VALUES ('345', '分类列表', 'tuancate/index', '344', '1', '1');
INSERT INTO `bao_menu` VALUES ('346', '添加分类', 'tuancate/create', '344', '100', '0');
INSERT INTO `bao_menu` VALUES ('347', '添加子分类', 'tuancate/child', '344', '100', '0');
INSERT INTO `bao_menu` VALUES ('348', '删除分类', 'tuancate/delete', '344', '100', '0');
INSERT INTO `bao_menu` VALUES ('349', '编辑分类', 'tuancate/edit', '344', '100', '0');
INSERT INTO `bao_menu` VALUES ('350', '选择分类', 'tuancate/select', '344', '100', '0');
INSERT INTO `bao_menu` VALUES ('351', '删除属性', 'lifecate/delattr', '338', '6', '0');
INSERT INTO `bao_menu` VALUES ('352', '信息列表', 'life/index', '338', '11', '1');
INSERT INTO `bao_menu` VALUES ('353', '新增信息', 'life/create', '338', '12', '0');
INSERT INTO `bao_menu` VALUES ('354', '编辑信息', 'life/edit', '338', '13', '0');
INSERT INTO `bao_menu` VALUES ('355', '删除信息', 'life/delete', '338', '14', '0');
INSERT INTO `bao_menu` VALUES ('356', '审核信息', 'life/audit', '338', '15', '0');
INSERT INTO `bao_menu` VALUES ('357', '分类异步查询', 'lifecate/ajax', '338', '7', '0');
INSERT INTO `bao_menu` VALUES ('358', '抢购点评', '', '5', '6', '1');
INSERT INTO `bao_menu` VALUES ('359', '抢购点评', 'tuandianping/index', '358', '2', '1');
INSERT INTO `bao_menu` VALUES ('360', '发布点评', 'tuandianping/create', '358', '1', '1');
INSERT INTO `bao_menu` VALUES ('361', '删除点评', 'tuandianping/delete', '358', '100', '0');
INSERT INTO `bao_menu` VALUES ('362', '编辑点评', 'tuandianping/edit', '358', '100', '0');
INSERT INTO `bao_menu` VALUES ('619', '资金记录', 'logs/index', '618', '100', '1');
INSERT INTO `bao_menu` VALUES ('618', '物业资金', '', '529', '3', '1');
INSERT INTO `bao_menu` VALUES ('517', '新增站点', 'city/create', '50', '2', '0');
INSERT INTO `bao_menu` VALUES ('519', '删除站点', 'city/delete', '50', '4', '0');
INSERT INTO `bao_menu` VALUES ('518', '编辑站点', 'city/edit', '50', '3', '0');
INSERT INTO `bao_menu` VALUES ('375', '查看结果', 'vote/result', '364', '2', '0');
INSERT INTO `bao_menu` VALUES ('499', '家政设置', 'setting/housework', '498', '1', '1');
INSERT INTO `bao_menu` VALUES ('527', '微信模板消息', 'weixintmpl/index', '216', '13', '1');
INSERT INTO `bao_menu` VALUES ('387', '关键字列表', 'shopweixinkeyword/index', '217', '100', '1');
INSERT INTO `bao_menu` VALUES ('388', '新增关键字', 'shopweixinkeyword/create', '217', '100', '0');
INSERT INTO `bao_menu` VALUES ('389', '编辑关键字', 'shopweixinkeyword/edit', '217', '100', '0');
INSERT INTO `bao_menu` VALUES ('390', '删除关键字', 'shopweixinkeyword/delete', '217', '100', '0');
INSERT INTO `bao_menu` VALUES ('391', '群发消息', 'weixinkeyword/mass', '216', '7', '1');
INSERT INTO `bao_menu` VALUES ('392', '货到付款捡货', 'order/wait2', '314', '3', '1');
INSERT INTO `bao_menu` VALUES ('742', '商家短信', '', '3', '3', '1');
INSERT INTO `bao_menu` VALUES ('408', '关键字管理', '', '8', '3', '1');
INSERT INTO `bao_menu` VALUES ('410', '关键字列表', 'keyword/index', '408', '1', '1');
INSERT INTO `bao_menu` VALUES ('411', '添加关键字', 'keyword/create', '408', '100', '0');
INSERT INTO `bao_menu` VALUES ('412', '编辑关键字', 'keyword/edit', '408', '100', '0');
INSERT INTO `bao_menu` VALUES ('413', '删除关键字', 'keyword/delete', '408', '100', '0');
INSERT INTO `bao_menu` VALUES ('418', '设置热门分类', 'life/hots', '338', '4', '0');
INSERT INTO `bao_menu` VALUES ('416', '外卖管理', '', '335', '2', '1');
INSERT INTO `bao_menu` VALUES ('516', '城市站点', 'city/index', '50', '1', '1');
INSERT INTO `bao_menu` VALUES ('419', '举报信息', 'lifereport/index', '338', '20', '1');
INSERT INTO `bao_menu` VALUES ('498', '家政服务', '', '487', '11', '1');
INSERT INTO `bao_menu` VALUES ('421', '商家列表', 'ele/index', '416', '2', '1');
INSERT INTO `bao_menu` VALUES ('422', '新增商家', 'ele/create', '416', '2', '0');
INSERT INTO `bao_menu` VALUES ('423', '编辑商家', 'ele/edit', '416', '3', '0');
INSERT INTO `bao_menu` VALUES ('424', '删除商家', 'ele/delete', '416', '4', '0');
INSERT INTO `bao_menu` VALUES ('425', '打样管理', 'ele/opened', '416', '4', '0');
INSERT INTO `bao_menu` VALUES ('489', '会员卡管理', 'usercard/index', '488', '1', '1');
INSERT INTO `bao_menu` VALUES ('487', '手机', '', '0', '9', '1');
INSERT INTO `bao_menu` VALUES ('488', '会员卡管理', '', '4', '2', '1');
INSERT INTO `bao_menu` VALUES ('430', '菜单管理', 'eleproduct/index', '416', '12', '1');
INSERT INTO `bao_menu` VALUES ('431', '新增菜单', 'eleproduct/create', '416', '12', '0');
INSERT INTO `bao_menu` VALUES ('432', '编辑菜单', 'eleproduct/edit', '416', '12', '0');
INSERT INTO `bao_menu` VALUES ('433', '删除菜单', 'eleproduct/delete', '416', '12', '0');
INSERT INTO `bao_menu` VALUES ('434', '进入商家中心', 'shop/login', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('435', '卡密管理', 'rechargecard/index', '202', '5', '1');
INSERT INTO `bao_menu` VALUES ('436', '添加充值卡', 'rechargecard/create', '202', '100', '0');
INSERT INTO `bao_menu` VALUES ('437', '删除充值卡', 'rechargecard/delete', '202', '100', '0');
INSERT INTO `bao_menu` VALUES ('438', '餐饮订单管理', 'eleorder/index', '416', '22', '1');
INSERT INTO `bao_menu` VALUES ('439', '删除订单', 'eleorder/delete', '416', '100', '0');
INSERT INTO `bao_menu` VALUES ('440', '结算管理', '', '3', '7', '1');
INSERT INTO `bao_menu` VALUES ('442', '对账单管理', 'settlement/index', '440', '2', '0');
INSERT INTO `bao_menu` VALUES ('443', '新增对账单', 'settlement/create', '440', '3', '0');
INSERT INTO `bao_menu` VALUES ('444', '对账单详情', 'settlementshop/index', '440', '4', '0');
INSERT INTO `bao_menu` VALUES ('445', '商场管理', '', '7', '8', '1');
INSERT INTO `bao_menu` VALUES ('446', '商场列表', 'market/index', '445', '1', '1');
INSERT INTO `bao_menu` VALUES ('447', '添加商场', 'market/create', '445', '100', '0');
INSERT INTO `bao_menu` VALUES ('448', '编辑商场', 'market/edit', '445', '100', '0');
INSERT INTO `bao_menu` VALUES ('449', '删除商场', 'market/delete', '445', '100', '0');
INSERT INTO `bao_menu` VALUES ('450', '商家入驻', 'market/enter', '445', '100', '0');
INSERT INTO `bao_menu` VALUES ('451', '入驻列表', 'market/enterlist', '445', '100', '0');
INSERT INTO `bao_menu` VALUES ('452', '撤销入驻', 'market/cancle', '445', '100', '0');
INSERT INTO `bao_menu` VALUES ('453', '商场活动', 'marketactivity/index', '445', '2', '1');
INSERT INTO `bao_menu` VALUES ('454', '添加活动', 'marketactivity/create', '445', '100', '0');
INSERT INTO `bao_menu` VALUES ('455', '编辑活动', 'marketactivity/edit', '445', '100', '0');
INSERT INTO `bao_menu` VALUES ('456', '删除活动', 'marketactivity/delete', '445', '100', '0');
INSERT INTO `bao_menu` VALUES ('561', '便民报修', 'feedback/index', '555', '6', '1');
INSERT INTO `bao_menu` VALUES ('560', '小区论坛', 'communityposts/index', '555', '5', '1');
INSERT INTO `bao_menu` VALUES ('468', '推广配置', 'tui/index', '282', '1', '1');
INSERT INTO `bao_menu` VALUES ('469', '新增推广', 'tui/create', '282', '2', '0');
INSERT INTO `bao_menu` VALUES ('470', '编辑推广', 'tui/edit', '282', '3', '0');
INSERT INTO `bao_menu` VALUES ('471', '删除推广', 'tui/delete', '282', '4', '0');
INSERT INTO `bao_menu` VALUES ('472', '来源分析', 'tongji/laiyuan', '282', '13', '1');
INSERT INTO `bao_menu` VALUES ('473', '推广效果分析', 'tongji/tuiguan', '282', '14', '1');
INSERT INTO `bao_menu` VALUES ('643', '快递众包', '', '335', '5', '1');
INSERT INTO `bao_menu` VALUES ('475', '关键词分析', 'tongji/keyword', '282', '16', '1');
INSERT INTO `bao_menu` VALUES ('476', '来源金额', 'tongji/lmoney', '282', '13', '1');
INSERT INTO `bao_menu` VALUES ('644', '发起快递记录', 'express/index', '643', '100', '1');
INSERT INTO `bao_menu` VALUES ('483', '上榜榜单', '', '7', '10', '1');
INSERT INTO `bao_menu` VALUES ('484', '榜单列表', 'billboard/index', '483', '2', '1');
INSERT INTO `bao_menu` VALUES ('485', '榜单管理', 'billshop/index', '483', '100', '1');
INSERT INTO `bao_menu` VALUES ('491', '会员卡删除', 'usercard/delete', '488', '3', '0');
INSERT INTO `bao_menu` VALUES ('492', '导入会员卡', 'usercard/import', '488', '4', '0');
INSERT INTO `bao_menu` VALUES ('493', '确定导入', 'usercard/importok', '488', '5', '0');
INSERT INTO `bao_menu` VALUES ('496', '审核招聘', 'work/audit', '494', '2', '0');
INSERT INTO `bao_menu` VALUES ('497', '删除招聘', 'work/delete', '494', '3', '0');
INSERT INTO `bao_menu` VALUES ('500', '家政预约列表', 'housework/index', '498', '5', '1');
INSERT INTO `bao_menu` VALUES ('501', '删除家政', 'housework/delete', '498', '6', '0');
INSERT INTO `bao_menu` VALUES ('502', '修改家政', 'housework/edit', '498', '7', '0');
INSERT INTO `bao_menu` VALUES ('585', '数据库备份', 'database/index', '534', '2', '1');
INSERT INTO `bao_menu` VALUES ('510', '会员提现管理', 'usercash/index', '509', '1', '1');
INSERT INTO `bao_menu` VALUES ('520', '微店审核列表', 'weidian/index', '43', '100', '1');
INSERT INTO `bao_menu` VALUES ('521', '开通订座', 'shop/ding', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('515', '微店分类', 'weidiancate/index', '231', '100', '1');
INSERT INTO `bao_menu` VALUES ('523', '配送员管理', '', '335', '4', '1');
INSERT INTO `bao_menu` VALUES ('524', '配送员列表', 'delivery/index', '523', '100', '1');
INSERT INTO `bao_menu` VALUES ('525', '添加配送员', 'delivery/create', '523', '100', '0');
INSERT INTO `bao_menu` VALUES ('526', '配送记录', 'delivery/lists', '523', '100', '0');
INSERT INTO `bao_menu` VALUES ('190', '添加广告位', 'adsite/create', '66', '2', '1');
INSERT INTO `bao_menu` VALUES ('528', 'UC整合', 'setting/ucenter', '33', '100', '1');
INSERT INTO `bao_menu` VALUES ('529', '新功能', '', '0', '11', '1');
INSERT INTO `bao_menu` VALUES ('530', '缴费管理', '', '529', '5', '1');
INSERT INTO `bao_menu` VALUES ('532', '缴费类型', 'bill/billtype', '530', '1', '1');
INSERT INTO `bao_menu` VALUES ('533', '缴费订单', 'bill/billorder', '530', '2', '1');
INSERT INTO `bao_menu` VALUES ('534', '系统维护', '', '1', '3', '1');
INSERT INTO `bao_menu` VALUES ('536', '销售流水', '', '3', '8', '1');
INSERT INTO `bao_menu` VALUES ('537', '资金记录', 'shopmoney/index', '536', '1', '1');
INSERT INTO `bao_menu` VALUES ('538', '月订单汇总', 'shopmoney/tjmonth', '536', '2', '1');
INSERT INTO `bao_menu` VALUES ('539', '日订单汇总', 'shopmoney/tjday', '536', '3', '1');
INSERT INTO `bao_menu` VALUES ('540', '年订单汇总', 'shopmoney/tjyear', '536', '4', '1');
INSERT INTO `bao_menu` VALUES ('635', '等待认领的商家列表', 'shop/recognition', '43', '100', '1');
INSERT INTO `bao_menu` VALUES ('553', '家政项目列表', 'housework/setting', '498', '3', '1');
INSERT INTO `bao_menu` VALUES ('554', '设置项目配置', 'housework/setting2', '498', '4', '0');
INSERT INTO `bao_menu` VALUES ('555', '小区管理', '', '529', '1', '1');
INSERT INTO `bao_menu` VALUES ('556', '小区管理', 'community/index', '555', '1', '1');
INSERT INTO `bao_menu` VALUES ('557', '新增小区', 'community/create', '555', '2', '0');
INSERT INTO `bao_menu` VALUES ('558', '编辑小区', 'community/edit', '555', '3', '0');
INSERT INTO `bao_menu` VALUES ('559', '删除小区', 'community/delete', '555', '4', '0');
INSERT INTO `bao_menu` VALUES ('562', '社区、村镇设置', '', '529', '2', '1');
INSERT INTO `bao_menu` VALUES ('563', '社区村镇管理', 'village/index', '562', '1', '1');
INSERT INTO `bao_menu` VALUES ('564', '编辑', 'village/edit', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('565', '通知以及活动管理', 'village/notice', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('566', '工作人员管理', 'village/worker', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('567', '社区村评论删除', 'village/bbs_replys_delete', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('568', '社区村帖子删除', 'village/bbs_delete', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('569', '社区村帖子查看', 'village/bbs_view', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('570', '社区村意见删除', 'village/reply_delete', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('571', '社区村工作人员删除', 'village/worker_delete', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('572', '社区村添加', 'village/create', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('573', '社区村工作人员编辑', 'village/worker_edit', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('574', '社区村通知以及活动删除', 'village/notice_delete', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('575', '社区村通知以及活动编', 'village/notice_edit', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('576', '社区村通知以及活动新增', 'village/notice_create', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('577', '删除', 'village/delete', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('578', '帖子管理', 'village/bbs', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('579', '意见管理', 'village/suggestion', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('580', '社区村工作人员添加', 'village/worker_create', '562', '100', '0');
INSERT INTO `bao_menu` VALUES ('581', '小区便民电话', 'convenientphone/index', '555', '8', '1');
INSERT INTO `bao_menu` VALUES ('582', '添加便民电话', 'convenientphone/create', '555', '9', '0');
INSERT INTO `bao_menu` VALUES ('583', '删除便民电话', 'convenientphone/delete', '555', '10', '0');
INSERT INTO `bao_menu` VALUES ('584', '编辑便民电话', 'convenientphone/edit', '555', '11', '0');
INSERT INTO `bao_menu` VALUES ('651', '商品(微店)点评管理', 'malldianping/index', '650', '2', '1');
INSERT INTO `bao_menu` VALUES ('648', '订座预约', 'shopdingyuyue/index', '646', '2', '1');
INSERT INTO `bao_menu` VALUES ('650', '商城(微店)点评', '', '5', '3', '1');
INSERT INTO `bao_menu` VALUES ('590', '黄页系统', '', '7', '100', '1');
INSERT INTO `bao_menu` VALUES ('591', '包年词条', 'pois/word', '590', '100', '1');
INSERT INTO `bao_menu` VALUES ('592', '黄页包年', 'pois/stick', '590', '100', '1');
INSERT INTO `bao_menu` VALUES ('593', '黄页列表', 'pois/index', '590', '100', '1');
INSERT INTO `bao_menu` VALUES ('594', '小区邻居交友', 'message/index', '555', '7', '1');
INSERT INTO `bao_menu` VALUES ('595', '推广金奖励', 'user/fzmoney', '541', '100', '0');
INSERT INTO `bao_menu` VALUES ('596', '批准推广金奖励', 'user/fzmoneyyes', '541', '100', '0');
INSERT INTO `bao_menu` VALUES ('597', '增加余额', 'user/money', '541', '100', '0');
INSERT INTO `bao_menu` VALUES ('743', '商家短信列表', 'smsshop/index', '742', '1', '1');
INSERT INTO `bao_menu` VALUES ('623', '家政分类配置', 'housekeepingcate/index', '498', '2', '1');
INSERT INTO `bao_menu` VALUES ('741', '商户购买短信包设置', 'setting/sms_shop', '731', '10', '1');
INSERT INTO `bao_menu` VALUES ('625', '文章回收站', 'article/recovery', '61', '8', '1');
INSERT INTO `bao_menu` VALUES ('626', '文章回复', 'articlereply/index', '61', '15', '1');
INSERT INTO `bao_menu` VALUES ('627', '商家回收站', 'shop/recovery', '43', '2', '1');
INSERT INTO `bao_menu` VALUES ('628', '微店分类', 'weidiancate/index', '43', '5', '1');
INSERT INTO `bao_menu` VALUES ('634', '会员申请的认领商家列表', 'shoprecognition/index', '43', '100', '1');
INSERT INTO `bao_menu` VALUES ('633', '家政点评', 'lifeservicedianping/index', '498', '8', '1');
INSERT INTO `bao_menu` VALUES ('636', '三级分销管理', '', '529', '4', '1');
INSERT INTO `bao_menu` VALUES ('637', '团购订单', 'profit/tuanorder', '609', '100', '1');
INSERT INTO `bao_menu` VALUES ('638', '商城订单', 'profit/order', '609', '100', '1');
INSERT INTO `bao_menu` VALUES ('639', '分销商列表', 'profit/user', '609', '100', '1');
INSERT INTO `bao_menu` VALUES ('640', '团购订单', 'profit/tuanorder', '636', '1', '1');
INSERT INTO `bao_menu` VALUES ('641', '商城订单', 'profit/order', '636', '2', '1');
INSERT INTO `bao_menu` VALUES ('642', '分销商列表', 'profit/user', '636', '3', '1');
INSERT INTO `bao_menu` VALUES ('645', '外卖评价管理', 'eledianping/index', '416', '100', '1');
INSERT INTO `bao_menu` VALUES ('646', '订座管理（新）', '', '335', '3', '1');
INSERT INTO `bao_menu` VALUES ('647', '订座点评', 'dingdianping/index', '646', '1', '1');
INSERT INTO `bao_menu` VALUES ('652', '新增商品点评', 'malldianping/create', '650', '1', '1');
INSERT INTO `bao_menu` VALUES ('653', '小区通知', 'communitynews/index', '555', '12', '1');
INSERT INTO `bao_menu` VALUES ('746', '商品管理', '', '745', '2', '1');
INSERT INTO `bao_menu` VALUES ('656', '微信应用', '', '215', '100', '1');
INSERT INTO `bao_menu` VALUES ('657', '大转盘', 'weixinlottery/index', '656', '1', '1');
INSERT INTO `bao_menu` VALUES ('658', '大转盘删除', 'weixinlottery/delete', '656', '100', '0');
INSERT INTO `bao_menu` VALUES ('659', '大转盘查看', 'weixinlottory/detail', '656', '100', '0');
INSERT INTO `bao_menu` VALUES ('660', '摇一摇', 'weixinshake/index', '656', '2', '1');
INSERT INTO `bao_menu` VALUES ('661', '摇一摇查看', 'weixinshake/detail', '656', '100', '0');
INSERT INTO `bao_menu` VALUES ('662', '摇一摇删除', 'weixinshake/delete', '656', '100', '0');
INSERT INTO `bao_menu` VALUES ('663', '刮刮乐', 'weixinscratch/index', '656', '3', '1');
INSERT INTO `bao_menu` VALUES ('664', '刮刮乐查看', 'weixinscratch/detail', '656', '100', '0');
INSERT INTO `bao_menu` VALUES ('665', '刮刮乐删除', 'weixinscratch/delete', '656', '100', '0');
INSERT INTO `bao_menu` VALUES ('666', '一元云购', '', '487', '100', '1');
INSERT INTO `bao_menu` VALUES ('667', '商品列表', 'cloudgoods/index', '666', '1', '1');
INSERT INTO `bao_menu` VALUES ('668', '添加商品', 'cloudgoods/create', '666', '2', '0');
INSERT INTO `bao_menu` VALUES ('669', '编辑商品 ', 'cloudgoods/edit', '666', '3', '0');
INSERT INTO `bao_menu` VALUES ('670', '删除商品 ', 'cloudgoods/delete', '666', '4', '0');
INSERT INTO `bao_menu` VALUES ('671', '商城ajax分类', 'goodscate/child', '231', '100', '0');
INSERT INTO `bao_menu` VALUES ('672', '消息详情', 'msg/detail', '303', '10', '0');
INSERT INTO `bao_menu` VALUES ('673', '微店编辑', 'weidian/edit', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('674', '微店删除', 'weidian/delete', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('675', '异步查询分站全部', 'fenzhan/cab', '50', '21', '0');
INSERT INTO `bao_menu` VALUES ('676', '异步查询分站地区', 'fenzhan/cityarea', '50', '22', '0');
INSERT INTO `bao_menu` VALUES ('677', '商家图片审核', 'shoppic/audit', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('678', '认领商家审核', 'shoprecognition/audit', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('679', '认领商家编辑', 'shoprecognition/edit', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('680', '认领商家删除', 'shoprecognition/delete', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('681', '商品(微店)点评编辑', 'malldianping/edit', '650', '100', '0');
INSERT INTO `bao_menu` VALUES ('682', '商品(微店)点评删除', 'malldianping/delete', '650', '100', '0');
INSERT INTO `bao_menu` VALUES ('683', '抢购劵删除', 'tuancode/delete', '62', '100', '0');
INSERT INTO `bao_menu` VALUES ('684', '文章回复编辑', 'articlereply/edit', '61', '100', '0');
INSERT INTO `bao_menu` VALUES ('685', '文章回复删除', 'articlereply/delete', '61', '100', '0');
INSERT INTO `bao_menu` VALUES ('686', '外卖评价编辑', 'eledianping/edit', '416', '100', '0');
INSERT INTO `bao_menu` VALUES ('687', '外卖评价删除', 'eledianping/delete', '416', '100', '0');
INSERT INTO `bao_menu` VALUES ('688', '订座点评编辑', 'dingdianping/edit', '646', '100', '0');
INSERT INTO `bao_menu` VALUES ('689', '订座点评删除', 'dingdianping/delete', '646', '100', '0');
INSERT INTO `bao_menu` VALUES ('690', '订座预约删除', 'shopdingyuyue/delete', '646', '100', '0');
INSERT INTO `bao_menu` VALUES ('691', '快递编辑', 'express/edit', '643', '100', '0');
INSERT INTO `bao_menu` VALUES ('692', '快递删除', 'express/delete', '643', '100', '0');
INSERT INTO `bao_menu` VALUES ('693', '菜单删除', 'leproduct/delete', '416', '100', '0');
INSERT INTO `bao_menu` VALUES ('694', '分站', '', '0', '12', '1');
INSERT INTO `bao_menu` VALUES ('695', '分站列表', '', '694', '2', '1');
INSERT INTO `bao_menu` VALUES ('697', '分站列表', 'fenzhancity/index', '695', '1', '1');
INSERT INTO `bao_menu` VALUES ('703', '商家资质认证申请列表', 'audit/index', '43', '100', '1');
INSERT INTO `bao_menu` VALUES ('704', '等待认证商家删除', 'audit/delete', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('705', '商家认证审核', 'audit/audit', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('706', '商家资质认证编辑', 'audit/edit', '43', '100', '0');
INSERT INTO `bao_menu` VALUES ('711', '推送管理', '', '529', '100', '1');
INSERT INTO `bao_menu` VALUES ('712', '推送邮件', 'tuisongemail/index', '711', '1', '1');
INSERT INTO `bao_menu` VALUES ('715', '商户提现管理', 'usercash/gold', '509', '2', '1');
INSERT INTO `bao_menu` VALUES ('716', '分站财务', '', '694', '100', '1');
INSERT INTO `bao_menu` VALUES ('717', '分站商家资金记录', 'fenzhanshopmoney/index', '716', '1', '1');
INSERT INTO `bao_menu` VALUES ('724', '推送短信', 'tuisongduanxin/index', '711', '2', '1');
INSERT INTO `bao_menu` VALUES ('721', '分站商家提现', '', '694', '100', '1');
INSERT INTO `bao_menu` VALUES ('722', '分站商户提现', 'fenzhanshopcash/index', '721', '1', '1');
INSERT INTO `bao_menu` VALUES ('723', '大鱼短信模板', 'dayu/index', '158', '1', '1');
INSERT INTO `bao_menu` VALUES ('725', '家政点评编辑', 'lifeservicedianping/edit', '498', '100', '0');
INSERT INTO `bao_menu` VALUES ('726', '家政点评删除', 'lifeservicedianping/delete', '498', '100', '0');
INSERT INTO `bao_menu` VALUES ('727', '家政点评新增', 'lifeservicedianping/create', '498', '100', '0');
INSERT INTO `bao_menu` VALUES ('728', '外卖评价增加', 'eledianping/create', '416', '100', '0');
INSERT INTO `bao_menu` VALUES ('729', '文章审核', 'article/audit', '61', '100', '0');
INSERT INTO `bao_menu` VALUES ('744', '商户短信增加', 'smsshop/create', '742', '2', '1');
INSERT INTO `bao_menu` VALUES ('731', '其他设置（新）', '', '2', '2', '1');
INSERT INTO `bao_menu` VALUES ('732', '站点功能开关', 'setting/operation', '731', '1', '1');
INSERT INTO `bao_menu` VALUES ('733', '网站导航管理', 'navigation/index', '731', '2', '1');
INSERT INTO `bao_menu` VALUES ('734', '登录与注册', 'setting/register', '731', '3', '1');
INSERT INTO `bao_menu` VALUES ('735', '分享设置', 'setting/share', '731', '4', '1');
INSERT INTO `bao_menu` VALUES ('736', '模板功能配置', 'setting/other', '731', '5', '1');
INSERT INTO `bao_menu` VALUES ('737', '点评管理', 'setting/mobile', '731', '6', '1');
INSERT INTO `bao_menu` VALUES ('738', '提现管理', 'setting/cash', '731', '7', '1');
INSERT INTO `bao_menu` VALUES ('739', '采集管理（新）', 'setting/collects', '731', '8', '1');
INSERT INTO `bao_menu` VALUES ('740', '全局搜索设置', 'setting/search', '731', '9', '1');
INSERT INTO `bao_menu` VALUES ('762', '砸金蛋', 'weixingoldegg/index', '656', '100', '1');
INSERT INTO `bao_menu` VALUES ('763', '红包', 'weixinpacket/index', '656', '100', '1');
INSERT INTO `bao_menu` VALUES ('767', '抢购推荐置顶', 'tuantop/index', '66', '15', '1');
INSERT INTO `bao_menu` VALUES ('765', '微接力', 'weixinrelay/index', '656', '100', '1');
INSERT INTO `bao_menu` VALUES ('766', '摇一摇', 'weixinshake/index', '656', '100', '1');
INSERT INTO `bao_menu` VALUES ('768', '分站商家财务统计', 'fenzhanshopbalance/index', '716', '2', '1');
INSERT INTO `bao_menu` VALUES ('769', '分站家政添加', 'housework/create', '498', '100', '0');
INSERT INTO `bao_menu` VALUES ('770', '分站家政删除', 'housework/delete2', '498', '100', '0');
INSERT INTO `bao_menu` VALUES ('771', '分站家政编辑', 'housework/setting2', '498', '100', '0');

-- ----------------------------
-- Table structure for `bao_message`
-- ----------------------------
DROP TABLE IF EXISTS `bao_message`;
CREATE TABLE `bao_message` (
  `msg_id` int(15) NOT NULL AUTO_INCREMENT,
  `parent_id` int(15) NOT NULL DEFAULT '0',
  `send_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `content` varchar(200) NOT NULL,
  `read_time` int(10) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_message
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_msg`
-- ----------------------------
DROP TABLE IF EXISTS `bao_msg`;
CREATE TABLE `bao_msg` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` smallint(5) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `type` enum('gift','coupon','movie','message') DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `intro` varchar(256) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL COMMENT '可以为空 如果为空',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `details` text,
  `is_fenzhan` tinyint(1) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_msg
-- ----------------------------
INSERT INTO `bao_msg` VALUES ('1', '0', '2', 'message', '脆皮玉米邀请您成为他的员工', '脆皮玉米希望你们成为他的员工，点击链接同意：<a href=\"/mcenter/information/worker/worker_id/1.html\">查看详情</a>', '', '1464922469', '27.13.160.80', '', '0', '0');

-- ----------------------------
-- Table structure for `bao_msg_read`
-- ----------------------------
DROP TABLE IF EXISTS `bao_msg_read`;
CREATE TABLE `bao_msg_read` (
  `read_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`read_id`),
  UNIQUE KEY `msg_id` (`msg_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_msg_read
-- ----------------------------
INSERT INTO `bao_msg_read` VALUES ('1', '1', '3', '1460181935', '12.16.154.253');

-- ----------------------------
-- Table structure for `bao_navigation`
-- ----------------------------
DROP TABLE IF EXISTS `bao_navigation`;
CREATE TABLE `bao_navigation` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nav_name` varchar(32) DEFAULT NULL,
  `ioc` varchar(20) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `url` varchar(60) DEFAULT NULL COMMENT 'url连接',
  `photo` varchar(80) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1代表手机底部导航，2代表手机首页导航，3代表电脑顶部导航，4代表电脑主导航，5代表电脑底部导航，6代表电脑会员中心导航',
  `colour` varchar(16) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `is_new` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_navigation
-- ----------------------------
INSERT INTO `bao_navigation` VALUES ('39', '首页', '', 'index', '0', '1', '/index/index.html', '2015/12/23/567a228a043cf.jpg', '4', '', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('43', '活动', '', 'huodong', '0', '4', '/huodong/index.html', '', '4', '', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('45', '商城', '', 'mall', '0', '5', '/mall/main.html', '', '4', '', '0', '0', '1');
INSERT INTO `bao_navigation` VALUES ('46', '外卖', '', 'ele', '0', '6', '/ele/index.html', '', '4', '', '0', '1', '0');
INSERT INTO `bao_navigation` VALUES ('47', '团购', '', 'tuan', '0', '2', '/tuan/index.html', '', '4', '', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('48', '分类', '', 'life', '0', '8', '/life/index.html', '', '4', '', '0', '0', '1');
INSERT INTO `bao_navigation` VALUES ('49', '云购', '', 'cloud', '0', '9', '/cloud/index.html', '', '4', '', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('51', '家政', '', 'lifeservice', '0', '11', '/lifeservice/index.html', '', '4', '', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('52', '商家', '', 'shop', '0', '7', '/shop/index.html', '', '4', '', '0', '0', '1');
INSERT INTO `bao_navigation` VALUES ('53', '抢购', 'icon-check-circle', 'tuan', '0', '1', 'tuan/index.html', '', '2', 'bg-yellow', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('54', '外卖', 'icon-cutlery', 'ele', '0', '2', 'ele/index.html', '', '2', 'bg-gray', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('55', '购物', 'icon-cart-plus', 'mall', '0', '3', 'mall/index.html', '', '2', 'bg-yellow', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('56', '商家', 'icon-diamond', 'shop', '0', '4', 'shop/index.html', '', '2', 'bg-green', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('57', '新版家政', 'icon-truck', 'lifeservice', '0', '5', 'lifeservice/index.html', '', '2', 'bg-dot', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('58', '订座', 'icon-tty', 'ding', '0', '6', 'ding/index.html', '', '2', 'bg-blue', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('59', '智慧小区', 'icon-building', 'community', '0', '7', 'community/index.html', '', '2', 'bg-dot', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('60', '智慧乡村', 'icon-flag', 'village', '0', '8', 'village/index.html', '', '2', 'bg-green', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('61', '生活信息', 'icon-truck', 'life', '0', '9', 'life/index.html', '', '2', 'bg-sub', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('62', '优惠劵', 'icon-ticket', 'coupon', '0', '10', 'coupon/index.html', '', '2', 'bg-green', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('63', '积分商城', 'icon-gift', 'jifen', '0', '11', 'jifen/index.html', '', '2', 'bg-main', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('64', '活动', 'icon-history', 'huodong', '0', '12', 'huodong/index.html', '', '2', 'bg-yellow', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('65', '贴吧', 'icon-comments-o', 'tieba', '0', '13', 'tieba/index.html', '', '2', 'bg-dot', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('66', '新闻资讯', 'icon-leaf', 'news', '0', '14', 'news/index.html', '', '2', 'bg-dot', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('67', '榜单', 'icon-thumbs-o-up', 'billboard', '0', '15', 'billboard/index.html', '', '2', 'bg-yellow', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('68', '附近工作', 'icon-diamond', 'nearwork', '0', '16', 'nearwork/index.html', '', '2', 'bg-dot', '0', '0', '0');
INSERT INTO `bao_navigation` VALUES ('69', '自媒体', '', 'news', '0', '3', '/news/index.html', '', '4', '', '0', '0', '1');
INSERT INTO `bao_navigation` VALUES ('70', '小区', '', 'xiaoqu', '0', '12', '/xiaoqu/index.html', '', '4', '', '0', '0', '1');
INSERT INTO `bao_navigation` VALUES ('71', '贴吧', '', 'tieba', '0', '13', '/tieba/index.html', '', '4', '', '0', '0', '1');
INSERT INTO `bao_navigation` VALUES ('72', '去哪儿', '', 'biz', '0', '14', '/biz/index.html', '', '4', '', '0', '0', '1');

-- ----------------------------
-- Table structure for `bao_order`
-- ----------------------------
DROP TABLE IF EXISTS `bao_order`;
CREATE TABLE `bao_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addr_id` int(11) DEFAULT '0',
  `shop_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT '0',
  `mobile_fan` int(11) DEFAULT NULL,
  `need_pay` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '0.0.0.0',
  `update_time` int(11) DEFAULT '0',
  `update_ip` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '1代表已经付款  2代表正在配送  3代表已经完成',
  `is_daofu` tinyint(1) DEFAULT '0',
  `is_mobile` tinyint(1) DEFAULT NULL,
  `is_shop` tinyint(1) DEFAULT '0' COMMENT '1 代表商家发货',
  `closed` tinyint(1) DEFAULT '0',
  `use_integral` int(11) DEFAULT '0' COMMENT '订单使用积分数',
  `can_use_integral` int(11) DEFAULT '0' COMMENT '可使用的积分数',
  `is_separate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_dianping` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_order
-- ----------------------------
INSERT INTO `bao_order` VALUES ('1', '1', '1', '0', '1', '568800', '1000', '567700', '1464915694', '27.13.160.80', '0', '', '8', '0', '1', '0', '0', '100', '100', '0', '0');
INSERT INTO `bao_order` VALUES ('2', '1', '1', '0', '1', '568800', '1000', '0', '1464933494', '223.96.152.2', '0', '', '2', '1', '1', '0', '0', '0', '100', '0', '0');
INSERT INTO `bao_order` VALUES ('3', '2', '4', '0', '13', '2200', '0', '2200', '1465007770', '175.164.163.235', '0', '', '0', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `bao_order` VALUES ('4', '1', '1', '1', '1', '568800', null, '568700', '1467384946', '27.13.157.207', '0', null, '0', '0', null, '0', '0', '100', '100', '0', '0');

-- ----------------------------
-- Table structure for `bao_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `bao_order_goods`;
CREATE TABLE `bao_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `mobile_fan` int(11) DEFAULT NULL,
  `js_price` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '1代表已经发货 2代表申请退款  3代表已经退款',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `update_time` int(11) DEFAULT '0',
  `update_ip` varchar(15) DEFAULT NULL,
  `is_daofu` tinyint(1) DEFAULT '0',
  `tui_uid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_order_goods
-- ----------------------------
INSERT INTO `bao_order_goods` VALUES ('1', '1', '1', '1', '1', '568800', '568800', '1000', '560000', '8', '1464915694', '27.13.160.80', '0', '', '0', '0');
INSERT INTO `bao_order_goods` VALUES ('2', '2', '1', '1', '1', '568800', '568800', '1000', '560000', '1', '1464933494', '223.96.152.2', '0', '', '1', '0');
INSERT INTO `bao_order_goods` VALUES ('3', '3', '2', '4', '2', '1100', '2200', '0', '2158', '0', '1465007770', '175.164.163.235', '0', '', '0', '0');
INSERT INTO `bao_order_goods` VALUES ('4', '4', '1', '1', '1', '568800', '568800', null, '560000', '0', '1467384946', '27.13.157.207', '0', null, '0', '0');

-- ----------------------------
-- Table structure for `bao_order_pick`
-- ----------------------------
DROP TABLE IF EXISTS `bao_order_pick`;
CREATE TABLE `bao_order_pick` (
  `pick_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `order_ids` text,
  PRIMARY KEY (`pick_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_order_pick
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_paddlist`
-- ----------------------------
DROP TABLE IF EXISTS `bao_paddlist`;
CREATE TABLE `bao_paddlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT '0' COMMENT '地域等级',
  `upid` mediumint(8) unsigned DEFAULT '0' COMMENT '上级地域',
  `displayorder` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `idx_upid` (`upid`)
) ENGINE=MyISAM AUTO_INCREMENT=45052 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='地址库';

-- ----------------------------
-- Records of bao_paddlist
-- ----------------------------
INSERT INTO `bao_paddlist` VALUES ('1', '北京市', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('2', '天津市', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('3', '河北省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('4', '山西省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('5', '内蒙古自治区', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('6', '辽宁省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('7', '吉林省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('8', '黑龙江省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('9', '上海市', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('10', '江苏省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('11', '浙江省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('12', '安徽省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('13', '福建省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('14', '江西省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('15', '山东省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('16', '河南省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('17', '湖北省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('18', '湖南省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('19', '广东省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('20', '广西壮族自治区', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('21', '海南省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('22', '重庆市', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('23', '四川省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('24', '贵州省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('25', '云南省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('26', '西藏自治区', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('27', '陕西省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('28', '甘肃省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('29', '青海省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('30', '宁夏回族自治区', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('31', '新疆维吾尔自治区', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('32', '台湾省', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('33', '香港特别行政区', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('34', '澳门特别行政区', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('35', '海外', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('36', '其他', '1', '0', '0');
INSERT INTO `bao_paddlist` VALUES ('37', '东城区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('38', '西城区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('39', '崇文区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('40', '宣武区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('41', '朝阳区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('42', '丰台区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('43', '石景山区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('44', '海淀区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('45', '门头沟区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('46', '房山区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('47', '通州区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('48', '顺义区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('49', '昌平区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('50', '大兴区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('51', '怀柔区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('52', '平谷区', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('53', '密云县', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('54', '延庆县', '2', '1', '0');
INSERT INTO `bao_paddlist` VALUES ('55', '和平区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('56', '河东区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('57', '河西区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('58', '南开区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('59', '河北区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('60', '红桥区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('61', '塘沽区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('62', '汉沽区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('63', '大港区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('64', '东丽区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('65', '西青区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('66', '津南区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('67', '北辰区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('68', '武清区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('69', '宝坻区', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('70', '宁河县', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('71', '静海县', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('72', '蓟县', '2', '2', '0');
INSERT INTO `bao_paddlist` VALUES ('73', '石家庄市', '2', '3', '0');
INSERT INTO `bao_paddlist` VALUES ('74', '唐山市', '2', '3', '0');
INSERT INTO `bao_paddlist` VALUES ('75', '秦皇岛市', '2', '3', '0');
INSERT INTO `bao_paddlist` VALUES ('76', '邯郸市', '2', '3', '0');
INSERT INTO `bao_paddlist` VALUES ('77', '邢台市', '2', '3', '0');
INSERT INTO `bao_paddlist` VALUES ('78', '保定市', '2', '3', '0');
INSERT INTO `bao_paddlist` VALUES ('79', '张家口市', '2', '3', '0');
INSERT INTO `bao_paddlist` VALUES ('80', '承德市', '2', '3', '0');
INSERT INTO `bao_paddlist` VALUES ('81', '衡水市', '2', '3', '0');
INSERT INTO `bao_paddlist` VALUES ('82', '廊坊市', '2', '3', '0');
INSERT INTO `bao_paddlist` VALUES ('83', '沧州市', '2', '3', '0');
INSERT INTO `bao_paddlist` VALUES ('84', '太原市', '2', '4', '0');
INSERT INTO `bao_paddlist` VALUES ('85', '大同市', '2', '4', '0');
INSERT INTO `bao_paddlist` VALUES ('86', '阳泉市', '2', '4', '0');
INSERT INTO `bao_paddlist` VALUES ('87', '长治市', '2', '4', '0');
INSERT INTO `bao_paddlist` VALUES ('88', '晋城市', '2', '4', '0');
INSERT INTO `bao_paddlist` VALUES ('89', '朔州市', '2', '4', '0');
INSERT INTO `bao_paddlist` VALUES ('90', '晋中市', '2', '4', '0');
INSERT INTO `bao_paddlist` VALUES ('91', '运城市', '2', '4', '0');
INSERT INTO `bao_paddlist` VALUES ('92', '忻州市', '2', '4', '0');
INSERT INTO `bao_paddlist` VALUES ('93', '临汾市', '2', '4', '0');
INSERT INTO `bao_paddlist` VALUES ('94', '吕梁市', '2', '4', '0');
INSERT INTO `bao_paddlist` VALUES ('95', '呼和浩特市', '2', '5', '0');
INSERT INTO `bao_paddlist` VALUES ('96', '包头市', '2', '5', '0');
INSERT INTO `bao_paddlist` VALUES ('97', '乌海市', '2', '5', '0');
INSERT INTO `bao_paddlist` VALUES ('98', '赤峰市', '2', '5', '0');
INSERT INTO `bao_paddlist` VALUES ('99', '通辽市', '2', '5', '0');
INSERT INTO `bao_paddlist` VALUES ('100', '鄂尔多斯市', '2', '5', '0');
INSERT INTO `bao_paddlist` VALUES ('101', '呼伦贝尔市', '2', '5', '0');
INSERT INTO `bao_paddlist` VALUES ('102', '巴彦淖尔市', '2', '5', '0');
INSERT INTO `bao_paddlist` VALUES ('103', '乌兰察布市', '2', '5', '0');
INSERT INTO `bao_paddlist` VALUES ('104', '兴安盟', '2', '5', '0');
INSERT INTO `bao_paddlist` VALUES ('105', '锡林郭勒盟', '2', '5', '0');
INSERT INTO `bao_paddlist` VALUES ('106', '阿拉善盟', '2', '5', '0');
INSERT INTO `bao_paddlist` VALUES ('107', '沈阳市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('108', '大连市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('109', '鞍山市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('110', '抚顺市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('111', '本溪市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('112', '丹东市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('113', '锦州市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('114', '营口市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('115', '阜新市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('116', '辽阳市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('117', '盘锦市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('118', '铁岭市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('119', '朝阳市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('120', '葫芦岛市', '2', '6', '0');
INSERT INTO `bao_paddlist` VALUES ('121', '长春市', '2', '7', '0');
INSERT INTO `bao_paddlist` VALUES ('122', '吉林市', '2', '7', '0');
INSERT INTO `bao_paddlist` VALUES ('123', '四平市', '2', '7', '0');
INSERT INTO `bao_paddlist` VALUES ('124', '辽源市', '2', '7', '0');
INSERT INTO `bao_paddlist` VALUES ('125', '通化市', '2', '7', '0');
INSERT INTO `bao_paddlist` VALUES ('126', '白山市', '2', '7', '0');
INSERT INTO `bao_paddlist` VALUES ('127', '松原市', '2', '7', '0');
INSERT INTO `bao_paddlist` VALUES ('128', '白城市', '2', '7', '0');
INSERT INTO `bao_paddlist` VALUES ('129', '延边朝鲜族自治州', '2', '7', '0');
INSERT INTO `bao_paddlist` VALUES ('130', '哈尔滨市', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('131', '齐齐哈尔市', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('132', '鸡西市', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('133', '鹤岗市', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('134', '双鸭山市', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('135', '大庆市', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('136', '伊春市', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('137', '佳木斯市', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('138', '七台河市', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('139', '牡丹江市', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('140', '黑河市', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('141', '绥化市', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('142', '大兴安岭地区', '2', '8', '0');
INSERT INTO `bao_paddlist` VALUES ('143', '黄浦区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('144', '卢湾区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('145', '徐汇区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('146', '长宁区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('147', '静安区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('148', '普陀区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('149', '闸北区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('150', '虹口区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('151', '杨浦区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('152', '闵行区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('153', '宝山区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('154', '嘉定区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('155', '浦东新区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('156', '金山区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('157', '松江区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('158', '青浦区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('159', '南汇区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('160', '奉贤区', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('161', '崇明县', '2', '9', '0');
INSERT INTO `bao_paddlist` VALUES ('162', '南京市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('163', '无锡市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('164', '徐州市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('165', '常州市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('166', '苏州市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('167', '南通市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('168', '连云港市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('169', '淮安市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('170', '盐城市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('171', '扬州市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('172', '镇江市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('173', '泰州市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('174', '宿迁市', '2', '10', '0');
INSERT INTO `bao_paddlist` VALUES ('175', '杭州市', '2', '11', '0');
INSERT INTO `bao_paddlist` VALUES ('176', '宁波市', '2', '11', '0');
INSERT INTO `bao_paddlist` VALUES ('177', '温州市', '2', '11', '0');
INSERT INTO `bao_paddlist` VALUES ('178', '嘉兴市', '2', '11', '0');
INSERT INTO `bao_paddlist` VALUES ('179', '湖州市', '2', '11', '0');
INSERT INTO `bao_paddlist` VALUES ('180', '绍兴市', '2', '11', '0');
INSERT INTO `bao_paddlist` VALUES ('181', '舟山市', '2', '11', '0');
INSERT INTO `bao_paddlist` VALUES ('182', '衢州市', '2', '11', '0');
INSERT INTO `bao_paddlist` VALUES ('183', '金华市', '2', '11', '0');
INSERT INTO `bao_paddlist` VALUES ('184', '台州市', '2', '11', '0');
INSERT INTO `bao_paddlist` VALUES ('185', '丽水市', '2', '11', '0');
INSERT INTO `bao_paddlist` VALUES ('186', '合肥市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('187', '芜湖市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('188', '蚌埠市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('189', '淮南市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('190', '马鞍山市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('191', '淮北市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('192', '铜陵市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('193', '安庆市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('194', '黄山市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('195', '滁州市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('196', '阜阳市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('197', '宿州市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('198', '巢湖市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('199', '六安市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('200', '亳州市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('201', '池州市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('202', '宣城市', '2', '12', '0');
INSERT INTO `bao_paddlist` VALUES ('203', '福州市', '2', '13', '0');
INSERT INTO `bao_paddlist` VALUES ('204', '厦门市', '2', '13', '0');
INSERT INTO `bao_paddlist` VALUES ('205', '莆田市', '2', '13', '0');
INSERT INTO `bao_paddlist` VALUES ('206', '三明市', '2', '13', '0');
INSERT INTO `bao_paddlist` VALUES ('207', '泉州市', '2', '13', '0');
INSERT INTO `bao_paddlist` VALUES ('208', '漳州市', '2', '13', '0');
INSERT INTO `bao_paddlist` VALUES ('209', '南平市', '2', '13', '0');
INSERT INTO `bao_paddlist` VALUES ('210', '龙岩市', '2', '13', '0');
INSERT INTO `bao_paddlist` VALUES ('211', '宁德市', '2', '13', '0');
INSERT INTO `bao_paddlist` VALUES ('212', '南昌市', '2', '14', '0');
INSERT INTO `bao_paddlist` VALUES ('213', '景德镇市', '2', '14', '0');
INSERT INTO `bao_paddlist` VALUES ('214', '萍乡市', '2', '14', '0');
INSERT INTO `bao_paddlist` VALUES ('215', '九江市', '2', '14', '0');
INSERT INTO `bao_paddlist` VALUES ('216', '新余市', '2', '14', '0');
INSERT INTO `bao_paddlist` VALUES ('217', '鹰潭市', '2', '14', '0');
INSERT INTO `bao_paddlist` VALUES ('218', '赣州市', '2', '14', '0');
INSERT INTO `bao_paddlist` VALUES ('219', '吉安市', '2', '14', '0');
INSERT INTO `bao_paddlist` VALUES ('220', '宜春市', '2', '14', '0');
INSERT INTO `bao_paddlist` VALUES ('221', '抚州市', '2', '14', '0');
INSERT INTO `bao_paddlist` VALUES ('222', '上饶市', '2', '14', '0');
INSERT INTO `bao_paddlist` VALUES ('223', '济南市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('224', '青岛市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('225', '淄博市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('226', '枣庄市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('227', '东营市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('228', '烟台市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('229', '潍坊市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('230', '济宁市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('231', '泰安市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('232', '威海市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('233', '日照市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('234', '莱芜市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('235', '临沂市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('236', '德州市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('237', '聊城市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('238', '滨州市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('239', '菏泽市', '2', '15', '0');
INSERT INTO `bao_paddlist` VALUES ('240', '郑州市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('241', '开封市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('242', '洛阳市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('243', '平顶山市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('244', '安阳市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('245', '鹤壁市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('246', '新乡市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('247', '焦作市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('248', '濮阳市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('249', '许昌市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('250', '漯河市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('251', '三门峡市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('252', '南阳市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('253', '商丘市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('254', '信阳市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('255', '周口市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('256', '驻马店市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('257', '济源市', '2', '16', '0');
INSERT INTO `bao_paddlist` VALUES ('258', '武汉市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('259', '黄石市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('260', '十堰市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('261', '宜昌市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('262', '襄樊市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('263', '鄂州市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('264', '荆门市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('265', '孝感市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('266', '荆州市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('267', '黄冈市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('268', '咸宁市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('269', '随州市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('270', '恩施土家族苗族自治州', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('271', '仙桃市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('272', '潜江市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('273', '天门市', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('274', '神农架林区', '2', '17', '0');
INSERT INTO `bao_paddlist` VALUES ('275', '长沙市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('276', '株洲市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('277', '湘潭市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('278', '衡阳市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('279', '邵阳市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('280', '岳阳市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('281', '常德市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('282', '张家界市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('283', '益阳市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('284', '郴州市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('285', '永州市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('286', '怀化市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('287', '娄底市', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('288', '湘西土家族苗族自治州', '2', '18', '0');
INSERT INTO `bao_paddlist` VALUES ('289', '广州市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('290', '韶关市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('291', '深圳市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('292', '珠海市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('293', '汕头市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('294', '佛山市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('295', '江门市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('296', '湛江市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('297', '茂名市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('298', '肇庆市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('299', '惠州市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('300', '梅州市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('301', '汕尾市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('302', '河源市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('303', '阳江市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('304', '清远市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('305', '东莞市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('306', '中山市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('307', '潮州市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('308', '揭阳市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('309', '云浮市', '2', '19', '0');
INSERT INTO `bao_paddlist` VALUES ('310', '南宁市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('311', '柳州市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('312', '桂林市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('313', '梧州市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('314', '北海市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('315', '防城港市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('316', '钦州市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('317', '贵港市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('318', '玉林市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('319', '百色市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('320', '贺州市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('321', '河池市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('322', '来宾市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('323', '崇左市', '2', '20', '0');
INSERT INTO `bao_paddlist` VALUES ('324', '海口市', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('325', '三亚市', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('326', '五指山市', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('327', '琼海市', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('328', '儋州市', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('329', '文昌市', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('330', '万宁市', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('331', '东方市', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('332', '定安县', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('333', '屯昌县', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('334', '澄迈县', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('335', '临高县', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('336', '白沙黎族自治县', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('337', '昌江黎族自治县', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('338', '乐东黎族自治县', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('339', '陵水黎族自治县', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('340', '保亭黎族苗族自治县', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('341', '琼中黎族苗族自治县', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('342', '西沙群岛', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('343', '南沙群岛', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('344', '中沙群岛的岛礁及其海域', '2', '21', '0');
INSERT INTO `bao_paddlist` VALUES ('345', '万州区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('346', '涪陵区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('347', '渝中区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('348', '大渡口区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('349', '江北区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('350', '沙坪坝区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('351', '九龙坡区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('352', '南岸区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('353', '北碚区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('354', '双桥区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('355', '万盛区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('356', '渝北区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('357', '巴南区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('358', '黔江区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('359', '长寿区', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('360', '綦江县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('361', '潼南县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('362', '铜梁县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('363', '大足县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('364', '荣昌县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('365', '璧山县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('366', '梁平县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('367', '城口县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('368', '丰都县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('369', '垫江县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('370', '武隆县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('371', '忠县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('372', '开县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('373', '云阳县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('374', '奉节县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('375', '巫山县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('376', '巫溪县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('377', '石柱土家族自治县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('378', '秀山土家族苗族自治县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('379', '酉阳土家族苗族自治县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('380', '彭水苗族土家族自治县', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('381', '江津市', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('382', '合川市', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('383', '永川市', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('384', '南川市', '2', '22', '0');
INSERT INTO `bao_paddlist` VALUES ('385', '成都市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('386', '自贡市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('387', '攀枝花市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('388', '泸州市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('389', '德阳市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('390', '绵阳市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('391', '广元市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('392', '遂宁市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('393', '内江市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('394', '乐山市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('395', '南充市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('396', '眉山市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('397', '宜宾市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('398', '广安市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('399', '达州市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('400', '雅安市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('401', '巴中市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('402', '资阳市', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('403', '阿坝藏族羌族自治州', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('404', '甘孜藏族自治州', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('405', '凉山彝族自治州', '2', '23', '0');
INSERT INTO `bao_paddlist` VALUES ('406', '贵阳市', '2', '24', '0');
INSERT INTO `bao_paddlist` VALUES ('407', '六盘水市', '2', '24', '0');
INSERT INTO `bao_paddlist` VALUES ('408', '遵义市', '2', '24', '0');
INSERT INTO `bao_paddlist` VALUES ('409', '安顺市', '2', '24', '0');
INSERT INTO `bao_paddlist` VALUES ('410', '铜仁地区', '2', '24', '0');
INSERT INTO `bao_paddlist` VALUES ('411', '黔西南布依族苗族自治州', '2', '24', '0');
INSERT INTO `bao_paddlist` VALUES ('412', '毕节地区', '2', '24', '0');
INSERT INTO `bao_paddlist` VALUES ('413', '黔东南苗族侗族自治州', '2', '24', '0');
INSERT INTO `bao_paddlist` VALUES ('414', '黔南布依族苗族自治州', '2', '24', '0');
INSERT INTO `bao_paddlist` VALUES ('415', '昆明市', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('416', '曲靖市', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('417', '玉溪市', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('418', '保山市', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('419', '昭通市', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('420', '丽江市', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('421', '思茅市', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('422', '临沧市', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('423', '楚雄彝族自治州', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('424', '红河哈尼族彝族自治州', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('425', '文山壮族苗族自治州', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('426', '西双版纳傣族自治州', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('427', '大理白族自治州', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('428', '德宏傣族景颇族自治州', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('429', '怒江傈僳族自治州', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('430', '迪庆藏族自治州', '2', '25', '0');
INSERT INTO `bao_paddlist` VALUES ('431', '拉萨市', '2', '26', '0');
INSERT INTO `bao_paddlist` VALUES ('432', '昌都地区', '2', '26', '0');
INSERT INTO `bao_paddlist` VALUES ('433', '山南地区', '2', '26', '0');
INSERT INTO `bao_paddlist` VALUES ('434', '日喀则地区', '2', '26', '0');
INSERT INTO `bao_paddlist` VALUES ('435', '那曲地区', '2', '26', '0');
INSERT INTO `bao_paddlist` VALUES ('436', '阿里地区', '2', '26', '0');
INSERT INTO `bao_paddlist` VALUES ('437', '林芝地区', '2', '26', '0');
INSERT INTO `bao_paddlist` VALUES ('438', '西安市', '2', '27', '0');
INSERT INTO `bao_paddlist` VALUES ('439', '铜川市', '2', '27', '0');
INSERT INTO `bao_paddlist` VALUES ('440', '宝鸡市', '2', '27', '0');
INSERT INTO `bao_paddlist` VALUES ('441', '咸阳市', '2', '27', '0');
INSERT INTO `bao_paddlist` VALUES ('442', '渭南市', '2', '27', '0');
INSERT INTO `bao_paddlist` VALUES ('443', '延安市', '2', '27', '0');
INSERT INTO `bao_paddlist` VALUES ('444', '汉中市', '2', '27', '0');
INSERT INTO `bao_paddlist` VALUES ('445', '榆林市', '2', '27', '0');
INSERT INTO `bao_paddlist` VALUES ('446', '安康市', '2', '27', '0');
INSERT INTO `bao_paddlist` VALUES ('447', '商洛市', '2', '27', '0');
INSERT INTO `bao_paddlist` VALUES ('448', '兰州市', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('449', '嘉峪关市', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('450', '金昌市', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('451', '白银市', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('452', '天水市', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('453', '武威市', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('454', '张掖市', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('455', '平凉市', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('456', '酒泉市', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('457', '庆阳市', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('458', '定西市', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('459', '陇南市', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('460', '临夏回族自治州', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('461', '甘南藏族自治州', '2', '28', '0');
INSERT INTO `bao_paddlist` VALUES ('462', '西宁市', '2', '29', '0');
INSERT INTO `bao_paddlist` VALUES ('463', '海东地区', '2', '29', '0');
INSERT INTO `bao_paddlist` VALUES ('464', '海北藏族自治州', '2', '29', '0');
INSERT INTO `bao_paddlist` VALUES ('465', '黄南藏族自治州', '2', '29', '0');
INSERT INTO `bao_paddlist` VALUES ('466', '海南藏族自治州', '2', '29', '0');
INSERT INTO `bao_paddlist` VALUES ('467', '果洛藏族自治州', '2', '29', '0');
INSERT INTO `bao_paddlist` VALUES ('468', '玉树藏族自治州', '2', '29', '0');
INSERT INTO `bao_paddlist` VALUES ('469', '海西蒙古族藏族自治州', '2', '29', '0');
INSERT INTO `bao_paddlist` VALUES ('470', '银川市', '2', '30', '0');
INSERT INTO `bao_paddlist` VALUES ('471', '石嘴山市', '2', '30', '0');
INSERT INTO `bao_paddlist` VALUES ('472', '吴忠市', '2', '30', '0');
INSERT INTO `bao_paddlist` VALUES ('473', '固原市', '2', '30', '0');
INSERT INTO `bao_paddlist` VALUES ('474', '中卫市', '2', '30', '0');
INSERT INTO `bao_paddlist` VALUES ('475', '乌鲁木齐市', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('476', '克拉玛依市', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('477', '吐鲁番地区', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('478', '哈密地区', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('479', '昌吉回族自治州', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('480', '博尔塔拉蒙古自治州', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('481', '巴音郭楞蒙古自治州', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('482', '阿克苏地区', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('483', '克孜勒苏柯尔克孜自治州', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('484', '喀什地区', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('485', '和田地区', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('486', '伊犁哈萨克自治州', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('487', '塔城地区', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('488', '阿勒泰地区', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('489', '石河子市', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('490', '阿拉尔市', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('491', '图木舒克市', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('492', '五家渠市', '2', '31', '0');
INSERT INTO `bao_paddlist` VALUES ('493', '台北市', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('494', '高雄市', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('495', '基隆市', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('496', '台中市', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('497', '台南市', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('498', '新竹市', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('499', '嘉义市', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('500', '台北县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('501', '宜兰县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('502', '桃园县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('503', '新竹县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('504', '苗栗县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('505', '台中县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('506', '彰化县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('507', '南投县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('508', '云林县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('509', '嘉义县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('510', '台南县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('511', '高雄县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('512', '屏东县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('513', '澎湖县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('514', '台东县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('515', '花莲县', '2', '32', '0');
INSERT INTO `bao_paddlist` VALUES ('516', '中西区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('517', '东区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('518', '九龙城区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('519', '观塘区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('520', '南区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('521', '深水埗区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('522', '黄大仙区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('523', '湾仔区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('524', '油尖旺区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('525', '离岛区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('526', '葵青区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('527', '北区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('528', '西贡区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('529', '沙田区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('530', '屯门区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('531', '大埔区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('532', '荃湾区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('533', '元朗区', '2', '33', '0');
INSERT INTO `bao_paddlist` VALUES ('534', '澳门特别行政区', '2', '34', '0');
INSERT INTO `bao_paddlist` VALUES ('535', '美国', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('536', '加拿大', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('537', '澳大利亚', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('538', '新西兰', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('539', '英国', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('540', '法国', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('541', '德国', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('542', '捷克', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('543', '荷兰', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('544', '瑞士', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('545', '希腊', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('546', '挪威', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('547', '瑞典', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('548', '丹麦', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('549', '芬兰', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('550', '爱尔兰', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('551', '奥地利', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('552', '意大利', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('553', '乌克兰', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('554', '俄罗斯', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('555', '西班牙', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('556', '韩国', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('557', '新加坡', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('558', '马来西亚', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('559', '印度', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('560', '泰国', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('561', '日本', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('562', '巴西', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('563', '阿根廷', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('564', '南非', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('565', '埃及', '2', '35', '0');
INSERT INTO `bao_paddlist` VALUES ('566', '其他', '2', '36', '0');
INSERT INTO `bao_paddlist` VALUES ('567', '东华门街道', '3', '37', '0');
INSERT INTO `bao_paddlist` VALUES ('568', '东四街道', '3', '37', '0');
INSERT INTO `bao_paddlist` VALUES ('569', '东直门街道', '3', '37', '0');
INSERT INTO `bao_paddlist` VALUES ('570', '交道口街道', '3', '37', '0');
INSERT INTO `bao_paddlist` VALUES ('571', '北新桥街道', '3', '37', '0');
INSERT INTO `bao_paddlist` VALUES ('572', '和平里街道', '3', '37', '0');
INSERT INTO `bao_paddlist` VALUES ('573', '安定门街道', '3', '37', '0');
INSERT INTO `bao_paddlist` VALUES ('574', '建国门街道', '3', '37', '0');
INSERT INTO `bao_paddlist` VALUES ('575', '景山街道', '3', '37', '0');
INSERT INTO `bao_paddlist` VALUES ('576', '朝阳门街道', '3', '37', '0');
INSERT INTO `bao_paddlist` VALUES ('577', '什刹海街道', '3', '38', '0');
INSERT INTO `bao_paddlist` VALUES ('578', '展览路街道', '3', '38', '0');
INSERT INTO `bao_paddlist` VALUES ('579', '德胜街道', '3', '38', '0');
INSERT INTO `bao_paddlist` VALUES ('580', '新街口街道', '3', '38', '0');
INSERT INTO `bao_paddlist` VALUES ('581', '月坛街道', '3', '38', '0');
INSERT INTO `bao_paddlist` VALUES ('582', '西长安街街道', '3', '38', '0');
INSERT INTO `bao_paddlist` VALUES ('583', '金融街街道', '3', '38', '0');
INSERT INTO `bao_paddlist` VALUES ('584', '东花市街道', '3', '39', '0');
INSERT INTO `bao_paddlist` VALUES ('585', '体育馆路街道', '3', '39', '0');
INSERT INTO `bao_paddlist` VALUES ('586', '前门街道', '3', '39', '0');
INSERT INTO `bao_paddlist` VALUES ('587', '天坛街道', '3', '39', '0');
INSERT INTO `bao_paddlist` VALUES ('588', '崇文门外街道', '3', '39', '0');
INSERT INTO `bao_paddlist` VALUES ('589', '永定门外街道', '3', '39', '0');
INSERT INTO `bao_paddlist` VALUES ('590', '龙潭街道', '3', '39', '0');
INSERT INTO `bao_paddlist` VALUES ('591', '大栅栏街道', '3', '40', '0');
INSERT INTO `bao_paddlist` VALUES ('592', '天桥街道', '3', '40', '0');
INSERT INTO `bao_paddlist` VALUES ('593', '广安门内街道', '3', '40', '0');
INSERT INTO `bao_paddlist` VALUES ('594', '广安门外街道', '3', '40', '0');
INSERT INTO `bao_paddlist` VALUES ('595', '椿树街道', '3', '40', '0');
INSERT INTO `bao_paddlist` VALUES ('596', '牛街街道', '3', '40', '0');
INSERT INTO `bao_paddlist` VALUES ('597', '白纸坊街道', '3', '40', '0');
INSERT INTO `bao_paddlist` VALUES ('598', '陶然亭街道', '3', '40', '0');
INSERT INTO `bao_paddlist` VALUES ('599', '三里屯街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('600', '三间房地区（三间房乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('601', '东坝地区（东坝乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('602', '东风地区（东风乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('603', '亚运村街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('604', '八里庄街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('605', '六里屯街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('606', '劲松街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('607', '十八里店地区（十八里店乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('608', '南磨房地区（南磨房乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('609', '双井街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('610', '呼家楼街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('611', '和平街街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('612', '团结湖街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('613', '垡头街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('614', '大屯街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('615', '太阳宫地区（太阳宫乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('616', '奥运村地区（奥运村乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('617', '孙河地区（孙河乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('618', '安贞街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('619', '将台地区（将台乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('620', '小关街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('621', '小红门地区（小红门乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('622', '崔各庄地区（崔各庄乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('623', '左家庄街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('624', '常营回族地区（常营回族乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('625', '平房地区（平房乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('626', '建国门外街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('627', '望京开发街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('628', '望京街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('629', '朝阳门外街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('630', '来广营地区（来广营乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('631', '潘家园街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('632', '王四营地区（王四营乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('633', '管庄地区（管庄乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('634', '豆各庄地区（豆各庄乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('635', '酒仙桥街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('636', '金盏地区（金盏乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('637', '首都机场街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('638', '香河园街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('639', '高碑店地区（高碑店乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('640', '麦子店街道', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('641', '黑庄户地区（黑庄户乡）', '3', '41', '0');
INSERT INTO `bao_paddlist` VALUES ('642', '东铁匠营街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('643', '东高地街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('644', '丰台街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('645', '云岗街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('646', '南苑乡', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('647', '南苑街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('648', '卢沟桥乡', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('649', '卢沟桥街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('650', '右安门街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('651', '和义街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('652', '大红门街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('653', '太平桥街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('654', '宛平城地区', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('655', '新村街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('656', '方庄地区', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('657', '王佐镇', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('658', '花乡乡', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('659', '西罗园街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('660', '长辛店街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('661', '长辛店镇', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('662', '马家堡街道', '3', '42', '0');
INSERT INTO `bao_paddlist` VALUES ('663', '五里坨街道', '3', '43', '0');
INSERT INTO `bao_paddlist` VALUES ('664', '八宝山街道', '3', '43', '0');
INSERT INTO `bao_paddlist` VALUES ('665', '八角街道', '3', '43', '0');
INSERT INTO `bao_paddlist` VALUES ('666', '北辛安街道', '3', '43', '0');
INSERT INTO `bao_paddlist` VALUES ('667', '古城街道', '3', '43', '0');
INSERT INTO `bao_paddlist` VALUES ('668', '广宁街道', '3', '43', '0');
INSERT INTO `bao_paddlist` VALUES ('669', '老山街道', '3', '43', '0');
INSERT INTO `bao_paddlist` VALUES ('670', '苹果园街道', '3', '43', '0');
INSERT INTO `bao_paddlist` VALUES ('671', '金顶街街道', '3', '43', '0');
INSERT INTO `bao_paddlist` VALUES ('672', '鲁谷街道', '3', '43', '0');
INSERT INTO `bao_paddlist` VALUES ('673', '万寿路街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('674', '万柳地区（海淀乡）', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('675', '上地街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('676', '上庄镇', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('677', '东升地区（东升乡）', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('678', '中关村街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('679', '八里庄街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('680', '北下关街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('681', '北太平庄街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('682', '四季青镇', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('683', '学院路街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('684', '曙光街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('685', '永定路街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('686', '海淀街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('687', '清华园街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('688', '清河街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('689', '温泉镇', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('690', '燕园街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('691', '甘家口街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('692', '田村路街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('693', '紫竹院街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('694', '羊坊店街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('695', '花园路街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('696', '苏家坨镇', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('697', '西三旗街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('698', '西北旺镇', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('699', '青龙桥街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('700', '香山街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('701', '马连洼街道', '3', '44', '0');
INSERT INTO `bao_paddlist` VALUES ('702', '东辛房街道', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('703', '军庄镇', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('704', '城子街道', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('705', '大台街道', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('706', '大峪街道', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('707', '妙峰山镇', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('708', '斋堂镇', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('709', '永定镇', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('710', '清水镇', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('711', '潭柘寺镇', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('712', '王平地区', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('713', '雁翅镇', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('714', '龙泉镇', '3', '45', '0');
INSERT INTO `bao_paddlist` VALUES ('715', '东风街道', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('716', '佛子庄乡', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('717', '十渡镇', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('718', '南窖乡', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('719', '史家营乡', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('720', '向阳街道', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('721', '周口店地区', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('722', '城关街道', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('723', '大安山乡', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('724', '大石窝镇', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('725', '张坊镇', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('726', '拱辰街道', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('727', '新镇街道', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('728', '星城街道', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('729', '河北镇', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('730', '琉璃河地区', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('731', '石楼镇', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('732', '窦店镇', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('733', '良乡地区', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('734', '蒲洼乡', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('735', '西潞街道', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('736', '迎风街道', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('737', '长沟镇', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('738', '长阳镇', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('739', '阎村镇', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('740', '霞云岭乡', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('741', '青龙湖镇', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('742', '韩村河镇', '3', '46', '0');
INSERT INTO `bao_paddlist` VALUES ('743', '中仓街道', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('744', '于家务回族乡', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('745', '北苑街道', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('746', '台湖镇', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('747', '宋庄镇', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('748', '张家湾镇', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('749', '新华街道', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('750', '梨园地区', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('751', '永乐店镇', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('752', '永顺地区', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('753', '漷县镇', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('754', '潞城镇', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('755', '玉桥街道', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('756', '西集镇', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('757', '马驹桥镇', '3', '47', '0');
INSERT INTO `bao_paddlist` VALUES ('758', '仁和地区', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('759', '光明街道', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('760', '北务镇', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('761', '北小营镇', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('762', '北石槽镇', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('763', '南彩镇', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('764', '南法信地区', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('765', '后沙峪地区', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('766', '大孙各庄镇', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('767', '天竺地区', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('768', '张镇', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('769', '木林镇', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('770', '李桥镇', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('771', '李遂镇', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('772', '杨镇地区', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('773', '牛栏山地区', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('774', '石园街道', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('775', '胜利街道', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('776', '赵全营镇', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('777', '马坡地区', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('778', '高丽营镇', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('779', '龙湾屯镇', '3', '48', '0');
INSERT INTO `bao_paddlist` VALUES ('780', '东小口地区', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('781', '兴寿镇', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('782', '北七家镇', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('783', '十三陵镇', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('784', '南口地区', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('785', '南邵镇', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('786', '回龙观地区', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('787', '城北街道', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('788', '城南街道', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('789', '小汤山镇', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('790', '崔村镇', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('791', '沙河地区', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('792', '流村镇', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('793', '百善镇', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('794', '长陵镇', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('795', '阳坊镇', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('796', '马池口地区', '3', '49', '0');
INSERT INTO `bao_paddlist` VALUES ('797', '亦庄地区（亦庄镇）', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('798', '兴丰街道', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('799', '北臧村镇', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('800', '安定镇', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('801', '庞各庄镇', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('802', '旧宫地区（旧宫镇）', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('803', '林校路街道', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('804', '榆垡镇', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('805', '清源街道', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('806', '瀛海镇', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('807', '礼贤镇', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('808', '西红门地区（西红门镇）', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('809', '采育镇', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('810', '长子营镇', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('811', '青云店镇', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('812', '魏善庄镇', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('813', '黄村地区（黄村镇）', '3', '50', '0');
INSERT INTO `bao_paddlist` VALUES ('814', '九渡河镇', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('815', '北房镇', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('816', '喇叭沟门满族乡', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('817', '宝山镇', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('818', '庙城地区', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('819', '怀北镇', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('820', '怀柔地区', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('821', '杨宋镇', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('822', '桥梓镇', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('823', '汤河口镇', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('824', '泉河街道', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('825', '渤海镇', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('826', '琉璃庙镇', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('827', '长哨营满族乡', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('828', '雁栖地区', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('829', '龙山街道', '3', '51', '0');
INSERT INTO `bao_paddlist` VALUES ('830', '东高村镇', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('831', '兴谷街道', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('832', '刘家店镇', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('833', '南独乐河镇', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('834', '夏各庄镇', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('835', '大兴庄镇', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('836', '大华山镇', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('837', '山东庄镇', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('838', '峪口地区', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('839', '渔阳地区', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('840', '滨河街道', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('841', '熊儿寨乡', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('842', '王辛庄镇', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('843', '金海湖地区', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('844', '镇罗营镇', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('845', '马坊地区', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('846', '马昌营镇', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('847', '黄松峪乡', '3', '52', '0');
INSERT INTO `bao_paddlist` VALUES ('848', '不老屯镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('849', '东邵渠镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('850', '冯家峪镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('851', '北庄镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('852', '十里堡镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('853', '古北口镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('854', '大城子镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('855', '太师屯镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('856', '密云镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('857', '巨各庄镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('858', '新城子镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('859', '果园街道', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('860', '檀营地区（檀营满族蒙古族乡）', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('861', '河南寨镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('862', '溪翁庄镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('863', '石城镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('864', '穆家峪镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('865', '西田各庄镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('866', '高岭镇', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('867', '鼓楼街道', '3', '53', '0');
INSERT INTO `bao_paddlist` VALUES ('868', '井庄镇', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('869', '八达岭镇', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('870', '刘斌堡乡', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('871', '千家店镇', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('872', '四海镇', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('873', '大庄科乡', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('874', '大榆树镇', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('875', '康庄镇', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('876', '延庆镇', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('877', '张山营镇', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('878', '旧县镇', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('879', '永宁镇', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('880', '沈家营镇', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('881', '珍珠泉乡', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('882', '香营乡', '3', '54', '0');
INSERT INTO `bao_paddlist` VALUES ('883', '体育馆街道', '3', '55', '0');
INSERT INTO `bao_paddlist` VALUES ('884', '劝业场街道', '3', '55', '0');
INSERT INTO `bao_paddlist` VALUES ('885', '南市街道', '3', '55', '0');
INSERT INTO `bao_paddlist` VALUES ('886', '南营门街道', '3', '55', '0');
INSERT INTO `bao_paddlist` VALUES ('887', '小白楼街道', '3', '55', '0');
INSERT INTO `bao_paddlist` VALUES ('888', '新兴街道', '3', '55', '0');
INSERT INTO `bao_paddlist` VALUES ('889', '上杭路街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('890', '东新街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('891', '中山门街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('892', '二号桥街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('893', '向阳楼街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('894', '唐家口街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('895', '大王庄街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('896', '大直沽街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('897', '天津铁厂街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('898', '富民路街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('899', '常州道街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('900', '春华街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('901', '鲁山道街道', '3', '56', '0');
INSERT INTO `bao_paddlist` VALUES ('902', '下瓦房街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('903', '东海街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('904', '友谊路街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('905', '大营门街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('906', '天塔街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('907', '尖山街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('908', '挂甲寺街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('909', '柳林街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('910', '桃园街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('911', '梅江街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('912', '越秀路街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('913', '陈塘庄街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('914', '马场街道', '3', '57', '0');
INSERT INTO `bao_paddlist` VALUES ('915', '万兴街道', '3', '58', '0');
INSERT INTO `bao_paddlist` VALUES ('916', '体育中心街道', '3', '58', '0');
INSERT INTO `bao_paddlist` VALUES ('917', '八里台街道', '3', '58', '0');
INSERT INTO `bao_paddlist` VALUES ('918', '兴南街道', '3', '58', '0');
INSERT INTO `bao_paddlist` VALUES ('919', '华苑街道', '3', '58', '0');
INSERT INTO `bao_paddlist` VALUES ('920', '向阳路街道', '3', '58', '0');
INSERT INTO `bao_paddlist` VALUES ('921', '嘉陵道街道', '3', '58', '0');
INSERT INTO `bao_paddlist` VALUES ('922', '学府街道', '3', '58', '0');
INSERT INTO `bao_paddlist` VALUES ('923', '广开街道', '3', '58', '0');
INSERT INTO `bao_paddlist` VALUES ('924', '王顶堤街道', '3', '58', '0');
INSERT INTO `bao_paddlist` VALUES ('925', '长虹街道', '3', '58', '0');
INSERT INTO `bao_paddlist` VALUES ('926', '鼓楼街道', '3', '58', '0');
INSERT INTO `bao_paddlist` VALUES ('927', '光复道街道', '3', '59', '0');
INSERT INTO `bao_paddlist` VALUES ('928', '宁园街道', '3', '59', '0');
INSERT INTO `bao_paddlist` VALUES ('929', '建昌道街道', '3', '59', '0');
INSERT INTO `bao_paddlist` VALUES ('930', '新开河街道', '3', '59', '0');
INSERT INTO `bao_paddlist` VALUES ('931', '月牙河街道', '3', '59', '0');
INSERT INTO `bao_paddlist` VALUES ('932', '望海楼街道', '3', '59', '0');
INSERT INTO `bao_paddlist` VALUES ('933', '江都路街道', '3', '59', '0');
INSERT INTO `bao_paddlist` VALUES ('934', '王串场街道', '3', '59', '0');
INSERT INTO `bao_paddlist` VALUES ('935', '铁东路街道', '3', '59', '0');
INSERT INTO `bao_paddlist` VALUES ('936', '鸿顺里街道', '3', '59', '0');
INSERT INTO `bao_paddlist` VALUES ('937', '丁字沽街道', '3', '60', '0');
INSERT INTO `bao_paddlist` VALUES ('938', '三条石街道', '3', '60', '0');
INSERT INTO `bao_paddlist` VALUES ('939', '双环村街道', '3', '60', '0');
INSERT INTO `bao_paddlist` VALUES ('940', '咸阳北路街道', '3', '60', '0');
INSERT INTO `bao_paddlist` VALUES ('941', '大胡同街道', '3', '60', '0');
INSERT INTO `bao_paddlist` VALUES ('942', '芥园道街道', '3', '60', '0');
INSERT INTO `bao_paddlist` VALUES ('943', '西于庄街道', '3', '60', '0');
INSERT INTO `bao_paddlist` VALUES ('944', '西沽街道', '3', '60', '0');
INSERT INTO `bao_paddlist` VALUES ('945', '邵公庄街道', '3', '60', '0');
INSERT INTO `bao_paddlist` VALUES ('946', '铃铛阁街道', '3', '60', '0');
INSERT INTO `bao_paddlist` VALUES ('947', '三槐路街道', '3', '61', '0');
INSERT INTO `bao_paddlist` VALUES ('948', '北塘街道', '3', '61', '0');
INSERT INTO `bao_paddlist` VALUES ('949', '向阳街道', '3', '61', '0');
INSERT INTO `bao_paddlist` VALUES ('950', '大沽街道', '3', '61', '0');
INSERT INTO `bao_paddlist` VALUES ('951', '新城镇', '3', '61', '0');
INSERT INTO `bao_paddlist` VALUES ('952', '新村街道', '3', '61', '0');
INSERT INTO `bao_paddlist` VALUES ('953', '新河街道', '3', '61', '0');
INSERT INTO `bao_paddlist` VALUES ('954', '新港街道', '3', '61', '0');
INSERT INTO `bao_paddlist` VALUES ('955', '杭州道街道', '3', '61', '0');
INSERT INTO `bao_paddlist` VALUES ('956', '渤海石油街道', '3', '61', '0');
INSERT INTO `bao_paddlist` VALUES ('957', '胡家园街道', '3', '61', '0');
INSERT INTO `bao_paddlist` VALUES ('958', '解放路街道', '3', '61', '0');
INSERT INTO `bao_paddlist` VALUES ('959', '大田镇', '3', '62', '0');
INSERT INTO `bao_paddlist` VALUES ('960', '天化街道', '3', '62', '0');
INSERT INTO `bao_paddlist` VALUES ('961', '寨上街道', '3', '62', '0');
INSERT INTO `bao_paddlist` VALUES ('962', '杨家泊镇', '3', '62', '0');
INSERT INTO `bao_paddlist` VALUES ('963', '汉沽街道', '3', '62', '0');
INSERT INTO `bao_paddlist` VALUES ('964', '河西街道', '3', '62', '0');
INSERT INTO `bao_paddlist` VALUES ('965', '盐场街道', '3', '62', '0');
INSERT INTO `bao_paddlist` VALUES ('966', '茶淀镇', '3', '62', '0');
INSERT INTO `bao_paddlist` VALUES ('967', '营城镇', '3', '62', '0');
INSERT INTO `bao_paddlist` VALUES ('968', '中塘镇', '3', '63', '0');
INSERT INTO `bao_paddlist` VALUES ('969', '古林街道', '3', '63', '0');
INSERT INTO `bao_paddlist` VALUES ('970', '太平镇', '3', '63', '0');
INSERT INTO `bao_paddlist` VALUES ('971', '小王庄镇', '3', '63', '0');
INSERT INTO `bao_paddlist` VALUES ('972', '海滨街道', '3', '63', '0');
INSERT INTO `bao_paddlist` VALUES ('973', '港西街道', '3', '63', '0');
INSERT INTO `bao_paddlist` VALUES ('974', '胜利街道', '3', '63', '0');
INSERT INTO `bao_paddlist` VALUES ('975', '迎宾街道', '3', '63', '0');
INSERT INTO `bao_paddlist` VALUES ('976', '万新街道', '3', '64', '0');
INSERT INTO `bao_paddlist` VALUES ('977', '丰年村街道', '3', '64', '0');
INSERT INTO `bao_paddlist` VALUES ('978', '么六桥乡', '3', '64', '0');
INSERT INTO `bao_paddlist` VALUES ('979', '军粮城镇', '3', '64', '0');
INSERT INTO `bao_paddlist` VALUES ('980', '华明镇', '3', '64', '0');
INSERT INTO `bao_paddlist` VALUES ('981', '大毕庄镇', '3', '64', '0');
INSERT INTO `bao_paddlist` VALUES ('982', '张贵庄街道', '3', '64', '0');
INSERT INTO `bao_paddlist` VALUES ('983', '新立街道', '3', '64', '0');
INSERT INTO `bao_paddlist` VALUES ('984', '无瑕街道', '3', '64', '0');
INSERT INTO `bao_paddlist` VALUES ('985', '中北镇', '3', '65', '0');
INSERT INTO `bao_paddlist` VALUES ('986', '南河镇', '3', '65', '0');
INSERT INTO `bao_paddlist` VALUES ('987', '大寺镇', '3', '65', '0');
INSERT INTO `bao_paddlist` VALUES ('988', '张家窝镇', '3', '65', '0');
INSERT INTO `bao_paddlist` VALUES ('989', '李七庄街道', '3', '65', '0');
INSERT INTO `bao_paddlist` VALUES ('990', '杨柳青镇', '3', '65', '0');
INSERT INTO `bao_paddlist` VALUES ('991', '王稳庄镇', '3', '65', '0');
INSERT INTO `bao_paddlist` VALUES ('992', '西营门街道', '3', '65', '0');
INSERT INTO `bao_paddlist` VALUES ('993', '辛口镇', '3', '65', '0');
INSERT INTO `bao_paddlist` VALUES ('994', '八里台镇', '3', '66', '0');
INSERT INTO `bao_paddlist` VALUES ('995', '北闸口镇', '3', '66', '0');
INSERT INTO `bao_paddlist` VALUES ('996', '双桥河镇', '3', '66', '0');
INSERT INTO `bao_paddlist` VALUES ('997', '双港镇', '3', '66', '0');
INSERT INTO `bao_paddlist` VALUES ('998', '咸水沽镇', '3', '66', '0');
INSERT INTO `bao_paddlist` VALUES ('999', '小站镇', '3', '66', '0');
INSERT INTO `bao_paddlist` VALUES ('1000', '葛沽镇', '3', '66', '0');
INSERT INTO `bao_paddlist` VALUES ('1001', '辛庄镇', '3', '66', '0');
INSERT INTO `bao_paddlist` VALUES ('1002', '长青办事处', '3', '66', '0');
INSERT INTO `bao_paddlist` VALUES ('1003', '北仓镇', '3', '67', '0');
INSERT INTO `bao_paddlist` VALUES ('1004', '双口镇', '3', '67', '0');
INSERT INTO `bao_paddlist` VALUES ('1005', '双街镇', '3', '67', '0');
INSERT INTO `bao_paddlist` VALUES ('1006', '大张庄镇', '3', '67', '0');
INSERT INTO `bao_paddlist` VALUES ('1007', '天穆镇', '3', '67', '0');
INSERT INTO `bao_paddlist` VALUES ('1008', '宜兴埠镇', '3', '67', '0');
INSERT INTO `bao_paddlist` VALUES ('1009', '小淀镇', '3', '67', '0');
INSERT INTO `bao_paddlist` VALUES ('1010', '普东街道', '3', '67', '0');
INSERT INTO `bao_paddlist` VALUES ('1011', '果园新村街道', '3', '67', '0');
INSERT INTO `bao_paddlist` VALUES ('1012', '西堤头镇', '3', '67', '0');
INSERT INTO `bao_paddlist` VALUES ('1013', '集贤里街道', '3', '67', '0');
INSERT INTO `bao_paddlist` VALUES ('1014', '青光镇', '3', '67', '0');
INSERT INTO `bao_paddlist` VALUES ('1015', '上马台镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1016', '下伍旗镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1017', '下朱庄街道', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1018', '东蒲洼街道', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1019', '东马圈镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1020', '南蔡村镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1021', '城关镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1022', '大孟庄镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1023', '大王古庄镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1024', '大碱厂镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1025', '大良镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1026', '大黄堡乡', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1027', '崔黄口镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1028', '徐官屯街道', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1029', '曹子里乡', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1030', '杨村街道', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1031', '梅厂镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1032', '汊沽港镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1033', '河北屯镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1034', '河西务镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1035', '泗村店镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1036', '王庆坨镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1037', '白古屯乡', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1038', '石各庄镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1039', '豆张庄乡', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1040', '运河西街道', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1041', '陈咀镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1042', '高村乡', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1043', '黄庄街道', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1044', '黄花店镇', '3', '68', '0');
INSERT INTO `bao_paddlist` VALUES ('1045', '八门城镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1046', '口东镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1047', '史各庄镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1048', '周良庄镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1049', '城关镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1050', '大口屯镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1051', '大唐庄镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1052', '大白庄镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1053', '大钟庄镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1054', '尔王庄乡', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1055', '新安镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1056', '新开口镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1057', '方家庄镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1058', '林亭口镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1059', '牛家牌乡', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1060', '牛道口镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1061', '王卜庄镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1062', '郝各庄镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1063', '霍各庄镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1064', '马家店镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1065', '高家庄镇', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1066', '黄庄乡', '3', '69', '0');
INSERT INTO `bao_paddlist` VALUES ('1067', '七里海镇', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1068', '东棘坨镇', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1069', '丰台镇', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1070', '俵口乡', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1071', '北淮淀乡', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1072', '大北涧沽镇', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1073', '宁河镇', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1074', '岳龙镇', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1075', '廉庄子乡', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1076', '板桥镇', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1077', '潘庄镇', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1078', '芦台镇', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1079', '苗庄镇', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1080', '造甲城镇', '3', '70', '0');
INSERT INTO `bao_paddlist` VALUES ('1081', '中旺镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1082', '双塘镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1083', '台头镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1084', '唐官屯镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1085', '团泊镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1086', '大丰堆镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1087', '大邱庄镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1088', '子牙镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1089', '杨成庄乡', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1090', '梁头镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1091', '沿庄镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1092', '独流镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1093', '王口镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1094', '良王庄乡', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1095', '蔡公庄镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1096', '西翟庄镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1097', '陈官屯镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1098', '静海镇', '3', '71', '0');
INSERT INTO `bao_paddlist` VALUES ('1099', '上仓镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1100', '下仓镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1101', '下窝头镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1102', '下营镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1103', '东二营乡', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1104', '东施古镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1105', '东赵各庄乡', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1106', '五百户镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1107', '侯家营镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1108', '出头岭镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1109', '别山镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1110', '城关镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1111', '孙各庄满族乡', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1112', '官庄镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1113', '尤古庄镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1114', '文昌街道', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1115', '杨津庄镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1116', '桑梓镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1117', '洇溜镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1118', '白涧镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1119', '礼明庄乡', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1120', '穿芳峪乡', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1121', '罗庄子镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1122', '西龙虎峪镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1123', '许家台乡', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1124', '邦均镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1125', '马伸桥镇', '3', '72', '0');
INSERT INTO `bao_paddlist` VALUES ('1126', '井陉县', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1127', '井陉矿区', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1128', '元氏县', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1129', '平山县', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1130', '新乐市', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1131', '新华区', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1132', '无极县', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1133', '晋州市', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1134', '栾城县', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1135', '桥东区', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1136', '桥西区', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1137', '正定县', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1138', '深泽县', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1139', '灵寿县', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1140', '藁城市', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1141', '行唐县', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1142', '裕华区', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1143', '赞皇县', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1144', '赵县', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1145', '辛集市', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1146', '长安区', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1147', '高邑县', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1148', '鹿泉市', '3', '73', '0');
INSERT INTO `bao_paddlist` VALUES ('1149', '丰南区', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1150', '丰润区', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1151', '乐亭县', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1152', '古冶区', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1153', '唐海县', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1154', '开平区', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1155', '滦南县', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1156', '滦县', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1157', '玉田县', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1158', '路北区', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1159', '路南区', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1160', '迁安市', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1161', '迁西县', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1162', '遵化市', '3', '74', '0');
INSERT INTO `bao_paddlist` VALUES ('1163', '北戴河区', '3', '75', '0');
INSERT INTO `bao_paddlist` VALUES ('1164', '卢龙县', '3', '75', '0');
INSERT INTO `bao_paddlist` VALUES ('1165', '山海关区', '3', '75', '0');
INSERT INTO `bao_paddlist` VALUES ('1166', '抚宁县', '3', '75', '0');
INSERT INTO `bao_paddlist` VALUES ('1167', '昌黎县', '3', '75', '0');
INSERT INTO `bao_paddlist` VALUES ('1168', '海港区', '3', '75', '0');
INSERT INTO `bao_paddlist` VALUES ('1169', '青龙满族自治县', '3', '75', '0');
INSERT INTO `bao_paddlist` VALUES ('1170', '丛台区', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1171', '临漳县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1172', '复兴区', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1173', '大名县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1174', '峰峰矿区', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1175', '广平县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1176', '成安县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1177', '曲周县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1178', '武安市', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1179', '永年县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1180', '涉县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1181', '磁县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1182', '肥乡县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1183', '邯山区', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1184', '邯郸县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1185', '邱县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1186', '馆陶县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1187', '魏县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1188', '鸡泽县', '3', '76', '0');
INSERT INTO `bao_paddlist` VALUES ('1189', '临城县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1190', '临西县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1191', '任县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1192', '内丘县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1193', '南和县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1194', '南宫市', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1195', '威县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1196', '宁晋县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1197', '巨鹿县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1198', '平乡县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1199', '广宗县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1200', '新河县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1201', '柏乡县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1202', '桥东区', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1203', '桥西区', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1204', '沙河市', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1205', '清河县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1206', '邢台县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1207', '隆尧县', '3', '77', '0');
INSERT INTO `bao_paddlist` VALUES ('1208', '北市区', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1209', '南市区', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1210', '博野县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1211', '唐县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1212', '安国市', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1213', '安新县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1214', '定兴县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1215', '定州市', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1216', '容城县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1217', '徐水县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1218', '新市区', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1219', '易县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1220', '曲阳县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1221', '望都县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1222', '涞水县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1223', '涞源县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1224', '涿州市', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1225', '清苑县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1226', '满城县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1227', '蠡县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1228', '阜平县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1229', '雄县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1230', '顺平县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1231', '高碑店市', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1232', '高阳县', '3', '78', '0');
INSERT INTO `bao_paddlist` VALUES ('1233', '万全县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1234', '下花园区', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1235', '宣化区', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1236', '宣化县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1237', '尚义县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1238', '崇礼县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1239', '康保县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1240', '张北县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1241', '怀安县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1242', '怀来县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1243', '桥东区', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1244', '桥西区', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1245', '沽源县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1246', '涿鹿县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1247', '蔚县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1248', '赤城县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1249', '阳原县', '3', '79', '0');
INSERT INTO `bao_paddlist` VALUES ('1250', '丰宁满族自治县', '3', '80', '0');
INSERT INTO `bao_paddlist` VALUES ('1251', '兴隆县', '3', '80', '0');
INSERT INTO `bao_paddlist` VALUES ('1252', '双桥区', '3', '80', '0');
INSERT INTO `bao_paddlist` VALUES ('1253', '双滦区', '3', '80', '0');
INSERT INTO `bao_paddlist` VALUES ('1254', '围场满族蒙古族自治县', '3', '80', '0');
INSERT INTO `bao_paddlist` VALUES ('1255', '宽城满族自治县', '3', '80', '0');
INSERT INTO `bao_paddlist` VALUES ('1256', '平泉县', '3', '80', '0');
INSERT INTO `bao_paddlist` VALUES ('1257', '承德县', '3', '80', '0');
INSERT INTO `bao_paddlist` VALUES ('1258', '滦平县', '3', '80', '0');
INSERT INTO `bao_paddlist` VALUES ('1259', '隆化县', '3', '80', '0');
INSERT INTO `bao_paddlist` VALUES ('1260', '鹰手营子矿区', '3', '80', '0');
INSERT INTO `bao_paddlist` VALUES ('1261', '冀州市', '3', '81', '0');
INSERT INTO `bao_paddlist` VALUES ('1262', '安平县', '3', '81', '0');
INSERT INTO `bao_paddlist` VALUES ('1263', '故城县', '3', '81', '0');
INSERT INTO `bao_paddlist` VALUES ('1264', '景县', '3', '81', '0');
INSERT INTO `bao_paddlist` VALUES ('1265', '枣强县', '3', '81', '0');
INSERT INTO `bao_paddlist` VALUES ('1266', '桃城区', '3', '81', '0');
INSERT INTO `bao_paddlist` VALUES ('1267', '武强县', '3', '81', '0');
INSERT INTO `bao_paddlist` VALUES ('1268', '武邑县', '3', '81', '0');
INSERT INTO `bao_paddlist` VALUES ('1269', '深州市', '3', '81', '0');
INSERT INTO `bao_paddlist` VALUES ('1270', '阜城县', '3', '81', '0');
INSERT INTO `bao_paddlist` VALUES ('1271', '饶阳县', '3', '81', '0');
INSERT INTO `bao_paddlist` VALUES ('1272', '三河市', '3', '82', '0');
INSERT INTO `bao_paddlist` VALUES ('1273', '固安县', '3', '82', '0');
INSERT INTO `bao_paddlist` VALUES ('1274', '大厂回族自治县', '3', '82', '0');
INSERT INTO `bao_paddlist` VALUES ('1275', '大城县', '3', '82', '0');
INSERT INTO `bao_paddlist` VALUES ('1276', '安次区', '3', '82', '0');
INSERT INTO `bao_paddlist` VALUES ('1277', '广阳区', '3', '82', '0');
INSERT INTO `bao_paddlist` VALUES ('1278', '文安县', '3', '82', '0');
INSERT INTO `bao_paddlist` VALUES ('1279', '永清县', '3', '82', '0');
INSERT INTO `bao_paddlist` VALUES ('1280', '霸州市', '3', '82', '0');
INSERT INTO `bao_paddlist` VALUES ('1281', '香河县', '3', '82', '0');
INSERT INTO `bao_paddlist` VALUES ('1282', '东光县', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1283', '任丘市', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1284', '南皮县', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1285', '吴桥县', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1286', '孟村回族自治县', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1287', '新华区', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1288', '沧县', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1289', '河间市', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1290', '泊头市', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1291', '海兴县', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1292', '献县', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1293', '盐山县', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1294', '肃宁县', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1295', '运河区', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1296', '青县', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1297', '黄骅市', '3', '83', '0');
INSERT INTO `bao_paddlist` VALUES ('1298', '万柏林区', '3', '84', '0');
INSERT INTO `bao_paddlist` VALUES ('1299', '古交市', '3', '84', '0');
INSERT INTO `bao_paddlist` VALUES ('1300', '娄烦县', '3', '84', '0');
INSERT INTO `bao_paddlist` VALUES ('1301', '小店区', '3', '84', '0');
INSERT INTO `bao_paddlist` VALUES ('1302', '尖草坪区', '3', '84', '0');
INSERT INTO `bao_paddlist` VALUES ('1303', '晋源区', '3', '84', '0');
INSERT INTO `bao_paddlist` VALUES ('1304', '杏花岭区', '3', '84', '0');
INSERT INTO `bao_paddlist` VALUES ('1305', '清徐县', '3', '84', '0');
INSERT INTO `bao_paddlist` VALUES ('1306', '迎泽区', '3', '84', '0');
INSERT INTO `bao_paddlist` VALUES ('1307', '阳曲县', '3', '84', '0');
INSERT INTO `bao_paddlist` VALUES ('1308', '南郊区', '3', '85', '0');
INSERT INTO `bao_paddlist` VALUES ('1309', '城区', '3', '85', '0');
INSERT INTO `bao_paddlist` VALUES ('1310', '大同县', '3', '85', '0');
INSERT INTO `bao_paddlist` VALUES ('1311', '天镇县', '3', '85', '0');
INSERT INTO `bao_paddlist` VALUES ('1312', '左云县', '3', '85', '0');
INSERT INTO `bao_paddlist` VALUES ('1313', '广灵县', '3', '85', '0');
INSERT INTO `bao_paddlist` VALUES ('1314', '新荣区', '3', '85', '0');
INSERT INTO `bao_paddlist` VALUES ('1315', '浑源县', '3', '85', '0');
INSERT INTO `bao_paddlist` VALUES ('1316', '灵丘县', '3', '85', '0');
INSERT INTO `bao_paddlist` VALUES ('1317', '矿区', '3', '85', '0');
INSERT INTO `bao_paddlist` VALUES ('1318', '阳高县', '3', '85', '0');
INSERT INTO `bao_paddlist` VALUES ('1319', '城区', '3', '86', '0');
INSERT INTO `bao_paddlist` VALUES ('1320', '平定县', '3', '86', '0');
INSERT INTO `bao_paddlist` VALUES ('1321', '盂县', '3', '86', '0');
INSERT INTO `bao_paddlist` VALUES ('1322', '矿区', '3', '86', '0');
INSERT INTO `bao_paddlist` VALUES ('1323', '郊区', '3', '86', '0');
INSERT INTO `bao_paddlist` VALUES ('1324', '城区', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1325', '壶关县', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1326', '屯留县', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1327', '平顺县', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1328', '武乡县', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1329', '沁县', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1330', '沁源县', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1331', '潞城市', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1332', '襄垣县', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1333', '郊区', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1334', '长子县', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1335', '长治县', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1336', '黎城县', '3', '87', '0');
INSERT INTO `bao_paddlist` VALUES ('1337', '城区', '3', '88', '0');
INSERT INTO `bao_paddlist` VALUES ('1338', '沁水县', '3', '88', '0');
INSERT INTO `bao_paddlist` VALUES ('1339', '泽州县', '3', '88', '0');
INSERT INTO `bao_paddlist` VALUES ('1340', '阳城县', '3', '88', '0');
INSERT INTO `bao_paddlist` VALUES ('1341', '陵川县', '3', '88', '0');
INSERT INTO `bao_paddlist` VALUES ('1342', '高平市', '3', '88', '0');
INSERT INTO `bao_paddlist` VALUES ('1343', '右玉县', '3', '89', '0');
INSERT INTO `bao_paddlist` VALUES ('1344', '山阴县', '3', '89', '0');
INSERT INTO `bao_paddlist` VALUES ('1345', '平鲁区', '3', '89', '0');
INSERT INTO `bao_paddlist` VALUES ('1346', '应县', '3', '89', '0');
INSERT INTO `bao_paddlist` VALUES ('1347', '怀仁县', '3', '89', '0');
INSERT INTO `bao_paddlist` VALUES ('1348', '朔城区', '3', '89', '0');
INSERT INTO `bao_paddlist` VALUES ('1349', '介休市', '3', '90', '0');
INSERT INTO `bao_paddlist` VALUES ('1350', '和顺县', '3', '90', '0');
INSERT INTO `bao_paddlist` VALUES ('1351', '太谷县', '3', '90', '0');
INSERT INTO `bao_paddlist` VALUES ('1352', '寿阳县', '3', '90', '0');
INSERT INTO `bao_paddlist` VALUES ('1353', '左权县', '3', '90', '0');
INSERT INTO `bao_paddlist` VALUES ('1354', '平遥县', '3', '90', '0');
INSERT INTO `bao_paddlist` VALUES ('1355', '昔阳县', '3', '90', '0');
INSERT INTO `bao_paddlist` VALUES ('1356', '榆次区', '3', '90', '0');
INSERT INTO `bao_paddlist` VALUES ('1357', '榆社县', '3', '90', '0');
INSERT INTO `bao_paddlist` VALUES ('1358', '灵石县', '3', '90', '0');
INSERT INTO `bao_paddlist` VALUES ('1359', '祁县', '3', '90', '0');
INSERT INTO `bao_paddlist` VALUES ('1360', '万荣县', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1361', '临猗县', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1362', '垣曲县', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1363', '夏县', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1364', '平陆县', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1365', '新绛县', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1366', '永济市', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1367', '河津市', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1368', '盐湖区', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1369', '稷山县', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1370', '绛县', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1371', '芮城县', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1372', '闻喜县', '3', '91', '0');
INSERT INTO `bao_paddlist` VALUES ('1373', '五台县', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1374', '五寨县', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1375', '代县', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1376', '保德县', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1377', '偏关县', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1378', '原平市', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1379', '宁武县', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1380', '定襄县', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1381', '岢岚县', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1382', '忻府区', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1383', '河曲县', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1384', '神池县', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1385', '繁峙县', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1386', '静乐县', '3', '92', '0');
INSERT INTO `bao_paddlist` VALUES ('1387', '乡宁县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1388', '侯马市', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1389', '古县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1390', '吉县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1391', '大宁县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1392', '安泽县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1393', '尧都区', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1394', '曲沃县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1395', '永和县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1396', '汾西县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1397', '洪洞县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1398', '浮山县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1399', '翼城县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1400', '蒲县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1401', '襄汾县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1402', '隰县', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1403', '霍州市', '3', '93', '0');
INSERT INTO `bao_paddlist` VALUES ('1404', '中阳县', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1405', '临县', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1406', '交口县', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1407', '交城县', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1408', '兴县', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1409', '孝义市', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1410', '岚县', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1411', '文水县', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1412', '方山县', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1413', '柳林县', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1414', '汾阳市', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1415', '石楼县', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1416', '离石区', '3', '94', '0');
INSERT INTO `bao_paddlist` VALUES ('1417', '和林格尔县', '3', '95', '0');
INSERT INTO `bao_paddlist` VALUES ('1418', '回民区', '3', '95', '0');
INSERT INTO `bao_paddlist` VALUES ('1419', '土默特左旗', '3', '95', '0');
INSERT INTO `bao_paddlist` VALUES ('1420', '托克托县', '3', '95', '0');
INSERT INTO `bao_paddlist` VALUES ('1421', '新城区', '3', '95', '0');
INSERT INTO `bao_paddlist` VALUES ('1422', '武川县', '3', '95', '0');
INSERT INTO `bao_paddlist` VALUES ('1423', '清水河县', '3', '95', '0');
INSERT INTO `bao_paddlist` VALUES ('1424', '玉泉区', '3', '95', '0');
INSERT INTO `bao_paddlist` VALUES ('1425', '赛罕区', '3', '95', '0');
INSERT INTO `bao_paddlist` VALUES ('1426', '东河区', '3', '96', '0');
INSERT INTO `bao_paddlist` VALUES ('1427', '九原区', '3', '96', '0');
INSERT INTO `bao_paddlist` VALUES ('1428', '固阳县', '3', '96', '0');
INSERT INTO `bao_paddlist` VALUES ('1429', '土默特右旗', '3', '96', '0');
INSERT INTO `bao_paddlist` VALUES ('1430', '昆都仑区', '3', '96', '0');
INSERT INTO `bao_paddlist` VALUES ('1431', '白云矿区', '3', '96', '0');
INSERT INTO `bao_paddlist` VALUES ('1432', '石拐区', '3', '96', '0');
INSERT INTO `bao_paddlist` VALUES ('1433', '达尔罕茂明安联合旗', '3', '96', '0');
INSERT INTO `bao_paddlist` VALUES ('1434', '青山区', '3', '96', '0');
INSERT INTO `bao_paddlist` VALUES ('1435', '乌达区', '3', '97', '0');
INSERT INTO `bao_paddlist` VALUES ('1436', '海勃湾区', '3', '97', '0');
INSERT INTO `bao_paddlist` VALUES ('1437', '海南区', '3', '97', '0');
INSERT INTO `bao_paddlist` VALUES ('1438', '元宝山区', '3', '98', '0');
INSERT INTO `bao_paddlist` VALUES ('1439', '克什克腾旗', '3', '98', '0');
INSERT INTO `bao_paddlist` VALUES ('1440', '喀喇沁旗', '3', '98', '0');
INSERT INTO `bao_paddlist` VALUES ('1441', '宁城县', '3', '98', '0');
INSERT INTO `bao_paddlist` VALUES ('1442', '巴林右旗', '3', '98', '0');
INSERT INTO `bao_paddlist` VALUES ('1443', '巴林左旗', '3', '98', '0');
INSERT INTO `bao_paddlist` VALUES ('1444', '敖汉旗', '3', '98', '0');
INSERT INTO `bao_paddlist` VALUES ('1445', '松山区', '3', '98', '0');
INSERT INTO `bao_paddlist` VALUES ('1446', '林西县', '3', '98', '0');
INSERT INTO `bao_paddlist` VALUES ('1447', '红山区', '3', '98', '0');
INSERT INTO `bao_paddlist` VALUES ('1448', '翁牛特旗', '3', '98', '0');
INSERT INTO `bao_paddlist` VALUES ('1449', '阿鲁科尔沁旗', '3', '98', '0');
INSERT INTO `bao_paddlist` VALUES ('1450', '奈曼旗', '3', '99', '0');
INSERT INTO `bao_paddlist` VALUES ('1451', '库伦旗', '3', '99', '0');
INSERT INTO `bao_paddlist` VALUES ('1452', '开鲁县', '3', '99', '0');
INSERT INTO `bao_paddlist` VALUES ('1453', '扎鲁特旗', '3', '99', '0');
INSERT INTO `bao_paddlist` VALUES ('1454', '科尔沁区', '3', '99', '0');
INSERT INTO `bao_paddlist` VALUES ('1455', '科尔沁左翼中旗', '3', '99', '0');
INSERT INTO `bao_paddlist` VALUES ('1456', '科尔沁左翼后旗', '3', '99', '0');
INSERT INTO `bao_paddlist` VALUES ('1457', '霍林郭勒市', '3', '99', '0');
INSERT INTO `bao_paddlist` VALUES ('1458', '东胜区', '3', '100', '0');
INSERT INTO `bao_paddlist` VALUES ('1459', '乌审旗', '3', '100', '0');
INSERT INTO `bao_paddlist` VALUES ('1460', '伊金霍洛旗', '3', '100', '0');
INSERT INTO `bao_paddlist` VALUES ('1461', '准格尔旗', '3', '100', '0');
INSERT INTO `bao_paddlist` VALUES ('1462', '杭锦旗', '3', '100', '0');
INSERT INTO `bao_paddlist` VALUES ('1463', '达拉特旗', '3', '100', '0');
INSERT INTO `bao_paddlist` VALUES ('1464', '鄂东胜区', '3', '100', '0');
INSERT INTO `bao_paddlist` VALUES ('1465', '鄂托克前旗', '3', '100', '0');
INSERT INTO `bao_paddlist` VALUES ('1466', '鄂托克旗', '3', '100', '0');
INSERT INTO `bao_paddlist` VALUES ('1467', '扎兰屯市', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1468', '新巴尔虎右旗', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1469', '新巴尔虎左旗', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1470', '根河市', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1471', '海拉尔区', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1472', '满洲里市', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1473', '牙克石市', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1474', '莫力达瓦达斡尔族自治旗', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1475', '鄂伦春自治旗', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1476', '鄂温克族自治旗', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1477', '阿荣旗', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1478', '陈巴尔虎旗', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1479', '额尔古纳市', '3', '101', '0');
INSERT INTO `bao_paddlist` VALUES ('1480', '临河区', '3', '102', '0');
INSERT INTO `bao_paddlist` VALUES ('1481', '乌拉特中旗', '3', '102', '0');
INSERT INTO `bao_paddlist` VALUES ('1482', '乌拉特前旗', '3', '102', '0');
INSERT INTO `bao_paddlist` VALUES ('1483', '乌拉特后旗', '3', '102', '0');
INSERT INTO `bao_paddlist` VALUES ('1484', '五原县', '3', '102', '0');
INSERT INTO `bao_paddlist` VALUES ('1485', '杭锦后旗', '3', '102', '0');
INSERT INTO `bao_paddlist` VALUES ('1486', '磴口县', '3', '102', '0');
INSERT INTO `bao_paddlist` VALUES ('1487', '丰镇市', '3', '103', '0');
INSERT INTO `bao_paddlist` VALUES ('1488', '兴和县', '3', '103', '0');
INSERT INTO `bao_paddlist` VALUES ('1489', '凉城县', '3', '103', '0');
INSERT INTO `bao_paddlist` VALUES ('1490', '化德县', '3', '103', '0');
INSERT INTO `bao_paddlist` VALUES ('1491', '卓资县', '3', '103', '0');
INSERT INTO `bao_paddlist` VALUES ('1492', '商都县', '3', '103', '0');
INSERT INTO `bao_paddlist` VALUES ('1493', '四子王旗', '3', '103', '0');
INSERT INTO `bao_paddlist` VALUES ('1494', '察哈尔右翼中旗', '3', '103', '0');
INSERT INTO `bao_paddlist` VALUES ('1495', '察哈尔右翼前旗', '3', '103', '0');
INSERT INTO `bao_paddlist` VALUES ('1496', '察哈尔右翼后旗', '3', '103', '0');
INSERT INTO `bao_paddlist` VALUES ('1497', '集宁区', '3', '103', '0');
INSERT INTO `bao_paddlist` VALUES ('1498', '乌兰浩特市', '3', '104', '0');
INSERT INTO `bao_paddlist` VALUES ('1499', '扎赉特旗', '3', '104', '0');
INSERT INTO `bao_paddlist` VALUES ('1500', '科尔沁右翼中旗', '3', '104', '0');
INSERT INTO `bao_paddlist` VALUES ('1501', '科尔沁右翼前旗', '3', '104', '0');
INSERT INTO `bao_paddlist` VALUES ('1502', '突泉县', '3', '104', '0');
INSERT INTO `bao_paddlist` VALUES ('1503', '阿尔山市', '3', '104', '0');
INSERT INTO `bao_paddlist` VALUES ('1504', '东乌珠穆沁旗', '3', '105', '0');
INSERT INTO `bao_paddlist` VALUES ('1505', '二连浩特市', '3', '105', '0');
INSERT INTO `bao_paddlist` VALUES ('1506', '多伦县', '3', '105', '0');
INSERT INTO `bao_paddlist` VALUES ('1507', '太仆寺旗', '3', '105', '0');
INSERT INTO `bao_paddlist` VALUES ('1508', '正蓝旗', '3', '105', '0');
INSERT INTO `bao_paddlist` VALUES ('1509', '正镶白旗', '3', '105', '0');
INSERT INTO `bao_paddlist` VALUES ('1510', '苏尼特右旗', '3', '105', '0');
INSERT INTO `bao_paddlist` VALUES ('1511', '苏尼特左旗', '3', '105', '0');
INSERT INTO `bao_paddlist` VALUES ('1512', '西乌珠穆沁旗', '3', '105', '0');
INSERT INTO `bao_paddlist` VALUES ('1513', '锡林浩特市', '3', '105', '0');
INSERT INTO `bao_paddlist` VALUES ('1514', '镶黄旗', '3', '105', '0');
INSERT INTO `bao_paddlist` VALUES ('1515', '阿巴嘎旗', '3', '105', '0');
INSERT INTO `bao_paddlist` VALUES ('1516', '阿拉善右旗', '3', '106', '0');
INSERT INTO `bao_paddlist` VALUES ('1517', '阿拉善左旗', '3', '106', '0');
INSERT INTO `bao_paddlist` VALUES ('1518', '额济纳旗', '3', '106', '0');
INSERT INTO `bao_paddlist` VALUES ('1519', '东陵区', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1520', '于洪区', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1521', '和平区', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1522', '大东区', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1523', '康平县', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1524', '新民市', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1525', '沈北新区', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1526', '沈河区', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1527', '法库县', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1528', '皇姑区', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1529', '苏家屯区', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1530', '辽中县', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1531', '铁西区', '3', '107', '0');
INSERT INTO `bao_paddlist` VALUES ('1532', '中山区', '3', '108', '0');
INSERT INTO `bao_paddlist` VALUES ('1533', '庄河市', '3', '108', '0');
INSERT INTO `bao_paddlist` VALUES ('1534', '旅顺口区', '3', '108', '0');
INSERT INTO `bao_paddlist` VALUES ('1535', '普兰店市', '3', '108', '0');
INSERT INTO `bao_paddlist` VALUES ('1536', '沙河口区', '3', '108', '0');
INSERT INTO `bao_paddlist` VALUES ('1537', '瓦房店市', '3', '108', '0');
INSERT INTO `bao_paddlist` VALUES ('1538', '甘井子区', '3', '108', '0');
INSERT INTO `bao_paddlist` VALUES ('1539', '西岗区', '3', '108', '0');
INSERT INTO `bao_paddlist` VALUES ('1540', '金州区', '3', '108', '0');
INSERT INTO `bao_paddlist` VALUES ('1541', '长海县', '3', '108', '0');
INSERT INTO `bao_paddlist` VALUES ('1542', '千山区', '3', '109', '0');
INSERT INTO `bao_paddlist` VALUES ('1543', '台安县', '3', '109', '0');
INSERT INTO `bao_paddlist` VALUES ('1544', '岫岩满族自治县', '3', '109', '0');
INSERT INTO `bao_paddlist` VALUES ('1545', '海城市', '3', '109', '0');
INSERT INTO `bao_paddlist` VALUES ('1546', '立山区', '3', '109', '0');
INSERT INTO `bao_paddlist` VALUES ('1547', '铁东区', '3', '109', '0');
INSERT INTO `bao_paddlist` VALUES ('1548', '铁西区', '3', '109', '0');
INSERT INTO `bao_paddlist` VALUES ('1549', '东洲区', '3', '110', '0');
INSERT INTO `bao_paddlist` VALUES ('1550', '抚顺县', '3', '110', '0');
INSERT INTO `bao_paddlist` VALUES ('1551', '新宾满族自治县', '3', '110', '0');
INSERT INTO `bao_paddlist` VALUES ('1552', '新抚区', '3', '110', '0');
INSERT INTO `bao_paddlist` VALUES ('1553', '望花区', '3', '110', '0');
INSERT INTO `bao_paddlist` VALUES ('1554', '清原满族自治县', '3', '110', '0');
INSERT INTO `bao_paddlist` VALUES ('1555', '顺城区', '3', '110', '0');
INSERT INTO `bao_paddlist` VALUES ('1556', '南芬区', '3', '111', '0');
INSERT INTO `bao_paddlist` VALUES ('1557', '平山区', '3', '111', '0');
INSERT INTO `bao_paddlist` VALUES ('1558', '明山区', '3', '111', '0');
INSERT INTO `bao_paddlist` VALUES ('1559', '本溪满族自治县', '3', '111', '0');
INSERT INTO `bao_paddlist` VALUES ('1560', '桓仁满族自治县', '3', '111', '0');
INSERT INTO `bao_paddlist` VALUES ('1561', '溪湖区', '3', '111', '0');
INSERT INTO `bao_paddlist` VALUES ('1562', '东港市', '3', '112', '0');
INSERT INTO `bao_paddlist` VALUES ('1563', '元宝区', '3', '112', '0');
INSERT INTO `bao_paddlist` VALUES ('1564', '凤城市', '3', '112', '0');
INSERT INTO `bao_paddlist` VALUES ('1565', '宽甸满族自治县', '3', '112', '0');
INSERT INTO `bao_paddlist` VALUES ('1566', '振兴区', '3', '112', '0');
INSERT INTO `bao_paddlist` VALUES ('1567', '振安区', '3', '112', '0');
INSERT INTO `bao_paddlist` VALUES ('1568', '义县', '3', '113', '0');
INSERT INTO `bao_paddlist` VALUES ('1569', '凌河区', '3', '113', '0');
INSERT INTO `bao_paddlist` VALUES ('1570', '凌海市', '3', '113', '0');
INSERT INTO `bao_paddlist` VALUES ('1571', '北镇市', '3', '113', '0');
INSERT INTO `bao_paddlist` VALUES ('1572', '古塔区', '3', '113', '0');
INSERT INTO `bao_paddlist` VALUES ('1573', '太和区', '3', '113', '0');
INSERT INTO `bao_paddlist` VALUES ('1574', '黑山县', '3', '113', '0');
INSERT INTO `bao_paddlist` VALUES ('1575', '大石桥市', '3', '114', '0');
INSERT INTO `bao_paddlist` VALUES ('1576', '盖州市', '3', '114', '0');
INSERT INTO `bao_paddlist` VALUES ('1577', '站前区', '3', '114', '0');
INSERT INTO `bao_paddlist` VALUES ('1578', '老边区', '3', '114', '0');
INSERT INTO `bao_paddlist` VALUES ('1579', '西市区', '3', '114', '0');
INSERT INTO `bao_paddlist` VALUES ('1580', '鲅鱼圈区', '3', '114', '0');
INSERT INTO `bao_paddlist` VALUES ('1581', '太平区', '3', '115', '0');
INSERT INTO `bao_paddlist` VALUES ('1582', '彰武县', '3', '115', '0');
INSERT INTO `bao_paddlist` VALUES ('1583', '新邱区', '3', '115', '0');
INSERT INTO `bao_paddlist` VALUES ('1584', '海州区', '3', '115', '0');
INSERT INTO `bao_paddlist` VALUES ('1585', '清河门区', '3', '115', '0');
INSERT INTO `bao_paddlist` VALUES ('1586', '细河区', '3', '115', '0');
INSERT INTO `bao_paddlist` VALUES ('1587', '蒙古族自治县', '3', '115', '0');
INSERT INTO `bao_paddlist` VALUES ('1588', '太子河区', '3', '116', '0');
INSERT INTO `bao_paddlist` VALUES ('1589', '宏伟区', '3', '116', '0');
INSERT INTO `bao_paddlist` VALUES ('1590', '弓长岭区', '3', '116', '0');
INSERT INTO `bao_paddlist` VALUES ('1591', '文圣区', '3', '116', '0');
INSERT INTO `bao_paddlist` VALUES ('1592', '灯塔市', '3', '116', '0');
INSERT INTO `bao_paddlist` VALUES ('1593', '白塔区', '3', '116', '0');
INSERT INTO `bao_paddlist` VALUES ('1594', '辽阳县', '3', '116', '0');
INSERT INTO `bao_paddlist` VALUES ('1595', '兴隆台区', '3', '117', '0');
INSERT INTO `bao_paddlist` VALUES ('1596', '双台子区', '3', '117', '0');
INSERT INTO `bao_paddlist` VALUES ('1597', '大洼县', '3', '117', '0');
INSERT INTO `bao_paddlist` VALUES ('1598', '盘山县', '3', '117', '0');
INSERT INTO `bao_paddlist` VALUES ('1599', '开原市', '3', '118', '0');
INSERT INTO `bao_paddlist` VALUES ('1600', '昌图县', '3', '118', '0');
INSERT INTO `bao_paddlist` VALUES ('1601', '清河区', '3', '118', '0');
INSERT INTO `bao_paddlist` VALUES ('1602', '西丰县', '3', '118', '0');
INSERT INTO `bao_paddlist` VALUES ('1603', '调兵山市', '3', '118', '0');
INSERT INTO `bao_paddlist` VALUES ('1604', '铁岭县', '3', '118', '0');
INSERT INTO `bao_paddlist` VALUES ('1605', '银州区', '3', '118', '0');
INSERT INTO `bao_paddlist` VALUES ('1606', '凌源市', '3', '119', '0');
INSERT INTO `bao_paddlist` VALUES ('1607', '北票市', '3', '119', '0');
INSERT INTO `bao_paddlist` VALUES ('1608', '双塔区', '3', '119', '0');
INSERT INTO `bao_paddlist` VALUES ('1609', '喀喇沁左翼蒙古族自治县', '3', '119', '0');
INSERT INTO `bao_paddlist` VALUES ('1610', '建平县', '3', '119', '0');
INSERT INTO `bao_paddlist` VALUES ('1611', '朝阳县', '3', '119', '0');
INSERT INTO `bao_paddlist` VALUES ('1612', '龙城区', '3', '119', '0');
INSERT INTO `bao_paddlist` VALUES ('1613', '兴城市', '3', '120', '0');
INSERT INTO `bao_paddlist` VALUES ('1614', '南票区', '3', '120', '0');
INSERT INTO `bao_paddlist` VALUES ('1615', '建昌县', '3', '120', '0');
INSERT INTO `bao_paddlist` VALUES ('1616', '绥中县', '3', '120', '0');
INSERT INTO `bao_paddlist` VALUES ('1617', '连山区', '3', '120', '0');
INSERT INTO `bao_paddlist` VALUES ('1618', '龙港区', '3', '120', '0');
INSERT INTO `bao_paddlist` VALUES ('1619', '九台市', '3', '121', '0');
INSERT INTO `bao_paddlist` VALUES ('1620', '二道区', '3', '121', '0');
INSERT INTO `bao_paddlist` VALUES ('1621', '农安县', '3', '121', '0');
INSERT INTO `bao_paddlist` VALUES ('1622', '南关区', '3', '121', '0');
INSERT INTO `bao_paddlist` VALUES ('1623', '双阳区', '3', '121', '0');
INSERT INTO `bao_paddlist` VALUES ('1624', '宽城区', '3', '121', '0');
INSERT INTO `bao_paddlist` VALUES ('1625', '德惠市', '3', '121', '0');
INSERT INTO `bao_paddlist` VALUES ('1626', '朝阳区', '3', '121', '0');
INSERT INTO `bao_paddlist` VALUES ('1627', '榆树市', '3', '121', '0');
INSERT INTO `bao_paddlist` VALUES ('1628', '绿园区', '3', '121', '0');
INSERT INTO `bao_paddlist` VALUES ('1629', '丰满区', '3', '122', '0');
INSERT INTO `bao_paddlist` VALUES ('1630', '昌邑区', '3', '122', '0');
INSERT INTO `bao_paddlist` VALUES ('1631', '桦甸市', '3', '122', '0');
INSERT INTO `bao_paddlist` VALUES ('1632', '永吉县', '3', '122', '0');
INSERT INTO `bao_paddlist` VALUES ('1633', '磐石市', '3', '122', '0');
INSERT INTO `bao_paddlist` VALUES ('1634', '舒兰市', '3', '122', '0');
INSERT INTO `bao_paddlist` VALUES ('1635', '船营区', '3', '122', '0');
INSERT INTO `bao_paddlist` VALUES ('1636', '蛟河市', '3', '122', '0');
INSERT INTO `bao_paddlist` VALUES ('1637', '龙潭区', '3', '122', '0');
INSERT INTO `bao_paddlist` VALUES ('1638', '伊通满族自治县', '3', '123', '0');
INSERT INTO `bao_paddlist` VALUES ('1639', '公主岭市', '3', '123', '0');
INSERT INTO `bao_paddlist` VALUES ('1640', '双辽市', '3', '123', '0');
INSERT INTO `bao_paddlist` VALUES ('1641', '梨树县', '3', '123', '0');
INSERT INTO `bao_paddlist` VALUES ('1642', '铁东区', '3', '123', '0');
INSERT INTO `bao_paddlist` VALUES ('1643', '铁西区', '3', '123', '0');
INSERT INTO `bao_paddlist` VALUES ('1644', '东丰县', '3', '124', '0');
INSERT INTO `bao_paddlist` VALUES ('1645', '东辽县', '3', '124', '0');
INSERT INTO `bao_paddlist` VALUES ('1646', '西安区', '3', '124', '0');
INSERT INTO `bao_paddlist` VALUES ('1647', '龙山区', '3', '124', '0');
INSERT INTO `bao_paddlist` VALUES ('1648', '东昌区', '3', '125', '0');
INSERT INTO `bao_paddlist` VALUES ('1649', '二道江区', '3', '125', '0');
INSERT INTO `bao_paddlist` VALUES ('1650', '柳河县', '3', '125', '0');
INSERT INTO `bao_paddlist` VALUES ('1651', '梅河口市', '3', '125', '0');
INSERT INTO `bao_paddlist` VALUES ('1652', '辉南县', '3', '125', '0');
INSERT INTO `bao_paddlist` VALUES ('1653', '通化县', '3', '125', '0');
INSERT INTO `bao_paddlist` VALUES ('1654', '集安市', '3', '125', '0');
INSERT INTO `bao_paddlist` VALUES ('1655', '临江市', '3', '126', '0');
INSERT INTO `bao_paddlist` VALUES ('1656', '八道江区', '3', '126', '0');
INSERT INTO `bao_paddlist` VALUES ('1657', '抚松县', '3', '126', '0');
INSERT INTO `bao_paddlist` VALUES ('1658', '江源区', '3', '126', '0');
INSERT INTO `bao_paddlist` VALUES ('1659', '长白朝鲜族自治县', '3', '126', '0');
INSERT INTO `bao_paddlist` VALUES ('1660', '靖宇县', '3', '126', '0');
INSERT INTO `bao_paddlist` VALUES ('1661', '干安县', '3', '127', '0');
INSERT INTO `bao_paddlist` VALUES ('1662', '前郭尔罗斯蒙古族自治县', '3', '127', '0');
INSERT INTO `bao_paddlist` VALUES ('1663', '宁江区', '3', '127', '0');
INSERT INTO `bao_paddlist` VALUES ('1664', '扶余县', '3', '127', '0');
INSERT INTO `bao_paddlist` VALUES ('1665', '长岭县', '3', '127', '0');
INSERT INTO `bao_paddlist` VALUES ('1666', '大安市', '3', '128', '0');
INSERT INTO `bao_paddlist` VALUES ('1667', '洮北区', '3', '128', '0');
INSERT INTO `bao_paddlist` VALUES ('1668', '洮南市', '3', '128', '0');
INSERT INTO `bao_paddlist` VALUES ('1669', '通榆县', '3', '128', '0');
INSERT INTO `bao_paddlist` VALUES ('1670', '镇赉县', '3', '128', '0');
INSERT INTO `bao_paddlist` VALUES ('1671', '和龙市', '3', '129', '0');
INSERT INTO `bao_paddlist` VALUES ('1672', '图们市', '3', '129', '0');
INSERT INTO `bao_paddlist` VALUES ('1673', '安图县', '3', '129', '0');
INSERT INTO `bao_paddlist` VALUES ('1674', '延吉市', '3', '129', '0');
INSERT INTO `bao_paddlist` VALUES ('1675', '敦化市', '3', '129', '0');
INSERT INTO `bao_paddlist` VALUES ('1676', '汪清县', '3', '129', '0');
INSERT INTO `bao_paddlist` VALUES ('1677', '珲春市', '3', '129', '0');
INSERT INTO `bao_paddlist` VALUES ('1678', '龙井市', '3', '129', '0');
INSERT INTO `bao_paddlist` VALUES ('1679', '五常市', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1680', '依兰县', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1681', '南岗区', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1682', '双城市', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1683', '呼兰区', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1684', '哈尔滨市道里区', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1685', '宾县', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1686', '尚志市', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1687', '巴彦县', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1688', '平房区', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1689', '延寿县', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1690', '方正县', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1691', '木兰县', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1692', '松北区', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1693', '通河县', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1694', '道外区', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1695', '阿城区', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1696', '香坊区', '3', '130', '0');
INSERT INTO `bao_paddlist` VALUES ('1697', '依安县', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1698', '克东县', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1699', '克山县', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1700', '富拉尔基区', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1701', '富裕县', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1702', '建华区', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1703', '拜泉县', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1704', '昂昂溪区', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1705', '梅里斯达斡尔族区', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1706', '泰来县', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1707', '甘南县', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1708', '碾子山区', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1709', '讷河市', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1710', '铁锋区', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1711', '龙江县', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1712', '龙沙区', '3', '131', '0');
INSERT INTO `bao_paddlist` VALUES ('1713', '城子河区', '3', '132', '0');
INSERT INTO `bao_paddlist` VALUES ('1714', '密山市', '3', '132', '0');
INSERT INTO `bao_paddlist` VALUES ('1715', '恒山区', '3', '132', '0');
INSERT INTO `bao_paddlist` VALUES ('1716', '梨树区', '3', '132', '0');
INSERT INTO `bao_paddlist` VALUES ('1717', '滴道区', '3', '132', '0');
INSERT INTO `bao_paddlist` VALUES ('1718', '虎林市', '3', '132', '0');
INSERT INTO `bao_paddlist` VALUES ('1719', '鸡东县', '3', '132', '0');
INSERT INTO `bao_paddlist` VALUES ('1720', '鸡冠区', '3', '132', '0');
INSERT INTO `bao_paddlist` VALUES ('1721', '麻山区', '3', '132', '0');
INSERT INTO `bao_paddlist` VALUES ('1722', '东山区', '3', '133', '0');
INSERT INTO `bao_paddlist` VALUES ('1723', '兴安区', '3', '133', '0');
INSERT INTO `bao_paddlist` VALUES ('1724', '兴山区', '3', '133', '0');
INSERT INTO `bao_paddlist` VALUES ('1725', '南山区', '3', '133', '0');
INSERT INTO `bao_paddlist` VALUES ('1726', '向阳区', '3', '133', '0');
INSERT INTO `bao_paddlist` VALUES ('1727', '工农区', '3', '133', '0');
INSERT INTO `bao_paddlist` VALUES ('1728', '绥滨县', '3', '133', '0');
INSERT INTO `bao_paddlist` VALUES ('1729', '萝北县', '3', '133', '0');
INSERT INTO `bao_paddlist` VALUES ('1730', '友谊县', '3', '134', '0');
INSERT INTO `bao_paddlist` VALUES ('1731', '四方台区', '3', '134', '0');
INSERT INTO `bao_paddlist` VALUES ('1732', '宝山区', '3', '134', '0');
INSERT INTO `bao_paddlist` VALUES ('1733', '宝清县', '3', '134', '0');
INSERT INTO `bao_paddlist` VALUES ('1734', '尖山区', '3', '134', '0');
INSERT INTO `bao_paddlist` VALUES ('1735', '岭东区', '3', '134', '0');
INSERT INTO `bao_paddlist` VALUES ('1736', '集贤县', '3', '134', '0');
INSERT INTO `bao_paddlist` VALUES ('1737', '饶河县', '3', '134', '0');
INSERT INTO `bao_paddlist` VALUES ('1738', '大同区', '3', '135', '0');
INSERT INTO `bao_paddlist` VALUES ('1739', '杜尔伯特蒙古族自治县', '3', '135', '0');
INSERT INTO `bao_paddlist` VALUES ('1740', '林甸县', '3', '135', '0');
INSERT INTO `bao_paddlist` VALUES ('1741', '红岗区', '3', '135', '0');
INSERT INTO `bao_paddlist` VALUES ('1742', '肇州县', '3', '135', '0');
INSERT INTO `bao_paddlist` VALUES ('1743', '肇源县', '3', '135', '0');
INSERT INTO `bao_paddlist` VALUES ('1744', '胡路区', '3', '135', '0');
INSERT INTO `bao_paddlist` VALUES ('1745', '萨尔图区', '3', '135', '0');
INSERT INTO `bao_paddlist` VALUES ('1746', '龙凤区', '3', '135', '0');
INSERT INTO `bao_paddlist` VALUES ('1747', '上甘岭区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1748', '乌伊岭区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1749', '乌马河区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1750', '五营区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1751', '伊春区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1752', '南岔区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1753', '友好区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1754', '嘉荫县', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1755', '带岭区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1756', '新青区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1757', '汤旺河区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1758', '红星区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1759', '美溪区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1760', '翠峦区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1761', '西林区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1762', '金山屯区', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1763', '铁力市', '3', '136', '0');
INSERT INTO `bao_paddlist` VALUES ('1764', '东风区', '3', '137', '0');
INSERT INTO `bao_paddlist` VALUES ('1765', '前进区', '3', '137', '0');
INSERT INTO `bao_paddlist` VALUES ('1766', '同江市', '3', '137', '0');
INSERT INTO `bao_paddlist` VALUES ('1767', '向阳区', '3', '137', '0');
INSERT INTO `bao_paddlist` VALUES ('1768', '富锦市', '3', '137', '0');
INSERT INTO `bao_paddlist` VALUES ('1769', '抚远县', '3', '137', '0');
INSERT INTO `bao_paddlist` VALUES ('1770', '桦南县', '3', '137', '0');
INSERT INTO `bao_paddlist` VALUES ('1771', '桦川县', '3', '137', '0');
INSERT INTO `bao_paddlist` VALUES ('1772', '汤原县', '3', '137', '0');
INSERT INTO `bao_paddlist` VALUES ('1773', '郊区', '3', '137', '0');
INSERT INTO `bao_paddlist` VALUES ('1774', '勃利县', '3', '138', '0');
INSERT INTO `bao_paddlist` VALUES ('1775', '新兴区', '3', '138', '0');
INSERT INTO `bao_paddlist` VALUES ('1776', '桃山区', '3', '138', '0');
INSERT INTO `bao_paddlist` VALUES ('1777', '茄子河区', '3', '138', '0');
INSERT INTO `bao_paddlist` VALUES ('1778', '东宁县', '3', '139', '0');
INSERT INTO `bao_paddlist` VALUES ('1779', '东安区', '3', '139', '0');
INSERT INTO `bao_paddlist` VALUES ('1780', '宁安市', '3', '139', '0');
INSERT INTO `bao_paddlist` VALUES ('1781', '林口县', '3', '139', '0');
INSERT INTO `bao_paddlist` VALUES ('1782', '海林市', '3', '139', '0');
INSERT INTO `bao_paddlist` VALUES ('1783', '爱民区', '3', '139', '0');
INSERT INTO `bao_paddlist` VALUES ('1784', '穆棱市', '3', '139', '0');
INSERT INTO `bao_paddlist` VALUES ('1785', '绥芬河市', '3', '139', '0');
INSERT INTO `bao_paddlist` VALUES ('1786', '西安区', '3', '139', '0');
INSERT INTO `bao_paddlist` VALUES ('1787', '阳明区', '3', '139', '0');
INSERT INTO `bao_paddlist` VALUES ('1788', '五大连池市', '3', '140', '0');
INSERT INTO `bao_paddlist` VALUES ('1789', '北安市', '3', '140', '0');
INSERT INTO `bao_paddlist` VALUES ('1790', '嫩江县', '3', '140', '0');
INSERT INTO `bao_paddlist` VALUES ('1791', '孙吴县', '3', '140', '0');
INSERT INTO `bao_paddlist` VALUES ('1792', '爱辉区', '3', '140', '0');
INSERT INTO `bao_paddlist` VALUES ('1793', '车逊克县', '3', '140', '0');
INSERT INTO `bao_paddlist` VALUES ('1794', '逊克县', '3', '140', '0');
INSERT INTO `bao_paddlist` VALUES ('1795', '兰西县', '3', '141', '0');
INSERT INTO `bao_paddlist` VALUES ('1796', '安达市', '3', '141', '0');
INSERT INTO `bao_paddlist` VALUES ('1797', '庆安县', '3', '141', '0');
INSERT INTO `bao_paddlist` VALUES ('1798', '明水县', '3', '141', '0');
INSERT INTO `bao_paddlist` VALUES ('1799', '望奎县', '3', '141', '0');
INSERT INTO `bao_paddlist` VALUES ('1800', '海伦市', '3', '141', '0');
INSERT INTO `bao_paddlist` VALUES ('1801', '绥化市北林区', '3', '141', '0');
INSERT INTO `bao_paddlist` VALUES ('1802', '绥棱县', '3', '141', '0');
INSERT INTO `bao_paddlist` VALUES ('1803', '肇东市', '3', '141', '0');
INSERT INTO `bao_paddlist` VALUES ('1804', '青冈县', '3', '141', '0');
INSERT INTO `bao_paddlist` VALUES ('1805', '呼玛县', '3', '142', '0');
INSERT INTO `bao_paddlist` VALUES ('1806', '塔河县', '3', '142', '0');
INSERT INTO `bao_paddlist` VALUES ('1807', '大兴安岭地区加格达奇区', '3', '142', '0');
INSERT INTO `bao_paddlist` VALUES ('1808', '大兴安岭地区呼中区', '3', '142', '0');
INSERT INTO `bao_paddlist` VALUES ('1809', '大兴安岭地区新林区', '3', '142', '0');
INSERT INTO `bao_paddlist` VALUES ('1810', '大兴安岭地区松岭区', '3', '142', '0');
INSERT INTO `bao_paddlist` VALUES ('1811', '漠河县', '3', '142', '0');
INSERT INTO `bao_paddlist` VALUES ('1812', '半淞园路街道', '3', '143', '0');
INSERT INTO `bao_paddlist` VALUES ('1813', '南京东路街道', '3', '143', '0');
INSERT INTO `bao_paddlist` VALUES ('1814', '外滩街道', '3', '143', '0');
INSERT INTO `bao_paddlist` VALUES ('1815', '小东门街道', '3', '143', '0');
INSERT INTO `bao_paddlist` VALUES ('1816', '老西门街道', '3', '143', '0');
INSERT INTO `bao_paddlist` VALUES ('1817', '豫园街道', '3', '143', '0');
INSERT INTO `bao_paddlist` VALUES ('1818', '五里桥街道', '3', '144', '0');
INSERT INTO `bao_paddlist` VALUES ('1819', '打浦桥街道', '3', '144', '0');
INSERT INTO `bao_paddlist` VALUES ('1820', '淮海中路街道', '3', '144', '0');
INSERT INTO `bao_paddlist` VALUES ('1821', '瑞金二路街道', '3', '144', '0');
INSERT INTO `bao_paddlist` VALUES ('1822', '凌云路街道', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1823', '华泾镇', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1824', '天平路街道', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1825', '康健新村街道', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1826', '徐家汇街道', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1827', '斜土路街道', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1828', '枫林路街道', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1829', '湖南路街道', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1830', '漕河泾街道', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1831', '田林街道', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1832', '虹梅路街道', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1833', '长桥街道', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1834', '龙华街道', '3', '145', '0');
INSERT INTO `bao_paddlist` VALUES ('1835', '仙霞新村街道', '3', '146', '0');
INSERT INTO `bao_paddlist` VALUES ('1836', '北新泾街道', '3', '146', '0');
INSERT INTO `bao_paddlist` VALUES ('1837', '华阳路街道', '3', '146', '0');
INSERT INTO `bao_paddlist` VALUES ('1838', '周家桥街道', '3', '146', '0');
INSERT INTO `bao_paddlist` VALUES ('1839', '天山路街道', '3', '146', '0');
INSERT INTO `bao_paddlist` VALUES ('1840', '新华路街道', '3', '146', '0');
INSERT INTO `bao_paddlist` VALUES ('1841', '新泾镇', '3', '146', '0');
INSERT INTO `bao_paddlist` VALUES ('1842', '江苏路街道', '3', '146', '0');
INSERT INTO `bao_paddlist` VALUES ('1843', '程家桥街道', '3', '146', '0');
INSERT INTO `bao_paddlist` VALUES ('1844', '虹桥街道', '3', '146', '0');
INSERT INTO `bao_paddlist` VALUES ('1845', '南京西路街道', '3', '147', '0');
INSERT INTO `bao_paddlist` VALUES ('1846', '曹家渡街道', '3', '147', '0');
INSERT INTO `bao_paddlist` VALUES ('1847', '江宁路街道', '3', '147', '0');
INSERT INTO `bao_paddlist` VALUES ('1848', '石门二路街道', '3', '147', '0');
INSERT INTO `bao_paddlist` VALUES ('1849', '静安寺街道', '3', '147', '0');
INSERT INTO `bao_paddlist` VALUES ('1850', '宜川路街道', '3', '148', '0');
INSERT INTO `bao_paddlist` VALUES ('1851', '曹杨新村街道', '3', '148', '0');
INSERT INTO `bao_paddlist` VALUES ('1852', '桃浦镇', '3', '148', '0');
INSERT INTO `bao_paddlist` VALUES ('1853', '甘泉路街道', '3', '148', '0');
INSERT INTO `bao_paddlist` VALUES ('1854', '真如镇', '3', '148', '0');
INSERT INTO `bao_paddlist` VALUES ('1855', '石泉路街道', '3', '148', '0');
INSERT INTO `bao_paddlist` VALUES ('1856', '长寿路街道', '3', '148', '0');
INSERT INTO `bao_paddlist` VALUES ('1857', '长征镇', '3', '148', '0');
INSERT INTO `bao_paddlist` VALUES ('1858', '长风新村街道', '3', '148', '0');
INSERT INTO `bao_paddlist` VALUES ('1859', '临汾路街道', '3', '149', '0');
INSERT INTO `bao_paddlist` VALUES ('1860', '共和新路街道', '3', '149', '0');
INSERT INTO `bao_paddlist` VALUES ('1861', '北站街道', '3', '149', '0');
INSERT INTO `bao_paddlist` VALUES ('1862', '大宁路街道', '3', '149', '0');
INSERT INTO `bao_paddlist` VALUES ('1863', '天目西路街道', '3', '149', '0');
INSERT INTO `bao_paddlist` VALUES ('1864', '宝山路街道', '3', '149', '0');
INSERT INTO `bao_paddlist` VALUES ('1865', '彭浦新村街道', '3', '149', '0');
INSERT INTO `bao_paddlist` VALUES ('1866', '彭浦镇', '3', '149', '0');
INSERT INTO `bao_paddlist` VALUES ('1867', '芷江西路街道', '3', '149', '0');
INSERT INTO `bao_paddlist` VALUES ('1868', '乍浦路街道', '3', '150', '0');
INSERT INTO `bao_paddlist` VALUES ('1869', '凉城新村街道', '3', '150', '0');
INSERT INTO `bao_paddlist` VALUES ('1870', '嘉兴路街道', '3', '150', '0');
INSERT INTO `bao_paddlist` VALUES ('1871', '四川北路街道', '3', '150', '0');
INSERT INTO `bao_paddlist` VALUES ('1872', '广中路街道', '3', '150', '0');
INSERT INTO `bao_paddlist` VALUES ('1873', '提篮桥街道', '3', '150', '0');
INSERT INTO `bao_paddlist` VALUES ('1874', '新港路街道', '3', '150', '0');
INSERT INTO `bao_paddlist` VALUES ('1875', '曲阳路街道', '3', '150', '0');
INSERT INTO `bao_paddlist` VALUES ('1876', '欧阳路街道', '3', '150', '0');
INSERT INTO `bao_paddlist` VALUES ('1877', '江湾镇街道', '3', '150', '0');
INSERT INTO `bao_paddlist` VALUES ('1878', '五角场街道', '3', '151', '0');
INSERT INTO `bao_paddlist` VALUES ('1879', '五角场镇', '3', '151', '0');
INSERT INTO `bao_paddlist` VALUES ('1880', '四平路街道', '3', '151', '0');
INSERT INTO `bao_paddlist` VALUES ('1881', '大桥街道', '3', '151', '0');
INSERT INTO `bao_paddlist` VALUES ('1882', '定海路街道', '3', '151', '0');
INSERT INTO `bao_paddlist` VALUES ('1883', '平凉路街道', '3', '151', '0');
INSERT INTO `bao_paddlist` VALUES ('1884', '延吉新村街道', '3', '151', '0');
INSERT INTO `bao_paddlist` VALUES ('1885', '控江路街道', '3', '151', '0');
INSERT INTO `bao_paddlist` VALUES ('1886', '新江湾城街道', '3', '151', '0');
INSERT INTO `bao_paddlist` VALUES ('1887', '殷行街道', '3', '151', '0');
INSERT INTO `bao_paddlist` VALUES ('1888', '江浦路街道', '3', '151', '0');
INSERT INTO `bao_paddlist` VALUES ('1889', '长白新村街道', '3', '151', '0');
INSERT INTO `bao_paddlist` VALUES ('1890', '七宝镇', '3', '152', '0');
INSERT INTO `bao_paddlist` VALUES ('1891', '华漕镇', '3', '152', '0');
INSERT INTO `bao_paddlist` VALUES ('1892', '古美街道', '3', '152', '0');
INSERT INTO `bao_paddlist` VALUES ('1893', '吴泾镇', '3', '152', '0');
INSERT INTO `bao_paddlist` VALUES ('1894', '梅陇镇', '3', '152', '0');
INSERT INTO `bao_paddlist` VALUES ('1895', '江川路街道', '3', '152', '0');
INSERT INTO `bao_paddlist` VALUES ('1896', '浦江镇', '3', '152', '0');
INSERT INTO `bao_paddlist` VALUES ('1897', '莘庄镇', '3', '152', '0');
INSERT INTO `bao_paddlist` VALUES ('1898', '虹桥镇', '3', '152', '0');
INSERT INTO `bao_paddlist` VALUES ('1899', '颛桥镇', '3', '152', '0');
INSERT INTO `bao_paddlist` VALUES ('1900', '马桥镇', '3', '152', '0');
INSERT INTO `bao_paddlist` VALUES ('1901', '龙柏街道', '3', '152', '0');
INSERT INTO `bao_paddlist` VALUES ('1902', '友谊路街道', '3', '153', '0');
INSERT INTO `bao_paddlist` VALUES ('1903', '吴淞街道', '3', '153', '0');
INSERT INTO `bao_paddlist` VALUES ('1904', '大场镇', '3', '153', '0');
INSERT INTO `bao_paddlist` VALUES ('1905', '庙行镇', '3', '153', '0');
INSERT INTO `bao_paddlist` VALUES ('1906', '张庙街道', '3', '153', '0');
INSERT INTO `bao_paddlist` VALUES ('1907', '月浦镇', '3', '153', '0');
INSERT INTO `bao_paddlist` VALUES ('1908', '杨行镇', '3', '153', '0');
INSERT INTO `bao_paddlist` VALUES ('1909', '淞南镇', '3', '153', '0');
INSERT INTO `bao_paddlist` VALUES ('1910', '罗店镇', '3', '153', '0');
INSERT INTO `bao_paddlist` VALUES ('1911', '罗泾镇', '3', '153', '0');
INSERT INTO `bao_paddlist` VALUES ('1912', '顾村镇', '3', '153', '0');
INSERT INTO `bao_paddlist` VALUES ('1913', '高境镇', '3', '153', '0');
INSERT INTO `bao_paddlist` VALUES ('1914', '华亭镇', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1915', '南翔镇', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1916', '嘉定工业区', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1917', '嘉定镇街道', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1918', '外冈镇', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1919', '安亭镇', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1920', '徐行镇', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1921', '新成路街道', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1922', '江桥镇', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1923', '真新新村街道', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1924', '菊园新区', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1925', '马陆镇', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1926', '黄渡镇', '3', '154', '0');
INSERT INTO `bao_paddlist` VALUES ('1927', '三林镇', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1928', '上钢新村街道', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1929', '东明路街道', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1930', '北蔡镇', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1931', '南码头路街道', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1932', '合庆镇', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1933', '周家渡街道', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1934', '唐镇', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1935', '塘桥街道', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1936', '川沙新镇', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1937', '张江镇', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1938', '曹路镇', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1939', '沪东新村街道', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1940', '洋泾街道', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1941', '浦兴路街道', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1942', '潍坊新村街道', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1943', '花木街道', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1944', '金杨新村街道', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1945', '金桥镇', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1946', '陆家嘴街道', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1947', '高东镇', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1948', '高桥镇', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1949', '高行镇', '3', '155', '0');
INSERT INTO `bao_paddlist` VALUES ('1950', '亭林镇', '3', '156', '0');
INSERT INTO `bao_paddlist` VALUES ('1951', '吕巷镇', '3', '156', '0');
INSERT INTO `bao_paddlist` VALUES ('1952', '山阳镇', '3', '156', '0');
INSERT INTO `bao_paddlist` VALUES ('1953', '廊下镇', '3', '156', '0');
INSERT INTO `bao_paddlist` VALUES ('1954', '张堰镇', '3', '156', '0');
INSERT INTO `bao_paddlist` VALUES ('1955', '朱泾镇', '3', '156', '0');
INSERT INTO `bao_paddlist` VALUES ('1956', '枫泾镇', '3', '156', '0');
INSERT INTO `bao_paddlist` VALUES ('1957', '漕泾镇', '3', '156', '0');
INSERT INTO `bao_paddlist` VALUES ('1958', '石化街道', '3', '156', '0');
INSERT INTO `bao_paddlist` VALUES ('1959', '金山卫镇', '3', '156', '0');
INSERT INTO `bao_paddlist` VALUES ('1960', '上海松江科技园区', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1961', '中山街道', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1962', '九亭镇', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1963', '五厍农业园区', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1964', '佘山度假区', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1965', '佘山镇', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1966', '叶榭镇', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1967', '岳阳街道', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1968', '新桥镇', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1969', '新浜镇', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1970', '方松街道', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1971', '松江工业区', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1972', '永丰街道', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1973', '泖港镇', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1974', '泗泾镇', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1975', '洞泾镇', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1976', '石湖荡镇', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1977', '车墩镇', '3', '157', '0');
INSERT INTO `bao_paddlist` VALUES ('1978', '华新镇', '3', '158', '0');
INSERT INTO `bao_paddlist` VALUES ('1979', '夏阳街道', '3', '158', '0');
INSERT INTO `bao_paddlist` VALUES ('1980', '徐泾镇', '3', '158', '0');
INSERT INTO `bao_paddlist` VALUES ('1981', '朱家角镇', '3', '158', '0');
INSERT INTO `bao_paddlist` VALUES ('1982', '白鹤镇', '3', '158', '0');
INSERT INTO `bao_paddlist` VALUES ('1983', '盈浦街道', '3', '158', '0');
INSERT INTO `bao_paddlist` VALUES ('1984', '练塘镇', '3', '158', '0');
INSERT INTO `bao_paddlist` VALUES ('1985', '赵巷镇', '3', '158', '0');
INSERT INTO `bao_paddlist` VALUES ('1986', '重固镇', '3', '158', '0');
INSERT INTO `bao_paddlist` VALUES ('1987', '金泽镇', '3', '158', '0');
INSERT INTO `bao_paddlist` VALUES ('1988', '香花桥街道', '3', '158', '0');
INSERT INTO `bao_paddlist` VALUES ('1989', '万祥镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('1990', '书院镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('1991', '六灶镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('1992', '周浦镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('1993', '大团镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('1994', '宣桥镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('1995', '康桥镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('1996', '惠南镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('1997', '新场镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('1998', '泥城镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('1999', '祝桥镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('2000', '老港镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('2001', '航头镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('2002', '芦潮港镇', '3', '159', '0');
INSERT INTO `bao_paddlist` VALUES ('2003', '南桥镇', '3', '160', '0');
INSERT INTO `bao_paddlist` VALUES ('2004', '四团镇', '3', '160', '0');
INSERT INTO `bao_paddlist` VALUES ('2005', '奉城镇', '3', '160', '0');
INSERT INTO `bao_paddlist` VALUES ('2006', '庄行镇', '3', '160', '0');
INSERT INTO `bao_paddlist` VALUES ('2007', '柘林镇', '3', '160', '0');
INSERT INTO `bao_paddlist` VALUES ('2008', '海湾镇', '3', '160', '0');
INSERT INTO `bao_paddlist` VALUES ('2009', '金汇镇', '3', '160', '0');
INSERT INTO `bao_paddlist` VALUES ('2010', '青村镇', '3', '160', '0');
INSERT INTO `bao_paddlist` VALUES ('2011', '三星镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2012', '中兴镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2013', '向化镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2014', '城桥镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2015', '堡镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2016', '庙镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2017', '建设镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2018', '新村乡', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2019', '新河镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2020', '横沙乡', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2021', '港沿镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2022', '港西镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2023', '竖新镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2024', '绿华镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2025', '长兴乡', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2026', '陈家镇', '3', '161', '0');
INSERT INTO `bao_paddlist` VALUES ('2027', '下关区', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2028', '六合区', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2029', '建邺区', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2030', '栖霞区', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2031', '江宁区', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2032', '浦口区', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2033', '溧水县', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2034', '玄武区', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2035', '白下区', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2036', '秦淮区', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2037', '雨花台区', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2038', '高淳县', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2039', '鼓楼区', '3', '162', '0');
INSERT INTO `bao_paddlist` VALUES ('2040', '北塘区', '3', '163', '0');
INSERT INTO `bao_paddlist` VALUES ('2041', '南长区', '3', '163', '0');
INSERT INTO `bao_paddlist` VALUES ('2042', '宜兴市', '3', '163', '0');
INSERT INTO `bao_paddlist` VALUES ('2043', '崇安区', '3', '163', '0');
INSERT INTO `bao_paddlist` VALUES ('2044', '惠山区', '3', '163', '0');
INSERT INTO `bao_paddlist` VALUES ('2045', '江阴市', '3', '163', '0');
INSERT INTO `bao_paddlist` VALUES ('2046', '滨湖区', '3', '163', '0');
INSERT INTO `bao_paddlist` VALUES ('2047', '锡山区', '3', '163', '0');
INSERT INTO `bao_paddlist` VALUES ('2048', '丰县', '3', '164', '0');
INSERT INTO `bao_paddlist` VALUES ('2049', '九里区', '3', '164', '0');
INSERT INTO `bao_paddlist` VALUES ('2050', '云龙区', '3', '164', '0');
INSERT INTO `bao_paddlist` VALUES ('2051', '新沂市', '3', '164', '0');
INSERT INTO `bao_paddlist` VALUES ('2052', '沛县', '3', '164', '0');
INSERT INTO `bao_paddlist` VALUES ('2053', '泉山区', '3', '164', '0');
INSERT INTO `bao_paddlist` VALUES ('2054', '睢宁县', '3', '164', '0');
INSERT INTO `bao_paddlist` VALUES ('2055', '贾汪区', '3', '164', '0');
INSERT INTO `bao_paddlist` VALUES ('2056', '邳州市', '3', '164', '0');
INSERT INTO `bao_paddlist` VALUES ('2057', '铜山县', '3', '164', '0');
INSERT INTO `bao_paddlist` VALUES ('2058', '鼓楼区', '3', '164', '0');
INSERT INTO `bao_paddlist` VALUES ('2059', '天宁区', '3', '165', '0');
INSERT INTO `bao_paddlist` VALUES ('2060', '戚墅堰区', '3', '165', '0');
INSERT INTO `bao_paddlist` VALUES ('2061', '新北区', '3', '165', '0');
INSERT INTO `bao_paddlist` VALUES ('2062', '武进区', '3', '165', '0');
INSERT INTO `bao_paddlist` VALUES ('2063', '溧阳市', '3', '165', '0');
INSERT INTO `bao_paddlist` VALUES ('2064', '金坛市', '3', '165', '0');
INSERT INTO `bao_paddlist` VALUES ('2065', '钟楼区', '3', '165', '0');
INSERT INTO `bao_paddlist` VALUES ('2066', '吴中区', '3', '166', '0');
INSERT INTO `bao_paddlist` VALUES ('2067', '吴江市', '3', '166', '0');
INSERT INTO `bao_paddlist` VALUES ('2068', '太仓市', '3', '166', '0');
INSERT INTO `bao_paddlist` VALUES ('2069', '常熟市', '3', '166', '0');
INSERT INTO `bao_paddlist` VALUES ('2070', '平江区', '3', '166', '0');
INSERT INTO `bao_paddlist` VALUES ('2071', '张家港市', '3', '166', '0');
INSERT INTO `bao_paddlist` VALUES ('2072', '昆山市', '3', '166', '0');
INSERT INTO `bao_paddlist` VALUES ('2073', '沧浪区', '3', '166', '0');
INSERT INTO `bao_paddlist` VALUES ('2074', '相城区', '3', '166', '0');
INSERT INTO `bao_paddlist` VALUES ('2075', '苏州工业园区', '3', '166', '0');
INSERT INTO `bao_paddlist` VALUES ('2076', '虎丘区', '3', '166', '0');
INSERT INTO `bao_paddlist` VALUES ('2077', '金阊区', '3', '166', '0');
INSERT INTO `bao_paddlist` VALUES ('2078', '启东市', '3', '167', '0');
INSERT INTO `bao_paddlist` VALUES ('2079', '如东县', '3', '167', '0');
INSERT INTO `bao_paddlist` VALUES ('2080', '如皋市', '3', '167', '0');
INSERT INTO `bao_paddlist` VALUES ('2081', '崇川区', '3', '167', '0');
INSERT INTO `bao_paddlist` VALUES ('2082', '海安县', '3', '167', '0');
INSERT INTO `bao_paddlist` VALUES ('2083', '海门市', '3', '167', '0');
INSERT INTO `bao_paddlist` VALUES ('2084', '港闸区', '3', '167', '0');
INSERT INTO `bao_paddlist` VALUES ('2085', '通州市', '3', '167', '0');
INSERT INTO `bao_paddlist` VALUES ('2086', '东海县', '3', '168', '0');
INSERT INTO `bao_paddlist` VALUES ('2087', '新浦区', '3', '168', '0');
INSERT INTO `bao_paddlist` VALUES ('2088', '海州区', '3', '168', '0');
INSERT INTO `bao_paddlist` VALUES ('2089', '灌云县', '3', '168', '0');
INSERT INTO `bao_paddlist` VALUES ('2090', '灌南县', '3', '168', '0');
INSERT INTO `bao_paddlist` VALUES ('2091', '赣榆县', '3', '168', '0');
INSERT INTO `bao_paddlist` VALUES ('2092', '连云区', '3', '168', '0');
INSERT INTO `bao_paddlist` VALUES ('2093', '楚州区', '3', '169', '0');
INSERT INTO `bao_paddlist` VALUES ('2094', '洪泽县', '3', '169', '0');
INSERT INTO `bao_paddlist` VALUES ('2095', '涟水县', '3', '169', '0');
INSERT INTO `bao_paddlist` VALUES ('2096', '淮阴区', '3', '169', '0');
INSERT INTO `bao_paddlist` VALUES ('2097', '清河区', '3', '169', '0');
INSERT INTO `bao_paddlist` VALUES ('2098', '清浦区', '3', '169', '0');
INSERT INTO `bao_paddlist` VALUES ('2099', '盱眙县', '3', '169', '0');
INSERT INTO `bao_paddlist` VALUES ('2100', '金湖县', '3', '169', '0');
INSERT INTO `bao_paddlist` VALUES ('2101', '东台市', '3', '170', '0');
INSERT INTO `bao_paddlist` VALUES ('2102', '亭湖区', '3', '170', '0');
INSERT INTO `bao_paddlist` VALUES ('2103', '响水县', '3', '170', '0');
INSERT INTO `bao_paddlist` VALUES ('2104', '大丰市', '3', '170', '0');
INSERT INTO `bao_paddlist` VALUES ('2105', '射阳县', '3', '170', '0');
INSERT INTO `bao_paddlist` VALUES ('2106', '建湖县', '3', '170', '0');
INSERT INTO `bao_paddlist` VALUES ('2107', '滨海县', '3', '170', '0');
INSERT INTO `bao_paddlist` VALUES ('2108', '盐都区', '3', '170', '0');
INSERT INTO `bao_paddlist` VALUES ('2109', '阜宁县', '3', '170', '0');
INSERT INTO `bao_paddlist` VALUES ('2110', '仪征市', '3', '171', '0');
INSERT INTO `bao_paddlist` VALUES ('2111', '宝应县', '3', '171', '0');
INSERT INTO `bao_paddlist` VALUES ('2112', '广陵区', '3', '171', '0');
INSERT INTO `bao_paddlist` VALUES ('2113', '江都市', '3', '171', '0');
INSERT INTO `bao_paddlist` VALUES ('2114', '维扬区', '3', '171', '0');
INSERT INTO `bao_paddlist` VALUES ('2115', '邗江区', '3', '171', '0');
INSERT INTO `bao_paddlist` VALUES ('2116', '高邮市', '3', '171', '0');
INSERT INTO `bao_paddlist` VALUES ('2117', '丹徒区', '3', '172', '0');
INSERT INTO `bao_paddlist` VALUES ('2118', '丹阳市', '3', '172', '0');
INSERT INTO `bao_paddlist` VALUES ('2119', '京口区', '3', '172', '0');
INSERT INTO `bao_paddlist` VALUES ('2120', '句容市', '3', '172', '0');
INSERT INTO `bao_paddlist` VALUES ('2121', '扬中市', '3', '172', '0');
INSERT INTO `bao_paddlist` VALUES ('2122', '润州区', '3', '172', '0');
INSERT INTO `bao_paddlist` VALUES ('2123', '兴化市', '3', '173', '0');
INSERT INTO `bao_paddlist` VALUES ('2124', '姜堰市', '3', '173', '0');
INSERT INTO `bao_paddlist` VALUES ('2125', '泰兴市', '3', '173', '0');
INSERT INTO `bao_paddlist` VALUES ('2126', '海陵区', '3', '173', '0');
INSERT INTO `bao_paddlist` VALUES ('2127', '靖江市', '3', '173', '0');
INSERT INTO `bao_paddlist` VALUES ('2128', '高港区', '3', '173', '0');
INSERT INTO `bao_paddlist` VALUES ('2129', '宿城区', '3', '174', '0');
INSERT INTO `bao_paddlist` VALUES ('2130', '宿豫区', '3', '174', '0');
INSERT INTO `bao_paddlist` VALUES ('2131', '沭阳县', '3', '174', '0');
INSERT INTO `bao_paddlist` VALUES ('2132', '泗洪县', '3', '174', '0');
INSERT INTO `bao_paddlist` VALUES ('2133', '泗阳县', '3', '174', '0');
INSERT INTO `bao_paddlist` VALUES ('2134', '上城区', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2135', '下城区', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2136', '临安市', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2137', '余杭区', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2138', '富阳市', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2139', '建德市', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2140', '拱墅区', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2141', '桐庐县', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2142', '江干区', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2143', '淳安县', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2144', '滨江区', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2145', '萧山区', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2146', '西湖区', '3', '175', '0');
INSERT INTO `bao_paddlist` VALUES ('2147', '余姚市', '3', '176', '0');
INSERT INTO `bao_paddlist` VALUES ('2148', '北仑区', '3', '176', '0');
INSERT INTO `bao_paddlist` VALUES ('2149', '奉化市', '3', '176', '0');
INSERT INTO `bao_paddlist` VALUES ('2150', '宁海县', '3', '176', '0');
INSERT INTO `bao_paddlist` VALUES ('2151', '慈溪市', '3', '176', '0');
INSERT INTO `bao_paddlist` VALUES ('2152', '江东区', '3', '176', '0');
INSERT INTO `bao_paddlist` VALUES ('2153', '江北区', '3', '176', '0');
INSERT INTO `bao_paddlist` VALUES ('2154', '海曙区', '3', '176', '0');
INSERT INTO `bao_paddlist` VALUES ('2155', '象山县', '3', '176', '0');
INSERT INTO `bao_paddlist` VALUES ('2156', '鄞州区', '3', '176', '0');
INSERT INTO `bao_paddlist` VALUES ('2157', '镇海区', '3', '176', '0');
INSERT INTO `bao_paddlist` VALUES ('2158', '乐清市', '3', '177', '0');
INSERT INTO `bao_paddlist` VALUES ('2159', '平阳县', '3', '177', '0');
INSERT INTO `bao_paddlist` VALUES ('2160', '文成县', '3', '177', '0');
INSERT INTO `bao_paddlist` VALUES ('2161', '永嘉县', '3', '177', '0');
INSERT INTO `bao_paddlist` VALUES ('2162', '泰顺县', '3', '177', '0');
INSERT INTO `bao_paddlist` VALUES ('2163', '洞头县', '3', '177', '0');
INSERT INTO `bao_paddlist` VALUES ('2164', '瑞安市', '3', '177', '0');
INSERT INTO `bao_paddlist` VALUES ('2165', '瓯海区', '3', '177', '0');
INSERT INTO `bao_paddlist` VALUES ('2166', '苍南县', '3', '177', '0');
INSERT INTO `bao_paddlist` VALUES ('2167', '鹿城区', '3', '177', '0');
INSERT INTO `bao_paddlist` VALUES ('2168', '龙湾区', '3', '177', '0');
INSERT INTO `bao_paddlist` VALUES ('2169', '南湖区', '3', '178', '0');
INSERT INTO `bao_paddlist` VALUES ('2170', '嘉善县', '3', '178', '0');
INSERT INTO `bao_paddlist` VALUES ('2171', '平湖市', '3', '178', '0');
INSERT INTO `bao_paddlist` VALUES ('2172', '桐乡市', '3', '178', '0');
INSERT INTO `bao_paddlist` VALUES ('2173', '海宁市', '3', '178', '0');
INSERT INTO `bao_paddlist` VALUES ('2174', '海盐县', '3', '178', '0');
INSERT INTO `bao_paddlist` VALUES ('2175', '秀洲区', '3', '178', '0');
INSERT INTO `bao_paddlist` VALUES ('2176', '南浔区', '3', '179', '0');
INSERT INTO `bao_paddlist` VALUES ('2177', '吴兴区', '3', '179', '0');
INSERT INTO `bao_paddlist` VALUES ('2178', '安吉县', '3', '179', '0');
INSERT INTO `bao_paddlist` VALUES ('2179', '德清县', '3', '179', '0');
INSERT INTO `bao_paddlist` VALUES ('2180', '长兴县', '3', '179', '0');
INSERT INTO `bao_paddlist` VALUES ('2181', '上虞市', '3', '180', '0');
INSERT INTO `bao_paddlist` VALUES ('2182', '嵊州市', '3', '180', '0');
INSERT INTO `bao_paddlist` VALUES ('2183', '新昌县', '3', '180', '0');
INSERT INTO `bao_paddlist` VALUES ('2184', '绍兴县', '3', '180', '0');
INSERT INTO `bao_paddlist` VALUES ('2185', '诸暨市', '3', '180', '0');
INSERT INTO `bao_paddlist` VALUES ('2186', '越城区', '3', '180', '0');
INSERT INTO `bao_paddlist` VALUES ('2187', '定海区', '3', '181', '0');
INSERT INTO `bao_paddlist` VALUES ('2188', '岱山县', '3', '181', '0');
INSERT INTO `bao_paddlist` VALUES ('2189', '嵊泗县', '3', '181', '0');
INSERT INTO `bao_paddlist` VALUES ('2190', '普陀区', '3', '181', '0');
INSERT INTO `bao_paddlist` VALUES ('2191', '常山县', '3', '182', '0');
INSERT INTO `bao_paddlist` VALUES ('2192', '开化县', '3', '182', '0');
INSERT INTO `bao_paddlist` VALUES ('2193', '柯城区', '3', '182', '0');
INSERT INTO `bao_paddlist` VALUES ('2194', '江山市', '3', '182', '0');
INSERT INTO `bao_paddlist` VALUES ('2195', '衢江区', '3', '182', '0');
INSERT INTO `bao_paddlist` VALUES ('2196', '龙游县', '3', '182', '0');
INSERT INTO `bao_paddlist` VALUES ('2197', '东阳市', '3', '183', '0');
INSERT INTO `bao_paddlist` VALUES ('2198', '义乌市', '3', '183', '0');
INSERT INTO `bao_paddlist` VALUES ('2199', '兰溪市', '3', '183', '0');
INSERT INTO `bao_paddlist` VALUES ('2200', '婺城区', '3', '183', '0');
INSERT INTO `bao_paddlist` VALUES ('2201', '武义县', '3', '183', '0');
INSERT INTO `bao_paddlist` VALUES ('2202', '永康市', '3', '183', '0');
INSERT INTO `bao_paddlist` VALUES ('2203', '浦江县', '3', '183', '0');
INSERT INTO `bao_paddlist` VALUES ('2204', '磐安县', '3', '183', '0');
INSERT INTO `bao_paddlist` VALUES ('2205', '金东区', '3', '183', '0');
INSERT INTO `bao_paddlist` VALUES ('2206', '三门县', '3', '184', '0');
INSERT INTO `bao_paddlist` VALUES ('2207', '临海市', '3', '184', '0');
INSERT INTO `bao_paddlist` VALUES ('2208', '仙居县', '3', '184', '0');
INSERT INTO `bao_paddlist` VALUES ('2209', '天台县', '3', '184', '0');
INSERT INTO `bao_paddlist` VALUES ('2210', '椒江区', '3', '184', '0');
INSERT INTO `bao_paddlist` VALUES ('2211', '温岭市', '3', '184', '0');
INSERT INTO `bao_paddlist` VALUES ('2212', '玉环县', '3', '184', '0');
INSERT INTO `bao_paddlist` VALUES ('2213', '路桥区', '3', '184', '0');
INSERT INTO `bao_paddlist` VALUES ('2214', '黄岩区', '3', '184', '0');
INSERT INTO `bao_paddlist` VALUES ('2215', '云和县', '3', '185', '0');
INSERT INTO `bao_paddlist` VALUES ('2216', '庆元县', '3', '185', '0');
INSERT INTO `bao_paddlist` VALUES ('2217', '景宁畲族自治县', '3', '185', '0');
INSERT INTO `bao_paddlist` VALUES ('2218', '松阳县', '3', '185', '0');
INSERT INTO `bao_paddlist` VALUES ('2219', '缙云县', '3', '185', '0');
INSERT INTO `bao_paddlist` VALUES ('2220', '莲都区', '3', '185', '0');
INSERT INTO `bao_paddlist` VALUES ('2221', '遂昌县', '3', '185', '0');
INSERT INTO `bao_paddlist` VALUES ('2222', '青田县', '3', '185', '0');
INSERT INTO `bao_paddlist` VALUES ('2223', '龙泉市', '3', '185', '0');
INSERT INTO `bao_paddlist` VALUES ('2224', '包河区', '3', '186', '0');
INSERT INTO `bao_paddlist` VALUES ('2225', '庐阳区', '3', '186', '0');
INSERT INTO `bao_paddlist` VALUES ('2226', '瑶海区', '3', '186', '0');
INSERT INTO `bao_paddlist` VALUES ('2227', '肥东县', '3', '186', '0');
INSERT INTO `bao_paddlist` VALUES ('2228', '肥西县', '3', '186', '0');
INSERT INTO `bao_paddlist` VALUES ('2229', '蜀山区', '3', '186', '0');
INSERT INTO `bao_paddlist` VALUES ('2230', '长丰县', '3', '186', '0');
INSERT INTO `bao_paddlist` VALUES ('2231', '三山区', '3', '187', '0');
INSERT INTO `bao_paddlist` VALUES ('2232', '南陵县', '3', '187', '0');
INSERT INTO `bao_paddlist` VALUES ('2233', '弋江区', '3', '187', '0');
INSERT INTO `bao_paddlist` VALUES ('2234', '繁昌县', '3', '187', '0');
INSERT INTO `bao_paddlist` VALUES ('2235', '芜湖县', '3', '187', '0');
INSERT INTO `bao_paddlist` VALUES ('2236', '镜湖区', '3', '187', '0');
INSERT INTO `bao_paddlist` VALUES ('2237', '鸠江区', '3', '187', '0');
INSERT INTO `bao_paddlist` VALUES ('2238', '五河县', '3', '188', '0');
INSERT INTO `bao_paddlist` VALUES ('2239', '固镇县', '3', '188', '0');
INSERT INTO `bao_paddlist` VALUES ('2240', '怀远县', '3', '188', '0');
INSERT INTO `bao_paddlist` VALUES ('2241', '淮上区', '3', '188', '0');
INSERT INTO `bao_paddlist` VALUES ('2242', '禹会区', '3', '188', '0');
INSERT INTO `bao_paddlist` VALUES ('2243', '蚌山区', '3', '188', '0');
INSERT INTO `bao_paddlist` VALUES ('2244', '龙子湖区', '3', '188', '0');
INSERT INTO `bao_paddlist` VALUES ('2245', '八公山区', '3', '189', '0');
INSERT INTO `bao_paddlist` VALUES ('2246', '凤台县', '3', '189', '0');
INSERT INTO `bao_paddlist` VALUES ('2247', '大通区', '3', '189', '0');
INSERT INTO `bao_paddlist` VALUES ('2248', '潘集区', '3', '189', '0');
INSERT INTO `bao_paddlist` VALUES ('2249', '田家庵区', '3', '189', '0');
INSERT INTO `bao_paddlist` VALUES ('2250', '谢家集区', '3', '189', '0');
INSERT INTO `bao_paddlist` VALUES ('2251', '当涂县', '3', '190', '0');
INSERT INTO `bao_paddlist` VALUES ('2252', '花山区', '3', '190', '0');
INSERT INTO `bao_paddlist` VALUES ('2253', '金家庄区', '3', '190', '0');
INSERT INTO `bao_paddlist` VALUES ('2254', '雨山区', '3', '190', '0');
INSERT INTO `bao_paddlist` VALUES ('2255', '杜集区', '3', '191', '0');
INSERT INTO `bao_paddlist` VALUES ('2256', '濉溪县', '3', '191', '0');
INSERT INTO `bao_paddlist` VALUES ('2257', '烈山区', '3', '191', '0');
INSERT INTO `bao_paddlist` VALUES ('2258', '相山区', '3', '191', '0');
INSERT INTO `bao_paddlist` VALUES ('2259', '狮子山区', '3', '192', '0');
INSERT INTO `bao_paddlist` VALUES ('2260', '郊区', '3', '192', '0');
INSERT INTO `bao_paddlist` VALUES ('2261', '铜官山区', '3', '192', '0');
INSERT INTO `bao_paddlist` VALUES ('2262', '铜陵县', '3', '192', '0');
INSERT INTO `bao_paddlist` VALUES ('2263', '大观区', '3', '193', '0');
INSERT INTO `bao_paddlist` VALUES ('2264', '太湖县', '3', '193', '0');
INSERT INTO `bao_paddlist` VALUES ('2265', '宜秀区', '3', '193', '0');
INSERT INTO `bao_paddlist` VALUES ('2266', '宿松县', '3', '193', '0');
INSERT INTO `bao_paddlist` VALUES ('2267', '岳西县', '3', '193', '0');
INSERT INTO `bao_paddlist` VALUES ('2268', '怀宁县', '3', '193', '0');
INSERT INTO `bao_paddlist` VALUES ('2269', '望江县', '3', '193', '0');
INSERT INTO `bao_paddlist` VALUES ('2270', '枞阳县', '3', '193', '0');
INSERT INTO `bao_paddlist` VALUES ('2271', '桐城市', '3', '193', '0');
INSERT INTO `bao_paddlist` VALUES ('2272', '潜山县', '3', '193', '0');
INSERT INTO `bao_paddlist` VALUES ('2273', '迎江区', '3', '193', '0');
INSERT INTO `bao_paddlist` VALUES ('2274', '休宁县', '3', '194', '0');
INSERT INTO `bao_paddlist` VALUES ('2275', '屯溪区', '3', '194', '0');
INSERT INTO `bao_paddlist` VALUES ('2276', '徽州区', '3', '194', '0');
INSERT INTO `bao_paddlist` VALUES ('2277', '歙县', '3', '194', '0');
INSERT INTO `bao_paddlist` VALUES ('2278', '祁门县', '3', '194', '0');
INSERT INTO `bao_paddlist` VALUES ('2279', '黄山区', '3', '194', '0');
INSERT INTO `bao_paddlist` VALUES ('2280', '黟县', '3', '194', '0');
INSERT INTO `bao_paddlist` VALUES ('2281', '全椒县', '3', '195', '0');
INSERT INTO `bao_paddlist` VALUES ('2282', '凤阳县', '3', '195', '0');
INSERT INTO `bao_paddlist` VALUES ('2283', '南谯区', '3', '195', '0');
INSERT INTO `bao_paddlist` VALUES ('2284', '天长市', '3', '195', '0');
INSERT INTO `bao_paddlist` VALUES ('2285', '定远县', '3', '195', '0');
INSERT INTO `bao_paddlist` VALUES ('2286', '明光市', '3', '195', '0');
INSERT INTO `bao_paddlist` VALUES ('2287', '来安县', '3', '195', '0');
INSERT INTO `bao_paddlist` VALUES ('2288', '琅玡区', '3', '195', '0');
INSERT INTO `bao_paddlist` VALUES ('2289', '临泉县', '3', '196', '0');
INSERT INTO `bao_paddlist` VALUES ('2290', '太和县', '3', '196', '0');
INSERT INTO `bao_paddlist` VALUES ('2291', '界首市', '3', '196', '0');
INSERT INTO `bao_paddlist` VALUES ('2292', '阜南县', '3', '196', '0');
INSERT INTO `bao_paddlist` VALUES ('2293', '颍东区', '3', '196', '0');
INSERT INTO `bao_paddlist` VALUES ('2294', '颍州区', '3', '196', '0');
INSERT INTO `bao_paddlist` VALUES ('2295', '颍泉区', '3', '196', '0');
INSERT INTO `bao_paddlist` VALUES ('2296', '颖上县', '3', '196', '0');
INSERT INTO `bao_paddlist` VALUES ('2297', '埇桥区', '3', '197', '0');
INSERT INTO `bao_paddlist` VALUES ('2298', '泗县辖', '3', '197', '0');
INSERT INTO `bao_paddlist` VALUES ('2299', '灵璧县', '3', '197', '0');
INSERT INTO `bao_paddlist` VALUES ('2300', '砀山县', '3', '197', '0');
INSERT INTO `bao_paddlist` VALUES ('2301', '萧县', '3', '197', '0');
INSERT INTO `bao_paddlist` VALUES ('2302', '含山县', '3', '198', '0');
INSERT INTO `bao_paddlist` VALUES ('2303', '和县', '3', '198', '0');
INSERT INTO `bao_paddlist` VALUES ('2304', '居巢区', '3', '198', '0');
INSERT INTO `bao_paddlist` VALUES ('2305', '庐江县', '3', '198', '0');
INSERT INTO `bao_paddlist` VALUES ('2306', '无为县', '3', '198', '0');
INSERT INTO `bao_paddlist` VALUES ('2307', '寿县', '3', '199', '0');
INSERT INTO `bao_paddlist` VALUES ('2308', '舒城县', '3', '199', '0');
INSERT INTO `bao_paddlist` VALUES ('2309', '裕安区', '3', '199', '0');
INSERT INTO `bao_paddlist` VALUES ('2310', '金安区', '3', '199', '0');
INSERT INTO `bao_paddlist` VALUES ('2311', '金寨县', '3', '199', '0');
INSERT INTO `bao_paddlist` VALUES ('2312', '霍山县', '3', '199', '0');
INSERT INTO `bao_paddlist` VALUES ('2313', '霍邱县', '3', '199', '0');
INSERT INTO `bao_paddlist` VALUES ('2314', '利辛县', '3', '200', '0');
INSERT INTO `bao_paddlist` VALUES ('2315', '涡阳县', '3', '200', '0');
INSERT INTO `bao_paddlist` VALUES ('2316', '蒙城县', '3', '200', '0');
INSERT INTO `bao_paddlist` VALUES ('2317', '谯城区', '3', '200', '0');
INSERT INTO `bao_paddlist` VALUES ('2318', '东至县', '3', '201', '0');
INSERT INTO `bao_paddlist` VALUES ('2319', '石台县', '3', '201', '0');
INSERT INTO `bao_paddlist` VALUES ('2320', '贵池区', '3', '201', '0');
INSERT INTO `bao_paddlist` VALUES ('2321', '青阳县', '3', '201', '0');
INSERT INTO `bao_paddlist` VALUES ('2322', '宁国市', '3', '202', '0');
INSERT INTO `bao_paddlist` VALUES ('2323', '宣州区', '3', '202', '0');
INSERT INTO `bao_paddlist` VALUES ('2324', '广德县', '3', '202', '0');
INSERT INTO `bao_paddlist` VALUES ('2325', '旌德县', '3', '202', '0');
INSERT INTO `bao_paddlist` VALUES ('2326', '泾县', '3', '202', '0');
INSERT INTO `bao_paddlist` VALUES ('2327', '绩溪县', '3', '202', '0');
INSERT INTO `bao_paddlist` VALUES ('2328', '郎溪县', '3', '202', '0');
INSERT INTO `bao_paddlist` VALUES ('2329', '仓山区', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2330', '台江区', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2331', '平潭县', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2332', '晋安区', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2333', '永泰县', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2334', '福清市', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2335', '罗源县', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2336', '连江县', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2337', '长乐市', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2338', '闽侯县', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2339', '闽清县', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2340', '马尾区', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2341', '鼓楼区', '3', '203', '0');
INSERT INTO `bao_paddlist` VALUES ('2342', '同安区', '3', '204', '0');
INSERT INTO `bao_paddlist` VALUES ('2343', '思明区', '3', '204', '0');
INSERT INTO `bao_paddlist` VALUES ('2344', '海沧区', '3', '204', '0');
INSERT INTO `bao_paddlist` VALUES ('2345', '湖里区', '3', '204', '0');
INSERT INTO `bao_paddlist` VALUES ('2346', '翔安区', '3', '204', '0');
INSERT INTO `bao_paddlist` VALUES ('2347', '集美区', '3', '204', '0');
INSERT INTO `bao_paddlist` VALUES ('2348', '仙游县', '3', '205', '0');
INSERT INTO `bao_paddlist` VALUES ('2349', '城厢区', '3', '205', '0');
INSERT INTO `bao_paddlist` VALUES ('2350', '涵江区', '3', '205', '0');
INSERT INTO `bao_paddlist` VALUES ('2351', '秀屿区', '3', '205', '0');
INSERT INTO `bao_paddlist` VALUES ('2352', '荔城区', '3', '205', '0');
INSERT INTO `bao_paddlist` VALUES ('2353', '三元区', '3', '206', '0');
INSERT INTO `bao_paddlist` VALUES ('2354', '大田县', '3', '206', '0');
INSERT INTO `bao_paddlist` VALUES ('2355', '宁化县', '3', '206', '0');
INSERT INTO `bao_paddlist` VALUES ('2356', '将乐县', '3', '206', '0');
INSERT INTO `bao_paddlist` VALUES ('2357', '尤溪县', '3', '206', '0');
INSERT INTO `bao_paddlist` VALUES ('2358', '建宁县', '3', '206', '0');
INSERT INTO `bao_paddlist` VALUES ('2359', '明溪县', '3', '206', '0');
INSERT INTO `bao_paddlist` VALUES ('2360', '梅列区', '3', '206', '0');
INSERT INTO `bao_paddlist` VALUES ('2361', '永安市', '3', '206', '0');
INSERT INTO `bao_paddlist` VALUES ('2362', '沙县', '3', '206', '0');
INSERT INTO `bao_paddlist` VALUES ('2363', '泰宁县', '3', '206', '0');
INSERT INTO `bao_paddlist` VALUES ('2364', '清流县', '3', '206', '0');
INSERT INTO `bao_paddlist` VALUES ('2365', '丰泽区', '3', '207', '0');
INSERT INTO `bao_paddlist` VALUES ('2366', '南安市', '3', '207', '0');
INSERT INTO `bao_paddlist` VALUES ('2367', '安溪县', '3', '207', '0');
INSERT INTO `bao_paddlist` VALUES ('2368', '德化县', '3', '207', '0');
INSERT INTO `bao_paddlist` VALUES ('2369', '惠安县', '3', '207', '0');
INSERT INTO `bao_paddlist` VALUES ('2370', '晋江市', '3', '207', '0');
INSERT INTO `bao_paddlist` VALUES ('2371', '永春县', '3', '207', '0');
INSERT INTO `bao_paddlist` VALUES ('2372', '泉港区', '3', '207', '0');
INSERT INTO `bao_paddlist` VALUES ('2373', '洛江区', '3', '207', '0');
INSERT INTO `bao_paddlist` VALUES ('2374', '石狮市', '3', '207', '0');
INSERT INTO `bao_paddlist` VALUES ('2375', '金门县', '3', '207', '0');
INSERT INTO `bao_paddlist` VALUES ('2376', '鲤城区', '3', '207', '0');
INSERT INTO `bao_paddlist` VALUES ('2377', '东山县', '3', '208', '0');
INSERT INTO `bao_paddlist` VALUES ('2378', '云霄县', '3', '208', '0');
INSERT INTO `bao_paddlist` VALUES ('2379', '华安县', '3', '208', '0');
INSERT INTO `bao_paddlist` VALUES ('2380', '南靖县', '3', '208', '0');
INSERT INTO `bao_paddlist` VALUES ('2381', '平和县', '3', '208', '0');
INSERT INTO `bao_paddlist` VALUES ('2382', '漳浦县', '3', '208', '0');
INSERT INTO `bao_paddlist` VALUES ('2383', '芗城区', '3', '208', '0');
INSERT INTO `bao_paddlist` VALUES ('2384', '诏安县', '3', '208', '0');
INSERT INTO `bao_paddlist` VALUES ('2385', '长泰县', '3', '208', '0');
INSERT INTO `bao_paddlist` VALUES ('2386', '龙文区', '3', '208', '0');
INSERT INTO `bao_paddlist` VALUES ('2387', '龙海市', '3', '208', '0');
INSERT INTO `bao_paddlist` VALUES ('2388', '光泽县', '3', '209', '0');
INSERT INTO `bao_paddlist` VALUES ('2389', '延平区', '3', '209', '0');
INSERT INTO `bao_paddlist` VALUES ('2390', '建瓯市', '3', '209', '0');
INSERT INTO `bao_paddlist` VALUES ('2391', '建阳市', '3', '209', '0');
INSERT INTO `bao_paddlist` VALUES ('2392', '政和县', '3', '209', '0');
INSERT INTO `bao_paddlist` VALUES ('2393', '松溪县', '3', '209', '0');
INSERT INTO `bao_paddlist` VALUES ('2394', '武夷山市', '3', '209', '0');
INSERT INTO `bao_paddlist` VALUES ('2395', '浦城县', '3', '209', '0');
INSERT INTO `bao_paddlist` VALUES ('2396', '邵武市', '3', '209', '0');
INSERT INTO `bao_paddlist` VALUES ('2397', '顺昌县', '3', '209', '0');
INSERT INTO `bao_paddlist` VALUES ('2398', '上杭县', '3', '210', '0');
INSERT INTO `bao_paddlist` VALUES ('2399', '新罗区', '3', '210', '0');
INSERT INTO `bao_paddlist` VALUES ('2400', '武平县', '3', '210', '0');
INSERT INTO `bao_paddlist` VALUES ('2401', '永定县', '3', '210', '0');
INSERT INTO `bao_paddlist` VALUES ('2402', '漳平市', '3', '210', '0');
INSERT INTO `bao_paddlist` VALUES ('2403', '连城县', '3', '210', '0');
INSERT INTO `bao_paddlist` VALUES ('2404', '长汀县', '3', '210', '0');
INSERT INTO `bao_paddlist` VALUES ('2405', '古田县', '3', '211', '0');
INSERT INTO `bao_paddlist` VALUES ('2406', '周宁县', '3', '211', '0');
INSERT INTO `bao_paddlist` VALUES ('2407', '寿宁县', '3', '211', '0');
INSERT INTO `bao_paddlist` VALUES ('2408', '屏南县', '3', '211', '0');
INSERT INTO `bao_paddlist` VALUES ('2409', '柘荣县', '3', '211', '0');
INSERT INTO `bao_paddlist` VALUES ('2410', '福安市', '3', '211', '0');
INSERT INTO `bao_paddlist` VALUES ('2411', '福鼎市', '3', '211', '0');
INSERT INTO `bao_paddlist` VALUES ('2412', '蕉城区', '3', '211', '0');
INSERT INTO `bao_paddlist` VALUES ('2413', '霞浦县', '3', '211', '0');
INSERT INTO `bao_paddlist` VALUES ('2414', '东湖区', '3', '212', '0');
INSERT INTO `bao_paddlist` VALUES ('2415', '南昌县', '3', '212', '0');
INSERT INTO `bao_paddlist` VALUES ('2416', '安义县', '3', '212', '0');
INSERT INTO `bao_paddlist` VALUES ('2417', '新建县', '3', '212', '0');
INSERT INTO `bao_paddlist` VALUES ('2418', '湾里区', '3', '212', '0');
INSERT INTO `bao_paddlist` VALUES ('2419', '西湖区', '3', '212', '0');
INSERT INTO `bao_paddlist` VALUES ('2420', '进贤县', '3', '212', '0');
INSERT INTO `bao_paddlist` VALUES ('2421', '青云谱区', '3', '212', '0');
INSERT INTO `bao_paddlist` VALUES ('2422', '青山湖区', '3', '212', '0');
INSERT INTO `bao_paddlist` VALUES ('2423', '乐平市', '3', '213', '0');
INSERT INTO `bao_paddlist` VALUES ('2424', '昌江区', '3', '213', '0');
INSERT INTO `bao_paddlist` VALUES ('2425', '浮梁县', '3', '213', '0');
INSERT INTO `bao_paddlist` VALUES ('2426', '珠山区', '3', '213', '0');
INSERT INTO `bao_paddlist` VALUES ('2427', '上栗县', '3', '214', '0');
INSERT INTO `bao_paddlist` VALUES ('2428', '安源区', '3', '214', '0');
INSERT INTO `bao_paddlist` VALUES ('2429', '湘东区', '3', '214', '0');
INSERT INTO `bao_paddlist` VALUES ('2430', '芦溪县', '3', '214', '0');
INSERT INTO `bao_paddlist` VALUES ('2431', '莲花县', '3', '214', '0');
INSERT INTO `bao_paddlist` VALUES ('2432', '九江县', '3', '215', '0');
INSERT INTO `bao_paddlist` VALUES ('2433', '修水县', '3', '215', '0');
INSERT INTO `bao_paddlist` VALUES ('2434', '庐山区', '3', '215', '0');
INSERT INTO `bao_paddlist` VALUES ('2435', '彭泽县', '3', '215', '0');
INSERT INTO `bao_paddlist` VALUES ('2436', '德安县', '3', '215', '0');
INSERT INTO `bao_paddlist` VALUES ('2437', '星子县', '3', '215', '0');
INSERT INTO `bao_paddlist` VALUES ('2438', '武宁县', '3', '215', '0');
INSERT INTO `bao_paddlist` VALUES ('2439', '永修县', '3', '215', '0');
INSERT INTO `bao_paddlist` VALUES ('2440', '浔阳区', '3', '215', '0');
INSERT INTO `bao_paddlist` VALUES ('2441', '湖口县', '3', '215', '0');
INSERT INTO `bao_paddlist` VALUES ('2442', '瑞昌市', '3', '215', '0');
INSERT INTO `bao_paddlist` VALUES ('2443', '都昌县', '3', '215', '0');
INSERT INTO `bao_paddlist` VALUES ('2444', '分宜县', '3', '216', '0');
INSERT INTO `bao_paddlist` VALUES ('2445', '渝水区', '3', '216', '0');
INSERT INTO `bao_paddlist` VALUES ('2446', '余江县', '3', '217', '0');
INSERT INTO `bao_paddlist` VALUES ('2447', '月湖区', '3', '217', '0');
INSERT INTO `bao_paddlist` VALUES ('2448', '贵溪市', '3', '217', '0');
INSERT INTO `bao_paddlist` VALUES ('2449', '上犹县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2450', '于都县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2451', '会昌县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2452', '信丰县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2453', '全南县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2454', '兴国县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2455', '南康市', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2456', '大余县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2457', '宁都县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2458', '安远县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2459', '定南县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2460', '寻乌县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2461', '崇义县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2462', '瑞金市', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2463', '石城县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2464', '章贡区', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2465', '赣县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2466', '龙南县', '3', '218', '0');
INSERT INTO `bao_paddlist` VALUES ('2467', '万安县', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2468', '井冈山市', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2469', '吉安县', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2470', '吉州区', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2471', '吉水县', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2472', '安福县', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2473', '峡江县', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2474', '新干县', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2475', '永丰县', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2476', '永新县', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2477', '泰和县', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2478', '遂川县', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2479', '青原区', '3', '219', '0');
INSERT INTO `bao_paddlist` VALUES ('2480', '万载县', '3', '220', '0');
INSERT INTO `bao_paddlist` VALUES ('2481', '上高县', '3', '220', '0');
INSERT INTO `bao_paddlist` VALUES ('2482', '丰城市', '3', '220', '0');
INSERT INTO `bao_paddlist` VALUES ('2483', '奉新县', '3', '220', '0');
INSERT INTO `bao_paddlist` VALUES ('2484', '宜丰县', '3', '220', '0');
INSERT INTO `bao_paddlist` VALUES ('2485', '樟树市', '3', '220', '0');
INSERT INTO `bao_paddlist` VALUES ('2486', '袁州区', '3', '220', '0');
INSERT INTO `bao_paddlist` VALUES ('2487', '铜鼓县', '3', '220', '0');
INSERT INTO `bao_paddlist` VALUES ('2488', '靖安县', '3', '220', '0');
INSERT INTO `bao_paddlist` VALUES ('2489', '高安市', '3', '220', '0');
INSERT INTO `bao_paddlist` VALUES ('2490', '东乡县', '3', '221', '0');
INSERT INTO `bao_paddlist` VALUES ('2491', '临川区', '3', '221', '0');
INSERT INTO `bao_paddlist` VALUES ('2492', '乐安县', '3', '221', '0');
INSERT INTO `bao_paddlist` VALUES ('2493', '南丰县', '3', '221', '0');
INSERT INTO `bao_paddlist` VALUES ('2494', '南城县', '3', '221', '0');
INSERT INTO `bao_paddlist` VALUES ('2495', '宜黄县', '3', '221', '0');
INSERT INTO `bao_paddlist` VALUES ('2496', '崇仁县', '3', '221', '0');
INSERT INTO `bao_paddlist` VALUES ('2497', '广昌县', '3', '221', '0');
INSERT INTO `bao_paddlist` VALUES ('2498', '资溪县', '3', '221', '0');
INSERT INTO `bao_paddlist` VALUES ('2499', '金溪县', '3', '221', '0');
INSERT INTO `bao_paddlist` VALUES ('2500', '黎川县', '3', '221', '0');
INSERT INTO `bao_paddlist` VALUES ('2501', '万年县', '3', '222', '0');
INSERT INTO `bao_paddlist` VALUES ('2502', '上饶县', '3', '222', '0');
INSERT INTO `bao_paddlist` VALUES ('2503', '余干县', '3', '222', '0');
INSERT INTO `bao_paddlist` VALUES ('2504', '信州区', '3', '222', '0');
INSERT INTO `bao_paddlist` VALUES ('2505', '婺源县', '3', '222', '0');
INSERT INTO `bao_paddlist` VALUES ('2506', '广丰县', '3', '222', '0');
INSERT INTO `bao_paddlist` VALUES ('2507', '弋阳县', '3', '222', '0');
INSERT INTO `bao_paddlist` VALUES ('2508', '德兴市', '3', '222', '0');
INSERT INTO `bao_paddlist` VALUES ('2509', '横峰县', '3', '222', '0');
INSERT INTO `bao_paddlist` VALUES ('2510', '玉山县', '3', '222', '0');
INSERT INTO `bao_paddlist` VALUES ('2511', '鄱阳县', '3', '222', '0');
INSERT INTO `bao_paddlist` VALUES ('2512', '铅山县', '3', '222', '0');
INSERT INTO `bao_paddlist` VALUES ('2513', '历下区', '3', '223', '0');
INSERT INTO `bao_paddlist` VALUES ('2514', '历城区', '3', '223', '0');
INSERT INTO `bao_paddlist` VALUES ('2515', '商河县', '3', '223', '0');
INSERT INTO `bao_paddlist` VALUES ('2516', '天桥区', '3', '223', '0');
INSERT INTO `bao_paddlist` VALUES ('2517', '市中区', '3', '223', '0');
INSERT INTO `bao_paddlist` VALUES ('2518', '平阴县', '3', '223', '0');
INSERT INTO `bao_paddlist` VALUES ('2519', '槐荫区', '3', '223', '0');
INSERT INTO `bao_paddlist` VALUES ('2520', '济阳县', '3', '223', '0');
INSERT INTO `bao_paddlist` VALUES ('2521', '章丘市', '3', '223', '0');
INSERT INTO `bao_paddlist` VALUES ('2522', '长清区', '3', '223', '0');
INSERT INTO `bao_paddlist` VALUES ('2523', '即墨市', '3', '224', '0');
INSERT INTO `bao_paddlist` VALUES ('2524', '四方区', '3', '224', '0');
INSERT INTO `bao_paddlist` VALUES ('2525', '城阳区', '3', '224', '0');
INSERT INTO `bao_paddlist` VALUES ('2526', '崂山区', '3', '224', '0');
INSERT INTO `bao_paddlist` VALUES ('2527', '市北区', '3', '224', '0');
INSERT INTO `bao_paddlist` VALUES ('2528', '市南区', '3', '224', '0');
INSERT INTO `bao_paddlist` VALUES ('2529', '平度市', '3', '224', '0');
INSERT INTO `bao_paddlist` VALUES ('2530', '李沧区', '3', '224', '0');
INSERT INTO `bao_paddlist` VALUES ('2531', '胶南市', '3', '224', '0');
INSERT INTO `bao_paddlist` VALUES ('2532', '胶州市', '3', '224', '0');
INSERT INTO `bao_paddlist` VALUES ('2533', '莱西市', '3', '224', '0');
INSERT INTO `bao_paddlist` VALUES ('2534', '黄岛区', '3', '224', '0');
INSERT INTO `bao_paddlist` VALUES ('2535', '临淄区', '3', '225', '0');
INSERT INTO `bao_paddlist` VALUES ('2536', '博山区', '3', '225', '0');
INSERT INTO `bao_paddlist` VALUES ('2537', '周村区', '3', '225', '0');
INSERT INTO `bao_paddlist` VALUES ('2538', '张店区', '3', '225', '0');
INSERT INTO `bao_paddlist` VALUES ('2539', '桓台县', '3', '225', '0');
INSERT INTO `bao_paddlist` VALUES ('2540', '沂源县', '3', '225', '0');
INSERT INTO `bao_paddlist` VALUES ('2541', '淄川区', '3', '225', '0');
INSERT INTO `bao_paddlist` VALUES ('2542', '高青县', '3', '225', '0');
INSERT INTO `bao_paddlist` VALUES ('2543', '台儿庄区', '3', '226', '0');
INSERT INTO `bao_paddlist` VALUES ('2544', '山亭区', '3', '226', '0');
INSERT INTO `bao_paddlist` VALUES ('2545', '峄城区', '3', '226', '0');
INSERT INTO `bao_paddlist` VALUES ('2546', '市中区', '3', '226', '0');
INSERT INTO `bao_paddlist` VALUES ('2547', '滕州市', '3', '226', '0');
INSERT INTO `bao_paddlist` VALUES ('2548', '薛城区', '3', '226', '0');
INSERT INTO `bao_paddlist` VALUES ('2549', '东营区', '3', '227', '0');
INSERT INTO `bao_paddlist` VALUES ('2550', '利津县', '3', '227', '0');
INSERT INTO `bao_paddlist` VALUES ('2551', '垦利县', '3', '227', '0');
INSERT INTO `bao_paddlist` VALUES ('2552', '广饶县', '3', '227', '0');
INSERT INTO `bao_paddlist` VALUES ('2553', '河口区', '3', '227', '0');
INSERT INTO `bao_paddlist` VALUES ('2554', '招远市', '3', '228', '0');
INSERT INTO `bao_paddlist` VALUES ('2555', '栖霞市', '3', '228', '0');
INSERT INTO `bao_paddlist` VALUES ('2556', '海阳市', '3', '228', '0');
INSERT INTO `bao_paddlist` VALUES ('2557', '牟平区', '3', '228', '0');
INSERT INTO `bao_paddlist` VALUES ('2558', '福山区', '3', '228', '0');
INSERT INTO `bao_paddlist` VALUES ('2559', '芝罘区', '3', '228', '0');
INSERT INTO `bao_paddlist` VALUES ('2560', '莱山区', '3', '228', '0');
INSERT INTO `bao_paddlist` VALUES ('2561', '莱州市', '3', '228', '0');
INSERT INTO `bao_paddlist` VALUES ('2562', '莱阳市', '3', '228', '0');
INSERT INTO `bao_paddlist` VALUES ('2563', '蓬莱市', '3', '228', '0');
INSERT INTO `bao_paddlist` VALUES ('2564', '长岛县', '3', '228', '0');
INSERT INTO `bao_paddlist` VALUES ('2565', '龙口市', '3', '228', '0');
INSERT INTO `bao_paddlist` VALUES ('2566', '临朐县', '3', '229', '0');
INSERT INTO `bao_paddlist` VALUES ('2567', '坊子区', '3', '229', '0');
INSERT INTO `bao_paddlist` VALUES ('2568', '奎文区', '3', '229', '0');
INSERT INTO `bao_paddlist` VALUES ('2569', '安丘市', '3', '229', '0');
INSERT INTO `bao_paddlist` VALUES ('2570', '寒亭区', '3', '229', '0');
INSERT INTO `bao_paddlist` VALUES ('2571', '寿光市', '3', '229', '0');
INSERT INTO `bao_paddlist` VALUES ('2572', '昌乐县', '3', '229', '0');
INSERT INTO `bao_paddlist` VALUES ('2573', '昌邑市', '3', '229', '0');
INSERT INTO `bao_paddlist` VALUES ('2574', '潍城区', '3', '229', '0');
INSERT INTO `bao_paddlist` VALUES ('2575', '诸城市', '3', '229', '0');
INSERT INTO `bao_paddlist` VALUES ('2576', '青州市', '3', '229', '0');
INSERT INTO `bao_paddlist` VALUES ('2577', '高密市', '3', '229', '0');
INSERT INTO `bao_paddlist` VALUES ('2578', '任城区', '3', '230', '0');
INSERT INTO `bao_paddlist` VALUES ('2579', '兖州市', '3', '230', '0');
INSERT INTO `bao_paddlist` VALUES ('2580', '嘉祥县', '3', '230', '0');
INSERT INTO `bao_paddlist` VALUES ('2581', '市中区', '3', '230', '0');
INSERT INTO `bao_paddlist` VALUES ('2582', '微山县', '3', '230', '0');
INSERT INTO `bao_paddlist` VALUES ('2583', '曲阜市', '3', '230', '0');
INSERT INTO `bao_paddlist` VALUES ('2584', '梁山县', '3', '230', '0');
INSERT INTO `bao_paddlist` VALUES ('2585', '汶上县', '3', '230', '0');
INSERT INTO `bao_paddlist` VALUES ('2586', '泗水县', '3', '230', '0');
INSERT INTO `bao_paddlist` VALUES ('2587', '邹城市', '3', '230', '0');
INSERT INTO `bao_paddlist` VALUES ('2588', '金乡县', '3', '230', '0');
INSERT INTO `bao_paddlist` VALUES ('2589', '鱼台县', '3', '230', '0');
INSERT INTO `bao_paddlist` VALUES ('2590', '东平县', '3', '231', '0');
INSERT INTO `bao_paddlist` VALUES ('2591', '宁阳县', '3', '231', '0');
INSERT INTO `bao_paddlist` VALUES ('2592', '岱岳区', '3', '231', '0');
INSERT INTO `bao_paddlist` VALUES ('2593', '新泰市', '3', '231', '0');
INSERT INTO `bao_paddlist` VALUES ('2594', '泰山区', '3', '231', '0');
INSERT INTO `bao_paddlist` VALUES ('2595', '肥城市', '3', '231', '0');
INSERT INTO `bao_paddlist` VALUES ('2596', '乳山市', '3', '232', '0');
INSERT INTO `bao_paddlist` VALUES ('2597', '文登市', '3', '232', '0');
INSERT INTO `bao_paddlist` VALUES ('2598', '环翠区', '3', '232', '0');
INSERT INTO `bao_paddlist` VALUES ('2599', '荣成市', '3', '232', '0');
INSERT INTO `bao_paddlist` VALUES ('2600', '东港区', '3', '233', '0');
INSERT INTO `bao_paddlist` VALUES ('2601', '五莲县', '3', '233', '0');
INSERT INTO `bao_paddlist` VALUES ('2602', '岚山区', '3', '233', '0');
INSERT INTO `bao_paddlist` VALUES ('2603', '莒县', '3', '233', '0');
INSERT INTO `bao_paddlist` VALUES ('2604', '莱城区', '3', '234', '0');
INSERT INTO `bao_paddlist` VALUES ('2605', '钢城区', '3', '234', '0');
INSERT INTO `bao_paddlist` VALUES ('2606', '临沭县', '3', '235', '0');
INSERT INTO `bao_paddlist` VALUES ('2607', '兰山区', '3', '235', '0');
INSERT INTO `bao_paddlist` VALUES ('2608', '平邑县', '3', '235', '0');
INSERT INTO `bao_paddlist` VALUES ('2609', '沂南县', '3', '235', '0');
INSERT INTO `bao_paddlist` VALUES ('2610', '沂水县', '3', '235', '0');
INSERT INTO `bao_paddlist` VALUES ('2611', '河东区', '3', '235', '0');
INSERT INTO `bao_paddlist` VALUES ('2612', '罗庄区', '3', '235', '0');
INSERT INTO `bao_paddlist` VALUES ('2613', '苍山县', '3', '235', '0');
INSERT INTO `bao_paddlist` VALUES ('2614', '莒南县', '3', '235', '0');
INSERT INTO `bao_paddlist` VALUES ('2615', '蒙阴县', '3', '235', '0');
INSERT INTO `bao_paddlist` VALUES ('2616', '费县', '3', '235', '0');
INSERT INTO `bao_paddlist` VALUES ('2617', '郯城县', '3', '235', '0');
INSERT INTO `bao_paddlist` VALUES ('2618', '临邑县', '3', '236', '0');
INSERT INTO `bao_paddlist` VALUES ('2619', '乐陵市', '3', '236', '0');
INSERT INTO `bao_paddlist` VALUES ('2620', '夏津县', '3', '236', '0');
INSERT INTO `bao_paddlist` VALUES ('2621', '宁津县', '3', '236', '0');
INSERT INTO `bao_paddlist` VALUES ('2622', '平原县', '3', '236', '0');
INSERT INTO `bao_paddlist` VALUES ('2623', '庆云县', '3', '236', '0');
INSERT INTO `bao_paddlist` VALUES ('2624', '德城区', '3', '236', '0');
INSERT INTO `bao_paddlist` VALUES ('2625', '武城县', '3', '236', '0');
INSERT INTO `bao_paddlist` VALUES ('2626', '禹城市', '3', '236', '0');
INSERT INTO `bao_paddlist` VALUES ('2627', '陵县', '3', '236', '0');
INSERT INTO `bao_paddlist` VALUES ('2628', '齐河县', '3', '236', '0');
INSERT INTO `bao_paddlist` VALUES ('2629', '东昌府区', '3', '237', '0');
INSERT INTO `bao_paddlist` VALUES ('2630', '东阿县', '3', '237', '0');
INSERT INTO `bao_paddlist` VALUES ('2631', '临清市', '3', '237', '0');
INSERT INTO `bao_paddlist` VALUES ('2632', '冠县', '3', '237', '0');
INSERT INTO `bao_paddlist` VALUES ('2633', '茌平县', '3', '237', '0');
INSERT INTO `bao_paddlist` VALUES ('2634', '莘县', '3', '237', '0');
INSERT INTO `bao_paddlist` VALUES ('2635', '阳谷县', '3', '237', '0');
INSERT INTO `bao_paddlist` VALUES ('2636', '高唐县', '3', '237', '0');
INSERT INTO `bao_paddlist` VALUES ('2637', '博兴县', '3', '238', '0');
INSERT INTO `bao_paddlist` VALUES ('2638', '惠民县', '3', '238', '0');
INSERT INTO `bao_paddlist` VALUES ('2639', '无棣县', '3', '238', '0');
INSERT INTO `bao_paddlist` VALUES ('2640', '沾化县', '3', '238', '0');
INSERT INTO `bao_paddlist` VALUES ('2641', '滨城区', '3', '238', '0');
INSERT INTO `bao_paddlist` VALUES ('2642', '邹平县', '3', '238', '0');
INSERT INTO `bao_paddlist` VALUES ('2643', '阳信县', '3', '238', '0');
INSERT INTO `bao_paddlist` VALUES ('2644', '东明县', '3', '239', '0');
INSERT INTO `bao_paddlist` VALUES ('2645', '单县', '3', '239', '0');
INSERT INTO `bao_paddlist` VALUES ('2646', '定陶县', '3', '239', '0');
INSERT INTO `bao_paddlist` VALUES ('2647', '巨野县', '3', '239', '0');
INSERT INTO `bao_paddlist` VALUES ('2648', '成武县', '3', '239', '0');
INSERT INTO `bao_paddlist` VALUES ('2649', '曹县', '3', '239', '0');
INSERT INTO `bao_paddlist` VALUES ('2650', '牡丹区', '3', '239', '0');
INSERT INTO `bao_paddlist` VALUES ('2651', '郓城县', '3', '239', '0');
INSERT INTO `bao_paddlist` VALUES ('2652', '鄄城县', '3', '239', '0');
INSERT INTO `bao_paddlist` VALUES ('2653', '上街区', '3', '240', '0');
INSERT INTO `bao_paddlist` VALUES ('2654', '中原区', '3', '240', '0');
INSERT INTO `bao_paddlist` VALUES ('2655', '中牟县', '3', '240', '0');
INSERT INTO `bao_paddlist` VALUES ('2656', '二七区', '3', '240', '0');
INSERT INTO `bao_paddlist` VALUES ('2657', '巩义市', '3', '240', '0');
INSERT INTO `bao_paddlist` VALUES ('2658', '惠济区', '3', '240', '0');
INSERT INTO `bao_paddlist` VALUES ('2659', '新密市', '3', '240', '0');
INSERT INTO `bao_paddlist` VALUES ('2660', '新郑市', '3', '240', '0');
INSERT INTO `bao_paddlist` VALUES ('2661', '登封市', '3', '240', '0');
INSERT INTO `bao_paddlist` VALUES ('2662', '管城回族区', '3', '240', '0');
INSERT INTO `bao_paddlist` VALUES ('2663', '荥阳市', '3', '240', '0');
INSERT INTO `bao_paddlist` VALUES ('2664', '金水区', '3', '240', '0');
INSERT INTO `bao_paddlist` VALUES ('2665', '兰考县', '3', '241', '0');
INSERT INTO `bao_paddlist` VALUES ('2666', '尉氏县', '3', '241', '0');
INSERT INTO `bao_paddlist` VALUES ('2667', '开封县', '3', '241', '0');
INSERT INTO `bao_paddlist` VALUES ('2668', '杞县', '3', '241', '0');
INSERT INTO `bao_paddlist` VALUES ('2669', '禹王台区', '3', '241', '0');
INSERT INTO `bao_paddlist` VALUES ('2670', '通许县', '3', '241', '0');
INSERT INTO `bao_paddlist` VALUES ('2671', '金明区', '3', '241', '0');
INSERT INTO `bao_paddlist` VALUES ('2672', '顺河回族区', '3', '241', '0');
INSERT INTO `bao_paddlist` VALUES ('2673', '鼓楼区', '3', '241', '0');
INSERT INTO `bao_paddlist` VALUES ('2674', '龙亭区', '3', '241', '0');
INSERT INTO `bao_paddlist` VALUES ('2675', '伊川县', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2676', '偃师市', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2677', '吉利区', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2678', '孟津县', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2679', '宜阳县', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2680', '嵩县', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2681', '新安县', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2682', '栾川县', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2683', '汝阳县', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2684', '洛宁县', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2685', '洛龙区', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2686', '涧西区', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2687', '瀍河回族区', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2688', '老城区', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2689', '西工区', '3', '242', '0');
INSERT INTO `bao_paddlist` VALUES ('2690', '卫东区', '3', '243', '0');
INSERT INTO `bao_paddlist` VALUES ('2691', '叶县', '3', '243', '0');
INSERT INTO `bao_paddlist` VALUES ('2692', '宝丰县', '3', '243', '0');
INSERT INTO `bao_paddlist` VALUES ('2693', '新华区', '3', '243', '0');
INSERT INTO `bao_paddlist` VALUES ('2694', '汝州市', '3', '243', '0');
INSERT INTO `bao_paddlist` VALUES ('2695', '湛河区', '3', '243', '0');
INSERT INTO `bao_paddlist` VALUES ('2696', '石龙区', '3', '243', '0');
INSERT INTO `bao_paddlist` VALUES ('2697', '舞钢市', '3', '243', '0');
INSERT INTO `bao_paddlist` VALUES ('2698', '郏县', '3', '243', '0');
INSERT INTO `bao_paddlist` VALUES ('2699', '鲁山县', '3', '243', '0');
INSERT INTO `bao_paddlist` VALUES ('2700', '内黄县', '3', '244', '0');
INSERT INTO `bao_paddlist` VALUES ('2701', '北关区', '3', '244', '0');
INSERT INTO `bao_paddlist` VALUES ('2702', '安阳县', '3', '244', '0');
INSERT INTO `bao_paddlist` VALUES ('2703', '文峰区', '3', '244', '0');
INSERT INTO `bao_paddlist` VALUES ('2704', '林州市', '3', '244', '0');
INSERT INTO `bao_paddlist` VALUES ('2705', '殷都区', '3', '244', '0');
INSERT INTO `bao_paddlist` VALUES ('2706', '汤阴县', '3', '244', '0');
INSERT INTO `bao_paddlist` VALUES ('2707', '滑县', '3', '244', '0');
INSERT INTO `bao_paddlist` VALUES ('2708', '龙安区', '3', '244', '0');
INSERT INTO `bao_paddlist` VALUES ('2709', '山城区', '3', '245', '0');
INSERT INTO `bao_paddlist` VALUES ('2710', '浚县', '3', '245', '0');
INSERT INTO `bao_paddlist` VALUES ('2711', '淇县', '3', '245', '0');
INSERT INTO `bao_paddlist` VALUES ('2712', '淇滨区', '3', '245', '0');
INSERT INTO `bao_paddlist` VALUES ('2713', '鹤山区', '3', '245', '0');
INSERT INTO `bao_paddlist` VALUES ('2714', '凤泉区', '3', '246', '0');
INSERT INTO `bao_paddlist` VALUES ('2715', '卫滨区', '3', '246', '0');
INSERT INTO `bao_paddlist` VALUES ('2716', '卫辉市', '3', '246', '0');
INSERT INTO `bao_paddlist` VALUES ('2717', '原阳县', '3', '246', '0');
INSERT INTO `bao_paddlist` VALUES ('2718', '封丘县', '3', '246', '0');
INSERT INTO `bao_paddlist` VALUES ('2719', '延津县', '3', '246', '0');
INSERT INTO `bao_paddlist` VALUES ('2720', '新乡县', '3', '246', '0');
INSERT INTO `bao_paddlist` VALUES ('2721', '牧野区', '3', '246', '0');
INSERT INTO `bao_paddlist` VALUES ('2722', '红旗区', '3', '246', '0');
INSERT INTO `bao_paddlist` VALUES ('2723', '获嘉县', '3', '246', '0');
INSERT INTO `bao_paddlist` VALUES ('2724', '辉县市', '3', '246', '0');
INSERT INTO `bao_paddlist` VALUES ('2725', '长垣县', '3', '246', '0');
INSERT INTO `bao_paddlist` VALUES ('2726', '中站区', '3', '247', '0');
INSERT INTO `bao_paddlist` VALUES ('2727', '修武县', '3', '247', '0');
INSERT INTO `bao_paddlist` VALUES ('2728', '博爱县', '3', '247', '0');
INSERT INTO `bao_paddlist` VALUES ('2729', '孟州市', '3', '247', '0');
INSERT INTO `bao_paddlist` VALUES ('2730', '山阳区', '3', '247', '0');
INSERT INTO `bao_paddlist` VALUES ('2731', '武陟县', '3', '247', '0');
INSERT INTO `bao_paddlist` VALUES ('2732', '沁阳市', '3', '247', '0');
INSERT INTO `bao_paddlist` VALUES ('2733', '温县', '3', '247', '0');
INSERT INTO `bao_paddlist` VALUES ('2734', '解放区', '3', '247', '0');
INSERT INTO `bao_paddlist` VALUES ('2735', '马村区', '3', '247', '0');
INSERT INTO `bao_paddlist` VALUES ('2736', '华龙区', '3', '248', '0');
INSERT INTO `bao_paddlist` VALUES ('2737', '南乐县', '3', '248', '0');
INSERT INTO `bao_paddlist` VALUES ('2738', '台前县', '3', '248', '0');
INSERT INTO `bao_paddlist` VALUES ('2739', '清丰县', '3', '248', '0');
INSERT INTO `bao_paddlist` VALUES ('2740', '濮阳县', '3', '248', '0');
INSERT INTO `bao_paddlist` VALUES ('2741', '范县', '3', '248', '0');
INSERT INTO `bao_paddlist` VALUES ('2742', '禹州市', '3', '249', '0');
INSERT INTO `bao_paddlist` VALUES ('2743', '襄城县', '3', '249', '0');
INSERT INTO `bao_paddlist` VALUES ('2744', '许昌县', '3', '249', '0');
INSERT INTO `bao_paddlist` VALUES ('2745', '鄢陵县', '3', '249', '0');
INSERT INTO `bao_paddlist` VALUES ('2746', '长葛市', '3', '249', '0');
INSERT INTO `bao_paddlist` VALUES ('2747', '魏都区', '3', '249', '0');
INSERT INTO `bao_paddlist` VALUES ('2748', '临颍县', '3', '250', '0');
INSERT INTO `bao_paddlist` VALUES ('2749', '召陵区', '3', '250', '0');
INSERT INTO `bao_paddlist` VALUES ('2750', '源汇区', '3', '250', '0');
INSERT INTO `bao_paddlist` VALUES ('2751', '舞阳县', '3', '250', '0');
INSERT INTO `bao_paddlist` VALUES ('2752', '郾城区', '3', '250', '0');
INSERT INTO `bao_paddlist` VALUES ('2753', '义马市', '3', '251', '0');
INSERT INTO `bao_paddlist` VALUES ('2754', '卢氏县', '3', '251', '0');
INSERT INTO `bao_paddlist` VALUES ('2755', '渑池县', '3', '251', '0');
INSERT INTO `bao_paddlist` VALUES ('2756', '湖滨区', '3', '251', '0');
INSERT INTO `bao_paddlist` VALUES ('2757', '灵宝市', '3', '251', '0');
INSERT INTO `bao_paddlist` VALUES ('2758', '陕县', '3', '251', '0');
INSERT INTO `bao_paddlist` VALUES ('2759', '内乡县', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2760', '南召县', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2761', '卧龙区', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2762', '唐河县', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2763', '宛城区', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2764', '新野县', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2765', '方城县', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2766', '桐柏县', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2767', '淅川县', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2768', '社旗县', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2769', '西峡县', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2770', '邓州市', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2771', '镇平县', '3', '252', '0');
INSERT INTO `bao_paddlist` VALUES ('2772', '夏邑县', '3', '253', '0');
INSERT INTO `bao_paddlist` VALUES ('2773', '宁陵县', '3', '253', '0');
INSERT INTO `bao_paddlist` VALUES ('2774', '柘城县', '3', '253', '0');
INSERT INTO `bao_paddlist` VALUES ('2775', '民权县', '3', '253', '0');
INSERT INTO `bao_paddlist` VALUES ('2776', '永城市', '3', '253', '0');
INSERT INTO `bao_paddlist` VALUES ('2777', '睢县', '3', '253', '0');
INSERT INTO `bao_paddlist` VALUES ('2778', '睢阳区', '3', '253', '0');
INSERT INTO `bao_paddlist` VALUES ('2779', '粱园区', '3', '253', '0');
INSERT INTO `bao_paddlist` VALUES ('2780', '虞城县', '3', '253', '0');
INSERT INTO `bao_paddlist` VALUES ('2781', '光山县', '3', '254', '0');
INSERT INTO `bao_paddlist` VALUES ('2782', '商城县', '3', '254', '0');
INSERT INTO `bao_paddlist` VALUES ('2783', '固始县', '3', '254', '0');
INSERT INTO `bao_paddlist` VALUES ('2784', '平桥区', '3', '254', '0');
INSERT INTO `bao_paddlist` VALUES ('2785', '息县', '3', '254', '0');
INSERT INTO `bao_paddlist` VALUES ('2786', '新县', '3', '254', '0');
INSERT INTO `bao_paddlist` VALUES ('2787', '浉河区', '3', '254', '0');
INSERT INTO `bao_paddlist` VALUES ('2788', '淮滨县', '3', '254', '0');
INSERT INTO `bao_paddlist` VALUES ('2789', '潢川县', '3', '254', '0');
INSERT INTO `bao_paddlist` VALUES ('2790', '罗山县', '3', '254', '0');
INSERT INTO `bao_paddlist` VALUES ('2791', '商水县', '3', '255', '0');
INSERT INTO `bao_paddlist` VALUES ('2792', '太康县', '3', '255', '0');
INSERT INTO `bao_paddlist` VALUES ('2793', '川汇区', '3', '255', '0');
INSERT INTO `bao_paddlist` VALUES ('2794', '扶沟县', '3', '255', '0');
INSERT INTO `bao_paddlist` VALUES ('2795', '沈丘县', '3', '255', '0');
INSERT INTO `bao_paddlist` VALUES ('2796', '淮阳县', '3', '255', '0');
INSERT INTO `bao_paddlist` VALUES ('2797', '西华县', '3', '255', '0');
INSERT INTO `bao_paddlist` VALUES ('2798', '郸城县', '3', '255', '0');
INSERT INTO `bao_paddlist` VALUES ('2799', '项城市', '3', '255', '0');
INSERT INTO `bao_paddlist` VALUES ('2800', '鹿邑县', '3', '255', '0');
INSERT INTO `bao_paddlist` VALUES ('2801', '上蔡县', '3', '256', '0');
INSERT INTO `bao_paddlist` VALUES ('2802', '平舆县', '3', '256', '0');
INSERT INTO `bao_paddlist` VALUES ('2803', '新蔡县', '3', '256', '0');
INSERT INTO `bao_paddlist` VALUES ('2804', '正阳县', '3', '256', '0');
INSERT INTO `bao_paddlist` VALUES ('2805', '汝南县', '3', '256', '0');
INSERT INTO `bao_paddlist` VALUES ('2806', '泌阳县', '3', '256', '0');
INSERT INTO `bao_paddlist` VALUES ('2807', '确山县', '3', '256', '0');
INSERT INTO `bao_paddlist` VALUES ('2808', '西平县', '3', '256', '0');
INSERT INTO `bao_paddlist` VALUES ('2809', '遂平县', '3', '256', '0');
INSERT INTO `bao_paddlist` VALUES ('2810', '驿城区', '3', '256', '0');
INSERT INTO `bao_paddlist` VALUES ('2811', '济源市', '3', '257', '0');
INSERT INTO `bao_paddlist` VALUES ('2812', '东西湖区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2813', '新洲区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2814', '武昌区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2815', '汉南区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2816', '汉阳区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2817', '江夏区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2818', '江岸区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2819', '江汉区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2820', '洪山区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2821', '硚口区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2822', '蔡甸区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2823', '青山区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2824', '黄陂区', '3', '258', '0');
INSERT INTO `bao_paddlist` VALUES ('2825', '下陆区', '3', '259', '0');
INSERT INTO `bao_paddlist` VALUES ('2826', '大冶市', '3', '259', '0');
INSERT INTO `bao_paddlist` VALUES ('2827', '西塞山区', '3', '259', '0');
INSERT INTO `bao_paddlist` VALUES ('2828', '铁山区', '3', '259', '0');
INSERT INTO `bao_paddlist` VALUES ('2829', '阳新县', '3', '259', '0');
INSERT INTO `bao_paddlist` VALUES ('2830', '黄石港区', '3', '259', '0');
INSERT INTO `bao_paddlist` VALUES ('2831', '丹江口市', '3', '260', '0');
INSERT INTO `bao_paddlist` VALUES ('2832', '张湾区', '3', '260', '0');
INSERT INTO `bao_paddlist` VALUES ('2833', '房县', '3', '260', '0');
INSERT INTO `bao_paddlist` VALUES ('2834', '竹山县', '3', '260', '0');
INSERT INTO `bao_paddlist` VALUES ('2835', '竹溪县', '3', '260', '0');
INSERT INTO `bao_paddlist` VALUES ('2836', '茅箭区', '3', '260', '0');
INSERT INTO `bao_paddlist` VALUES ('2837', '郧县', '3', '260', '0');
INSERT INTO `bao_paddlist` VALUES ('2838', '郧西县', '3', '260', '0');
INSERT INTO `bao_paddlist` VALUES ('2839', '五峰土家族自治县', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2840', '伍家岗区', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2841', '兴山县', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2842', '夷陵区', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2843', '宜都市', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2844', '当阳市', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2845', '枝江市', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2846', '点军区', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2847', '秭归县', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2848', '虢亭区', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2849', '西陵区', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2850', '远安县', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2851', '长阳土家族自治县', '3', '261', '0');
INSERT INTO `bao_paddlist` VALUES ('2852', '保康县', '3', '262', '0');
INSERT INTO `bao_paddlist` VALUES ('2853', '南漳县', '3', '262', '0');
INSERT INTO `bao_paddlist` VALUES ('2854', '宜城市', '3', '262', '0');
INSERT INTO `bao_paddlist` VALUES ('2855', '枣阳市', '3', '262', '0');
INSERT INTO `bao_paddlist` VALUES ('2856', '樊城区', '3', '262', '0');
INSERT INTO `bao_paddlist` VALUES ('2857', '老河口市', '3', '262', '0');
INSERT INTO `bao_paddlist` VALUES ('2858', '襄城区', '3', '262', '0');
INSERT INTO `bao_paddlist` VALUES ('2859', '襄阳区', '3', '262', '0');
INSERT INTO `bao_paddlist` VALUES ('2860', '谷城县', '3', '262', '0');
INSERT INTO `bao_paddlist` VALUES ('2861', '华容区', '3', '263', '0');
INSERT INTO `bao_paddlist` VALUES ('2862', '粱子湖', '3', '263', '0');
INSERT INTO `bao_paddlist` VALUES ('2863', '鄂城区', '3', '263', '0');
INSERT INTO `bao_paddlist` VALUES ('2864', '东宝区', '3', '264', '0');
INSERT INTO `bao_paddlist` VALUES ('2865', '京山县', '3', '264', '0');
INSERT INTO `bao_paddlist` VALUES ('2866', '掇刀区', '3', '264', '0');
INSERT INTO `bao_paddlist` VALUES ('2867', '沙洋县', '3', '264', '0');
INSERT INTO `bao_paddlist` VALUES ('2868', '钟祥市', '3', '264', '0');
INSERT INTO `bao_paddlist` VALUES ('2869', '云梦县', '3', '265', '0');
INSERT INTO `bao_paddlist` VALUES ('2870', '大悟县', '3', '265', '0');
INSERT INTO `bao_paddlist` VALUES ('2871', '孝南区', '3', '265', '0');
INSERT INTO `bao_paddlist` VALUES ('2872', '孝昌县', '3', '265', '0');
INSERT INTO `bao_paddlist` VALUES ('2873', '安陆市', '3', '265', '0');
INSERT INTO `bao_paddlist` VALUES ('2874', '应城市', '3', '265', '0');
INSERT INTO `bao_paddlist` VALUES ('2875', '汉川市', '3', '265', '0');
INSERT INTO `bao_paddlist` VALUES ('2876', '公安县', '3', '266', '0');
INSERT INTO `bao_paddlist` VALUES ('2877', '松滋市', '3', '266', '0');
INSERT INTO `bao_paddlist` VALUES ('2878', '江陵县', '3', '266', '0');
INSERT INTO `bao_paddlist` VALUES ('2879', '沙市区', '3', '266', '0');
INSERT INTO `bao_paddlist` VALUES ('2880', '洪湖市', '3', '266', '0');
INSERT INTO `bao_paddlist` VALUES ('2881', '监利县', '3', '266', '0');
INSERT INTO `bao_paddlist` VALUES ('2882', '石首市', '3', '266', '0');
INSERT INTO `bao_paddlist` VALUES ('2883', '荆州区', '3', '266', '0');
INSERT INTO `bao_paddlist` VALUES ('2884', '团风县', '3', '267', '0');
INSERT INTO `bao_paddlist` VALUES ('2885', '武穴市', '3', '267', '0');
INSERT INTO `bao_paddlist` VALUES ('2886', '浠水县', '3', '267', '0');
INSERT INTO `bao_paddlist` VALUES ('2887', '红安县', '3', '267', '0');
INSERT INTO `bao_paddlist` VALUES ('2888', '罗田县', '3', '267', '0');
INSERT INTO `bao_paddlist` VALUES ('2889', '英山县', '3', '267', '0');
INSERT INTO `bao_paddlist` VALUES ('2890', '蕲春县', '3', '267', '0');
INSERT INTO `bao_paddlist` VALUES ('2891', '麻城市', '3', '267', '0');
INSERT INTO `bao_paddlist` VALUES ('2892', '黄州区', '3', '267', '0');
INSERT INTO `bao_paddlist` VALUES ('2893', '黄梅县', '3', '267', '0');
INSERT INTO `bao_paddlist` VALUES ('2894', '咸安区', '3', '268', '0');
INSERT INTO `bao_paddlist` VALUES ('2895', '嘉鱼县', '3', '268', '0');
INSERT INTO `bao_paddlist` VALUES ('2896', '崇阳县', '3', '268', '0');
INSERT INTO `bao_paddlist` VALUES ('2897', '赤壁市', '3', '268', '0');
INSERT INTO `bao_paddlist` VALUES ('2898', '通城县', '3', '268', '0');
INSERT INTO `bao_paddlist` VALUES ('2899', '通山县', '3', '268', '0');
INSERT INTO `bao_paddlist` VALUES ('2900', '广水市', '3', '269', '0');
INSERT INTO `bao_paddlist` VALUES ('2901', '曾都区', '3', '269', '0');
INSERT INTO `bao_paddlist` VALUES ('2902', '利川市', '3', '270', '0');
INSERT INTO `bao_paddlist` VALUES ('2903', '咸丰县', '3', '270', '0');
INSERT INTO `bao_paddlist` VALUES ('2904', '宣恩县', '3', '270', '0');
INSERT INTO `bao_paddlist` VALUES ('2905', '巴东县', '3', '270', '0');
INSERT INTO `bao_paddlist` VALUES ('2906', '建始县', '3', '270', '0');
INSERT INTO `bao_paddlist` VALUES ('2907', '恩施市', '3', '270', '0');
INSERT INTO `bao_paddlist` VALUES ('2908', '来凤县', '3', '270', '0');
INSERT INTO `bao_paddlist` VALUES ('2909', '鹤峰县', '3', '270', '0');
INSERT INTO `bao_paddlist` VALUES ('2910', '仙桃市', '3', '271', '0');
INSERT INTO `bao_paddlist` VALUES ('2911', '潜江市', '3', '272', '0');
INSERT INTO `bao_paddlist` VALUES ('2912', '天门市', '3', '273', '0');
INSERT INTO `bao_paddlist` VALUES ('2913', '神农架林区', '3', '274', '0');
INSERT INTO `bao_paddlist` VALUES ('2914', '天心区', '3', '275', '0');
INSERT INTO `bao_paddlist` VALUES ('2915', '宁乡县', '3', '275', '0');
INSERT INTO `bao_paddlist` VALUES ('2916', '岳麓区', '3', '275', '0');
INSERT INTO `bao_paddlist` VALUES ('2917', '开福区', '3', '275', '0');
INSERT INTO `bao_paddlist` VALUES ('2918', '望城县', '3', '275', '0');
INSERT INTO `bao_paddlist` VALUES ('2919', '浏阳市', '3', '275', '0');
INSERT INTO `bao_paddlist` VALUES ('2920', '芙蓉区', '3', '275', '0');
INSERT INTO `bao_paddlist` VALUES ('2921', '长沙县', '3', '275', '0');
INSERT INTO `bao_paddlist` VALUES ('2922', '雨花区', '3', '275', '0');
INSERT INTO `bao_paddlist` VALUES ('2923', '天元区', '3', '276', '0');
INSERT INTO `bao_paddlist` VALUES ('2924', '攸县', '3', '276', '0');
INSERT INTO `bao_paddlist` VALUES ('2925', '株洲县', '3', '276', '0');
INSERT INTO `bao_paddlist` VALUES ('2926', '炎陵县', '3', '276', '0');
INSERT INTO `bao_paddlist` VALUES ('2927', '石峰区', '3', '276', '0');
INSERT INTO `bao_paddlist` VALUES ('2928', '芦淞区', '3', '276', '0');
INSERT INTO `bao_paddlist` VALUES ('2929', '茶陵县', '3', '276', '0');
INSERT INTO `bao_paddlist` VALUES ('2930', '荷塘区', '3', '276', '0');
INSERT INTO `bao_paddlist` VALUES ('2931', '醴陵市', '3', '276', '0');
INSERT INTO `bao_paddlist` VALUES ('2932', '岳塘区', '3', '277', '0');
INSERT INTO `bao_paddlist` VALUES ('2933', '湘乡市', '3', '277', '0');
INSERT INTO `bao_paddlist` VALUES ('2934', '湘潭县', '3', '277', '0');
INSERT INTO `bao_paddlist` VALUES ('2935', '雨湖区', '3', '277', '0');
INSERT INTO `bao_paddlist` VALUES ('2936', '韶山市', '3', '277', '0');
INSERT INTO `bao_paddlist` VALUES ('2937', '南岳区', '3', '278', '0');
INSERT INTO `bao_paddlist` VALUES ('2938', '常宁市', '3', '278', '0');
INSERT INTO `bao_paddlist` VALUES ('2939', '珠晖区', '3', '278', '0');
INSERT INTO `bao_paddlist` VALUES ('2940', '石鼓区', '3', '278', '0');
INSERT INTO `bao_paddlist` VALUES ('2941', '祁东县', '3', '278', '0');
INSERT INTO `bao_paddlist` VALUES ('2942', '耒阳市', '3', '278', '0');
INSERT INTO `bao_paddlist` VALUES ('2943', '蒸湘区', '3', '278', '0');
INSERT INTO `bao_paddlist` VALUES ('2944', '衡东县', '3', '278', '0');
INSERT INTO `bao_paddlist` VALUES ('2945', '衡南县', '3', '278', '0');
INSERT INTO `bao_paddlist` VALUES ('2946', '衡山县', '3', '278', '0');
INSERT INTO `bao_paddlist` VALUES ('2947', '衡阳县', '3', '278', '0');
INSERT INTO `bao_paddlist` VALUES ('2948', '雁峰区', '3', '278', '0');
INSERT INTO `bao_paddlist` VALUES ('2949', '北塔区', '3', '279', '0');
INSERT INTO `bao_paddlist` VALUES ('2950', '双清区', '3', '279', '0');
INSERT INTO `bao_paddlist` VALUES ('2951', '城步苗族自治县', '3', '279', '0');
INSERT INTO `bao_paddlist` VALUES ('2952', '大祥区', '3', '279', '0');
INSERT INTO `bao_paddlist` VALUES ('2953', '新宁县', '3', '279', '0');
INSERT INTO `bao_paddlist` VALUES ('2954', '新邵县', '3', '279', '0');
INSERT INTO `bao_paddlist` VALUES ('2955', '武冈市', '3', '279', '0');
INSERT INTO `bao_paddlist` VALUES ('2956', '洞口县', '3', '279', '0');
INSERT INTO `bao_paddlist` VALUES ('2957', '绥宁县', '3', '279', '0');
INSERT INTO `bao_paddlist` VALUES ('2958', '邵东县', '3', '279', '0');
INSERT INTO `bao_paddlist` VALUES ('2959', '邵阳县', '3', '279', '0');
INSERT INTO `bao_paddlist` VALUES ('2960', '隆回县', '3', '279', '0');
INSERT INTO `bao_paddlist` VALUES ('2961', '临湘市', '3', '280', '0');
INSERT INTO `bao_paddlist` VALUES ('2962', '云溪区', '3', '280', '0');
INSERT INTO `bao_paddlist` VALUES ('2963', '华容县', '3', '280', '0');
INSERT INTO `bao_paddlist` VALUES ('2964', '君山区', '3', '280', '0');
INSERT INTO `bao_paddlist` VALUES ('2965', '岳阳县', '3', '280', '0');
INSERT INTO `bao_paddlist` VALUES ('2966', '岳阳楼区', '3', '280', '0');
INSERT INTO `bao_paddlist` VALUES ('2967', '平江县', '3', '280', '0');
INSERT INTO `bao_paddlist` VALUES ('2968', '汨罗市', '3', '280', '0');
INSERT INTO `bao_paddlist` VALUES ('2969', '湘阴县', '3', '280', '0');
INSERT INTO `bao_paddlist` VALUES ('2970', '临澧县', '3', '281', '0');
INSERT INTO `bao_paddlist` VALUES ('2971', '安乡县', '3', '281', '0');
INSERT INTO `bao_paddlist` VALUES ('2972', '桃源县', '3', '281', '0');
INSERT INTO `bao_paddlist` VALUES ('2973', '武陵区', '3', '281', '0');
INSERT INTO `bao_paddlist` VALUES ('2974', '汉寿县', '3', '281', '0');
INSERT INTO `bao_paddlist` VALUES ('2975', '津市市', '3', '281', '0');
INSERT INTO `bao_paddlist` VALUES ('2976', '澧县', '3', '281', '0');
INSERT INTO `bao_paddlist` VALUES ('2977', '石门县', '3', '281', '0');
INSERT INTO `bao_paddlist` VALUES ('2978', '鼎城区', '3', '281', '0');
INSERT INTO `bao_paddlist` VALUES ('2979', '慈利县', '3', '282', '0');
INSERT INTO `bao_paddlist` VALUES ('2980', '桑植县', '3', '282', '0');
INSERT INTO `bao_paddlist` VALUES ('2981', '武陵源区', '3', '282', '0');
INSERT INTO `bao_paddlist` VALUES ('2982', '永定区', '3', '282', '0');
INSERT INTO `bao_paddlist` VALUES ('2983', '南县', '3', '283', '0');
INSERT INTO `bao_paddlist` VALUES ('2984', '安化县', '3', '283', '0');
INSERT INTO `bao_paddlist` VALUES ('2985', '桃江县', '3', '283', '0');
INSERT INTO `bao_paddlist` VALUES ('2986', '沅江市', '3', '283', '0');
INSERT INTO `bao_paddlist` VALUES ('2987', '资阳区', '3', '283', '0');
INSERT INTO `bao_paddlist` VALUES ('2988', '赫山区', '3', '283', '0');
INSERT INTO `bao_paddlist` VALUES ('2989', '临武县', '3', '284', '0');
INSERT INTO `bao_paddlist` VALUES ('2990', '北湖区', '3', '284', '0');
INSERT INTO `bao_paddlist` VALUES ('2991', '嘉禾县', '3', '284', '0');
INSERT INTO `bao_paddlist` VALUES ('2992', '安仁县', '3', '284', '0');
INSERT INTO `bao_paddlist` VALUES ('2993', '宜章县', '3', '284', '0');
INSERT INTO `bao_paddlist` VALUES ('2994', '桂东县', '3', '284', '0');
INSERT INTO `bao_paddlist` VALUES ('2995', '桂阳县', '3', '284', '0');
INSERT INTO `bao_paddlist` VALUES ('2996', '永兴县', '3', '284', '0');
INSERT INTO `bao_paddlist` VALUES ('2997', '汝城县', '3', '284', '0');
INSERT INTO `bao_paddlist` VALUES ('2998', '苏仙区', '3', '284', '0');
INSERT INTO `bao_paddlist` VALUES ('2999', '资兴市', '3', '284', '0');
INSERT INTO `bao_paddlist` VALUES ('3000', '东安县', '3', '285', '0');
INSERT INTO `bao_paddlist` VALUES ('3001', '冷水滩区', '3', '285', '0');
INSERT INTO `bao_paddlist` VALUES ('3002', '双牌县', '3', '285', '0');
INSERT INTO `bao_paddlist` VALUES ('3003', '宁远县', '3', '285', '0');
INSERT INTO `bao_paddlist` VALUES ('3004', '新田县', '3', '285', '0');
INSERT INTO `bao_paddlist` VALUES ('3005', '江华瑶族自治县', '3', '285', '0');
INSERT INTO `bao_paddlist` VALUES ('3006', '江永县', '3', '285', '0');
INSERT INTO `bao_paddlist` VALUES ('3007', '祁阳县', '3', '285', '0');
INSERT INTO `bao_paddlist` VALUES ('3008', '蓝山县', '3', '285', '0');
INSERT INTO `bao_paddlist` VALUES ('3009', '道县', '3', '285', '0');
INSERT INTO `bao_paddlist` VALUES ('3010', '零陵区', '3', '285', '0');
INSERT INTO `bao_paddlist` VALUES ('3011', '中方县', '3', '286', '0');
INSERT INTO `bao_paddlist` VALUES ('3012', '会同县', '3', '286', '0');
INSERT INTO `bao_paddlist` VALUES ('3013', '新晃侗族自治县', '3', '286', '0');
INSERT INTO `bao_paddlist` VALUES ('3014', '沅陵县', '3', '286', '0');
INSERT INTO `bao_paddlist` VALUES ('3015', '洪江市/洪江区', '3', '286', '0');
INSERT INTO `bao_paddlist` VALUES ('3016', '溆浦县', '3', '286', '0');
INSERT INTO `bao_paddlist` VALUES ('3017', '芷江侗族自治县', '3', '286', '0');
INSERT INTO `bao_paddlist` VALUES ('3018', '辰溪县', '3', '286', '0');
INSERT INTO `bao_paddlist` VALUES ('3019', '通道侗族自治县', '3', '286', '0');
INSERT INTO `bao_paddlist` VALUES ('3020', '靖州苗族侗族自治县', '3', '286', '0');
INSERT INTO `bao_paddlist` VALUES ('3021', '鹤城区', '3', '286', '0');
INSERT INTO `bao_paddlist` VALUES ('3022', '麻阳苗族自治县', '3', '286', '0');
INSERT INTO `bao_paddlist` VALUES ('3023', '冷水江市', '3', '287', '0');
INSERT INTO `bao_paddlist` VALUES ('3024', '双峰县', '3', '287', '0');
INSERT INTO `bao_paddlist` VALUES ('3025', '娄星区', '3', '287', '0');
INSERT INTO `bao_paddlist` VALUES ('3026', '新化县', '3', '287', '0');
INSERT INTO `bao_paddlist` VALUES ('3027', '涟源市', '3', '287', '0');
INSERT INTO `bao_paddlist` VALUES ('3028', '保靖县', '3', '288', '0');
INSERT INTO `bao_paddlist` VALUES ('3029', '凤凰县', '3', '288', '0');
INSERT INTO `bao_paddlist` VALUES ('3030', '古丈县', '3', '288', '0');
INSERT INTO `bao_paddlist` VALUES ('3031', '吉首市', '3', '288', '0');
INSERT INTO `bao_paddlist` VALUES ('3032', '永顺县', '3', '288', '0');
INSERT INTO `bao_paddlist` VALUES ('3033', '泸溪县', '3', '288', '0');
INSERT INTO `bao_paddlist` VALUES ('3034', '花垣县', '3', '288', '0');
INSERT INTO `bao_paddlist` VALUES ('3035', '龙山县', '3', '288', '0');
INSERT INTO `bao_paddlist` VALUES ('3036', '萝岗区', '3', '289', '0');
INSERT INTO `bao_paddlist` VALUES ('3037', '南沙区', '3', '289', '0');
INSERT INTO `bao_paddlist` VALUES ('3038', '从化市', '3', '289', '0');
INSERT INTO `bao_paddlist` VALUES ('3039', '增城市', '3', '289', '0');
INSERT INTO `bao_paddlist` VALUES ('3040', '天河区', '3', '289', '0');
INSERT INTO `bao_paddlist` VALUES ('3041', '海珠区', '3', '289', '0');
INSERT INTO `bao_paddlist` VALUES ('3042', '番禺区', '3', '289', '0');
INSERT INTO `bao_paddlist` VALUES ('3043', '白云区', '3', '289', '0');
INSERT INTO `bao_paddlist` VALUES ('3044', '花都区', '3', '289', '0');
INSERT INTO `bao_paddlist` VALUES ('3045', '荔湾区', '3', '289', '0');
INSERT INTO `bao_paddlist` VALUES ('3046', '越秀区', '3', '289', '0');
INSERT INTO `bao_paddlist` VALUES ('3047', '黄埔区', '3', '289', '0');
INSERT INTO `bao_paddlist` VALUES ('3048', '乐昌市', '3', '290', '0');
INSERT INTO `bao_paddlist` VALUES ('3049', '乳源瑶族自治县', '3', '290', '0');
INSERT INTO `bao_paddlist` VALUES ('3050', '仁化县', '3', '290', '0');
INSERT INTO `bao_paddlist` VALUES ('3051', '南雄市', '3', '290', '0');
INSERT INTO `bao_paddlist` VALUES ('3052', '始兴县', '3', '290', '0');
INSERT INTO `bao_paddlist` VALUES ('3053', '新丰县', '3', '290', '0');
INSERT INTO `bao_paddlist` VALUES ('3054', '曲江区', '3', '290', '0');
INSERT INTO `bao_paddlist` VALUES ('3055', '武江区', '3', '290', '0');
INSERT INTO `bao_paddlist` VALUES ('3056', '浈江区', '3', '290', '0');
INSERT INTO `bao_paddlist` VALUES ('3057', '翁源县', '3', '290', '0');
INSERT INTO `bao_paddlist` VALUES ('3058', '南山区', '3', '291', '0');
INSERT INTO `bao_paddlist` VALUES ('3059', '宝安区', '3', '291', '0');
INSERT INTO `bao_paddlist` VALUES ('3060', '盐田区', '3', '291', '0');
INSERT INTO `bao_paddlist` VALUES ('3061', '福田区', '3', '291', '0');
INSERT INTO `bao_paddlist` VALUES ('3062', '罗湖区', '3', '291', '0');
INSERT INTO `bao_paddlist` VALUES ('3063', '龙岗区', '3', '291', '0');
INSERT INTO `bao_paddlist` VALUES ('3064', '斗门区', '3', '292', '0');
INSERT INTO `bao_paddlist` VALUES ('3065', '金湾区', '3', '292', '0');
INSERT INTO `bao_paddlist` VALUES ('3066', '香洲区', '3', '292', '0');
INSERT INTO `bao_paddlist` VALUES ('3067', '南澳县', '3', '293', '0');
INSERT INTO `bao_paddlist` VALUES ('3068', '潮南区', '3', '293', '0');
INSERT INTO `bao_paddlist` VALUES ('3069', '潮阳区', '3', '293', '0');
INSERT INTO `bao_paddlist` VALUES ('3070', '澄海区', '3', '293', '0');
INSERT INTO `bao_paddlist` VALUES ('3071', '濠江区', '3', '293', '0');
INSERT INTO `bao_paddlist` VALUES ('3072', '金平区', '3', '293', '0');
INSERT INTO `bao_paddlist` VALUES ('3073', '龙湖区', '3', '293', '0');
INSERT INTO `bao_paddlist` VALUES ('3074', '三水区', '3', '294', '0');
INSERT INTO `bao_paddlist` VALUES ('3075', '南海区', '3', '294', '0');
INSERT INTO `bao_paddlist` VALUES ('3076', '禅城区', '3', '294', '0');
INSERT INTO `bao_paddlist` VALUES ('3077', '顺德区', '3', '294', '0');
INSERT INTO `bao_paddlist` VALUES ('3078', '高明区', '3', '294', '0');
INSERT INTO `bao_paddlist` VALUES ('3079', '台山市', '3', '295', '0');
INSERT INTO `bao_paddlist` VALUES ('3080', '开平市', '3', '295', '0');
INSERT INTO `bao_paddlist` VALUES ('3081', '恩平市', '3', '295', '0');
INSERT INTO `bao_paddlist` VALUES ('3082', '新会区', '3', '295', '0');
INSERT INTO `bao_paddlist` VALUES ('3083', '江海区', '3', '295', '0');
INSERT INTO `bao_paddlist` VALUES ('3084', '蓬江区', '3', '295', '0');
INSERT INTO `bao_paddlist` VALUES ('3085', '鹤山市', '3', '295', '0');
INSERT INTO `bao_paddlist` VALUES ('3086', '吴川市', '3', '296', '0');
INSERT INTO `bao_paddlist` VALUES ('3087', '坡头区', '3', '296', '0');
INSERT INTO `bao_paddlist` VALUES ('3088', '廉江市', '3', '296', '0');
INSERT INTO `bao_paddlist` VALUES ('3089', '徐闻县', '3', '296', '0');
INSERT INTO `bao_paddlist` VALUES ('3090', '赤坎区', '3', '296', '0');
INSERT INTO `bao_paddlist` VALUES ('3091', '遂溪县', '3', '296', '0');
INSERT INTO `bao_paddlist` VALUES ('3092', '雷州市', '3', '296', '0');
INSERT INTO `bao_paddlist` VALUES ('3093', '霞山区', '3', '296', '0');
INSERT INTO `bao_paddlist` VALUES ('3094', '麻章区', '3', '296', '0');
INSERT INTO `bao_paddlist` VALUES ('3095', '信宜市', '3', '297', '0');
INSERT INTO `bao_paddlist` VALUES ('3096', '化州市', '3', '297', '0');
INSERT INTO `bao_paddlist` VALUES ('3097', '电白县', '3', '297', '0');
INSERT INTO `bao_paddlist` VALUES ('3098', '茂南区', '3', '297', '0');
INSERT INTO `bao_paddlist` VALUES ('3099', '茂港区', '3', '297', '0');
INSERT INTO `bao_paddlist` VALUES ('3100', '高州市', '3', '297', '0');
INSERT INTO `bao_paddlist` VALUES ('3101', '四会市', '3', '298', '0');
INSERT INTO `bao_paddlist` VALUES ('3102', '封开县', '3', '298', '0');
INSERT INTO `bao_paddlist` VALUES ('3103', '广宁县', '3', '298', '0');
INSERT INTO `bao_paddlist` VALUES ('3104', '德庆县', '3', '298', '0');
INSERT INTO `bao_paddlist` VALUES ('3105', '怀集县', '3', '298', '0');
INSERT INTO `bao_paddlist` VALUES ('3106', '端州区', '3', '298', '0');
INSERT INTO `bao_paddlist` VALUES ('3107', '高要市', '3', '298', '0');
INSERT INTO `bao_paddlist` VALUES ('3108', '鼎湖区', '3', '298', '0');
INSERT INTO `bao_paddlist` VALUES ('3109', '博罗县', '3', '299', '0');
INSERT INTO `bao_paddlist` VALUES ('3110', '惠东县', '3', '299', '0');
INSERT INTO `bao_paddlist` VALUES ('3111', '惠城区', '3', '299', '0');
INSERT INTO `bao_paddlist` VALUES ('3112', '惠阳区', '3', '299', '0');
INSERT INTO `bao_paddlist` VALUES ('3113', '龙门县', '3', '299', '0');
INSERT INTO `bao_paddlist` VALUES ('3114', '丰顺县', '3', '300', '0');
INSERT INTO `bao_paddlist` VALUES ('3115', '五华县', '3', '300', '0');
INSERT INTO `bao_paddlist` VALUES ('3116', '兴宁市', '3', '300', '0');
INSERT INTO `bao_paddlist` VALUES ('3117', '大埔县', '3', '300', '0');
INSERT INTO `bao_paddlist` VALUES ('3118', '平远县', '3', '300', '0');
INSERT INTO `bao_paddlist` VALUES ('3119', '梅县', '3', '300', '0');
INSERT INTO `bao_paddlist` VALUES ('3120', '梅江区', '3', '300', '0');
INSERT INTO `bao_paddlist` VALUES ('3121', '蕉岭县', '3', '300', '0');
INSERT INTO `bao_paddlist` VALUES ('3122', '城区', '3', '301', '0');
INSERT INTO `bao_paddlist` VALUES ('3123', '海丰县', '3', '301', '0');
INSERT INTO `bao_paddlist` VALUES ('3124', '陆丰市', '3', '301', '0');
INSERT INTO `bao_paddlist` VALUES ('3125', '陆河县', '3', '301', '0');
INSERT INTO `bao_paddlist` VALUES ('3126', '东源县', '3', '302', '0');
INSERT INTO `bao_paddlist` VALUES ('3127', '和平县', '3', '302', '0');
INSERT INTO `bao_paddlist` VALUES ('3128', '源城区', '3', '302', '0');
INSERT INTO `bao_paddlist` VALUES ('3129', '紫金县', '3', '302', '0');
INSERT INTO `bao_paddlist` VALUES ('3130', '连平县', '3', '302', '0');
INSERT INTO `bao_paddlist` VALUES ('3131', '龙川县', '3', '302', '0');
INSERT INTO `bao_paddlist` VALUES ('3132', '江城区', '3', '303', '0');
INSERT INTO `bao_paddlist` VALUES ('3133', '阳东县', '3', '303', '0');
INSERT INTO `bao_paddlist` VALUES ('3134', '阳春市', '3', '303', '0');
INSERT INTO `bao_paddlist` VALUES ('3135', '阳西县', '3', '303', '0');
INSERT INTO `bao_paddlist` VALUES ('3136', '佛冈县', '3', '304', '0');
INSERT INTO `bao_paddlist` VALUES ('3137', '清城区', '3', '304', '0');
INSERT INTO `bao_paddlist` VALUES ('3138', '清新县', '3', '304', '0');
INSERT INTO `bao_paddlist` VALUES ('3139', '英德市', '3', '304', '0');
INSERT INTO `bao_paddlist` VALUES ('3140', '连南瑶族自治县', '3', '304', '0');
INSERT INTO `bao_paddlist` VALUES ('3141', '连山壮族瑶族自治县', '3', '304', '0');
INSERT INTO `bao_paddlist` VALUES ('3142', '连州市', '3', '304', '0');
INSERT INTO `bao_paddlist` VALUES ('3143', '阳山县', '3', '304', '0');
INSERT INTO `bao_paddlist` VALUES ('3144', '东莞市', '3', '305', '0');
INSERT INTO `bao_paddlist` VALUES ('3145', '中山市', '3', '306', '0');
INSERT INTO `bao_paddlist` VALUES ('3146', '湘桥区', '3', '307', '0');
INSERT INTO `bao_paddlist` VALUES ('3147', '潮安县', '3', '307', '0');
INSERT INTO `bao_paddlist` VALUES ('3148', '饶平县', '3', '307', '0');
INSERT INTO `bao_paddlist` VALUES ('3149', '惠来县', '3', '308', '0');
INSERT INTO `bao_paddlist` VALUES ('3150', '揭东县', '3', '308', '0');
INSERT INTO `bao_paddlist` VALUES ('3151', '揭西县', '3', '308', '0');
INSERT INTO `bao_paddlist` VALUES ('3152', '普宁市', '3', '308', '0');
INSERT INTO `bao_paddlist` VALUES ('3153', '榕城区', '3', '308', '0');
INSERT INTO `bao_paddlist` VALUES ('3154', '云城区', '3', '309', '0');
INSERT INTO `bao_paddlist` VALUES ('3155', '云安县', '3', '309', '0');
INSERT INTO `bao_paddlist` VALUES ('3156', '新兴县', '3', '309', '0');
INSERT INTO `bao_paddlist` VALUES ('3157', '罗定市', '3', '309', '0');
INSERT INTO `bao_paddlist` VALUES ('3158', '郁南县', '3', '309', '0');
INSERT INTO `bao_paddlist` VALUES ('3159', '上林县', '3', '310', '0');
INSERT INTO `bao_paddlist` VALUES ('3160', '兴宁区', '3', '310', '0');
INSERT INTO `bao_paddlist` VALUES ('3161', '宾阳县', '3', '310', '0');
INSERT INTO `bao_paddlist` VALUES ('3162', '横县', '3', '310', '0');
INSERT INTO `bao_paddlist` VALUES ('3163', '武鸣县', '3', '310', '0');
INSERT INTO `bao_paddlist` VALUES ('3164', '江南区', '3', '310', '0');
INSERT INTO `bao_paddlist` VALUES ('3165', '良庆区', '3', '310', '0');
INSERT INTO `bao_paddlist` VALUES ('3166', '西乡塘区', '3', '310', '0');
INSERT INTO `bao_paddlist` VALUES ('3167', '邕宁区', '3', '310', '0');
INSERT INTO `bao_paddlist` VALUES ('3168', '隆安县', '3', '310', '0');
INSERT INTO `bao_paddlist` VALUES ('3169', '青秀区', '3', '310', '0');
INSERT INTO `bao_paddlist` VALUES ('3170', '马山县', '3', '310', '0');
INSERT INTO `bao_paddlist` VALUES ('3171', '三江侗族自治县', '3', '311', '0');
INSERT INTO `bao_paddlist` VALUES ('3172', '城中区', '3', '311', '0');
INSERT INTO `bao_paddlist` VALUES ('3173', '柳北区', '3', '311', '0');
INSERT INTO `bao_paddlist` VALUES ('3174', '柳南区', '3', '311', '0');
INSERT INTO `bao_paddlist` VALUES ('3175', '柳城县', '3', '311', '0');
INSERT INTO `bao_paddlist` VALUES ('3176', '柳江县', '3', '311', '0');
INSERT INTO `bao_paddlist` VALUES ('3177', '融安县', '3', '311', '0');
INSERT INTO `bao_paddlist` VALUES ('3178', '融水苗族自治县', '3', '311', '0');
INSERT INTO `bao_paddlist` VALUES ('3179', '鱼峰区', '3', '311', '0');
INSERT INTO `bao_paddlist` VALUES ('3180', '鹿寨县', '3', '311', '0');
INSERT INTO `bao_paddlist` VALUES ('3181', '七星区', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3182', '临桂县', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3183', '全州县', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3184', '兴安县', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3185', '叠彩区', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3186', '平乐县', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3187', '恭城瑶族自治县', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3188', '永福县', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3189', '灌阳县', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3190', '灵川县', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3191', '秀峰区', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3192', '荔浦县', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3193', '象山区', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3194', '资源县', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3195', '阳朔县', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3196', '雁山区', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3197', '龙胜各族自治县', '3', '312', '0');
INSERT INTO `bao_paddlist` VALUES ('3198', '万秀区', '3', '313', '0');
INSERT INTO `bao_paddlist` VALUES ('3199', '岑溪市', '3', '313', '0');
INSERT INTO `bao_paddlist` VALUES ('3200', '苍梧县', '3', '313', '0');
INSERT INTO `bao_paddlist` VALUES ('3201', '蒙山县', '3', '313', '0');
INSERT INTO `bao_paddlist` VALUES ('3202', '藤县', '3', '313', '0');
INSERT INTO `bao_paddlist` VALUES ('3203', '蝶山区', '3', '313', '0');
INSERT INTO `bao_paddlist` VALUES ('3204', '长洲区', '3', '313', '0');
INSERT INTO `bao_paddlist` VALUES ('3205', '合浦县', '3', '314', '0');
INSERT INTO `bao_paddlist` VALUES ('3206', '海城区', '3', '314', '0');
INSERT INTO `bao_paddlist` VALUES ('3207', '铁山港区', '3', '314', '0');
INSERT INTO `bao_paddlist` VALUES ('3208', '银海区', '3', '314', '0');
INSERT INTO `bao_paddlist` VALUES ('3209', '上思县', '3', '315', '0');
INSERT INTO `bao_paddlist` VALUES ('3210', '东兴市', '3', '315', '0');
INSERT INTO `bao_paddlist` VALUES ('3211', '港口区', '3', '315', '0');
INSERT INTO `bao_paddlist` VALUES ('3212', '防城区', '3', '315', '0');
INSERT INTO `bao_paddlist` VALUES ('3213', '浦北县', '3', '316', '0');
INSERT INTO `bao_paddlist` VALUES ('3214', '灵山县', '3', '316', '0');
INSERT INTO `bao_paddlist` VALUES ('3215', '钦北区', '3', '316', '0');
INSERT INTO `bao_paddlist` VALUES ('3216', '钦南区', '3', '316', '0');
INSERT INTO `bao_paddlist` VALUES ('3217', '平南县', '3', '317', '0');
INSERT INTO `bao_paddlist` VALUES ('3218', '桂平市', '3', '317', '0');
INSERT INTO `bao_paddlist` VALUES ('3219', '港北区', '3', '317', '0');
INSERT INTO `bao_paddlist` VALUES ('3220', '港南区', '3', '317', '0');
INSERT INTO `bao_paddlist` VALUES ('3221', '覃塘区', '3', '317', '0');
INSERT INTO `bao_paddlist` VALUES ('3222', '兴业县', '3', '318', '0');
INSERT INTO `bao_paddlist` VALUES ('3223', '北流市', '3', '318', '0');
INSERT INTO `bao_paddlist` VALUES ('3224', '博白县', '3', '318', '0');
INSERT INTO `bao_paddlist` VALUES ('3225', '容县', '3', '318', '0');
INSERT INTO `bao_paddlist` VALUES ('3226', '玉州区', '3', '318', '0');
INSERT INTO `bao_paddlist` VALUES ('3227', '陆川县', '3', '318', '0');
INSERT INTO `bao_paddlist` VALUES ('3228', '乐业县', '3', '319', '0');
INSERT INTO `bao_paddlist` VALUES ('3229', '凌云县', '3', '319', '0');
INSERT INTO `bao_paddlist` VALUES ('3230', '右江区', '3', '319', '0');
INSERT INTO `bao_paddlist` VALUES ('3231', '平果县', '3', '319', '0');
INSERT INTO `bao_paddlist` VALUES ('3232', '德保县', '3', '319', '0');
INSERT INTO `bao_paddlist` VALUES ('3233', '田东县', '3', '319', '0');
INSERT INTO `bao_paddlist` VALUES ('3234', '田林县', '3', '319', '0');
INSERT INTO `bao_paddlist` VALUES ('3235', '田阳县', '3', '319', '0');
INSERT INTO `bao_paddlist` VALUES ('3236', '西林县', '3', '319', '0');
INSERT INTO `bao_paddlist` VALUES ('3237', '那坡县', '3', '319', '0');
INSERT INTO `bao_paddlist` VALUES ('3238', '隆林各族自治县', '3', '319', '0');
INSERT INTO `bao_paddlist` VALUES ('3239', '靖西县', '3', '319', '0');
INSERT INTO `bao_paddlist` VALUES ('3240', '八步区', '3', '320', '0');
INSERT INTO `bao_paddlist` VALUES ('3241', '富川瑶族自治县', '3', '320', '0');
INSERT INTO `bao_paddlist` VALUES ('3242', '昭平县', '3', '320', '0');
INSERT INTO `bao_paddlist` VALUES ('3243', '钟山县', '3', '320', '0');
INSERT INTO `bao_paddlist` VALUES ('3244', '东兰县', '3', '321', '0');
INSERT INTO `bao_paddlist` VALUES ('3245', '凤山县', '3', '321', '0');
INSERT INTO `bao_paddlist` VALUES ('3246', '南丹县', '3', '321', '0');
INSERT INTO `bao_paddlist` VALUES ('3247', '大化瑶族自治县', '3', '321', '0');
INSERT INTO `bao_paddlist` VALUES ('3248', '天峨县', '3', '321', '0');
INSERT INTO `bao_paddlist` VALUES ('3249', '宜州市', '3', '321', '0');
INSERT INTO `bao_paddlist` VALUES ('3250', '巴马瑶族自治县', '3', '321', '0');
INSERT INTO `bao_paddlist` VALUES ('3251', '环江毛南族自治县', '3', '321', '0');
INSERT INTO `bao_paddlist` VALUES ('3252', '罗城仫佬族自治县', '3', '321', '0');
INSERT INTO `bao_paddlist` VALUES ('3253', '都安瑶族自治县', '3', '321', '0');
INSERT INTO `bao_paddlist` VALUES ('3254', '金城江区', '3', '321', '0');
INSERT INTO `bao_paddlist` VALUES ('3255', '兴宾区', '3', '322', '0');
INSERT INTO `bao_paddlist` VALUES ('3256', '合山市', '3', '322', '0');
INSERT INTO `bao_paddlist` VALUES ('3257', '忻城县', '3', '322', '0');
INSERT INTO `bao_paddlist` VALUES ('3258', '武宣县', '3', '322', '0');
INSERT INTO `bao_paddlist` VALUES ('3259', '象州县', '3', '322', '0');
INSERT INTO `bao_paddlist` VALUES ('3260', '金秀瑶族自治县', '3', '322', '0');
INSERT INTO `bao_paddlist` VALUES ('3261', '凭祥市', '3', '323', '0');
INSERT INTO `bao_paddlist` VALUES ('3262', '大新县', '3', '323', '0');
INSERT INTO `bao_paddlist` VALUES ('3263', '天等县', '3', '323', '0');
INSERT INTO `bao_paddlist` VALUES ('3264', '宁明县', '3', '323', '0');
INSERT INTO `bao_paddlist` VALUES ('3265', '扶绥县', '3', '323', '0');
INSERT INTO `bao_paddlist` VALUES ('3266', '江州区', '3', '323', '0');
INSERT INTO `bao_paddlist` VALUES ('3267', '龙州县', '3', '323', '0');
INSERT INTO `bao_paddlist` VALUES ('3268', '琼山区', '3', '324', '0');
INSERT INTO `bao_paddlist` VALUES ('3269', '秀英区', '3', '324', '0');
INSERT INTO `bao_paddlist` VALUES ('3270', '美兰区', '3', '324', '0');
INSERT INTO `bao_paddlist` VALUES ('3271', '龙华区', '3', '324', '0');
INSERT INTO `bao_paddlist` VALUES ('3272', '三亚市', '3', '325', '0');
INSERT INTO `bao_paddlist` VALUES ('3273', '五指山市', '3', '326', '0');
INSERT INTO `bao_paddlist` VALUES ('3274', '琼海市', '3', '327', '0');
INSERT INTO `bao_paddlist` VALUES ('3275', '儋州市', '3', '328', '0');
INSERT INTO `bao_paddlist` VALUES ('3276', '文昌市', '3', '329', '0');
INSERT INTO `bao_paddlist` VALUES ('3277', '万宁市', '3', '330', '0');
INSERT INTO `bao_paddlist` VALUES ('3278', '东方市', '3', '331', '0');
INSERT INTO `bao_paddlist` VALUES ('3279', '定安县', '3', '332', '0');
INSERT INTO `bao_paddlist` VALUES ('3280', '屯昌县', '3', '333', '0');
INSERT INTO `bao_paddlist` VALUES ('3281', '澄迈县', '3', '334', '0');
INSERT INTO `bao_paddlist` VALUES ('3282', '临高县', '3', '335', '0');
INSERT INTO `bao_paddlist` VALUES ('3283', '白沙黎族自治县', '3', '336', '0');
INSERT INTO `bao_paddlist` VALUES ('3284', '昌江黎族自治县', '3', '337', '0');
INSERT INTO `bao_paddlist` VALUES ('3285', '乐东黎族自治县', '3', '338', '0');
INSERT INTO `bao_paddlist` VALUES ('3286', '陵水黎族自治县', '3', '339', '0');
INSERT INTO `bao_paddlist` VALUES ('3287', '保亭黎族苗族自治县', '3', '340', '0');
INSERT INTO `bao_paddlist` VALUES ('3288', '琼中黎族苗族自治县', '3', '341', '0');
INSERT INTO `bao_paddlist` VALUES ('3289', '九池乡', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3290', '五桥街道', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3291', '余家镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3292', '分水镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3293', '双河口街道', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3294', '后山镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3295', '周家坝街道', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3296', '响水镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3297', '地宝乡', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3298', '大周镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3299', '天城镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3300', '太安镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3301', '太白街道', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3302', '太龙镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3303', '孙家镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3304', '小周镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3305', '弹子镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3306', '恒合土家族乡', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3307', '新乡镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3308', '新田镇', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3309', '普子乡', '3', '345', '0');
INSERT INTO `bao_paddlist` VALUES ('3310', '李河镇', '3', '345', '0');

-- ----------------------------
-- Table structure for `bao_paddress`
-- ----------------------------
DROP TABLE IF EXISTS `bao_paddress`;
CREATE TABLE `bao_paddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `default` int(1) DEFAULT NULL COMMENT '默认地址',
  `xm` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `province_id` int(11) DEFAULT '0' COMMENT '省',
  `city_id` int(11) DEFAULT '0' COMMENT '市',
  `area_id` int(11) DEFAULT '0' COMMENT '县/区',
  `area_str` varchar(255) DEFAULT NULL COMMENT '区域详细字段',
  `info` varchar(255) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户地址库';

-- ----------------------------
-- Records of bao_paddress
-- ----------------------------
INSERT INTO `bao_paddress` VALUES ('3', '3', '0', '这个地址', '13356782345', '1', '44', '683', '北京市 海淀区 学院路街道', '新田路只要我在线');
INSERT INTO `bao_paddress` VALUES ('6', '3', '1', '222', '13356782345', '6', '110', '1551', '辽宁省 抚顺市 新宾满族自治县', '8888');
INSERT INTO `bao_paddress` VALUES ('7', '3', '0', '何娟', '13356782345', '8', '134', '1731', '黑龙江省 双鸭山市 四方台区', '你好，我的地址');

-- ----------------------------
-- Table structure for `bao_payment`
-- ----------------------------
DROP TABLE IF EXISTS `bao_payment`;
CREATE TABLE `bao_payment` (
  `payment_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `logo` varchar(32) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `mobile_logo` varchar(32) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `setting` text,
  `is_mobile_only` tinyint(1) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_payment
-- ----------------------------
INSERT INTO `bao_payment` VALUES ('1', '支付宝', 'alipay.png', 'alipay', 'alipay_mobile.png', '支付宝（中国）网络技术有限公司是国内领先的第三方支付平台，致力于提供“简单、安全、快速”的支付解决方案。支付宝公司从2004年建立开始，始终以“信任”作为产品和服务的核心。作为中国主流的第三方支付平台，我们不仅从产品上确保用户在线支付的安全，同时致力于通过担保交易等创新让用户通过支付宝在网络间建立信任的关系，去帮助建设更纯净的互联网环境。', 'a:8:{s:7:\"service\";s:1:\"2\";s:14:\"alipay_partner\";s:21:\"208891186787454545874\";s:10:\"alipay_key\";s:26:\"e2blsm6qo2vs0ifdsfsgfdgsdf\";s:14:\"alipay_account\";s:21:\"ssfdgxcvvbbbbbbbbbbgd\";s:18:\"alipay_app_partner\";s:0:\"\";s:17:\"alipay_app_seller\";s:0:\"\";s:18:\"alipay_app_private\";s:0:\"\";s:17:\"alipay_app_public\";s:0:\"\";}', '0', '1');
INSERT INTO `bao_payment` VALUES ('2', '财付通', 'tenpay.png', 'tenpay', 'tenpay_mobile.png', '财付通（https://www.tenpay.com/v2/）是腾讯集团旗下中国领先的第三方支付平台，一直致力于为互联网用户和企业提供安全、便捷、专业的在线支付服务。自2005年成立伊始，财付通就以“安全便捷”作为产品和服务的核心，不仅为个人用户创造200多种便民服务和应用场景，还为40多万大中型企业提供专业的资金结算解决方案。', 'a:2:{s:14:\"tenpay_account\";s:4:\"1111\";s:10:\"tenpay_key\";s:4:\"1111\";}', '0', '0');
INSERT INTO `bao_payment` VALUES ('3', '微信支付', 'weixin.png', 'weixin', 'weixin_mobile.png', '微信支付是由腾讯公司知名移动社交通讯软件微信及第三方支付平台财付通联合推出的移动支付创新产品，旨在为广大微信用户及商户提供更优质的支付服务，微信的支付和安全系统由腾讯财付通提供支持。财付通是持有互联网支付牌照并具备完备的安全体系的第三方支付平台。', 'a:4:{s:5:\"appid\";s:18:\"wx2498376bab67c9cc\";s:9:\"appsecret\";s:32:\"3268eb4057c595e54020c7be33d63332\";s:5:\"mchid\";s:10:\"1356379802\";s:6:\"appkey\";s:32:\"af33208d995a60c8c0c05dc6caca593d\";}', '1', '1');
INSERT INTO `bao_payment` VALUES ('4', '余额支付', 'money.png', 'money', 'money_mobile.png', '余额支付是最方便快捷的', '{s:5:\"appid\";s:0:\"\";s:10:\"paysignkey\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:9:\"partnerid\";s:0:\"\";s:10:\"partnerkey\";s:0:\"\";}', '0', '1');
INSERT INTO `bao_payment` VALUES ('5', '银联支付', 'chinapay.png', 'chinapay', 'chinapay_mobile.png', '银联在线支付是中国银联推出的网上支付平台，支持多家发卡银行，涵盖借记卡和信用卡等，包含认证支付、快捷支付和网银支付多种方式，其中认证和快捷支付无需开通网银，仅需一张银行卡，即可享受安全、快捷的网上支付服务！www.chinapay.com', 'a:3:{s:16:\"chinapay_merabbr\";s:0:\"\";s:16:\"chinapay_account\";s:0:\"\";s:12:\"chinapay_key\";s:0:\"\";}', '0', '0');
INSERT INTO `bao_payment` VALUES ('6', '网银在线', 'chinabank.png', 'chinabank', 'chinabank_mobile.png', '网银在线（www.chinabank.com.cn）与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。', 'a:2:{s:17:\"chinabank_account\";s:0:\"\";s:13:\"chinabank_key\";s:0:\"\";}', '0', '0');
INSERT INTO `bao_payment` VALUES ('7', 'paypal', 'paypal.png', 'paypal', 'paypal_mobile.png', 'PayPal（www.paypal.com） 是在线付款解决方案的全球领导者，在全世界有超过七千一百六十万个帐户用户。PayPal 可在 56 个市场以 7 种货币（加元、欧元、英镑、美元、日元、澳元、港元）使用。', 'a:4:{s:18:\"paypal_ec_username\";s:0:\"\";s:18:\"paypal_ec_password\";s:0:\"\";s:19:\"paypal_ec_signature\";s:0:\"\";s:18:\"paypal_ec_currency\";s:3:\"AUD\";}', '0', '0');
INSERT INTO `bao_payment` VALUES ('8', '微信扫码支付(native)', 'native.png', 'native', 'native_mobile.png', '不懂的联系QQ：120585022 配置。', 'a:4:{s:5:\"appid\";s:18:\"wx2498376bab67c9cc\";s:9:\"appsecret\";s:32:\"3268eb4057c595e54020c7be33d63332\";s:5:\"mchid\";s:10:\"1356379802\";s:6:\"appkey\";s:32:\"af33208d995a60c8c0c05dc6caca593d\";}', '0', '1');

-- ----------------------------
-- Table structure for `bao_payment_logs`
-- ----------------------------
DROP TABLE IF EXISTS `bao_payment_logs`;
CREATE TABLE `bao_payment_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `type` enum('tuan','gold','money','ele','ding','goods','pintuan','breaks') DEFAULT 'tuan',
  `order_id` int(11) DEFAULT '0',
  `order_ids` text COMMENT '如果该支付方式支持多个订单（合并付款）',
  `code` varchar(32) DEFAULT NULL,
  `need_pay` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `pay_time` int(11) DEFAULT NULL,
  `pay_ip` varchar(15) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=27013 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_payment_logs
-- ----------------------------
INSERT INTO `bao_payment_logs` VALUES ('1', '1', 'money', '0', '', 'native', '100', '1464146618', '12.18.78.222', '0', '', '0');
INSERT INTO `bao_payment_logs` VALUES ('2', '1', 'breaks', '6', null, 'money', '9000', '1464597978', '27.13.26.107', '1464598070', '27.13.26.107', '1');
INSERT INTO `bao_payment_logs` VALUES ('3', '1', 'tuan', '1', null, 'money', '8900', '1464914920', '27.13.160.80', '1464914928', '27.13.160.80', '1');
INSERT INTO `bao_payment_logs` VALUES ('4', '1', 'goods', '1', null, 'money', '567700', '1464915873', '27.13.160.80', '1464915878', '27.13.160.80', '1');
INSERT INTO `bao_payment_logs` VALUES ('5', '1', 'money', '0', null, 'native', '10000', '1464933830', '223.96.152.2', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('6', '13', 'goods', '3', null, 'alipay', '2200', '1465007787', '175.164.163.235', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('7', '1', 'goods', '6', null, 'money', '567700', '1465289873', '12.18.78.208', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('8', '1', 'goods', '10', null, 'money', '1689', '1465354161', '124.67.252.149', '1465354169', '124.67.252.149', '1');
INSERT INTO `bao_payment_logs` VALUES ('9', '27', 'money', '0', null, 'weixin', '100', '1467344032', '106.35.37.171', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('10', '27', 'money', '0', null, 'weixin', '100', '1467344088', '106.35.37.171', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('11', '27', 'money', '0', null, 'weixin', '100', '1467344095', '106.35.37.171', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('12', '27', 'money', '0', null, 'native', '1', '1467344264', '106.35.37.171', '1467344292', '101.226.103.59', '1');
INSERT INTO `bao_payment_logs` VALUES ('13', '27', 'money', '0', null, 'weixin', '1', '1467344375', '106.35.37.171', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('14', '27', 'money', '0', null, 'weixin', '100', '1467344461', '106.35.37.171', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('15', '1', 'money', '0', null, 'native', '100', '1467348993', '222.134.79.5', '1467349020', '140.207.54.75', '1');
INSERT INTO `bao_payment_logs` VALUES ('16', '28', 'money', '0', null, 'weixin', '1150', '1467349966', '222.134.79.5', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('17', '28', 'money', '0', null, 'weixin', '1150', '1467350213', '222.134.79.5', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('18', '29', 'money', '0', null, 'weixin', '100', '1467359902', '222.134.79.5', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('19', '29', 'money', '0', null, 'weixin', '100', '1467360750', '222.134.79.5', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('20', '29', 'money', '0', null, 'weixin', '100', '1467360755', '222.134.79.5', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('21', '1', 'money', '0', null, 'alipay', '100', '1467361235', '222.134.79.5', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('22', '1', 'money', '0', null, 'native', '100', '1467361254', '222.134.79.5', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('23', '1', 'money', '0', null, 'alipay', '100', '1467361277', '222.134.79.5', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('24', '29', 'money', '0', null, 'weixin', '300', '1467362710', '222.134.79.5', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('25', '29', 'money', '0', null, 'weixin', '100', '1467363110', '222.134.79.5', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('26', '1', 'money', '0', null, 'weixin', '100', '1467364572', '222.134.79.12', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('27000', '30', 'money', '0', null, 'weixin', '1200', '1467383520', '123.147.246.222', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('27001', '30', 'money', '0', null, 'weixin', '1200', '1467384523', '123.147.246.222', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('27002', '30', 'money', '0', null, 'weixin', '100', '1467384543', '123.147.246.222', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('27003', '30', 'money', '0', null, 'weixin', '100', '1467384630', '123.147.246.222', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('27004', '30', 'money', '0', null, 'weixin', '100', '1467384649', '123.147.246.222', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('27005', '30', 'money', '0', null, 'weixin', '100', '1467384751', '123.147.246.222', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('27006', '29', 'money', '0', null, 'weixin', '100', '1467384768', '111.202.105.187', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('27007', '30', 'money', '0', null, 'weixin', '100', '1467384770', '123.147.246.222', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('27008', '1', 'money', '0', null, 'native', '100', '1467384947', '222.134.79.5', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('27009', '29', 'money', '0', null, 'weixin', '1', '1467384972', '111.202.105.187', '1467384986', '140.207.54.74', '1');
INSERT INTO `bao_payment_logs` VALUES ('27010', '1', 'goods', '4', null, 'native', '568700', '1467385000', '27.13.157.207', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('27011', '27', 'money', '0', null, 'weixin', '1', '1467385170', '106.35.37.171', null, null, '0');
INSERT INTO `bao_payment_logs` VALUES ('27012', '1', 'money', '0', null, 'native', '1', '1467385340', '222.134.79.5', '1467385385', '140.207.54.74', '1');

-- ----------------------------
-- Table structure for `bao_pcate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_pcate`;
CREATE TABLE `bao_pcate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `picurl` varchar(255) DEFAULT NULL COMMENT '分类图片',
  `csort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='拼团分类';

-- ----------------------------
-- Records of bao_pcate
-- ----------------------------
INSERT INTO `bao_pcate` VALUES ('1', '拼团一级分类', '2016/04/13/570e1e2d8b212.jpg', '1');

-- ----------------------------
-- Table structure for `bao_pgoods`
-- ----------------------------
DROP TABLE IF EXISTS `bao_pgoods`;
CREATE TABLE `bao_pgoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `list_pic` varchar(255) DEFAULT NULL COMMENT '列表页图片',
  `pics1` varchar(255) DEFAULT NULL COMMENT '产品幻灯片',
  `pics2` varchar(255) DEFAULT NULL COMMENT '产品幻灯片',
  `pics3` varchar(255) DEFAULT NULL COMMENT '产品幻灯片',
  `describe` varchar(255) DEFAULT NULL COMMENT '产品描述',
  `content` text COMMENT '产品详情',
  `is_yunfei` int(11) DEFAULT NULL,
  `yunfei_ids` text,
  `zhongliang` int(11) DEFAULT NULL COMMENT '重量',
  `kuaidi` int(11) DEFAULT NULL COMMENT '快递',
  `sales_num` int(11) DEFAULT '0' COMMENT '销售数量',
  `virtual_sales_num` int(11) DEFAULT NULL COMMENT '虚拟销量',
  `xiangou_num` int(11) DEFAULT NULL COMMENT '库存',
  `market_price` int(11) DEFAULT NULL COMMENT '市场价',
  `one_price` int(11) DEFAULT NULL COMMENT '单独购买价',
  `tuanz_price` int(11) DEFAULT NULL COMMENT '团长价',
  `tuan_num` int(11) DEFAULT NULL COMMENT '默认团人数',
  `tuan_price` int(11) DEFAULT NULL COMMENT '默认团价格',
  `tuan_num2` int(11) DEFAULT NULL COMMENT '二级团人数',
  `tuan_price2` int(11) DEFAULT NULL COMMENT '二级团价格',
  `tuan_num3` int(11) DEFAULT NULL COMMENT '三级团人数',
  `tuan_price3` int(11) DEFAULT NULL COMMENT '三级团价格',
  `open_tuanj` int(1) DEFAULT NULL COMMENT '启用团等级',
  `tuan_status` int(11) DEFAULT NULL COMMENT '开启时间',
  `tuan_hours` int(11) DEFAULT '24' COMMENT '开团后时间限制',
  `goods_unit` varchar(32) DEFAULT NULL COMMENT '规格',
  `goods_pic` varchar(255) DEFAULT NULL COMMENT '分享图片',
  `is_show` int(1) DEFAULT NULL COMMENT '是否上架',
  `paixu` int(11) DEFAULT '100' COMMENT '排序',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '编辑时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`),
  KEY `idx_is_show` (`is_show`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='拼团商品';

-- ----------------------------
-- Records of bao_pgoods
-- ----------------------------
INSERT INTO `bao_pgoods` VALUES ('1', '泰国山竹 39.8元/2斤', '1', '1', '2016/04/14/thumb_570ef3c37620f.jpg', '2016/04/14/thumb_570ef3c5be666.jpg', '2016/04/14/thumb_570ef3c8e1a2a.jpg', '2016/04/14/thumb_570ef3cca03a6.jpg', '山竹中所含有的营养价值非常丰富，其中山竹中所含有的蛋白质与脂类非常丰富，对于人体具有很好的补充营养的作用，尤其对于营养不良，体质虚弱及病后的人群都能起到很好的保健作用。', '<p>山竹中所含有的营养价值非常丰富，其中山竹中所含有的蛋白质与脂类非常丰富，对于人体具有很好的补充营养的作用，尤其对于营养不良，体质虚弱及病后的人群都能起到很好的保健作用。</p>', '0', '1', '1', '1', '0', '344', '800', '30000', '20000', '10000', '100', '8000', '200', '8000', '300', '7000', '2', '1460476800', '24', '斤', '2016/04/14/570ef3f404f14.jpg', '1', '1', '1460597857', '0', '1586361600');

-- ----------------------------
-- Table structure for `bao_pinche`
-- ----------------------------
DROP TABLE IF EXISTS `bao_pinche`;
CREATE TABLE `bao_pinche` (
  `pinche_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) DEFAULT NULL,
  `city_id` int(10) DEFAULT NULL,
  `area_id` int(10) DEFAULT NULL,
  `community_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `start_time_more` varchar(32) DEFAULT NULL,
  `toplace` varchar(10) DEFAULT NULL,
  `middleplace` varchar(32) DEFAULT NULL,
  `num_1` varchar(80) DEFAULT NULL,
  `num_2` varchar(80) DEFAULT NULL,
  `num_3` varchar(80) DEFAULT NULL,
  `num_4` varchar(80) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `details` varchar(256) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(10) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pinche_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_pinche
-- ----------------------------
INSERT INTO `bao_pinche` VALUES ('1', '1', '1', '3', '23', '3', '2016/05/04/thumb_572948693df84.jpg', '2016-05-04', '9:00-12:00', '重庆', '彭水', '3', '', '', '', '13345678912', '', '', '', '1', '1462323392', '12.16.157.237');
INSERT INTO `bao_pinche` VALUES ('2', '1', '1', '3', '22', '3', '', '2016-05-18', '下午2点', '北京', '合川', '1', '', '', '', '13845682389', '800一个人，晕车的不要6333', '', '', '0', '1462416212', '12.16.157.237');
INSERT INTO `bao_pinche` VALUES ('3', '3', '1', '3', '22', '3', '2016/05/04/thumb_572948693df84.jpg', '2016-05-06', '上午9点', '北京', '郑州', '', '', '25吨，12m^3', '', '13356789023', '你好，请你早点来，最好是轻便的货物。', '', '', '0', '1462420936', '12.16.157.237');

-- ----------------------------
-- Table structure for `bao_pkuaidi`
-- ----------------------------
DROP TABLE IF EXISTS `bao_pkuaidi`;
CREATE TABLE `bao_pkuaidi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_pkuaidi
-- ----------------------------
INSERT INTO `bao_pkuaidi` VALUES ('1', '同城快递', '2147483647');
INSERT INTO `bao_pkuaidi` VALUES ('2', '申通快递', '23');

-- ----------------------------
-- Table structure for `bao_pois_content`
-- ----------------------------
DROP TABLE IF EXISTS `bao_pois_content`;
CREATE TABLE `bao_pois_content` (
  `pois_id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `city_id` smallint(5) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `lat` varchar(20) NOT NULL,
  `lng` varchar(20) NOT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `address` varchar(250) NOT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `is_lock` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `orderby` int(5) NOT NULL,
  `create_time` int(12) NOT NULL,
  `stick` varchar(100) NOT NULL,
  `stick_time` int(11) NOT NULL,
  PRIMARY KEY (`pois_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_pois_content
-- ----------------------------
INSERT INTO `bao_pois_content` VALUES ('98', 'bed0c975319b319c220262b0', '0', '7', '韵达快递', '2016/06/12/thumb_575cd38cb3021.jpg', '2', '26.649948', '106.867274', '(028)87080808', '大河村交路1125号附近', '快递', '0', '0', '0', '1461565507', '', '0');

-- ----------------------------
-- Table structure for `bao_pois_word`
-- ----------------------------
DROP TABLE IF EXISTS `bao_pois_word`;
CREATE TABLE `bao_pois_word` (
  `word_id` int(10) NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `pois_id` int(10) NOT NULL,
  `over_time` int(10) NOT NULL,
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `text` (`text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_pois_word
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_porder`
-- ----------------------------
DROP TABLE IF EXISTS `bao_porder`;
CREATE TABLE `bao_porder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tstatus` int(11) DEFAULT '0' COMMENT '订单类型，普通订单、开团订单、参团订单',
  `order_no` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `goods_id` int(11) DEFAULT '0',
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_num` int(11) DEFAULT '0',
  `goods_price` int(11) DEFAULT '0',
  `pay_price` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `xm` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `express_name` varchar(255) DEFAULT NULL,
  `express_no` varchar(255) DEFAULT NULL,
  `express_time` int(11) DEFAULT '0',
  `express_price` int(11) DEFAULT NULL,
  `tuan_id` int(11) DEFAULT '0' COMMENT '参团ID',
  `tuan_status` int(11) DEFAULT '1' COMMENT '组团状态',
  `prepay_id` varchar(255) DEFAULT NULL,
  `order_status` int(11) DEFAULT '1',
  `pay_time` int(11) DEFAULT '0',
  `order_time` int(11) DEFAULT '0',
  `order_beizu` varchar(255) DEFAULT NULL,
  `pay_name` varchar(32) DEFAULT NULL,
  `renshu` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_no` (`order_no`),
  KEY `idx_uid_status` (`user_id`,`order_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='拼团订单';

-- ----------------------------
-- Records of bao_porder
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_post`
-- ----------------------------
DROP TABLE IF EXISTS `bao_post`;
CREATE TABLE `bao_post` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` smallint(5) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `cate_id` smallint(6) DEFAULT '0',
  `details` text,
  `pic` text NOT NULL,
  `views` int(11) DEFAULT '0',
  `reply_num` int(11) DEFAULT '0',
  `zan_num` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `last_id` int(11) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100' COMMENT '1就是第一名',
  `is_fine` tinyint(1) DEFAULT '0' COMMENT '1代表精华',
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_post
-- ----------------------------
INSERT INTO `bao_post` VALUES ('1', '7', null, '这是怎么使用的', '19', '7', '卖给力气死', '', '0', '0', '0', '1465155655', '14.125.235.155', null, null, '1', '100', '0');
INSERT INTO `bao_post` VALUES ('2', null, null, 'PC测试发布帖子试试！', '1', '3', '<p>哈哈，我传了一个图片，<img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\" _src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p><p>试试其他的呢？</p><p><br/></p><img width=\"200\" height=\"100\" src=\"/attachs/2016/06/12/575cd56799d34.jpg\"/>', '2016/06/12/575cd56799d34.jpg', '3', '0', '0', '1465701756', '12.18.78.208', null, null, '1', '100', '0');

-- ----------------------------
-- Table structure for `bao_post_reply`
-- ----------------------------
DROP TABLE IF EXISTS `bao_post_reply`;
CREATE TABLE `bao_post_reply` (
  `reply_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `zan_num` int(11) DEFAULT '0',
  `contents` text,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`reply_id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_post_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_post_zan`
-- ----------------------------
DROP TABLE IF EXISTS `bao_post_zan`;
CREATE TABLE `bao_post_zan` (
  `zan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`zan_id`),
  UNIQUE KEY `post_id` (`post_id`,`create_ip`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_post_zan
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_pshop`
-- ----------------------------
DROP TABLE IF EXISTS `bao_pshop`;
CREATE TABLE `bao_pshop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `mianyunfei` int(11) DEFAULT NULL,
  `tongchen` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='拼团商家';

-- ----------------------------
-- Records of bao_pshop
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_ptuan`
-- ----------------------------
DROP TABLE IF EXISTS `bao_ptuan`;
CREATE TABLE `bao_ptuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `prolong_hours` int(11) DEFAULT '0',
  `tlevel` int(11) DEFAULT '1',
  `tuan_time` int(11) DEFAULT '0',
  `success_time` int(11) DEFAULT '0',
  `tuan_status` int(11) DEFAULT '1',
  `do_status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='开团管理';

-- ----------------------------
-- Records of bao_ptuan
-- ----------------------------
INSERT INTO `bao_ptuan` VALUES ('1', '1', '3', '0', '1', '1460545767', '0', '1', '0');
INSERT INTO `bao_ptuan` VALUES ('2', '1', '3', '0', '2', '1460559077', '0', '4', '0');
INSERT INTO `bao_ptuan` VALUES ('3', '1', '3', '0', '2', '1460559090', '0', '1', '0');
INSERT INTO `bao_ptuan` VALUES ('4', '1', '3', '0', '2', '1460561718', '0', '1', '0');
INSERT INTO `bao_ptuan` VALUES ('5', '1', '3', '0', '2', '1460565738', '0', '1', '0');

-- ----------------------------
-- Table structure for `bao_ptuanteam`
-- ----------------------------
DROP TABLE IF EXISTS `bao_ptuanteam`;
CREATE TABLE `bao_ptuanteam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tuan_id` int(11) DEFAULT '0',
  `goods_id` int(11) DEFAULT '0',
  `order_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `type_id` int(11) DEFAULT '0',
  `tuan_status` int(11) DEFAULT '1',
  `add_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_tuid_tyid` (`tuan_id`,`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='开团成员列表';

-- ----------------------------
-- Records of bao_ptuanteam
-- ----------------------------
INSERT INTO `bao_ptuanteam` VALUES ('1', '1', '1', '1000000000', '3', '1', '1', '1460545767');
INSERT INTO `bao_ptuanteam` VALUES ('2', '2', '1', '1000000001', '3', '1', '1', '1460559077');
INSERT INTO `bao_ptuanteam` VALUES ('3', '3', '1', '1000000002', '3', '1', '1', '1460559090');
INSERT INTO `bao_ptuanteam` VALUES ('4', '4', '1', '1000000003', '3', '1', '1', '1460561718');
INSERT INTO `bao_ptuanteam` VALUES ('5', '5', '1', '1000000004', '3', '1', '1', '1460565738');

-- ----------------------------
-- Table structure for `bao_pyunfei`
-- ----------------------------
DROP TABLE IF EXISTS `bao_pyunfei`;
CREATE TABLE `bao_pyunfei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `kuaidi_id` int(11) DEFAULT NULL,
  `shouzhong` int(11) DEFAULT NULL,
  `xuzhong` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_pyunfei
-- ----------------------------
INSERT INTO `bao_pyunfei` VALUES ('1', '重庆5元', '2', '500', '100', '22');
INSERT INTO `bao_pyunfei` VALUES ('2', '四川8元', '2', '800', '300', '23');
INSERT INTO `bao_pyunfei` VALUES ('3', '贵州8元', '2', '800', '300', '24');
INSERT INTO `bao_pyunfei` VALUES ('4', '云南8元', '2', '800', '300', '25');
INSERT INTO `bao_pyunfei` VALUES ('5', '山西10', '2', '1000', '400', '14');

-- ----------------------------
-- Table structure for `bao_qrcode_census`
-- ----------------------------
DROP TABLE IF EXISTS `bao_qrcode_census`;
CREATE TABLE `bao_qrcode_census` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `year` smallint(5) DEFAULT '0',
  `month` tinyint(2) DEFAULT '0',
  `day` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `shop_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_qrcode_census
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_recharge_card`
-- ----------------------------
DROP TABLE IF EXISTS `bao_recharge_card`;
CREATE TABLE `bao_recharge_card` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT '0',
  `card_key` char(32) DEFAULT '0',
  `value` int(10) DEFAULT '0',
  `end_date` date DEFAULT '0000-00-00',
  `is_used` tinyint(3) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `used_time` int(11) DEFAULT '0',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_recharge_card
-- ----------------------------
INSERT INTO `bao_recharge_card` VALUES ('7', '美乐乐充值卡', '89406794264106835370710918310003', '100', '2016-04-30', '0', '1460443800', '12.16.30.153', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('8', '美乐乐充值卡', '52367247179945581324876336447344', '100', '2016-04-30', '0', '1460443800', '12.16.30.153', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('9', '盛大充值卡', '16451764249187880188703152201312', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('10', '盛大充值卡', '50670757267008472019348062277749', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('11', '盛大充值卡', '33348769862130894996404887685637', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('12', '盛大充值卡', '78160870623645373721891211891785', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('13', '盛大充值卡', '35535596547481138890689418975355', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('14', '盛大充值卡', '07150340281565439814643391308609', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('15', '盛大充值卡', '17853947644117246788859397744700', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('16', '盛大充值卡', '68991942230221328374023464937210', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('17', '盛大充值卡', '63261870744974070695013320074954', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('18', '盛大充值卡', '17524027271042687055120436358892', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('19', '盛大充值卡', '13379112527374656676488607943418', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('20', '盛大充值卡', '49350792682582087534929058513142', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('21', '盛大充值卡', '37669872409351743707044093055592', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('22', '盛大充值卡', '54172186982496896859425322429506', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('23', '盛大充值卡', '42822957509449085033363473273598', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('24', '盛大充值卡', '45654574768056935336055173606029', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('25', '盛大充值卡', '43479339768851666602684132184085', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('26', '盛大充值卡', '77393255818245950911578934788545', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('27', '盛大充值卡', '54007389410452161298871430504906', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('28', '盛大充值卡', '81894515076044789475464082168725', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('29', '盛大充值卡', '32462277872670072843567182758314', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('30', '盛大充值卡', '90951352613742778793705630380332', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('31', '盛大充值卡', '52276843235538040155197257374678', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('32', '盛大充值卡', '45619493387388349959557517004432', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('33', '盛大充值卡', '51961582169269957760547835836220', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('34', '盛大充值卡', '84128601088823747985447794202130', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('35', '盛大充值卡', '25494355326866385102607962460714', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('36', '盛大充值卡', '00488620751023076873820287057139', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('37', '盛大充值卡', '21584778215435920025486261729858', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('38', '盛大充值卡', '72804790015754330979130398905862', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('39', '盛大充值卡', '40840357885090336547962133626636', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('40', '盛大充值卡', '47881386407103219826392800047019', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('41', '盛大充值卡', '74742617595642287239236953098795', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('42', '盛大充值卡', '15273366321567987242874866254052', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('43', '盛大充值卡', '19599061612883314499956587476694', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('44', '盛大充值卡', '66344231447663663865535740261153', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('45', '盛大充值卡', '26055398414547118684878164967209', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('46', '盛大充值卡', '10580590172468780890835558092338', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('47', '盛大充值卡', '68008274386988400286633437318705', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('48', '盛大充值卡', '35057780303508101119833732125536', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('49', '盛大充值卡', '91289556563305284466992165449654', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('50', '盛大充值卡', '04419619390437558554059311491400', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('51', '盛大充值卡', '95181120664469918907622338801999', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('52', '盛大充值卡', '01743026136853140294224919015345', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('53', '盛大充值卡', '89328162489539244477387697539892', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('54', '盛大充值卡', '18106899722601270775030272279904', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('55', '盛大充值卡', '59348298034573660302248150929361', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('56', '盛大充值卡', '24429879099368851267948890100656', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');
INSERT INTO `bao_recharge_card` VALUES ('57', '盛大充值卡', '25251908650039262083374532160043', '1000', '2016-06-30', '0', '1465022690', '14.125.241.145', '0', '0');

-- ----------------------------
-- Table structure for `bao_role`
-- ----------------------------
DROP TABLE IF EXISTS `bao_role`;
CREATE TABLE `bao_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_role
-- ----------------------------
INSERT INTO `bao_role` VALUES ('1', '系统管理员');
INSERT INTO `bao_role` VALUES ('2', '分站管理');
INSERT INTO `bao_role` VALUES ('3', '演示账号！');
INSERT INTO `bao_role` VALUES ('4', 'a a ');
INSERT INTO `bao_role` VALUES ('5', '测试');

-- ----------------------------
-- Table structure for `bao_role_maps`
-- ----------------------------
DROP TABLE IF EXISTS `bao_role_maps`;
CREATE TABLE `bao_role_maps` (
  `role_id` smallint(5) DEFAULT NULL,
  `menu_id` smallint(5) DEFAULT NULL,
  UNIQUE KEY `role_id` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_role_maps
-- ----------------------------
INSERT INTO `bao_role_maps` VALUES ('2', '40');
INSERT INTO `bao_role_maps` VALUES ('2', '51');
INSERT INTO `bao_role_maps` VALUES ('2', '52');
INSERT INTO `bao_role_maps` VALUES ('2', '53');
INSERT INTO `bao_role_maps` VALUES ('2', '54');
INSERT INTO `bao_role_maps` VALUES ('2', '55');
INSERT INTO `bao_role_maps` VALUES ('2', '56');
INSERT INTO `bao_role_maps` VALUES ('2', '57');
INSERT INTO `bao_role_maps` VALUES ('2', '58');
INSERT INTO `bao_role_maps` VALUES ('2', '85');
INSERT INTO `bao_role_maps` VALUES ('2', '86');
INSERT INTO `bao_role_maps` VALUES ('2', '87');
INSERT INTO `bao_role_maps` VALUES ('2', '88');
INSERT INTO `bao_role_maps` VALUES ('2', '90');
INSERT INTO `bao_role_maps` VALUES ('2', '91');
INSERT INTO `bao_role_maps` VALUES ('2', '95');
INSERT INTO `bao_role_maps` VALUES ('2', '96');
INSERT INTO `bao_role_maps` VALUES ('2', '97');
INSERT INTO `bao_role_maps` VALUES ('2', '98');
INSERT INTO `bao_role_maps` VALUES ('2', '99');
INSERT INTO `bao_role_maps` VALUES ('2', '100');
INSERT INTO `bao_role_maps` VALUES ('2', '101');
INSERT INTO `bao_role_maps` VALUES ('2', '102');
INSERT INTO `bao_role_maps` VALUES ('2', '103');
INSERT INTO `bao_role_maps` VALUES ('2', '104');
INSERT INTO `bao_role_maps` VALUES ('2', '105');
INSERT INTO `bao_role_maps` VALUES ('2', '110');
INSERT INTO `bao_role_maps` VALUES ('2', '111');
INSERT INTO `bao_role_maps` VALUES ('2', '112');
INSERT INTO `bao_role_maps` VALUES ('2', '113');
INSERT INTO `bao_role_maps` VALUES ('2', '119');
INSERT INTO `bao_role_maps` VALUES ('2', '120');
INSERT INTO `bao_role_maps` VALUES ('2', '121');
INSERT INTO `bao_role_maps` VALUES ('2', '122');
INSERT INTO `bao_role_maps` VALUES ('2', '123');
INSERT INTO `bao_role_maps` VALUES ('2', '125');
INSERT INTO `bao_role_maps` VALUES ('2', '126');
INSERT INTO `bao_role_maps` VALUES ('2', '127');
INSERT INTO `bao_role_maps` VALUES ('2', '128');
INSERT INTO `bao_role_maps` VALUES ('2', '129');
INSERT INTO `bao_role_maps` VALUES ('2', '135');
INSERT INTO `bao_role_maps` VALUES ('2', '136');
INSERT INTO `bao_role_maps` VALUES ('2', '137');
INSERT INTO `bao_role_maps` VALUES ('2', '138');
INSERT INTO `bao_role_maps` VALUES ('2', '139');
INSERT INTO `bao_role_maps` VALUES ('2', '140');
INSERT INTO `bao_role_maps` VALUES ('2', '142');
INSERT INTO `bao_role_maps` VALUES ('2', '143');
INSERT INTO `bao_role_maps` VALUES ('2', '144');
INSERT INTO `bao_role_maps` VALUES ('2', '145');
INSERT INTO `bao_role_maps` VALUES ('2', '146');
INSERT INTO `bao_role_maps` VALUES ('2', '177');
INSERT INTO `bao_role_maps` VALUES ('2', '178');
INSERT INTO `bao_role_maps` VALUES ('2', '179');
INSERT INTO `bao_role_maps` VALUES ('2', '180');
INSERT INTO `bao_role_maps` VALUES ('2', '181');
INSERT INTO `bao_role_maps` VALUES ('2', '182');
INSERT INTO `bao_role_maps` VALUES ('2', '183');
INSERT INTO `bao_role_maps` VALUES ('2', '184');
INSERT INTO `bao_role_maps` VALUES ('2', '189');
INSERT INTO `bao_role_maps` VALUES ('2', '193');
INSERT INTO `bao_role_maps` VALUES ('2', '194');
INSERT INTO `bao_role_maps` VALUES ('2', '195');
INSERT INTO `bao_role_maps` VALUES ('2', '196');
INSERT INTO `bao_role_maps` VALUES ('2', '209');
INSERT INTO `bao_role_maps` VALUES ('2', '223');
INSERT INTO `bao_role_maps` VALUES ('2', '224');
INSERT INTO `bao_role_maps` VALUES ('2', '225');
INSERT INTO `bao_role_maps` VALUES ('2', '226');
INSERT INTO `bao_role_maps` VALUES ('2', '227');
INSERT INTO `bao_role_maps` VALUES ('2', '235');
INSERT INTO `bao_role_maps` VALUES ('2', '236');
INSERT INTO `bao_role_maps` VALUES ('2', '237');
INSERT INTO `bao_role_maps` VALUES ('2', '238');
INSERT INTO `bao_role_maps` VALUES ('2', '239');
INSERT INTO `bao_role_maps` VALUES ('2', '245');
INSERT INTO `bao_role_maps` VALUES ('2', '246');
INSERT INTO `bao_role_maps` VALUES ('2', '247');
INSERT INTO `bao_role_maps` VALUES ('2', '248');
INSERT INTO `bao_role_maps` VALUES ('2', '249');
INSERT INTO `bao_role_maps` VALUES ('2', '261');
INSERT INTO `bao_role_maps` VALUES ('2', '262');
INSERT INTO `bao_role_maps` VALUES ('2', '263');
INSERT INTO `bao_role_maps` VALUES ('2', '264');
INSERT INTO `bao_role_maps` VALUES ('2', '266');
INSERT INTO `bao_role_maps` VALUES ('2', '267');
INSERT INTO `bao_role_maps` VALUES ('2', '268');
INSERT INTO `bao_role_maps` VALUES ('2', '269');
INSERT INTO `bao_role_maps` VALUES ('2', '277');
INSERT INTO `bao_role_maps` VALUES ('2', '278');
INSERT INTO `bao_role_maps` VALUES ('2', '279');
INSERT INTO `bao_role_maps` VALUES ('2', '281');
INSERT INTO `bao_role_maps` VALUES ('2', '313');
INSERT INTO `bao_role_maps` VALUES ('2', '315');
INSERT INTO `bao_role_maps` VALUES ('2', '327');
INSERT INTO `bao_role_maps` VALUES ('2', '328');
INSERT INTO `bao_role_maps` VALUES ('2', '331');
INSERT INTO `bao_role_maps` VALUES ('2', '352');
INSERT INTO `bao_role_maps` VALUES ('2', '353');
INSERT INTO `bao_role_maps` VALUES ('2', '354');
INSERT INTO `bao_role_maps` VALUES ('2', '355');
INSERT INTO `bao_role_maps` VALUES ('2', '356');
INSERT INTO `bao_role_maps` VALUES ('2', '359');
INSERT INTO `bao_role_maps` VALUES ('2', '360');
INSERT INTO `bao_role_maps` VALUES ('2', '361');
INSERT INTO `bao_role_maps` VALUES ('2', '362');
INSERT INTO `bao_role_maps` VALUES ('2', '419');
INSERT INTO `bao_role_maps` VALUES ('2', '421');
INSERT INTO `bao_role_maps` VALUES ('2', '423');
INSERT INTO `bao_role_maps` VALUES ('2', '424');
INSERT INTO `bao_role_maps` VALUES ('2', '425');
INSERT INTO `bao_role_maps` VALUES ('2', '430');
INSERT INTO `bao_role_maps` VALUES ('2', '431');
INSERT INTO `bao_role_maps` VALUES ('2', '432');
INSERT INTO `bao_role_maps` VALUES ('2', '433');
INSERT INTO `bao_role_maps` VALUES ('2', '434');
INSERT INTO `bao_role_maps` VALUES ('2', '438');
INSERT INTO `bao_role_maps` VALUES ('2', '446');
INSERT INTO `bao_role_maps` VALUES ('2', '447');
INSERT INTO `bao_role_maps` VALUES ('2', '448');
INSERT INTO `bao_role_maps` VALUES ('2', '449');
INSERT INTO `bao_role_maps` VALUES ('2', '450');
INSERT INTO `bao_role_maps` VALUES ('2', '451');
INSERT INTO `bao_role_maps` VALUES ('2', '452');
INSERT INTO `bao_role_maps` VALUES ('2', '453');
INSERT INTO `bao_role_maps` VALUES ('2', '454');
INSERT INTO `bao_role_maps` VALUES ('2', '455');
INSERT INTO `bao_role_maps` VALUES ('2', '456');
INSERT INTO `bao_role_maps` VALUES ('2', '500');
INSERT INTO `bao_role_maps` VALUES ('2', '501');
INSERT INTO `bao_role_maps` VALUES ('2', '502');
INSERT INTO `bao_role_maps` VALUES ('2', '516');
INSERT INTO `bao_role_maps` VALUES ('2', '520');
INSERT INTO `bao_role_maps` VALUES ('2', '521');
INSERT INTO `bao_role_maps` VALUES ('2', '553');
INSERT INTO `bao_role_maps` VALUES ('2', '556');
INSERT INTO `bao_role_maps` VALUES ('2', '557');
INSERT INTO `bao_role_maps` VALUES ('2', '558');
INSERT INTO `bao_role_maps` VALUES ('2', '559');
INSERT INTO `bao_role_maps` VALUES ('2', '563');
INSERT INTO `bao_role_maps` VALUES ('2', '564');
INSERT INTO `bao_role_maps` VALUES ('2', '565');
INSERT INTO `bao_role_maps` VALUES ('2', '566');
INSERT INTO `bao_role_maps` VALUES ('2', '567');
INSERT INTO `bao_role_maps` VALUES ('2', '568');
INSERT INTO `bao_role_maps` VALUES ('2', '569');
INSERT INTO `bao_role_maps` VALUES ('2', '570');
INSERT INTO `bao_role_maps` VALUES ('2', '571');
INSERT INTO `bao_role_maps` VALUES ('2', '572');
INSERT INTO `bao_role_maps` VALUES ('2', '573');
INSERT INTO `bao_role_maps` VALUES ('2', '574');
INSERT INTO `bao_role_maps` VALUES ('2', '575');
INSERT INTO `bao_role_maps` VALUES ('2', '576');
INSERT INTO `bao_role_maps` VALUES ('2', '577');
INSERT INTO `bao_role_maps` VALUES ('2', '578');
INSERT INTO `bao_role_maps` VALUES ('2', '579');
INSERT INTO `bao_role_maps` VALUES ('2', '580');
INSERT INTO `bao_role_maps` VALUES ('2', '625');
INSERT INTO `bao_role_maps` VALUES ('2', '626');
INSERT INTO `bao_role_maps` VALUES ('2', '627');
INSERT INTO `bao_role_maps` VALUES ('2', '634');
INSERT INTO `bao_role_maps` VALUES ('2', '635');
INSERT INTO `bao_role_maps` VALUES ('2', '644');
INSERT INTO `bao_role_maps` VALUES ('2', '645');
INSERT INTO `bao_role_maps` VALUES ('2', '647');
INSERT INTO `bao_role_maps` VALUES ('2', '648');
INSERT INTO `bao_role_maps` VALUES ('2', '651');
INSERT INTO `bao_role_maps` VALUES ('2', '652');
INSERT INTO `bao_role_maps` VALUES ('2', '667');
INSERT INTO `bao_role_maps` VALUES ('2', '668');
INSERT INTO `bao_role_maps` VALUES ('2', '669');
INSERT INTO `bao_role_maps` VALUES ('2', '670');
INSERT INTO `bao_role_maps` VALUES ('2', '671');
INSERT INTO `bao_role_maps` VALUES ('2', '672');
INSERT INTO `bao_role_maps` VALUES ('2', '673');
INSERT INTO `bao_role_maps` VALUES ('2', '674');
INSERT INTO `bao_role_maps` VALUES ('2', '675');
INSERT INTO `bao_role_maps` VALUES ('2', '676');
INSERT INTO `bao_role_maps` VALUES ('2', '677');
INSERT INTO `bao_role_maps` VALUES ('2', '678');
INSERT INTO `bao_role_maps` VALUES ('2', '679');
INSERT INTO `bao_role_maps` VALUES ('2', '680');
INSERT INTO `bao_role_maps` VALUES ('2', '681');
INSERT INTO `bao_role_maps` VALUES ('2', '682');
INSERT INTO `bao_role_maps` VALUES ('2', '683');
INSERT INTO `bao_role_maps` VALUES ('2', '684');
INSERT INTO `bao_role_maps` VALUES ('2', '685');
INSERT INTO `bao_role_maps` VALUES ('2', '686');
INSERT INTO `bao_role_maps` VALUES ('2', '687');
INSERT INTO `bao_role_maps` VALUES ('2', '688');
INSERT INTO `bao_role_maps` VALUES ('2', '689');
INSERT INTO `bao_role_maps` VALUES ('2', '690');
INSERT INTO `bao_role_maps` VALUES ('2', '691');
INSERT INTO `bao_role_maps` VALUES ('2', '692');
INSERT INTO `bao_role_maps` VALUES ('2', '693');
INSERT INTO `bao_role_maps` VALUES ('2', '703');
INSERT INTO `bao_role_maps` VALUES ('2', '704');
INSERT INTO `bao_role_maps` VALUES ('2', '705');
INSERT INTO `bao_role_maps` VALUES ('2', '706');
INSERT INTO `bao_role_maps` VALUES ('2', '717');
INSERT INTO `bao_role_maps` VALUES ('2', '722');
INSERT INTO `bao_role_maps` VALUES ('2', '728');
INSERT INTO `bao_role_maps` VALUES ('2', '729');
INSERT INTO `bao_role_maps` VALUES ('2', '769');
INSERT INTO `bao_role_maps` VALUES ('2', '770');
INSERT INTO `bao_role_maps` VALUES ('2', '771');
INSERT INTO `bao_role_maps` VALUES ('3', '12');
INSERT INTO `bao_role_maps` VALUES ('3', '13');
INSERT INTO `bao_role_maps` VALUES ('3', '14');
INSERT INTO `bao_role_maps` VALUES ('3', '15');
INSERT INTO `bao_role_maps` VALUES ('3', '16');
INSERT INTO `bao_role_maps` VALUES ('3', '17');
INSERT INTO `bao_role_maps` VALUES ('3', '18');
INSERT INTO `bao_role_maps` VALUES ('3', '25');
INSERT INTO `bao_role_maps` VALUES ('3', '26');
INSERT INTO `bao_role_maps` VALUES ('3', '27');
INSERT INTO `bao_role_maps` VALUES ('3', '28');
INSERT INTO `bao_role_maps` VALUES ('3', '29');
INSERT INTO `bao_role_maps` VALUES ('3', '30');
INSERT INTO `bao_role_maps` VALUES ('3', '31');
INSERT INTO `bao_role_maps` VALUES ('3', '32');
INSERT INTO `bao_role_maps` VALUES ('3', '34');
INSERT INTO `bao_role_maps` VALUES ('3', '35');
INSERT INTO `bao_role_maps` VALUES ('3', '36');
INSERT INTO `bao_role_maps` VALUES ('3', '37');
INSERT INTO `bao_role_maps` VALUES ('3', '40');
INSERT INTO `bao_role_maps` VALUES ('3', '41');
INSERT INTO `bao_role_maps` VALUES ('3', '44');
INSERT INTO `bao_role_maps` VALUES ('3', '45');
INSERT INTO `bao_role_maps` VALUES ('3', '46');
INSERT INTO `bao_role_maps` VALUES ('3', '47');
INSERT INTO `bao_role_maps` VALUES ('3', '48');
INSERT INTO `bao_role_maps` VALUES ('3', '51');
INSERT INTO `bao_role_maps` VALUES ('3', '52');
INSERT INTO `bao_role_maps` VALUES ('3', '53');
INSERT INTO `bao_role_maps` VALUES ('3', '54');
INSERT INTO `bao_role_maps` VALUES ('3', '55');
INSERT INTO `bao_role_maps` VALUES ('3', '56');
INSERT INTO `bao_role_maps` VALUES ('3', '57');
INSERT INTO `bao_role_maps` VALUES ('3', '58');
INSERT INTO `bao_role_maps` VALUES ('3', '70');
INSERT INTO `bao_role_maps` VALUES ('3', '71');
INSERT INTO `bao_role_maps` VALUES ('3', '72');
INSERT INTO `bao_role_maps` VALUES ('3', '73');
INSERT INTO `bao_role_maps` VALUES ('3', '80');
INSERT INTO `bao_role_maps` VALUES ('3', '81');
INSERT INTO `bao_role_maps` VALUES ('3', '85');
INSERT INTO `bao_role_maps` VALUES ('3', '86');
INSERT INTO `bao_role_maps` VALUES ('3', '87');
INSERT INTO `bao_role_maps` VALUES ('3', '88');
INSERT INTO `bao_role_maps` VALUES ('3', '90');
INSERT INTO `bao_role_maps` VALUES ('3', '91');
INSERT INTO `bao_role_maps` VALUES ('3', '95');
INSERT INTO `bao_role_maps` VALUES ('3', '96');
INSERT INTO `bao_role_maps` VALUES ('3', '97');
INSERT INTO `bao_role_maps` VALUES ('3', '98');
INSERT INTO `bao_role_maps` VALUES ('3', '99');
INSERT INTO `bao_role_maps` VALUES ('3', '100');
INSERT INTO `bao_role_maps` VALUES ('3', '101');
INSERT INTO `bao_role_maps` VALUES ('3', '102');
INSERT INTO `bao_role_maps` VALUES ('3', '103');
INSERT INTO `bao_role_maps` VALUES ('3', '104');
INSERT INTO `bao_role_maps` VALUES ('3', '105');
INSERT INTO `bao_role_maps` VALUES ('3', '106');
INSERT INTO `bao_role_maps` VALUES ('3', '107');
INSERT INTO `bao_role_maps` VALUES ('3', '108');
INSERT INTO `bao_role_maps` VALUES ('3', '109');
INSERT INTO `bao_role_maps` VALUES ('3', '110');
INSERT INTO `bao_role_maps` VALUES ('3', '111');
INSERT INTO `bao_role_maps` VALUES ('3', '112');
INSERT INTO `bao_role_maps` VALUES ('3', '113');
INSERT INTO `bao_role_maps` VALUES ('3', '115');
INSERT INTO `bao_role_maps` VALUES ('3', '116');
INSERT INTO `bao_role_maps` VALUES ('3', '117');
INSERT INTO `bao_role_maps` VALUES ('3', '118');
INSERT INTO `bao_role_maps` VALUES ('3', '119');
INSERT INTO `bao_role_maps` VALUES ('3', '120');
INSERT INTO `bao_role_maps` VALUES ('3', '121');
INSERT INTO `bao_role_maps` VALUES ('3', '122');
INSERT INTO `bao_role_maps` VALUES ('3', '123');
INSERT INTO `bao_role_maps` VALUES ('3', '125');
INSERT INTO `bao_role_maps` VALUES ('3', '126');
INSERT INTO `bao_role_maps` VALUES ('3', '127');
INSERT INTO `bao_role_maps` VALUES ('3', '128');
INSERT INTO `bao_role_maps` VALUES ('3', '129');
INSERT INTO `bao_role_maps` VALUES ('3', '130');
INSERT INTO `bao_role_maps` VALUES ('3', '135');
INSERT INTO `bao_role_maps` VALUES ('3', '136');
INSERT INTO `bao_role_maps` VALUES ('3', '137');
INSERT INTO `bao_role_maps` VALUES ('3', '138');
INSERT INTO `bao_role_maps` VALUES ('3', '139');
INSERT INTO `bao_role_maps` VALUES ('3', '140');
INSERT INTO `bao_role_maps` VALUES ('3', '142');
INSERT INTO `bao_role_maps` VALUES ('3', '143');
INSERT INTO `bao_role_maps` VALUES ('3', '144');
INSERT INTO `bao_role_maps` VALUES ('3', '145');
INSERT INTO `bao_role_maps` VALUES ('3', '146');
INSERT INTO `bao_role_maps` VALUES ('3', '156');
INSERT INTO `bao_role_maps` VALUES ('3', '157');
INSERT INTO `bao_role_maps` VALUES ('3', '159');
INSERT INTO `bao_role_maps` VALUES ('3', '160');
INSERT INTO `bao_role_maps` VALUES ('3', '161');
INSERT INTO `bao_role_maps` VALUES ('3', '162');
INSERT INTO `bao_role_maps` VALUES ('3', '163');
INSERT INTO `bao_role_maps` VALUES ('3', '164');
INSERT INTO `bao_role_maps` VALUES ('3', '165');
INSERT INTO `bao_role_maps` VALUES ('3', '166');
INSERT INTO `bao_role_maps` VALUES ('3', '167');
INSERT INTO `bao_role_maps` VALUES ('3', '168');
INSERT INTO `bao_role_maps` VALUES ('3', '169');
INSERT INTO `bao_role_maps` VALUES ('3', '170');
INSERT INTO `bao_role_maps` VALUES ('3', '171');
INSERT INTO `bao_role_maps` VALUES ('3', '172');
INSERT INTO `bao_role_maps` VALUES ('3', '173');
INSERT INTO `bao_role_maps` VALUES ('3', '174');
INSERT INTO `bao_role_maps` VALUES ('3', '175');
INSERT INTO `bao_role_maps` VALUES ('3', '176');
INSERT INTO `bao_role_maps` VALUES ('3', '177');
INSERT INTO `bao_role_maps` VALUES ('3', '178');
INSERT INTO `bao_role_maps` VALUES ('3', '179');
INSERT INTO `bao_role_maps` VALUES ('3', '180');
INSERT INTO `bao_role_maps` VALUES ('3', '181');
INSERT INTO `bao_role_maps` VALUES ('3', '182');
INSERT INTO `bao_role_maps` VALUES ('3', '183');
INSERT INTO `bao_role_maps` VALUES ('3', '184');
INSERT INTO `bao_role_maps` VALUES ('3', '185');
INSERT INTO `bao_role_maps` VALUES ('3', '186');
INSERT INTO `bao_role_maps` VALUES ('3', '187');
INSERT INTO `bao_role_maps` VALUES ('3', '188');
INSERT INTO `bao_role_maps` VALUES ('3', '189');
INSERT INTO `bao_role_maps` VALUES ('3', '190');
INSERT INTO `bao_role_maps` VALUES ('3', '193');
INSERT INTO `bao_role_maps` VALUES ('3', '194');
INSERT INTO `bao_role_maps` VALUES ('3', '195');
INSERT INTO `bao_role_maps` VALUES ('3', '196');
INSERT INTO `bao_role_maps` VALUES ('3', '197');
INSERT INTO `bao_role_maps` VALUES ('3', '198');
INSERT INTO `bao_role_maps` VALUES ('3', '199');
INSERT INTO `bao_role_maps` VALUES ('3', '200');
INSERT INTO `bao_role_maps` VALUES ('3', '201');
INSERT INTO `bao_role_maps` VALUES ('3', '203');
INSERT INTO `bao_role_maps` VALUES ('3', '204');
INSERT INTO `bao_role_maps` VALUES ('3', '205');
INSERT INTO `bao_role_maps` VALUES ('3', '206');
INSERT INTO `bao_role_maps` VALUES ('3', '209');
INSERT INTO `bao_role_maps` VALUES ('3', '210');
INSERT INTO `bao_role_maps` VALUES ('3', '211');
INSERT INTO `bao_role_maps` VALUES ('3', '212');
INSERT INTO `bao_role_maps` VALUES ('3', '213');
INSERT INTO `bao_role_maps` VALUES ('3', '214');
INSERT INTO `bao_role_maps` VALUES ('3', '218');
INSERT INTO `bao_role_maps` VALUES ('3', '219');
INSERT INTO `bao_role_maps` VALUES ('3', '220');
INSERT INTO `bao_role_maps` VALUES ('3', '221');
INSERT INTO `bao_role_maps` VALUES ('3', '222');
INSERT INTO `bao_role_maps` VALUES ('3', '223');
INSERT INTO `bao_role_maps` VALUES ('3', '224');
INSERT INTO `bao_role_maps` VALUES ('3', '225');
INSERT INTO `bao_role_maps` VALUES ('3', '226');
INSERT INTO `bao_role_maps` VALUES ('3', '227');
INSERT INTO `bao_role_maps` VALUES ('3', '235');
INSERT INTO `bao_role_maps` VALUES ('3', '236');
INSERT INTO `bao_role_maps` VALUES ('3', '237');
INSERT INTO `bao_role_maps` VALUES ('3', '238');
INSERT INTO `bao_role_maps` VALUES ('3', '239');
INSERT INTO `bao_role_maps` VALUES ('3', '240');
INSERT INTO `bao_role_maps` VALUES ('3', '241');
INSERT INTO `bao_role_maps` VALUES ('3', '242');
INSERT INTO `bao_role_maps` VALUES ('3', '243');
INSERT INTO `bao_role_maps` VALUES ('3', '245');
INSERT INTO `bao_role_maps` VALUES ('3', '246');
INSERT INTO `bao_role_maps` VALUES ('3', '247');
INSERT INTO `bao_role_maps` VALUES ('3', '248');
INSERT INTO `bao_role_maps` VALUES ('3', '249');
INSERT INTO `bao_role_maps` VALUES ('3', '255');
INSERT INTO `bao_role_maps` VALUES ('3', '256');
INSERT INTO `bao_role_maps` VALUES ('3', '257');
INSERT INTO `bao_role_maps` VALUES ('3', '258');
INSERT INTO `bao_role_maps` VALUES ('3', '259');
INSERT INTO `bao_role_maps` VALUES ('3', '261');
INSERT INTO `bao_role_maps` VALUES ('3', '262');
INSERT INTO `bao_role_maps` VALUES ('3', '263');
INSERT INTO `bao_role_maps` VALUES ('3', '264');
INSERT INTO `bao_role_maps` VALUES ('3', '265');
INSERT INTO `bao_role_maps` VALUES ('3', '266');
INSERT INTO `bao_role_maps` VALUES ('3', '267');
INSERT INTO `bao_role_maps` VALUES ('3', '268');
INSERT INTO `bao_role_maps` VALUES ('3', '269');
INSERT INTO `bao_role_maps` VALUES ('3', '270');
INSERT INTO `bao_role_maps` VALUES ('3', '271');
INSERT INTO `bao_role_maps` VALUES ('3', '274');
INSERT INTO `bao_role_maps` VALUES ('3', '275');
INSERT INTO `bao_role_maps` VALUES ('3', '277');
INSERT INTO `bao_role_maps` VALUES ('3', '278');
INSERT INTO `bao_role_maps` VALUES ('3', '279');
INSERT INTO `bao_role_maps` VALUES ('3', '280');
INSERT INTO `bao_role_maps` VALUES ('3', '281');
INSERT INTO `bao_role_maps` VALUES ('3', '283');
INSERT INTO `bao_role_maps` VALUES ('3', '289');
INSERT INTO `bao_role_maps` VALUES ('3', '290');
INSERT INTO `bao_role_maps` VALUES ('3', '292');
INSERT INTO `bao_role_maps` VALUES ('3', '296');
INSERT INTO `bao_role_maps` VALUES ('3', '297');
INSERT INTO `bao_role_maps` VALUES ('3', '298');
INSERT INTO `bao_role_maps` VALUES ('3', '299');
INSERT INTO `bao_role_maps` VALUES ('3', '305');
INSERT INTO `bao_role_maps` VALUES ('3', '306');
INSERT INTO `bao_role_maps` VALUES ('3', '307');
INSERT INTO `bao_role_maps` VALUES ('3', '308');
INSERT INTO `bao_role_maps` VALUES ('3', '309');
INSERT INTO `bao_role_maps` VALUES ('3', '310');
INSERT INTO `bao_role_maps` VALUES ('3', '311');
INSERT INTO `bao_role_maps` VALUES ('3', '312');
INSERT INTO `bao_role_maps` VALUES ('3', '313');
INSERT INTO `bao_role_maps` VALUES ('3', '315');
INSERT INTO `bao_role_maps` VALUES ('3', '316');
INSERT INTO `bao_role_maps` VALUES ('3', '317');
INSERT INTO `bao_role_maps` VALUES ('3', '318');
INSERT INTO `bao_role_maps` VALUES ('3', '319');
INSERT INTO `bao_role_maps` VALUES ('3', '320');
INSERT INTO `bao_role_maps` VALUES ('3', '321');
INSERT INTO `bao_role_maps` VALUES ('3', '322');
INSERT INTO `bao_role_maps` VALUES ('3', '324');
INSERT INTO `bao_role_maps` VALUES ('3', '325');
INSERT INTO `bao_role_maps` VALUES ('3', '326');
INSERT INTO `bao_role_maps` VALUES ('3', '327');
INSERT INTO `bao_role_maps` VALUES ('3', '328');
INSERT INTO `bao_role_maps` VALUES ('3', '329');
INSERT INTO `bao_role_maps` VALUES ('3', '330');
INSERT INTO `bao_role_maps` VALUES ('3', '331');
INSERT INTO `bao_role_maps` VALUES ('3', '332');
INSERT INTO `bao_role_maps` VALUES ('3', '333');
INSERT INTO `bao_role_maps` VALUES ('3', '334');
INSERT INTO `bao_role_maps` VALUES ('3', '336');
INSERT INTO `bao_role_maps` VALUES ('3', '337');
INSERT INTO `bao_role_maps` VALUES ('3', '339');
INSERT INTO `bao_role_maps` VALUES ('3', '340');
INSERT INTO `bao_role_maps` VALUES ('3', '341');
INSERT INTO `bao_role_maps` VALUES ('3', '342');
INSERT INTO `bao_role_maps` VALUES ('3', '343');
INSERT INTO `bao_role_maps` VALUES ('3', '345');
INSERT INTO `bao_role_maps` VALUES ('3', '346');
INSERT INTO `bao_role_maps` VALUES ('3', '347');
INSERT INTO `bao_role_maps` VALUES ('3', '348');
INSERT INTO `bao_role_maps` VALUES ('3', '349');
INSERT INTO `bao_role_maps` VALUES ('3', '350');
INSERT INTO `bao_role_maps` VALUES ('3', '351');
INSERT INTO `bao_role_maps` VALUES ('3', '352');
INSERT INTO `bao_role_maps` VALUES ('3', '353');
INSERT INTO `bao_role_maps` VALUES ('3', '354');
INSERT INTO `bao_role_maps` VALUES ('3', '355');
INSERT INTO `bao_role_maps` VALUES ('3', '356');
INSERT INTO `bao_role_maps` VALUES ('3', '357');
INSERT INTO `bao_role_maps` VALUES ('3', '359');
INSERT INTO `bao_role_maps` VALUES ('3', '360');
INSERT INTO `bao_role_maps` VALUES ('3', '361');
INSERT INTO `bao_role_maps` VALUES ('3', '362');
INSERT INTO `bao_role_maps` VALUES ('3', '387');
INSERT INTO `bao_role_maps` VALUES ('3', '388');
INSERT INTO `bao_role_maps` VALUES ('3', '389');
INSERT INTO `bao_role_maps` VALUES ('3', '390');
INSERT INTO `bao_role_maps` VALUES ('3', '391');
INSERT INTO `bao_role_maps` VALUES ('3', '392');
INSERT INTO `bao_role_maps` VALUES ('3', '410');
INSERT INTO `bao_role_maps` VALUES ('3', '411');
INSERT INTO `bao_role_maps` VALUES ('3', '412');
INSERT INTO `bao_role_maps` VALUES ('3', '413');
INSERT INTO `bao_role_maps` VALUES ('3', '414');
INSERT INTO `bao_role_maps` VALUES ('3', '418');
INSERT INTO `bao_role_maps` VALUES ('3', '419');
INSERT INTO `bao_role_maps` VALUES ('3', '421');
INSERT INTO `bao_role_maps` VALUES ('3', '422');
INSERT INTO `bao_role_maps` VALUES ('3', '423');
INSERT INTO `bao_role_maps` VALUES ('3', '424');
INSERT INTO `bao_role_maps` VALUES ('3', '425');
INSERT INTO `bao_role_maps` VALUES ('3', '430');
INSERT INTO `bao_role_maps` VALUES ('3', '431');
INSERT INTO `bao_role_maps` VALUES ('3', '432');
INSERT INTO `bao_role_maps` VALUES ('3', '433');
INSERT INTO `bao_role_maps` VALUES ('3', '434');
INSERT INTO `bao_role_maps` VALUES ('3', '435');
INSERT INTO `bao_role_maps` VALUES ('3', '436');
INSERT INTO `bao_role_maps` VALUES ('3', '437');
INSERT INTO `bao_role_maps` VALUES ('3', '438');
INSERT INTO `bao_role_maps` VALUES ('3', '439');
INSERT INTO `bao_role_maps` VALUES ('3', '441');
INSERT INTO `bao_role_maps` VALUES ('3', '442');
INSERT INTO `bao_role_maps` VALUES ('3', '443');
INSERT INTO `bao_role_maps` VALUES ('3', '444');
INSERT INTO `bao_role_maps` VALUES ('3', '446');
INSERT INTO `bao_role_maps` VALUES ('3', '447');
INSERT INTO `bao_role_maps` VALUES ('3', '448');
INSERT INTO `bao_role_maps` VALUES ('3', '449');
INSERT INTO `bao_role_maps` VALUES ('3', '450');
INSERT INTO `bao_role_maps` VALUES ('3', '451');
INSERT INTO `bao_role_maps` VALUES ('3', '452');
INSERT INTO `bao_role_maps` VALUES ('3', '453');
INSERT INTO `bao_role_maps` VALUES ('3', '454');
INSERT INTO `bao_role_maps` VALUES ('3', '455');
INSERT INTO `bao_role_maps` VALUES ('3', '456');
INSERT INTO `bao_role_maps` VALUES ('3', '468');
INSERT INTO `bao_role_maps` VALUES ('3', '469');
INSERT INTO `bao_role_maps` VALUES ('3', '470');
INSERT INTO `bao_role_maps` VALUES ('3', '471');
INSERT INTO `bao_role_maps` VALUES ('3', '472');
INSERT INTO `bao_role_maps` VALUES ('3', '473');
INSERT INTO `bao_role_maps` VALUES ('3', '475');
INSERT INTO `bao_role_maps` VALUES ('3', '476');
INSERT INTO `bao_role_maps` VALUES ('3', '478');
INSERT INTO `bao_role_maps` VALUES ('3', '482');
INSERT INTO `bao_role_maps` VALUES ('3', '484');
INSERT INTO `bao_role_maps` VALUES ('3', '485');
INSERT INTO `bao_role_maps` VALUES ('3', '486');
INSERT INTO `bao_role_maps` VALUES ('3', '489');
INSERT INTO `bao_role_maps` VALUES ('3', '490');
INSERT INTO `bao_role_maps` VALUES ('3', '491');
INSERT INTO `bao_role_maps` VALUES ('3', '492');
INSERT INTO `bao_role_maps` VALUES ('3', '493');
INSERT INTO `bao_role_maps` VALUES ('3', '495');
INSERT INTO `bao_role_maps` VALUES ('3', '496');
INSERT INTO `bao_role_maps` VALUES ('3', '497');
INSERT INTO `bao_role_maps` VALUES ('3', '499');
INSERT INTO `bao_role_maps` VALUES ('3', '500');
INSERT INTO `bao_role_maps` VALUES ('3', '501');
INSERT INTO `bao_role_maps` VALUES ('3', '502');
INSERT INTO `bao_role_maps` VALUES ('3', '510');
INSERT INTO `bao_role_maps` VALUES ('3', '515');
INSERT INTO `bao_role_maps` VALUES ('3', '516');
INSERT INTO `bao_role_maps` VALUES ('3', '517');
INSERT INTO `bao_role_maps` VALUES ('3', '518');
INSERT INTO `bao_role_maps` VALUES ('3', '519');
INSERT INTO `bao_role_maps` VALUES ('3', '520');
INSERT INTO `bao_role_maps` VALUES ('3', '521');
INSERT INTO `bao_role_maps` VALUES ('3', '522');
INSERT INTO `bao_role_maps` VALUES ('3', '524');
INSERT INTO `bao_role_maps` VALUES ('3', '525');
INSERT INTO `bao_role_maps` VALUES ('3', '526');
INSERT INTO `bao_role_maps` VALUES ('3', '527');
INSERT INTO `bao_role_maps` VALUES ('3', '528');
INSERT INTO `bao_role_maps` VALUES ('3', '532');
INSERT INTO `bao_role_maps` VALUES ('3', '533');
INSERT INTO `bao_role_maps` VALUES ('3', '537');
INSERT INTO `bao_role_maps` VALUES ('3', '538');
INSERT INTO `bao_role_maps` VALUES ('3', '539');
INSERT INTO `bao_role_maps` VALUES ('3', '540');
INSERT INTO `bao_role_maps` VALUES ('3', '542');
INSERT INTO `bao_role_maps` VALUES ('3', '543');
INSERT INTO `bao_role_maps` VALUES ('3', '544');
INSERT INTO `bao_role_maps` VALUES ('3', '548');
INSERT INTO `bao_role_maps` VALUES ('3', '549');
INSERT INTO `bao_role_maps` VALUES ('3', '550');
INSERT INTO `bao_role_maps` VALUES ('3', '551');
INSERT INTO `bao_role_maps` VALUES ('3', '552');
INSERT INTO `bao_role_maps` VALUES ('3', '553');
INSERT INTO `bao_role_maps` VALUES ('3', '554');
INSERT INTO `bao_role_maps` VALUES ('3', '556');
INSERT INTO `bao_role_maps` VALUES ('3', '557');
INSERT INTO `bao_role_maps` VALUES ('3', '558');
INSERT INTO `bao_role_maps` VALUES ('3', '559');
INSERT INTO `bao_role_maps` VALUES ('3', '560');
INSERT INTO `bao_role_maps` VALUES ('3', '561');
INSERT INTO `bao_role_maps` VALUES ('3', '563');
INSERT INTO `bao_role_maps` VALUES ('3', '564');
INSERT INTO `bao_role_maps` VALUES ('3', '565');
INSERT INTO `bao_role_maps` VALUES ('3', '566');
INSERT INTO `bao_role_maps` VALUES ('3', '567');
INSERT INTO `bao_role_maps` VALUES ('3', '568');
INSERT INTO `bao_role_maps` VALUES ('3', '569');
INSERT INTO `bao_role_maps` VALUES ('3', '570');
INSERT INTO `bao_role_maps` VALUES ('3', '571');
INSERT INTO `bao_role_maps` VALUES ('3', '572');
INSERT INTO `bao_role_maps` VALUES ('3', '573');
INSERT INTO `bao_role_maps` VALUES ('3', '574');
INSERT INTO `bao_role_maps` VALUES ('3', '575');
INSERT INTO `bao_role_maps` VALUES ('3', '576');
INSERT INTO `bao_role_maps` VALUES ('3', '577');
INSERT INTO `bao_role_maps` VALUES ('3', '578');
INSERT INTO `bao_role_maps` VALUES ('3', '579');
INSERT INTO `bao_role_maps` VALUES ('3', '580');
INSERT INTO `bao_role_maps` VALUES ('3', '581');
INSERT INTO `bao_role_maps` VALUES ('3', '582');
INSERT INTO `bao_role_maps` VALUES ('3', '583');
INSERT INTO `bao_role_maps` VALUES ('3', '584');
INSERT INTO `bao_role_maps` VALUES ('3', '586');
INSERT INTO `bao_role_maps` VALUES ('3', '587');
INSERT INTO `bao_role_maps` VALUES ('3', '588');
INSERT INTO `bao_role_maps` VALUES ('3', '589');
INSERT INTO `bao_role_maps` VALUES ('3', '591');
INSERT INTO `bao_role_maps` VALUES ('3', '592');
INSERT INTO `bao_role_maps` VALUES ('3', '593');
INSERT INTO `bao_role_maps` VALUES ('3', '594');
INSERT INTO `bao_role_maps` VALUES ('3', '595');
INSERT INTO `bao_role_maps` VALUES ('3', '596');
INSERT INTO `bao_role_maps` VALUES ('3', '597');
INSERT INTO `bao_role_maps` VALUES ('3', '600');
INSERT INTO `bao_role_maps` VALUES ('3', '601');
INSERT INTO `bao_role_maps` VALUES ('3', '602');
INSERT INTO `bao_role_maps` VALUES ('3', '603');
INSERT INTO `bao_role_maps` VALUES ('3', '604');
INSERT INTO `bao_role_maps` VALUES ('3', '605');
INSERT INTO `bao_role_maps` VALUES ('3', '606');
INSERT INTO `bao_role_maps` VALUES ('3', '607');
INSERT INTO `bao_role_maps` VALUES ('3', '608');
INSERT INTO `bao_role_maps` VALUES ('3', '609');
INSERT INTO `bao_role_maps` VALUES ('3', '610');
INSERT INTO `bao_role_maps` VALUES ('3', '611');
INSERT INTO `bao_role_maps` VALUES ('3', '612');
INSERT INTO `bao_role_maps` VALUES ('3', '613');
INSERT INTO `bao_role_maps` VALUES ('3', '614');
INSERT INTO `bao_role_maps` VALUES ('3', '615');
INSERT INTO `bao_role_maps` VALUES ('3', '616');
INSERT INTO `bao_role_maps` VALUES ('3', '617');
INSERT INTO `bao_role_maps` VALUES ('3', '619');
INSERT INTO `bao_role_maps` VALUES ('3', '620');

-- ----------------------------
-- Table structure for `bao_sensitive_words`
-- ----------------------------
DROP TABLE IF EXISTS `bao_sensitive_words`;
CREATE TABLE `bao_sensitive_words` (
  `words_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `words` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`words_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_sensitive_words
-- ----------------------------
INSERT INTO `bao_sensitive_words` VALUES ('1', '共产党');
INSERT INTO `bao_sensitive_words` VALUES ('2', '习近平');
INSERT INTO `bao_sensitive_words` VALUES ('3', '法轮功');
INSERT INTO `bao_sensitive_words` VALUES ('4', '日你');
INSERT INTO `bao_sensitive_words` VALUES ('5', '做爱');

-- ----------------------------
-- Table structure for `bao_seo`
-- ----------------------------
DROP TABLE IF EXISTS `bao_seo`;
CREATE TABLE `bao_seo` (
  `seo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seo_key` varchar(32) DEFAULT NULL,
  `seo_explain` varchar(1024) DEFAULT NULL,
  `seo_title` varchar(1024) DEFAULT NULL,
  `seo_keywords` varchar(1024) DEFAULT NULL,
  `seo_desc` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`seo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_seo
-- ----------------------------
INSERT INTO `bao_seo` VALUES ('1', 'index_index', '首页SEO配置\r\n', '{city_name}在线-{city_name}第一网络媒体,{city_name}房产,{city_name}招聘!【官网】', '{sitename},{sitename}网,{city_name}门户,{city_name}门户网', '{city_name}{sitename}网-{city_name}抢购首选,专业品质{city_name}{sitename}网!为您提供{city_name}美食,电影票,KTV,酒店,旅游等{city_name}{sitename}大全,{city_name}网站大全{city_name}{sitename}网,您身边的吃喝玩乐好帮手!');
INSERT INTO `bao_seo` VALUES ('3', 'news_detail', '文章详情\r\n1、{title}标题\r\n2、{keywords}关键字\r\n3、{desc}描述\r\n4、{cate_name}分类', '{title}-{sitename}', '{keywords}', '{desc}');
INSERT INTO `bao_seo` VALUES ('5', 'coupon_index', '优惠券列表\r\n1、{area_name}地区\r\n2、{cate_name}', '{area_name}{cate_name}商户哪家好？{sitename}', '{area_name}{cate_name}商户哪家好？{sitename}', '{area_name}{cate_name}商户哪家好？{sitename}');
INSERT INTO `bao_seo` VALUES ('6', 'coupon_detail', '优惠券详情\r\n1、{shop_name}商家名称\r\n2、{title}优惠券标题\r\n', '商户{shop_name}的优惠券“{title}”', '商户{shop_name}的优惠券“{title}”', '商户{shop_name}的优惠券“{title}”');
INSERT INTO `bao_seo` VALUES ('7', 'tuan_detail', '生活抢购详情\r\n1、{shop_name}商家名称\r\n2、{title}优惠券标题', '{title} -{city_name}{sitename}网。\r\n', '{cate_area},{cate_business},{cate_name},{shop_name},{city_name}抢购,打折,{city_name}打折,{sitename}{city_name}站,{sitename}', '{intro}');
INSERT INTO `bao_seo` VALUES ('8', 'tuan_index', '团购列表\r\n1、{area_name}地区\r\n2、{cate_name}\r\n3、{business_name}', '{city_name}{area_name}{business_name}{cate_name}本地生活团购！吃喝玩乐一切都在{sitename}！', '{city_name}{area_name}{business_name}{cate_name}本地生活团购！吃喝玩乐一切都在{sitename}！', '{city_name}{area_name}{business_name}{cate_name}本地生活团购！吃喝玩乐一切都在{sitename}！');
INSERT INTO `bao_seo` VALUES ('9', 'news_index', '新闻列表\r\n1、{cate_name} 分类', '{sitename}_{city_name}资讯网。', '{cate_name}，{sitename}', '{sitename}_{city_name}本地最具有价值的资讯网站。');
INSERT INTO `bao_seo` VALUES ('13', 'shop_index', '商家列表\r\n', '{city_name}{sitename}商家大全', '{area_name}{cate_name}{business_name}商家列表，{city_name}{sitename}', '{city_name}{sitename}最权威的商家展示平台。');
INSERT INTO `bao_seo` VALUES ('14', 'shop_detail', '商家详情\r\n', '{shop_name}{shop_tel}', '{shop_name}，{shop_tel}，{addr},{cate_area},{cate_business}', '{details}');
INSERT INTO `bao_seo` VALUES ('15', 'app_index', 'APP页面', '{sitename}_手机客户端下载', '手机客户端，{sitename}手机客户端', '{sitename}手机客户端是服务于{city_name}地区的专业生活服务软件。');
INSERT INTO `bao_seo` VALUES ('18', 'huodong_index', '活动类型：1、{cate_name} 2、{area_name}', '{city_name}{area_name}活动首页。', '{city_name}{area_name},{cate_name}活动,{sitename}', '{city_name}{area_name}最全的{cate_name}活动.');
INSERT INTO `bao_seo` VALUES ('19', 'huodong_detail', '活动详情\r\n1、{title}标题\r\n2、{shop_name}商家名称', '{title}-{city_name}{sitename}', '{cate_name},{shop_name},{cate_area},{cate_business},{title},{addr}', '{intro}');
INSERT INTO `bao_seo` VALUES ('20', 'ele_ding', '订座列表\r\n1、{cate_name}分类\r\n2、{area_name}地区\r\n3、{business_name}商圈', '{area_name}{cate_name}{business_name}订座列表', '{area_name}{cate_name}{business_name}订座列表', '{area_name}{cate_name}{business_name}订座列表');
INSERT INTO `bao_seo` VALUES ('21', 'mall_index', '购物列表\r\n1、{cate_name}分类\r\n2、{area_name}地区\r\n3、{business_name}商圈', '{city_name}{area_name}{cate_name}{business_name}网上商城。', '{area_name}{cate_name}{business_name}', '{area_name}{cate_name}{business_name}{city_name}{sitename}');
INSERT INTO `bao_seo` VALUES ('22', 'mall_detail', '购物详情\r\n1、{shop_name}商家名称\r\n2、{title}商品标题', '{title}-{city_name}{sitename}', '{cate_name}，{cate_area}，{cate_business}，{shop_name}', '{intro}');
INSERT INTO `bao_seo` VALUES ('25', 'jifen_index', '积分兑换列表', '积分兑换列表', '积分兑换列表', '积分兑换列表');
INSERT INTO `bao_seo` VALUES ('26', 'jifen_detail', '积分商品&quot;{title}&quot;详情', '积分商品&quot;{title}&quot;详情', '积分商品&quot;{title}&quot;详情', '积分商品&quot;{title}&quot;详情');
INSERT INTO `bao_seo` VALUES ('27', 'ele_detail', '订餐详情\r\n1、{shop_name}商家名称\r\n2、{shop_tel}订餐电话', '{city_name}{shop_name}的订餐电话“{shop_tel}”。', '{shop_name}，{city_name}{shop_name}，{shop_tel}', '{shop_name}是{city_name}{shop_name}最优秀的外卖商家。');
INSERT INTO `bao_seo` VALUES ('28', 'ele_shop', '订餐详情', '{city_name}{sitename}点餐页', '{sitename}', '{sitename}外卖，是最好的外卖。');
INSERT INTO `bao_seo` VALUES ('29', 'ele_index', '餐饮美食首页', '点外卖上{city_name}{sitename}', '{city_name}{sitename}外卖，{city_name}{sitename}点餐，{city_name}{sitename}包厢，{city_name}{sitename}送餐', '{city_name}当地做好的外卖网站。');
INSERT INTO `bao_seo` VALUES ('30', 'life_index', '分类搜索页', '{city_name}新{channel_name}{cate_name}- {sitename}分类信息网！', '{city_name}分类信息网,{sitename}新{channel_name}{cate_name},{area_name}{business_name}新{channel_name}{cate_name}', '{city_name}{channel_name}{cate_name}频道为您提供{channel_name}{cate_name}信息，在此有大量{channel_name}{cate_name}信息供您选择，您可以免费查看和发布{channel_name}{cate_name}信息。');
INSERT INTO `bao_seo` VALUES ('31', 'life_detail', '生活信息详情\r\n', '{title} - {city_name}{channel} {cate}- {sitename}', '{text1}{channel}{cate},价格{num},{title},{channel}{cate}', '{desc}-{sitename}。');
INSERT INTO `bao_seo` VALUES ('32', 'life_main', '分类信息首页', '{city_name}分类信息网-免费发布信息-{sitename}信息网', '{city_name},{city_name}分类信息,{city_name}免费发布分类信息，{city_name}{city_name}网', '{city_name}分类信息网为您提供中国分类信息，您可以免费查找{city_name}最新最全的二手物品交易、二手车买卖、房屋租售、宠物、招聘、兼职、求职、交友活动、生活服务信息。免费发布尽在找啥有分类信息网。');
INSERT INTO `bao_seo` VALUES ('33', 'life_fabu', '发布生活信息', '{city_name}发布生活信息', '{city_name}发布生活信息', '{city_name}发布生活信息');
INSERT INTO `bao_seo` VALUES ('34', 'shop_apply', '商家入驻', '{city_name}商家入驻申请', '{city_name}商家入驻申请', '{city_name}商家入驻申请，做一个优秀发本地O2O平台。');
INSERT INTO `bao_seo` VALUES ('36', 'ele_main', '餐饮美食主页', '点外卖上{city_name}{sitename}', '{city_name}{sitename}外卖，{city_name}{sitename}点餐，{city_name}{sitename}包厢，{city_name}{sitename}送餐', '{city_name}当地做好的外卖网站。');
INSERT INTO `bao_seo` VALUES ('37', 'ele_takeout', '外卖点餐', '{city_name}{sitename}点餐首页', '{city_name}{sitename}点餐', '最好的外卖网站，{city_name}{sitename}网。');
INSERT INTO `bao_seo` VALUES ('38', 'ele_pay', '订单支付页面', '{city_name}外卖订单支付', '订单支付', '订单支付-{sitename}');
INSERT INTO `bao_seo` VALUES ('39', 'tuan_main', '抢购首页', '{sitename}-{sitename}网抢购-超人气抢购网站-抢购上{sitename}', '抢购,{city_name},{sitename},{sitename}抢购,{sitename}抢购网,抢购大全', '{city_name}{sitename}抢购，是做好的在线抢购网站！');
INSERT INTO `bao_seo` VALUES ('41', 'billboard_index', '榜单首页', '{city_name}{sitename}榜单首页', '{city_name}{sitename}榜单，{city_name}{sitename}商家排行榜，{city_name}{sitename}抢购排行，{city_name}{sitename}商品排行', '{city_name}{sitename}权威的数据中心。');
INSERT INTO `bao_seo` VALUES ('42', 'billboard_bdlist', '榜单内容', '{city_name}{cate_name} 榜单', '{city_name}{cate_name}， {city_name}{sitename}', '{city_name}{sitename}榜单中心。');
INSERT INTO `bao_seo` VALUES ('43', 'billborder_bddetails', '榜单详情', '{title}-{city_name}{sitename}', '{title},{city_name}{sitename}', '{city_name}{sitename}榜单排行网站。');
INSERT INTO `bao_seo` VALUES ('44', 'jifen_detail', '积分主页', '{title}{city_name}{sitename}', '{price},{num},{title},{sitename}', '{details}');
INSERT INTO `bao_seo` VALUES ('45', 'jifen_inex', '积分首页', '{city_name}{sitename}一积分兑换', '{city_name}积分兑换，{city_name}积分，{city_name}礼品兑换，{city_name}兑换商品，{sitename}', '可用积分在{city_name}{sitename}上兑换商品哦！');

-- ----------------------------
-- Table structure for `bao_session`
-- ----------------------------
DROP TABLE IF EXISTS `bao_session`;
CREATE TABLE `bao_session` (
  `session_id` varchar(64) NOT NULL,
  `session_expire` int(11) NOT NULL,
  `session_data` blob,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of bao_session
-- ----------------------------
INSERT INTO `bao_session` VALUES ('00ugneq0sb8r6mv4m0rcuhsda4', '1468481766', 0x7665726966792537437325334134253341253232514B575425323225334261646D696E253743612533413133253341253742732533413825334125323261646D696E5F69642532322533427325334131253341253232312532322533427325334138253341253232757365726E616D65253232253342732533413525334125323261646D696E253232253342732533413825334125323270617373776F726425323225334273253341333225334125323232313233326632393761353761356137343338393461306534613830316663332532322533427325334137253341253232726F6C655F69642532322533427325334131253341253232312532322533427325334137253341253232636974795F696425323225334273253341312533412532323725323225334273253341362533412532326D6F62696C6525323225334273253341313125334125323231353030303030303030302532322533427325334131312533412532326372656174655F74696D652532322533427325334131302533412532323134343138383632303325323225334273253341392533412532326372656174655F697025323225334273253341392533412532323132372E302E302E3125323225334273253341392533412532326C6173745F74696D65253232253342692533413134363834373932353325334273253341372533412532326C6173745F69702532322533427325334137253341253232302E302E302E30253232253342732533413525334125323269735F69702532322533427325334131253341253232312532322533427325334136253341253232636C6F7365642532322533427325334131253341253232302532322533427325334139253341253232726F6C655F6E616D65253232253342732533413135253341253232254537254233254242254537254242253946254537254145254131254537253930253836254535253931253938253232253342253744);

-- ----------------------------
-- Table structure for `bao_setting`
-- ----------------------------
DROP TABLE IF EXISTS `bao_setting`;
CREATE TABLE `bao_setting` (
  `k` varchar(255) DEFAULT NULL,
  `v` text,
  UNIQUE KEY `k` (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_setting
-- ----------------------------
INSERT INTO `bao_setting` VALUES ('site', 'a:44:{s:8:\"sitename\";s:18:\"O2O系统最新版\";s:4:\"host\";s:17:\"http://localhost/\";s:6:\"hostdo\";s:0:\"\";s:6:\"imgurl\";s:22:\"http://kanjia.qgjz.net\";s:7:\"android\";s:41:\"http://103.24.1.69/download.aspx?id=29348\";s:3:\"ios\";s:41:\"http://103.24.1.69/download.aspx?id=29348\";s:4:\"logo\";s:28:\"2016/07/14/57870bb316723.png\";s:6:\"wxcode\";s:28:\"2016/07/14/57870bc762f0d.jpg\";s:2:\"qq\";s:10:\"1859391667\";s:3:\"tel\";s:12:\"023-79678674\";s:5:\"email\";s:17:\"1859391667@qq.com\";s:3:\"icp\";s:20:\"皖ICP备09014003号\";s:5:\"title\";s:18:\"O2O系统最新版\";s:7:\"keyword\";s:18:\"O2O系统最新版\";s:11:\"description\";s:18:\"O2O系统最新版\";s:8:\"headinfo\";s:0:\"\";s:6:\"tongji\";s:18:\"O2O系统最新版\";s:7:\"city_id\";s:1:\"7\";s:3:\"lng\";s:10:\"107.101768\";s:3:\"lat\";s:9:\"26.631671\";s:5:\"goods\";s:1:\"7\";s:3:\"ele\";s:2:\"72\";s:7:\"ucenter\";s:1:\"0\";s:9:\"postaudit\";s:1:\"0\";s:10:\"replyaudit\";s:1:\"0\";s:17:\"xiaoqu_post_audit\";s:1:\"0\";s:18:\"xiaoqu_reply_audit\";s:1:\"0\";s:19:\"article_reply_audit\";s:1:\"1\";s:17:\"xiaoqu_news_audit\";s:1:\"1\";s:21:\"hdmobile_hdfabu_audit\";s:1:\"0\";s:6:\"weixin\";s:1:\"1\";s:8:\"citycode\";s:3:\"132\";s:18:\"profit_min_rank_id\";s:1:\"0\";s:13:\"profit_expire\";s:2:\"72\";s:16:\"profit_integral1\";s:2:\"10\";s:16:\"profit_integral2\";s:2:\"20\";s:16:\"profit_integral3\";s:2:\"30\";s:12:\"profit_rate1\";s:0:\"\";s:12:\"profit_rate2\";s:0:\"\";s:12:\"profit_rate3\";s:0:\"\";s:13:\"config_mobile\";s:9:\"380559645\";s:12:\"config_email\";s:16:\"380559645@qq.com\";s:9:\"web_close\";s:1:\"1\";s:15:\"web_close_title\";s:18:\"网站已关闭！\";}');
INSERT INTO `bao_setting` VALUES ('attachs', 'a:41:{s:5:\"water\";s:28:\"2014/09/16/541827480b2f1.png\";s:8:\"shoplogo\";a:1:{s:5:\"thumb\";s:7:\"150X150\";}s:10:\"marketlogo\";a:1:{s:5:\"thumb\";s:7:\"150X150\";}s:6:\"market\";a:1:{s:5:\"thumb\";s:7:\"300X300\";}s:9:\"marketpic\";a:1:{s:5:\"thumb\";s:7:\"600X400\";}s:8:\"sitelogo\";a:1:{s:5:\"thumb\";s:6:\"180X55\";}s:8:\"shopnews\";a:1:{s:5:\"thumb\";s:7:\"260X260\";}s:11:\"lifeservice\";a:2:{s:5:\"thumb\";s:7:\"350X285\";s:4:\"icon\";s:6:\"120X80\";}s:8:\"activity\";a:1:{s:5:\"thumb\";s:7:\"470X275\";}s:6:\"coupon\";a:1:{s:5:\"thumb\";s:7:\"577X430\";}s:5:\"cloud\";a:1:{s:5:\"thumb\";s:7:\"410X380\";}s:7:\"huodong\";a:1:{s:5:\"thumb\";s:7:\"320X240\";}s:9:\"billboard\";a:1:{s:5:\"thumb\";s:7:\"640X480\";}s:8:\"billcate\";a:1:{s:5:\"thumb\";s:5:\"60X60\";}s:7:\"article\";a:1:{s:5:\"thumb\";s:7:\"260X260\";}s:13:\"integralgoods\";a:1:{s:5:\"thumb\";s:7:\"350X350\";}s:4:\"dian\";a:1:{s:5:\"thumb\";s:7:\"340X270\";}s:8:\"dingroom\";a:1:{s:5:\"thumb\";s:7:\"340X270\";}s:12:\"shopdianping\";a:1:{s:5:\"thumb\";s:7:\"380X260\";}s:5:\"found\";a:1:{s:5:\"thumb\";s:7:\"640X300\";}s:4:\"user\";a:1:{s:5:\"thumb\";a:3:{s:5:\"thumb\";s:7:\"200X200\";s:6:\"middle\";s:7:\"120X120\";s:5:\"small\";s:5:\"60X60\";}}s:9:\"shopphoto\";a:1:{s:5:\"thumb\";s:7:\"300X300\";}s:9:\"recommend\";a:1:{s:5:\"thumb\";s:7:\"180X180\";}s:4:\"tuan\";a:1:{s:5:\"thumb\";s:7:\"480X275\";}s:4:\"life\";a:1:{s:5:\"thumb\";s:7:\"320X320\";}s:7:\"lifepic\";a:1:{s:5:\"thumb\";s:7:\"600X400\";}s:7:\"votepic\";a:1:{s:5:\"thumb\";s:7:\"150X150\";}s:6:\"weixin\";a:1:{s:5:\"thumb\";s:7:\"320X120\";}s:10:\"votebanner\";a:1:{s:5:\"thumb\";s:7:\"640X300\";}s:5:\"goods\";a:1:{s:5:\"thumb\";s:7:\"470X470\";}s:10:\"shopbanner\";a:1:{s:5:\"thumb\";s:7:\"320X120\";}s:11:\"shopbanner1\";a:1:{s:5:\"thumb\";s:8:\"1000X300\";}s:10:\"eleproduct\";a:1:{s:5:\"thumb\";s:7:\"300X300\";}s:8:\"dingmenu\";a:1:{s:5:\"thumb\";s:7:\"600X450\";}s:4:\"mall\";a:1:{s:5:\"thumb\";s:7:\"300X140\";}s:10:\"weidianpic\";a:1:{s:5:\"thumb\";s:0:\"\";}s:10:\"shop_audit\";a:1:{s:5:\"thumb\";s:8:\"1000X800\";}s:7:\"village\";a:1:{s:5:\"thumb\";s:7:\"400X300\";}s:14:\"village_worker\";a:1:{s:5:\"thumb\";s:7:\"150X150\";}s:6:\"xiaoqu\";a:1:{s:5:\"thumb\";s:7:\"640X320\";}s:6:\"editor\";a:2:{s:5:\"thumb\";s:7:\"600X600\";s:5:\"water\";s:1:\"1\";}}');
INSERT INTO `bao_setting` VALUES ('ucenter', 'a:15:{s:7:\"charset\";s:1:\"0\";s:10:\"UC_CONNECT\";s:5:\"mysql\";s:9:\"UC_DBHOST\";s:9:\"localhost\";s:9:\"UC_DBUSER\";s:4:\"root\";s:7:\"UC_DBPW\";s:6:\"123456\";s:9:\"UC_DBNAME\";s:6:\"ultrax\";s:12:\"UC_DBCHARSET\";s:4:\"utf8\";s:13:\"UC_DBTABLEPRE\";s:19:\"ultrax.pre_ucenter_\";s:12:\"UC_DBCONNECT\";s:1:\"0\";s:6:\"UC_KEY\";s:39:\"9ee6F9YQ0bzQof9b9RTbUIORIvL2f8DQEmakk6Q\";s:6:\"UC_API\";s:29:\"http://www.test.com/uc_server\";s:10:\"UC_CHARSET\";s:5:\"utf-8\";s:5:\"UC_IP\";s:0:\"\";s:8:\"UC_APPID\";s:1:\"2\";s:6:\"UC_PPP\";s:2:\"20\";}');
INSERT INTO `bao_setting` VALUES ('sms', 'a:6:{s:5:\"dxapi\";s:2:\"dy\";s:3:\"url\";s:93:\"http://api.smsbao.com/sms?u=7824123&p=24D7C49ABF43F71A3A549CF3EDD6EC8F&m={mobile}&c={content}\";s:7:\"charset\";s:1:\"0\";s:4:\"code\";s:1:\"0\";s:5:\"dykey\";s:6:\"233321\";s:8:\"dysecret\";s:27:\"e27bfc113934f82972720aadc9d\";}');
INSERT INTO `bao_setting` VALUES ('mail', 'a:5:{s:4:\"smtp\";s:12:\"smtp.163.com\";s:4:\"port\";s:2:\"25\";s:8:\"username\";s:19:\"13626690120@163.com\";s:8:\"password\";s:6:\"221119\";s:4:\"from\";s:19:\"13626690120@163.com\";}');
INSERT INTO `bao_setting` VALUES ('weixin', 'a:9:{s:5:\"token\";s:32:\"af33208d995a60c8c0c05dc6caca593d\";s:5:\"appid\";s:18:\"wx2498376bab67c9cc\";s:9:\"appsecret\";s:32:\"3268eb4057c595e54020c7be33d63332\";s:2:\"id\";s:16:\" gh_034d7873c274\";s:4:\"type\";s:1:\"1\";s:11:\"description\";s:12:\"谢谢关注\";s:5:\"title\";s:6:\"测试\";s:7:\"linkurl\";s:0:\"\";s:5:\"photo\";s:28:\"2016/06/01/574dd2af67afa.png\";}');
INSERT INTO `bao_setting` VALUES ('integral', 'a:7:{s:5:\"gouwu\";s:1:\"1\";s:5:\"share\";s:1:\"5\";s:5:\"reply\";s:1:\"1\";s:6:\"mobile\";s:3:\"100\";s:5:\"email\";s:3:\"100\";s:4:\"sign\";s:1:\"5\";s:9:\"firstsign\";s:2:\"50\";}');
INSERT INTO `bao_setting` VALUES ('connect', 'a:7:{s:5:\"debug\";s:1:\"1\";s:9:\"qq_app_id\";s:6:\"123456\";s:10:\"qq_app_key\";s:6:\"123456\";s:9:\"wb_app_id\";s:6:\"123456\";s:10:\"wb_app_key\";s:6:\"123456\";s:9:\"wx_app_id\";s:18:\"wxabd89a50a5b79439\";s:10:\"wx_app_key\";s:32:\"dc67eb4864c8f391afcbe610a6411b04\";}');
INSERT INTO `bao_setting` VALUES ('prestige', 'a:7:{s:5:\"login\";s:1:\"1\";s:8:\"dianping\";s:1:\"5\";s:5:\"share\";s:1:\"2\";s:5:\"reply\";s:1:\"1\";s:4:\"tuan\";s:2:\"10\";s:6:\"mobile\";s:3:\"100\";s:5:\"email\";s:3:\"100\";}');
INSERT INTO `bao_setting` VALUES ('weixinmenu', 'a:2:{s:6:\"button\";a:3:{i:1;s:10:\"功能页1\";i:2;s:13:\"功能展示3\";i:3;s:13:\"管理平台2\";}s:5:\"child\";a:3:{i:1;a:5:{i:1;a:2:{s:4:\"name\";s:6:\"外卖\";s:3:\"url\";s:32:\"http://www.haoid.cn/mobile/ele/\";}i:2;a:2:{s:4:\"name\";s:6:\"商城\";s:3:\"url\";s:28:\"http://www.haoid.cn/mobile/\";}i:3;a:2:{s:4:\"name\";s:6:\"商家\";s:3:\"url\";s:32:\"http://www.haoid.cn/mobile/shop\";}i:4;a:2:{s:4:\"name\";s:9:\"自媒体\";s:3:\"url\";s:32:\"http://www.haoid.cn/mobile/news\";}i:5;a:2:{s:4:\"name\";s:12:\"分类信息\";s:3:\"url\";s:55:\"http://www.haoid.cn/mobile/life/channel/channel/1.html\";}}i:2;a:5:{i:1;a:2:{s:4:\"name\";s:6:\"团购\";s:3:\"url\";s:32:\"http://www.haoid.cn/mobile/tuan\";}i:2;a:2:{s:4:\"name\";s:15:\"一元云购物\";s:3:\"url\";s:33:\"http://www.haoid.cn/mobile/cloud\";}i:3;a:2:{s:4:\"name\";s:6:\"家政\";s:3:\"url\";s:39:\"http://www.haoid.cn/mobile/lifeservice\";}i:4;a:2:{s:4:\"name\";s:6:\"小区\";s:3:\"url\";s:37:\"http://www.haoid.cn/mobile/community\";}i:5;a:2:{s:4:\"name\";s:12:\"社区村镇\";s:3:\"url\";s:35:\"http://www.haoid.cn/mobile/village\";}}i:3;a:5:{i:1;a:2:{s:4:\"name\";s:13:\"店员管理1\";s:3:\"url\";s:27:\"http://www.haoid.cn/worker\";}i:2;a:2:{s:4:\"name\";s:13:\"小区管理2\";s:3:\"url\";s:25:\"http://www.haoid.cn/wuye\";}i:3;a:2:{s:4:\"name\";s:13:\"商户管理3\";s:3:\"url\";s:26:\"http://www.haoid.cn/store\";}i:4;a:2:{s:4:\"name\";s:13:\"物流平台4\";s:3:\"url\";s:29:\"http://www.haoid.cn/delivery\";}i:5;a:2:{s:4:\"name\";s:0:\"\";s:3:\"url\";s:0:\"\";}}}}');
INSERT INTO `bao_setting` VALUES ('shop', 'a:5:{s:6:\"weixin\";s:2:\"30\";s:5:\"yuyue\";s:2:\"30\";s:4:\"card\";s:2:\"30\";s:3:\"bao\";s:2:\"30\";s:4:\"life\";a:2:{s:3:\"top\";s:1:\"1\";s:6:\"urgent\";s:1:\"1\";}}');
INSERT INTO `bao_setting` VALUES ('mobile', 'a:11:{s:7:\"amazeui\";s:1:\"1\";s:14:\"delivery_price\";s:1:\"5\";s:18:\"data_shop_dianping\";s:1:\"5\";s:18:\"data_tuan_dianping\";s:1:\"4\";s:20:\"data_waimai_dianping\";s:1:\"3\";s:18:\"data_ding_dianping\";s:1:\"3\";s:18:\"data_mall_dianping\";s:1:\"3\";s:25:\"data_lifeservice_dianping\";s:1:\"3\";s:8:\"guaguale\";s:1:\"2\";s:9:\"choujiang\";s:1:\"1\";s:8:\"yaoyiyao\";s:1:\"4\";}');
INSERT INTO `bao_setting` VALUES ('ele', 'a:2:{s:4:\"shop\";a:13:{i:0;s:2:\"42\";i:1;s:2:\"45\";i:2;s:2:\"47\";i:3;s:2:\"52\";i:4;s:2:\"51\";i:5;s:1:\"2\";i:6;s:2:\"43\";i:7;s:2:\"44\";i:8;s:2:\"48\";i:9;s:2:\"49\";i:10;s:2:\"50\";i:11;s:2:\"66\";i:12;s:2:\"54\";}s:4:\"tuan\";a:30:{i:0;s:1:\"4\";i:1;s:1:\"3\";i:2;s:1:\"5\";i:3;s:1:\"6\";i:4;s:1:\"7\";i:5;s:1:\"8\";i:6;s:1:\"9\";i:7;s:2:\"10\";i:8;s:2:\"11\";i:9;s:2:\"12\";i:10;s:2:\"13\";i:11;s:2:\"14\";i:12;s:2:\"16\";i:13;s:2:\"17\";i:14;s:2:\"18\";i:15;s:2:\"19\";i:16;s:2:\"20\";i:17;s:2:\"21\";i:18;s:2:\"22\";i:19;s:2:\"23\";i:20;s:2:\"24\";i:21;s:2:\"25\";i:22;s:2:\"26\";i:23;s:2:\"27\";i:24;s:2:\"28\";i:25;s:2:\"29\";i:26;s:2:\"30\";i:27;s:2:\"31\";i:28;s:2:\"32\";i:29;s:2:\"33\";}}');
INSERT INTO `bao_setting` VALUES ('housework', 'a:2:{s:4:\"gold\";s:1:\"1\";s:3:\"num\";s:1:\"3\";}');
INSERT INTO `bao_setting` VALUES ('weidian', 'a:5:{s:10:\"bianlidian\";s:2:\"16\";s:11:\"xianhuadian\";s:2:\"33\";s:13:\"shengxiandian\";s:2:\"44\";s:9:\"kaoyadian\";s:1:\"2\";s:10:\"dangaodian\";s:2:\"43\";}');
INSERT INTO `bao_setting` VALUES ('mall', 'a:16:{s:5:\"ming1\";s:9:\"烤鸭店\";s:5:\"dian1\";s:1:\"1\";s:5:\"ming2\";s:9:\"蛋糕店\";s:5:\"dian2\";s:1:\"9\";s:5:\"ming3\";s:9:\"鲜花店\";s:5:\"dian3\";s:2:\"10\";s:5:\"ming4\";s:9:\"水果店\";s:5:\"dian4\";s:2:\"11\";s:5:\"ming5\";s:9:\"便利店\";s:5:\"dian5\";s:2:\"12\";s:5:\"ming6\";s:9:\"坚果店\";s:5:\"dian6\";s:1:\"6\";s:5:\"ming7\";s:9:\"奶茶店\";s:5:\"dian7\";s:1:\"7\";s:5:\"ming8\";s:9:\"茶叶店\";s:5:\"dian8\";s:1:\"8\";}');
INSERT INTO `bao_setting` VALUES ('quanming', 'a:21:{s:7:\"content\";s:30:\"全民经济人内容描述。\";s:5:\"intro\";s:36:\"全民经济人活动规则描述。\";s:7:\"is_tuan\";s:1:\"1\";s:7:\"is_mall\";s:1:\"0\";s:6:\"is_ele\";s:1:\"0\";s:8:\"is_money\";s:1:\"0\";s:5:\"money\";s:3:\"300\";s:9:\"money_day\";s:2:\"90\";s:6:\"money1\";s:1:\"1\";s:6:\"money2\";s:1:\"2\";s:6:\"money3\";s:1:\"3\";s:6:\"money4\";s:1:\"4\";s:6:\"money5\";s:1:\"5\";s:6:\"money6\";s:1:\"6\";s:4:\"rate\";s:1:\"5\";s:5:\"rate1\";s:1:\"1\";s:5:\"rate2\";s:1:\"2\";s:5:\"rate3\";s:1:\"3\";s:5:\"rate4\";s:1:\"4\";s:5:\"rate5\";s:1:\"5\";s:5:\"rate6\";s:1:\"6\";}');
INSERT INTO `bao_setting` VALUES ('other', 'a:6:{s:5:\"color\";s:7:\"#06c1ae\";s:6:\"mechat\";s:4:\"4390\";s:11:\"mechataudit\";s:1:\"1\";s:8:\"url_jump\";s:1:\"1\";s:11:\"footeraudit\";s:1:\"1\";s:6:\"footer\";s:1:\"1\";}');
INSERT INTO `bao_setting` VALUES ('register', 'a:6:{s:21:\"register_distribution\";s:1:\"0\";s:16:\"register_service\";s:1:\"1\";s:20:\"register_service_url\";s:21:\"http://www.haoid.cn/\";s:15:\"register_mobile\";s:1:\"0\";s:12:\"register_yzm\";s:1:\"1\";s:17:\"register_password\";s:1:\"6\";}');
INSERT INTO `bao_setting` VALUES ('operation', 'a:16:{s:6:\"pchome\";s:1:\"1\";s:12:\"distribution\";s:1:\"1\";s:11:\"lifeservice\";s:1:\"1\";s:5:\"tieba\";s:1:\"1\";s:4:\"news\";s:1:\"1\";s:4:\"life\";s:1:\"1\";s:5:\"jifen\";s:1:\"1\";s:9:\"billboard\";s:1:\"1\";s:6:\"market\";s:1:\"1\";s:7:\"express\";s:1:\"1\";s:4:\"ding\";s:1:\"1\";s:4:\"mall\";s:1:\"1\";s:5:\"cloud\";s:1:\"1\";s:7:\"huodong\";s:1:\"1\";s:9:\"community\";s:1:\"1\";s:7:\"village\";s:1:\"1\";}');
INSERT INTO `bao_setting` VALUES ('share', 'a:6:{s:9:\"qzone_uid\";s:9:\"421313131\";s:9:\"qzone_key\";s:18:\"857435645634643654\";s:7:\"qwb_uid\";s:6:\"345326\";s:7:\"qwb_key\";s:14:\"56865967235465\";s:9:\"weibo_uid\";s:5:\"24325\";s:9:\"weibo_key\";s:13:\"8645346452124\";}');
INSERT INTO `bao_setting` VALUES ('cash', 'a:6:{s:4:\"user\";s:3:\"200\";s:8:\"user_big\";s:4:\"1000\";s:4:\"shop\";s:3:\"100\";s:8:\"shop_big\";s:3:\"200\";s:13:\"renzheng_shop\";s:3:\"200\";s:17:\"renzheng_shop_big\";s:3:\"500\";}');
INSERT INTO `bao_setting` VALUES ('collects', 'a:3:{s:4:\"open\";s:1:\"1\";s:9:\"community\";s:1:\"4\";s:4:\"shop\";s:1:\"9\";}');
INSERT INTO `bao_setting` VALUES ('search', 'a:1:{s:7:\"keyword\";s:27:\"搜抢购、商家、小区\";}');
INSERT INTO `bao_setting` VALUES ('sms_shop', 'a:3:{s:14:\"sms_shop_money\";s:4:\"0.05\";s:14:\"sms_shop_small\";s:3:\"100\";s:12:\"sms_shop_big\";s:3:\"500\";}');

-- ----------------------------
-- Table structure for `bao_share_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_share_cate`;
CREATE TABLE `bao_share_cate` (
  `cate_id` int(10) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_share_cate
-- ----------------------------
INSERT INTO `bao_share_cate` VALUES ('1', '餐饮美食', '0', '1');
INSERT INTO `bao_share_cate` VALUES ('2', '自助餐', '1', '11');
INSERT INTO `bao_share_cate` VALUES ('3', '火锅', '1', '2');
INSERT INTO `bao_share_cate` VALUES ('4', '驾驶交流', '0', '2');
INSERT INTO `bao_share_cate` VALUES ('5', '同城车友', '4', '1');
INSERT INTO `bao_share_cate` VALUES ('6', '汽车团购', '4', '2');
INSERT INTO `bao_share_cate` VALUES ('7', '自驾出游', '4', '3');
INSERT INTO `bao_share_cate` VALUES ('8', '游戏', '0', '3');
INSERT INTO `bao_share_cate` VALUES ('9', 'lol', '8', '1');

-- ----------------------------
-- Table structure for `bao_shop`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop`;
CREATE TABLE `bao_shop` (
  `shop_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cate_id` smallint(5) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `city_id` smallint(5) DEFAULT '0',
  `type_id` char(20) DEFAULT '0',
  `business_id` smallint(5) DEFAULT NULL,
  `shop_name` varchar(64) DEFAULT NULL,
  `logo` varchar(64) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  `tel` varchar(64) DEFAULT NULL,
  `extension` varchar(8) DEFAULT NULL,
  `qq` varchar(10) NOT NULL,
  `mobile` varchar(11) DEFAULT '0',
  `contact` varchar(32) DEFAULT NULL,
  `addr` varchar(64) DEFAULT NULL,
  `score` tinyint(3) DEFAULT '0' COMMENT '评价',
  `score_num` int(11) DEFAULT '0',
  `fans_num` int(11) DEFAULT '0',
  `d1` tinyint(3) DEFAULT '0',
  `d2` tinyint(3) DEFAULT '0',
  `d3` tinyint(3) DEFAULT '0' COMMENT '点评项目',
  `orderby` int(11) DEFAULT '100' COMMENT '越小排序越高',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `ding_num` int(10) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `audit` tinyint(1) DEFAULT '0' COMMENT '1代表已经审核',
  `recognition` tinyint(1) NOT NULL DEFAULT '0',
  `is_pei` tinyint(1) DEFAULT '0' COMMENT '是否商家自主配送',
  `is_ding` tinyint(1) DEFAULT '0' COMMENT '针对餐饮行业的订座',
  `is_biz` tinyint(1) DEFAULT '0',
  `is_renzheng` int(1) NOT NULL DEFAULT '0',
  `tags` varchar(64) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `tui_uid` int(11) DEFAULT '0' COMMENT '代理商',
  `apiKey` varchar(100) NOT NULL,
  `mKey` varchar(100) NOT NULL,
  `partner` varchar(100) NOT NULL,
  `machine_code` varchar(100) NOT NULL,
  `service` text COMMENT '各种统计代码',
  `service_audit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shop_id`),
  KEY `cate_id` (`cate_id`,`area_id`,`business_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop
-- ----------------------------
INSERT INTO `bao_shop` VALUES ('1', '', '1', '45', '2', '7', '0', '1', '脆皮玉米', '2016/05/22/thumb_57415f4571545.jpg', '2016/05/22/thumb_57415f4908781.jpg', '023-68341234', '', '', '', '何总', '重庆市合川区大河村2组', '0', '0', '1', '0', '0', '0', '100', '124.145211', '39.123041', '0', '0', '172', '1', '1', '0', '1', '1', '0', '玉米', '1463902083', '27.13.29.14', '0', '', '', '', '', '', '0');
INSERT INTO `bao_shop` VALUES ('2', '', '1', '1', '2', '1', '0', '1', '天下互联', '2016/05/23/thumb_5742dbdc5f12c.png', '2016/05/23/thumb_5742dbddbe0f0.png', '天下互联', '', '', '', '天下互联', '天下互联', '0', '0', '0', '0', '0', '0', '100', '', '', '0', '0', '25', '1', '0', '0', '0', '1', '0', '天下互联', '1463999481', '218.205.187.26', '0', '', '', '', '', '', '0');
INSERT INTO `bao_shop` VALUES ('3', '', '1', '1', '2', '1', '0', '1', '测试', '2016/05/24/thumb_5743bf8b5f9d3.jpg', '2016/05/24/thumb_5743bf8cf0615.jpg', '12212121212', '', '', '', '2121212121', '北京市海淀区', '0', '0', '0', '0', '0', '0', '222222', '', '', '0', '0', '6', '1', '0', '0', '0', '1', '0', '测试', '1464057823', '218.205.187.26', '0', '', '', '', '', '', '0');
INSERT INTO `bao_shop` VALUES ('4', null, '13', '42', '2', '7', '0', '1', '654321', '2016/06/03/thumb_57512423375d0.jpg', '2016/06/03/thumb_5751242a15245.jpg', '18390766589', null, '', '0', '516523', '42', '0', '0', '0', '0', '0', '0', '100', '111.015429', '27.121843', '0', '0', '32', '1', '1', '0', '1', '1', '0', null, '1464935477', '223.154.96.164', '0', '', '', '', '', null, '0');
INSERT INTO `bao_shop` VALUES ('5', null, '23', '66', '2', '7', '0', '1', '快乐旅游', '2016/06/08/thumb_5757de58f0c51.jpg', '2016/06/08/thumb_5757de4b38fe4.jpg', '189328665428', null, '', '0', '上大放多少', '颠倒是非地方地方', '0', '0', '0', '0', '0', '0', '100', '117.759121', '41.302163', '0', '0', '2', '1', '1', '0', '0', '0', '0', null, '1465376473', '121.26.221.10', '0', '', '', '', '', null, '0');
INSERT INTO `bao_shop` VALUES ('6', null, '27', '65', '2', '7', '0', '1', '华艺影城', '2016/07/01/thumb_5775e508ccf98.jpg', '2016/07/01/thumb_5775e50b9d7c0.jpg', '13848305616', '', '', '', '张衡', '乌海市滨河区宣化街', '0', '0', '0', '0', '0', '0', '100', '107.101768', '26.631671', '0', '0', '0', '1', '1', '0', '0', '0', '0', '', '1467344157', '106.35.37.171', '0', '', '', '', '', '', '0');

-- ----------------------------
-- Table structure for `bao_shop_audit`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_audit`;
CREATE TABLE `bao_shop_audit` (
  `audit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `zhucehao` varchar(128) DEFAULT NULL,
  `addr` varchar(128) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `zuzhidaima` varchar(128) DEFAULT NULL,
  `user_name` varchar(128) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`audit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_audit
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_banner`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_banner`;
CREATE TABLE `bao_shop_banner` (
  `banner_id` int(10) NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `is_mobile` tinyint(1) DEFAULT '1',
  `photo` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_banner
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_branch`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_branch`;
CREATE TABLE `bao_shop_branch` (
  `branch_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `score` tinyint(3) DEFAULT '0',
  `password` varchar(32) DEFAULT '',
  `shop_id` int(11) DEFAULT '0',
  `city_id` smallint(5) DEFAULT '0',
  `area_id` smallint(5) DEFAULT '0',
  `business_id` smallint(5) DEFAULT '0',
  `addr` varchar(128) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `telephone` varchar(11) NOT NULL DEFAULT '',
  `business_time` varchar(64) DEFAULT NULL,
  `d1` tinyint(3) DEFAULT '0',
  `d2` tinyint(3) DEFAULT '0',
  `d3` tinyint(3) DEFAULT '0',
  `score_num` int(10) unsigned NOT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `fans_num` int(11) DEFAULT '0',
  `audit` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_branch
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_cate`;
CREATE TABLE `bao_shop_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `is_hot` tinyint(1) DEFAULT '0',
  `d1` varchar(32) DEFAULT '价格',
  `d2` varchar(32) DEFAULT '环境',
  `d3` varchar(32) DEFAULT '服务',
  `title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_cate
-- ----------------------------
INSERT INTO `bao_shop_cate` VALUES ('1', '餐饮美食', '0', '20', '1', '价格', '环境', '服务', '吃尽天下美食');
INSERT INTO `bao_shop_cate` VALUES ('2', '小吃快餐', '1', '11', '0', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('59', '四星级酒店', '13', '33', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('41', '驾校', '8', '72', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('6', '结婚', '0', '4', '0', '价格', '环境', '服务', '一辈子的大事');
INSERT INTO `bao_shop_cate` VALUES ('7', '家居', '0', '6', '0', '价格', '环境', '服务', '家居是一种生活');
INSERT INTO `bao_shop_cate` VALUES ('14', '生活服务', '0', '10', '0', '价格', '环境', '服务', '生活服务尽在附近');
INSERT INTO `bao_shop_cate` VALUES ('8', '汽车', '0', '7', '0', '价格', '环境', '服务', '买车去旅游');
INSERT INTO `bao_shop_cate` VALUES ('9', '丽人', '0', '8', '0', '价格', '环境', '服务', '美丽就在这里开始');
INSERT INTO `bao_shop_cate` VALUES ('10', '母婴', '0', '5', '0', '价格', '环境', '服务', '关爱孕妇及婴儿');
INSERT INTO `bao_shop_cate` VALUES ('11', '教育培训', '0', '9', '0', '价格', '环境', '服务', '一年之计在于春');
INSERT INTO `bao_shop_cate` VALUES ('12', '休闲娱乐', '0', '2', '1', '价格', '环境', '服务', '生活需要享受');
INSERT INTO `bao_shop_cate` VALUES ('13', '酒店', '0', '3', '0', '价格', '环境', '服务', '住最好的地方');
INSERT INTO `bao_shop_cate` VALUES ('15', '医院', '14', '102', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('16', '便利店', '14', '101', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('17', 'KTV', '12', '21', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('18', '足疗按摩', '12', '22', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('19', '经济型酒店', '13', '31', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('20', '五星级酒店', '13', '32', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('21', '幼儿', '11', '91', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('22', '小学', '11', '92', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('23', '高中', '11', '94', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('24', '初中', '11', '93', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('25', '计算机', '11', '95', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('26', '其他', '11', '97', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('27', '外语', '11', '96', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('28', '婚庆公司', '6', '41', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('29', '婚纱摄影', '6', '42', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('30', '新娘跟妆', '6', '43', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('31', '司仪服务', '6', '44', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('32', '装修公司', '7', '61', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('33', '建材商', '7', '62', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('34', '家具', '7', '63', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('35', '软装布艺', '7', '64', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('36', '4S店', '8', '71', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('42', '江浙菜', '1', '11', '1', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('38', '母婴用品', '10', '51', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('40', 'SPA', '9', '81', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('43', '面包糕点', '1', '12', '0', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('44', '海鲜', '1', '13', '0', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('45', '火锅', '1', '11', '1', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('46', '川菜', '1', '11', '1', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('47', '徽菜', '1', '11', '0', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('48', '东北菜', '1', '17', '0', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('49', '西餐', '1', '18', '0', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('50', '粤菜', '1', '19', '0', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('51', '日本料理', '1', '11', '1', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('52', '韩国菜', '1', '11', '0', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('53', '其他', '1', '22', '0', '口味', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('54', '电影', '12', '2', '1', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('55', '酒吧', '12', '24', '1', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('56', '咖啡厅', '12', '25', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('57', '温泉', '12', '26', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('58', '棋牌室', '12', '27', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('60', '三星级酒店', '13', '34', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('61', '度假村', '13', '35', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('62', '婚戒首饰', '6', '45', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('63', '亲子摄影', '10', '52', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('64', '加油站', '14', '101', '0', '价格', '环境', '服务', '');
INSERT INTO `bao_shop_cate` VALUES ('65', '旅游', '0', '1', '0', '号', '坏', '很好', '国内外旅游');
INSERT INTO `bao_shop_cate` VALUES ('66', '国内', '65', '1', '1', '好', '坏', '很好', '海南');
INSERT INTO `bao_shop_cate` VALUES ('67', '策文科技', '0', '11', '0', '好', '很好 ', '非常好', '不错');
INSERT INTO `bao_shop_cate` VALUES ('68', '网络推广', '67', '1', '0', '111111', '111111', '1234', '2223');
INSERT INTO `bao_shop_cate` VALUES ('69', '其他', '0', '25', '0', '', '', '', '');

-- ----------------------------
-- Table structure for `bao_shop_comment`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_comment`;
CREATE TABLE `bao_shop_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级评论id,若是一级评论则为0',
  `nickname` varchar(100) DEFAULT NULL COMMENT '评论人昵称',
  `user_id` int(11) DEFAULT NULL COMMENT '评论人UID',
  `post_id` int(11) DEFAULT NULL COMMENT '新闻编号',
  `content` text COMMENT '评论内容',
  `zan` int(6) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL COMMENT '评论或回复发表时间',
  `create_ip` varchar(20) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_details`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_details`;
CREATE TABLE `bao_shop_details` (
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `details` text,
  `theme_id` int(11) DEFAULT '0',
  `theme_expir_time` int(11) DEFAULT NULL,
  `discounts` varchar(32) DEFAULT NULL,
  `business_time` varchar(32) DEFAULT '9:00-18:00',
  `price` int(10) DEFAULT NULL,
  `near` varchar(64) DEFAULT NULL,
  `wei_pic` varchar(256) DEFAULT NULL,
  `is_dingyue` tinyint(1) DEFAULT '0' COMMENT '是否是订阅号',
  `app_id` varchar(32) DEFAULT NULL,
  `app_key` varchar(256) DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  `weixin_msg` text,
  `menus` text,
  `seo_title` varchar(32) DEFAULT NULL,
  `seo_keywords` varchar(32) DEFAULT NULL,
  `seo_description` varchar(32) DEFAULT NULL,
  `icp` varchar(32) DEFAULT NULL,
  `sitelogo` varchar(64) DEFAULT NULL,
  `bank` varchar(1024) DEFAULT NULL,
  `delivery_time` tinyint(3) DEFAULT '30' COMMENT '接单倒计时（单位：分钟）',
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_details
-- ----------------------------
INSERT INTO `bao_shop_details` VALUES ('1', '<p>还不错的商家</p>', '0', '0', '', '8:00-19：00', '12', '', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHE8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL3d6bzVaejdrelc2MExfODVwaFkyAAIE4YVPVwMEAAAAAA%3D%3D', '0', '', '', '', '', '', '', '', '', '', '', null, '30');
INSERT INTO `bao_shop_details` VALUES ('2', '<p>天下互联</p>', '0', '0', '', '天下互联', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '30');
INSERT INTO `bao_shop_details` VALUES ('3', '<p>测试</p>', '0', '0', '', '阿斯达的', '22', '1212122121', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '30');
INSERT INTO `bao_shop_details` VALUES ('4', '51230', '0', null, null, '8：00-22:00', null, null, 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHj7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL3RqcFFpTURrdDI3T1M1ckZ6eFkyAAIE9x5RVwMEAAAAAA%3D%3D', '0', null, null, null, null, null, null, null, null, null, null, null, '30');
INSERT INTO `bao_shop_details` VALUES ('5', '刚刚饭店个梵蒂冈单方事故是大法官地方更多', '0', null, null, '8:00-22：0', null, null, 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEb8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL3pUcGtyV0RraDI3X3RlSGtfeFkyAAIErNlXVwMEAAAAAA%3D%3D', '0', null, null, null, null, null, null, null, null, null, null, null, '30');
INSERT INTO `bao_shop_details` VALUES ('6', '<p>sadas&nbsp;</p>', '0', null, null, '', '0', '', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQG57zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL1d6Z3MyZC1tMThfdVdXT2FGaFNEAAIEDkNxVwMEAAAAAA%3D%3D', '0', null, null, null, null, null, null, null, null, null, null, null, '30');

-- ----------------------------
-- Table structure for `bao_shop_dianping`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_dianping`;
CREATE TABLE `bao_shop_dianping` (
  `dianping_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT '0',
  `evaluate` tinyint(1) DEFAULT '0' COMMENT '1表示好评，2表示中评，3表示差评',
  `score` tinyint(3) DEFAULT NULL,
  `d1` tinyint(3) DEFAULT '0',
  `d2` tinyint(3) DEFAULT '0',
  `d3` tinyint(3) DEFAULT '0',
  `cost` int(11) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `reply` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `show_date` date DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`dianping_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_dianping
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_dianping_pics`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_dianping_pics`;
CREATE TABLE `bao_shop_dianping_pics` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT '0',
  `dianping_id` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `dianping_id` (`dianping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_dianping_pics
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_dingyue`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_dingyue`;
CREATE TABLE `bao_shop_dingyue` (
  `dingyue_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `sitelist` text CHARACTER SET latin1 NOT NULL,
  `catlist` text CHARACTER SET latin1 NOT NULL,
  `status` int(10) DEFAULT NULL,
  `create_time` int(20) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `sms` int(11) NOT NULL,
  `audit` int(11) NOT NULL COMMENT '1:通过  0审核中  -1审核失败',
  `sms_number` int(11) DEFAULT NULL,
  `select1` text,
  `select2` text,
  `select3` text,
  `select4` text,
  `select5` text,
  PRIMARY KEY (`dingyue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bao_shop_dingyue
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_dingyue_set`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_dingyue_set`;
CREATE TABLE `bao_shop_dingyue_set` (
  `dingyueset_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `one_cate` int(11) NOT NULL,
  `two_cate` int(11) NOT NULL,
  `count_list` int(11) NOT NULL,
  `count_number` int(11) NOT NULL,
  `sms_number` int(11) NOT NULL,
  `sms_open` int(11) NOT NULL,
  PRIMARY KEY (`dingyueset_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bao_shop_dingyue_set
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_ding_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_ding_cate`;
CREATE TABLE `bao_shop_ding_cate` (
  `cate_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT '0',
  `cate_name` varchar(64) DEFAULT '',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_ding_cate
-- ----------------------------
INSERT INTO `bao_shop_ding_cate` VALUES ('1', '1', 'wap修改', '1');
INSERT INTO `bao_shop_ding_cate` VALUES ('2', '1', '测试修改', '2');
INSERT INTO `bao_shop_ding_cate` VALUES ('3', '1', 'wap添加订座分类', '100');
INSERT INTO `bao_shop_ding_cate` VALUES ('4', '9', '煲类', '100');
INSERT INTO `bao_shop_ding_cate` VALUES ('5', '9', '凉菜', '100');
INSERT INTO `bao_shop_ding_cate` VALUES ('6', '2', '披萨', '100');
INSERT INTO `bao_shop_ding_cate` VALUES ('7', '2', '披萨', '100');
INSERT INTO `bao_shop_ding_cate` VALUES ('8', '2', '披萨', '100');
INSERT INTO `bao_shop_ding_cate` VALUES ('9', '1', '承德隆化', '1');

-- ----------------------------
-- Table structure for `bao_shop_ding_dianping`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_ding_dianping`;
CREATE TABLE `bao_shop_ding_dianping` (
  `dianping_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `reply` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `show_date` date DEFAULT NULL,
  `closed` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `dianping_id` (`dianping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_ding_dianping
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_ding_dianping_pic`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_ding_dianping_pic`;
CREATE TABLE `bao_shop_ding_dianping_pic` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `dianping_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_ding_dianping_pic
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_ding_menu`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_ding_menu`;
CREATE TABLE `bao_shop_ding_menu` (
  `menu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(64) DEFAULT '',
  `shop_id` int(11) DEFAULT '0',
  `cate_id` int(11) DEFAULT '0',
  `photo` varchar(128) DEFAULT '',
  `price` int(11) DEFAULT '0',
  `ding_price` int(11) DEFAULT '0',
  `is_tuijian` tinyint(1) DEFAULT '0' COMMENT '是否推荐',
  `is_new` tinyint(1) DEFAULT '0' COMMENT '是否新品',
  `is_sale` tinyint(1) DEFAULT '0' COMMENT '是否优惠',
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT '',
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_ding_menu
-- ----------------------------
INSERT INTO `bao_shop_ding_menu` VALUES ('1', '匈牙利炖牛肉', '1', '2', '2016/01/19/thumb_569ddeb89c125.jpg', '35000', '32000', '1', '1', '1', '1438614975', '127.0.0.1', '0');
INSERT INTO `bao_shop_ding_menu` VALUES ('2', '红烧肉', '1', '1', '2016/01/19/thumb_569ddea7a5a59.jpg', '10000', '9000', '1', '1', '1', '1438615446', '127.0.0.1', '0');
INSERT INTO `bao_shop_ding_menu` VALUES ('3', '红烧肉', '1', '2', '2015/08/03/55bf878796e91.jpg', '4500', '4000', '1', '0', '1', '1438615446', '127.0.0.1', '1');
INSERT INTO `bao_shop_ding_menu` VALUES ('4', '红烧肉3wap修改', '1', '2', '2016/03/21/thumb_56eff3941b567.jpg', '4500', '4000', '0', '0', '0', '1438615446', '127.0.0.1', '0');
INSERT INTO `bao_shop_ding_menu` VALUES ('5', '超级香辣酥脆新奥尔良大鸡腿，打特价，限时秒杀', '127', '6', '2015/11/11/thumb_56431d3133a3b.jpg', '2000', '1500', '1', '1', '1', '1440732588', '127.0.0.1', '0');
INSERT INTO `bao_shop_ding_menu` VALUES ('6', '超级香辣酥脆新奥尔良大鸡腿，打特价，限时秒杀', '127', '7', '2015/11/11/thumb_56431d823731b.jpg', '1200', '1000', '1', '1', '1', '1447239047', '127.145.56.183', '0');
INSERT INTO `bao_shop_ding_menu` VALUES ('7', '大煲', '9', '4', '2016/03/26/thumb_56f69d8e7779e.jpg', '3800', '3500', '0', '1', '0', '1459002786', '221.136.17.190', '0');
INSERT INTO `bao_shop_ding_menu` VALUES ('8', '中煲', '9', '4', '2016/03/26/thumb_56f69dc615c52.jpg', '2800', '2500', '0', '1', '0', '1459002841', '221.136.17.190', '0');
INSERT INTO `bao_shop_ding_menu` VALUES ('9', '花生凉拌', '9', '5', '2016/03/26/thumb_56f69e95516ff.jpeg', '1000', '900', '0', '1', '0', '1459003033', '221.136.17.190', '0');
INSERT INTO `bao_shop_ding_menu` VALUES ('10', '水果披萨8寸', '2', '6', '2016/03/28/thumb_56f8edae400d7.png', '4900', '3800', '0', '1', '0', '1459154383', '175.167.136.180', '0');
INSERT INTO `bao_shop_ding_menu` VALUES ('11', '早餐', '9', '5', '2016/04/03/thumb_5701391b261d7.jpg', '1800', '1700', '0', '1', '0', '1459697983', '220.176.252.85', '0');
INSERT INTO `bao_shop_ding_menu` VALUES ('12', '豆腐皮', '1', '9', '2016/06/08/thumb_5757ce4186fdf.jpg', '5000', '4500', '1', '1', '1', '1465372226', '121.26.221.10', '0');

-- ----------------------------
-- Table structure for `bao_shop_ding_order`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_ding_order`;
CREATE TABLE `bao_shop_ding_order` (
  `order_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT NULL,
  `order_no` int(10) DEFAULT NULL,
  `is_dianping` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1代表已经付款购买   0未付款 -1 取消 2已消费',
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `total_price` int(10) DEFAULT NULL,
  `need_price` int(10) DEFAULT NULL,
  `user_id` mediumint(8) DEFAULT NULL,
  `ding_id` mediumint(8) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT '1' COMMENT '1男 2女',
  `tip` mediumtext,
  `use_integral` varchar(50) DEFAULT NULL,
  `create_time` int(10) DEFAULT NULL,
  `create_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_ding_order
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_ding_room`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_ding_room`;
CREATE TABLE `bao_shop_ding_room` (
  `room_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `intro` varchar(64) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  `money` int(11) DEFAULT '0',
  `last_date` date DEFAULT NULL,
  `last_t` tinyint(3) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0' COMMENT '1 代表该包厢已经不能被预定了',
  PRIMARY KEY (`room_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_ding_room
-- ----------------------------
INSERT INTO `bao_shop_ding_room` VALUES ('1', '1', '4', '华山厅', 'hhgj ', '2016/06/08/thumb_5757cdc9a2a49.jpg', '2000', null, null, '0');

-- ----------------------------
-- Table structure for `bao_shop_ding_setting`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_ding_setting`;
CREATE TABLE `bao_shop_ding_setting` (
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `mobile` varchar(11) DEFAULT NULL COMMENT '有单了，通知手机号',
  `money` int(11) DEFAULT '0' COMMENT '包厢需要缴纳定金',
  `bao_time` tinyint(3) DEFAULT '0' COMMENT '包厢预定间隔小时',
  `start_time` tinyint(3) DEFAULT '0' COMMENT '开始接客时间',
  `end_time` tinyint(3) DEFAULT '0' COMMENT '打烊时间',
  `is_bao` tinyint(1) DEFAULT '0' COMMENT '1代表包厢有位子',
  `is_ting` tinyint(1) DEFAULT '0' COMMENT '1代表大厅有位置',
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_ding_setting
-- ----------------------------
INSERT INTO `bao_shop_ding_setting` VALUES ('1', '18932866542', '2000', '1', '16', '44', '1', '1');
INSERT INTO `bao_shop_ding_setting` VALUES ('4', '', '2000', '3', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `bao_shop_ding_yuyue`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_ding_yuyue`;
CREATE TABLE `bao_shop_ding_yuyue` (
  `ding_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `room_id` mediumint(8) NOT NULL,
  `shop_id` mediumint(8) DEFAULT NULL,
  `last_date` date NOT NULL,
  `last_t` tinyint(3) NOT NULL,
  `menu` varchar(50) DEFAULT NULL,
  `user_id` mediumint(8) DEFAULT NULL,
  `number` int(3) DEFAULT NULL,
  `order_no` int(10) DEFAULT NULL,
  `is_pay` tinyint(1) DEFAULT '0' COMMENT '1代表已经付款购买   0未付款',
  `create_time` int(10) DEFAULT NULL,
  `create_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ding_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_ding_yuyue
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_expand`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_expand`;
CREATE TABLE `bao_shop_expand` (
  `expand_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `expand` tinyint(3) DEFAULT NULL,
  `intro` varchar(256) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`expand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_expand
-- ----------------------------
INSERT INTO `bao_shop_expand` VALUES ('1', '1', '8', '申请合作', '1411963163', '127.0.0.1');
INSERT INTO `bao_shop_expand` VALUES ('2', '1', '2', '推出双11会员卡', '1415585294', '127.0.0.1');
INSERT INTO `bao_shop_expand` VALUES ('3', '1', '8', 'ddd', '1416305757', '127.0.0.1');
INSERT INTO `bao_shop_expand` VALUES ('4', '1', '1', '认证店铺', '1432539338', '127.0.0.1');
INSERT INTO `bao_shop_expand` VALUES ('5', '1', '1', '怎么去申请合作呢？', '1432539810', '127.0.0.1');

-- ----------------------------
-- Table structure for `bao_shop_favorites`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_favorites`;
CREATE TABLE `bao_shop_favorites` (
  `favorites_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `last_news_id` int(11) DEFAULT '0',
  `read_id` int(11) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`favorites_id`),
  UNIQUE KEY `user_id` (`user_id`,`shop_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_favorites
-- ----------------------------
INSERT INTO `bao_shop_favorites` VALUES ('1', '12', '1', '1', '0', '0', '1460368781', '12.16.152.156');
INSERT INTO `bao_shop_favorites` VALUES ('2', '8', '2', '0', '0', '0', '1460380694', '101.226.62.85');
INSERT INTO `bao_shop_favorites` VALUES ('3', '21', '1', '1', '0', '0', '1462260954', '101.226.233.140');
INSERT INTO `bao_shop_favorites` VALUES ('4', '3', '1', '1', '0', '0', '1462358512', '12.16.157.237');
INSERT INTO `bao_shop_favorites` VALUES ('5', '1', '1', '1', '0', '0', '1464929952', '223.96.152.2');
INSERT INTO `bao_shop_favorites` VALUES ('6', '11', '1', '0', '0', '0', '1464953432', '183.38.252.204');

-- ----------------------------
-- Table structure for `bao_shop_life_service`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_life_service`;
CREATE TABLE `bao_shop_life_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `cate_id` smallint(5) unsigned NOT NULL,
  `area_id` smallint(5) unsigned NOT NULL,
  `city_id` smallint(5) unsigned NOT NULL,
  `business_id` smallint(5) unsigned NOT NULL,
  `shop_name` varchar(64) NOT NULL,
  `logo` varchar(64) NOT NULL,
  `photo` varchar(64) NOT NULL,
  `tel` varchar(64) DEFAULT NULL,
  `extension` varchar(8) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `contact` varchar(32) DEFAULT NULL,
  `addr` varchar(64) DEFAULT NULL,
  `create_ip` varchar(15) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_life_service
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_logs`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_logs`;
CREATE TABLE `bao_shop_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `type` enum('yuyue','card','wei','bao') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_money`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_money`;
CREATE TABLE `bao_shop_money` (
  `money_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `city_id` smallint(5) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `branch_id` smallint(5) DEFAULT NULL,
  `money` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `type` enum('tuan','ele','ding','goods') DEFAULT 'tuan',
  `order_id` int(11) DEFAULT '0',
  `intro` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`money_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_money
-- ----------------------------
INSERT INTO `bao_shop_money` VALUES ('1', '1', '1', '2', '0', '2880', '1459817182', '12.16.31.151', 'goods', '5', '购物结算');
INSERT INTO `bao_shop_money` VALUES ('2', '1', '1', '2', '0', '2880', '1459822712', '12.16.31.151', 'goods', '4', '购物结算');
INSERT INTO `bao_shop_money` VALUES ('3', '1', '1', '2', '0', '8800', '1460168418', '12.16.154.253', 'ele', '3', '餐饮订单:3');
INSERT INTO `bao_shop_money` VALUES ('4', '1', '1', '2', '0', '9300', '1460210308', '12.16.30.174', 'ele', '2', '餐饮订单:2');
INSERT INTO `bao_shop_money` VALUES ('5', '1', '1', '2', '0', '6880', '1460360653', '', 'tuan', '5', '抢购消费5');
INSERT INTO `bao_shop_money` VALUES ('6', '1', '1', '2', '0', '6880', '1460361049', '', 'tuan', '4', '抢购消费4');
INSERT INTO `bao_shop_money` VALUES ('7', '1', '1', '2', '0', '6880', '1460363023', '', 'tuan', '9', '抢购消费9');
INSERT INTO `bao_shop_money` VALUES ('8', '1', '1', '2', '0', '6880', '1460446349', '', 'tuan', '9', '抢购消费9');
INSERT INTO `bao_shop_money` VALUES ('9', '1', '1', '2', '0', '6880', '1460446382', '', 'tuan', '9', '抢购消费9');
INSERT INTO `bao_shop_money` VALUES ('10', '1', '1', '2', '0', '6880', '1460446467', '', 'tuan', '9', '抢购消费9');
INSERT INTO `bao_shop_money` VALUES ('11', '1', '1', '2', '0', '35700', '1460520619', '12.16.28.152', 'ele', '7', '餐饮订单:7');
INSERT INTO `bao_shop_money` VALUES ('12', '1', '1', '2', '0', '9300', '1461071078', '12.16.28.237', 'ele', '5', '餐饮订单:5');
INSERT INTO `bao_shop_money` VALUES ('13', '1', '1', '2', '0', '9300', '1461071613', '12.16.28.237', 'ele', '5', '餐饮订单:5');
INSERT INTO `bao_shop_money` VALUES ('14', '1', '1', '2', '0', '9300', '1461071715', '12.16.28.237', 'ele', '5', '餐饮订单:5');
INSERT INTO `bao_shop_money` VALUES ('15', '1', '1', '2', '0', '9300', '1461072518', '12.16.28.237', 'ele', '5', '餐饮订单:5');
INSERT INTO `bao_shop_money` VALUES ('16', '1', '1', '2', '0', '9300', '1461073248', '12.16.28.237', 'ele', '5', '餐饮订单:5');
INSERT INTO `bao_shop_money` VALUES ('17', '1', '1', '2', '0', '6880', '1461295342', '', 'tuan', '21', '抢购消费21');
INSERT INTO `bao_shop_money` VALUES ('18', '1', '1', '2', '0', '6880', '1461295599', '', 'tuan', '17', '抢购消费17');
INSERT INTO `bao_shop_money` VALUES ('19', '1', '1', '2', '0', '6880', '1461295654', '', 'tuan', '9', '抢购消费9');
INSERT INTO `bao_shop_money` VALUES ('20', '1', '1', '2', '0', '6880', '1461295764', '', 'tuan', '9', '抢购消费9');
INSERT INTO `bao_shop_money` VALUES ('21', '1', '1', '2', '0', '6880', '1461295849', '', 'tuan', '9', '抢购消费9');
INSERT INTO `bao_shop_money` VALUES ('22', '1', '1', '2', '0', '6880', '1461296016', '', 'tuan', '9', '抢购消费9');
INSERT INTO `bao_shop_money` VALUES ('23', '1', '1', '2', '0', '6880', '1461296214', '', 'tuan', '22', '抢购消费22');
INSERT INTO `bao_shop_money` VALUES ('24', '1', '1', '2', '0', '6880', '1461314131', '', 'tuan', '23', '抢购消费23');
INSERT INTO `bao_shop_money` VALUES ('25', '1', '1', '2', '0', '9300', '1462276437', '12.16.157.237', 'ele', '1', '餐饮订单:1');
INSERT INTO `bao_shop_money` VALUES ('26', '1', '1', '3', null, '9000', '1464598070', '27.13.26.107', '', '6', '优惠买单，支付记录ID：2');
INSERT INTO `bao_shop_money` VALUES ('27', '1', '7', '2', '0', '8800', '1464915212', '27.13.160.80', 'tuan', '1', '抢购消费1');
INSERT INTO `bao_shop_money` VALUES ('28', '1', '7', '2', null, '560000', '1464916080', '27.13.160.80', 'goods', '1', '购物结算');

-- ----------------------------
-- Table structure for `bao_shop_news`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_news`;
CREATE TABLE `bao_shop_news` (
  `news_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `cate_id` smallint(5) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `source` varchar(120) DEFAULT NULL,
  `profiles` varchar(255) DEFAULT NULL,
  `keywords` varchar(256) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `details` text,
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `orderby` tinyint(1) DEFAULT '50',
  `audit` tinyint(1) DEFAULT '0',
  `city_id` smallint(5) DEFAULT '0',
  PRIMARY KEY (`news_id`),
  KEY `shop_id` (`shop_id`),
  KEY `cate_id` (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_news
-- ----------------------------
INSERT INTO `bao_shop_news` VALUES ('1', '1', '2', '8748/', '脆皮玉米', '+3+ ', '+659', '2016/06/03/thumb_575132f4d3afb.jpg', '<p>63256</p>', '1464939257', '223.154.96.164', '0', '50', '0', '7');

-- ----------------------------
-- Table structure for `bao_shop_pic`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_pic`;
CREATE TABLE `bao_shop_pic` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  `audit` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_pic
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_recognition`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_recognition`;
CREATE TABLE `bao_shop_recognition` (
  `recognition_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT '0',
  `shop_id` int(11) unsigned DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `content` varchar(256) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `reply` varchar(256) DEFAULT NULL COMMENT '管理员回复',
  `audit` tinyint(1) DEFAULT '0' COMMENT '1代表审核通过，0代表没通过！',
  PRIMARY KEY (`recognition_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_recognition
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_shop_weixin_access`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_weixin_access`;
CREATE TABLE `bao_shop_weixin_access` (
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `access_token` varchar(256) DEFAULT NULL,
  `expir_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_weixin_access
-- ----------------------------
INSERT INTO `bao_shop_weixin_access` VALUES ('1', '3LAyhujpsYcUErdXZ4A0fcNuX0h_XLZLluzd_DezVSVdUHipST3WCY4tV60h_rpgy6l5HtH-nxkY0WpBsgs8rPzoLqkrCdFB-8U5c_OYv-MpVloWWrkBQk6RMlFs31QLBYCeAAAKHL', '1462268041');

-- ----------------------------
-- Table structure for `bao_shop_weixin_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_weixin_keyword`;
CREATE TABLE `bao_shop_weixin_keyword` (
  `keyword_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT '0',
  `keyword` varchar(32) DEFAULT NULL,
  `type` enum('news','text') DEFAULT 'text' COMMENT '0普通消息 1图片消息',
  `title` varchar(128) DEFAULT NULL,
  `contents` text,
  `url` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`keyword_id`),
  UNIQUE KEY `shop_id` (`shop_id`,`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_weixin_keyword
-- ----------------------------
INSERT INTO `bao_shop_weixin_keyword` VALUES ('1', '1', '39', 'text', '', '282', '', '');

-- ----------------------------
-- Table structure for `bao_shop_worker`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_worker`;
CREATE TABLE `bao_shop_worker` (
  `worker_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(15) NOT NULL,
  `shop_id` int(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `mobile` int(13) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `weixin` varchar(40) NOT NULL,
  `work` varchar(80) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `tuan` int(1) NOT NULL DEFAULT '0',
  `coupon` int(1) NOT NULL DEFAULT '0',
  `yuyue` int(1) NOT NULL DEFAULT '0',
  `is_mall` int(1) NOT NULL DEFAULT '0',
  `is_job` int(1) NOT NULL DEFAULT '0',
  `is_ding` int(1) NOT NULL DEFAULT '0',
  `is_dianping` int(1) NOT NULL DEFAULT '0',
  `is_yuyue` int(1) NOT NULL DEFAULT '0',
  `is_life` int(1) NOT NULL DEFAULT '0',
  `is_news` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL,
  PRIMARY KEY (`worker_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_worker
-- ----------------------------
INSERT INTO `bao_shop_worker` VALUES ('1', '1', '1', '贺娟', '0567-89092345', '2147483647', '21321', 'weixin', '达到', '打击', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for `bao_shop_youhui`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_youhui`;
CREATE TABLE `bao_shop_youhui` (
  `yh_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(1) DEFAULT '0' COMMENT '0：折扣，1：满减',
  `shop_id` int(10) DEFAULT '0',
  `discount` decimal(5,1) DEFAULT '0.0' COMMENT '折扣',
  `min_amount` decimal(8,2) DEFAULT '0.00' COMMENT '满多少',
  `amount` decimal(8,2) DEFAULT '0.00' COMMENT '减多少',
  `is_open` tinyint(1) DEFAULT '0' COMMENT '0关闭，1开启',
  `use_count` int(10) DEFAULT '0' COMMENT '使用次数',
  `create_time` int(10) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`yh_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_youhui
-- ----------------------------
INSERT INTO `bao_shop_youhui` VALUES ('2', '0', '1', '9.0', '100.00', '10.00', '1', '1', '1464597891', '27.13.26.107');

-- ----------------------------
-- Table structure for `bao_shop_yuyue`
-- ----------------------------
DROP TABLE IF EXISTS `bao_shop_yuyue`;
CREATE TABLE `bao_shop_yuyue` (
  `yuyue_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT '0',
  `shop_id` int(11) unsigned DEFAULT '0',
  `pois_id` int(11) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0是商家，1是黄页，2是后面的',
  `name` varchar(32) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `yuyue_date` date DEFAULT NULL,
  `yuyue_time` varchar(32) DEFAULT NULL,
  `number` smallint(5) unsigned DEFAULT '0',
  `content` varchar(200) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0',
  `create_ip` varchar(15) DEFAULT NULL,
  `used` tinyint(1) DEFAULT '0',
  `used_time` int(11) DEFAULT '0',
  `used_ip` varchar(15) DEFAULT '',
  PRIMARY KEY (`yuyue_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_shop_yuyue
-- ----------------------------
INSERT INTO `bao_shop_yuyue` VALUES ('1', '1', '1', null, '0', '测试号', '13345678902', '2016-06-13', '2:00', '1', 'bjhbljblj', '68357162', '1464830768', '1.188.194.175', '1', '1464928033', '175.3.192.191');

-- ----------------------------
-- Table structure for `bao_sms`
-- ----------------------------
DROP TABLE IF EXISTS `bao_sms`;
CREATE TABLE `bao_sms` (
  `sms_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sms_key` varchar(32) DEFAULT NULL,
  `sms_explain` varchar(1024) DEFAULT NULL,
  `sms_tmpl` varchar(2048) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`sms_id`),
  UNIQUE KEY `sms_key` (`sms_key`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_sms
-- ----------------------------
INSERT INTO `bao_sms` VALUES ('1', 'sms_code', '可用标签：\r\n1、验证码 :{code}', '尊敬的用户：您在{sitename}手机认证的验证码是{code}千万别告诉别人！【{sitename}】', '1');
INSERT INTO `bao_sms` VALUES ('4', 'sms_shop_yuyue', '1、{shop_name}商家\r\n2、{shop_tel}商家电话\r\n3、{code}电子预约券\r\n4、{shop_addr}商家地址', '尊敬的用户您好,您预约了{shop_name}的电子优惠券：{code},亲可以前往{shop_name}进行消费;商家地址:{shop_addr},电话{shop_tel};【{sitename}】', '1');
INSERT INTO `bao_sms` VALUES ('3', 'sms_coupon_downloads', '可使用标签：\r\n1、{coupon_title} 优惠券标题\r\n2、{shop_name}商家\r\n3、{code}电子优惠券\r\n4、{expire_date}有效期', '尊敬的用户您好，您下载了商家{shop_name}的电子优惠券{coupon_title}，电子优惠券为{code}，你可以在{expire_date}之前使用该优惠券！【{sitename}】', '1');
INSERT INTO `bao_sms` VALUES ('5', 'sms_tuan', '团购后发送短信给用户！\r\n1、{nickname}用户昵称\r\n2、{tuan}团购产品\r\n3、{code}团购电子券', '尊敬的{nickname}您在{sitename}订购的{tuan}的电子券是{code}；千万别告诉其他人！【sitename】', '1');
INSERT INTO `bao_sms` VALUES ('6', 'sms_newpwd', '找回密码：\r\n1、{newpwd}新密码', '尊敬的用户：您好，您再{sitename}的密码被重置成{newpwd}您可以使用{newpwd}重新登录！【{sitename}】', '1');
INSERT INTO `bao_sms` VALUES ('7', 'sms_shop_mall', '商城通知商家短信模板', '您好，您在{sitename}有新的订单！【{sitename}】', '1');
INSERT INTO `bao_sms` VALUES ('8', 'sms_shop_tuan', '团购通知商家信息模板', '您好，您在{sitename}有新的订单！【{sitename}】', '1');
INSERT INTO `bao_sms` VALUES ('24', 'sms_ele', '订餐后发送短信给用户！ 1、{nickname}用户昵称 2、{shopname}外卖商家', '尊敬的{nickname}您在{shopname}点的外卖订单已经生成，请耐心等待美食的到来。【{sitename}】', '1');
INSERT INTO `bao_sms` VALUES ('25', 'sms_shop_ele', '订餐通知商家短信模版', '您好，您在{sitename}有新的订单！【{sitename}】', '1');
INSERT INTO `bao_sms` VALUES ('26', 'sms_shangjia_yuyue', '{name}预约人', '{name}预约了您的场地，请及时登录你的网站回复，【{sitename}】。', '1');
INSERT INTO `bao_sms` VALUES ('27', 'sms_bill_order_confirm', '缴费成功通知用户短信模版', '您好，您在{sitename}的{billtype}缴费订单已处理。', '1');
INSERT INTO `bao_sms` VALUES ('28', 'sms_bill_order_refund', '缴费退款通知用户短信模版', '您好，您在{sitename}的{billtype}缴费订单已退款，处理说明：{memo}', '1');
INSERT INTO `bao_sms` VALUES ('29', 'sms_recognition', '{shop_name}商家名字\r\n{name}姓名\r\n{mobile}手机\r\n{content}理由\r\n{reply}回复', '你好，你认领的商家【{shop_name}】在通过审核了，请登录{sitename}查看！', '1');
INSERT INTO `bao_sms` VALUES ('30', 'sms_tuancode', ' 用户中心再重发发送团购劵到用户手机！\r\n', '尊敬的{user}，您在{shop_name}预定的团购验证密码为：{code}，请及时消费哦~', '1');

-- ----------------------------
-- Table structure for `bao_sms_shop`
-- ----------------------------
DROP TABLE IF EXISTS `bao_sms_shop`;
CREATE TABLE `bao_sms_shop` (
  `log_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) DEFAULT NULL,
  `type` enum('shop','community','delivery') DEFAULT 'shop',
  `shop_id` smallint(8) DEFAULT NULL,
  `community_id` smallint(6) DEFAULT NULL,
  `delivery_id` smallint(6) DEFAULT NULL,
  `num` smallint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0正常，1锁定',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bao_sms_shop
-- ----------------------------
INSERT INTO `bao_sms_shop` VALUES ('3', '227', 'shop', '1', '0', '0', '500', '0', '1459747296', '12.16.31.151');

-- ----------------------------
-- Table structure for `bao_system_content`
-- ----------------------------
DROP TABLE IF EXISTS `bao_system_content`;
CREATE TABLE `bao_system_content` (
  `content_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL,
  `contents` text,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(255) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_system_content
-- ----------------------------
INSERT INTO `bao_system_content` VALUES ('1', '关于我们', '<p>关于我们</p>', '1410871894', '127.0.0.1', '1');
INSERT INTO `bao_system_content` VALUES ('2', '人才招聘', '<p>人才招聘</p>', '1410872282', '127.0.0.1', '5');
INSERT INTO `bao_system_content` VALUES ('3', '联系我们', '<p>联系我们</p>', '1410872306', '127.0.0.1', '2');
INSERT INTO `bao_system_content` VALUES ('4', '媒体合作', '<p>媒体合作</p>', '1410872331', '127.0.0.1', '3');
INSERT INTO `bao_system_content` VALUES ('5', '广告合作', '<p>广告合作</p>', '1410872363', '127.0.0.1', '6');
INSERT INTO `bao_system_content` VALUES ('6', '免责声明', '<p>免责声明</p>', '1410872456', '127.0.0.1', '7');
INSERT INTO `bao_system_content` VALUES ('7', '服务协议', '<p>服务协议</p>', '1410872491', '127.0.0.1', '8');

-- ----------------------------
-- Table structure for `bao_template`
-- ----------------------------
DROP TABLE IF EXISTS `bao_template`;
CREATE TABLE `bao_template` (
  `template_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `theme` varchar(32) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `theme` (`theme`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_template
-- ----------------------------
INSERT INTO `bao_template` VALUES ('4', '默认模版', 'default', 'index.jpg', '1');
INSERT INTO `bao_template` VALUES ('5', '测试模板', 'test', 'index.jpg', '0');
INSERT INTO `bao_template` VALUES ('7', '新版红色', 'red', 'index.jpg', '0');

-- ----------------------------
-- Table structure for `bao_template_setting`
-- ----------------------------
DROP TABLE IF EXISTS `bao_template_setting`;
CREATE TABLE `bao_template_setting` (
  `theme` varchar(32) DEFAULT NULL,
  `setting` text,
  UNIQUE KEY `theme` (`theme`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_template_setting
-- ----------------------------
INSERT INTO `bao_template_setting` VALUES ('default', 'a:1:{s:5:\"floor\";a:6:{s:5:\"first\";a:3:{s:4:\"name\";s:12:\"休闲零食\";s:5:\"value\";s:2:\"21\";s:2:\"ad\";s:2:\"24\";}s:6:\"second\";a:3:{s:4:\"name\";s:12:\"厨房用品\";s:5:\"value\";s:1:\"1\";s:2:\"ad\";s:2:\"25\";}s:5:\"third\";a:3:{s:4:\"name\";s:12:\"家具电器\";s:5:\"value\";s:2:\"14\";s:2:\"ad\";s:2:\"26\";}s:6:\"fourth\";a:3:{s:4:\"name\";s:12:\"婚庆用品\";s:5:\"value\";s:1:\"2\";s:2:\"ad\";s:2:\"27\";}s:5:\"fifth\";a:3:{s:4:\"name\";s:12:\"生活用品\";s:5:\"value\";s:1:\"6\";s:2:\"ad\";s:2:\"28\";}s:5:\"sixth\";a:3:{s:4:\"name\";s:12:\"建材专区\";s:5:\"value\";s:2:\"33\";s:2:\"ad\";s:2:\"29\";}}}');

-- ----------------------------
-- Table structure for `bao_tongji`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tongji`;
CREATE TABLE `bao_tongji` (
  `tongji_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(12) DEFAULT NULL,
  `keyword` varchar(32) DEFAULT NULL COMMENT '超过的部分忽略',
  `type` tinyint(1) DEFAULT '0' COMMENT '1 团购  2购物  暂时只统计这两块',
  `money` int(11) DEFAULT NULL,
  `year` smallint(4) DEFAULT NULL,
  `month` char(2) DEFAULT NULL,
  `day` char(2) DEFAULT NULL,
  `date` date DEFAULT '2015-03-24',
  `is_mobile` tinyint(1) DEFAULT '0',
  `is_weixin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`tongji_id`),
  KEY `from` (`from`),
  KEY `keyword` (`keyword`),
  KEY `type` (`type`),
  KEY `year` (`year`,`month`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tongji
-- ----------------------------
INSERT INTO `bao_tongji` VALUES ('1', '', '', '2', '3229', '2016', '04', '05', '2016-04-05', '0', '0');
INSERT INTO `bao_tongji` VALUES ('2', '', '', '2', '3197', '2016', '04', '05', '2016-04-05', '0', '0');
INSERT INTO `bao_tongji` VALUES ('3', '', '', '1', '6938', '2016', '04', '05', '2016-04-05', '1', '0');
INSERT INTO `bao_tongji` VALUES ('4', '', '', '1', '7070', '2016', '04', '07', '2016-04-07', '0', '0');
INSERT INTO `bao_tongji` VALUES ('5', '', '', '3', '9300', '2016', '04', '08', '2016-04-08', '0', '0');
INSERT INTO `bao_tongji` VALUES ('6', '', '', '3', '9300', '2016', '04', '09', '2016-04-09', '0', '0');
INSERT INTO `bao_tongji` VALUES ('7', '', '', '3', '9300', '2016', '04', '09', '2016-04-09', '0', '0');
INSERT INTO `bao_tongji` VALUES ('8', '', '', '1', '56319', '2016', '04', '11', '2016-04-11', '0', '0');
INSERT INTO `bao_tongji` VALUES ('9', '', '', '3', '35700', '2016', '04', '13', '2016-04-13', '0', '0');
INSERT INTO `bao_tongji` VALUES ('10', '', '', '3', '9300', '2016', '04', '13', '2016-04-13', '0', '0');
INSERT INTO `bao_tongji` VALUES ('11', '', '', '1', '7250', '2016', '04', '18', '2016-04-18', '0', '0');
INSERT INTO `bao_tongji` VALUES ('12', '', '', '3', '9300', '2016', '04', '21', '2016-04-21', '0', '0');
INSERT INTO `bao_tongji` VALUES ('13', '', '', '3', '9300', '2016', '04', '21', '2016-04-21', '0', '0');
INSERT INTO `bao_tongji` VALUES ('14', '', '', '1', '6870', '2016', '04', '21', '2016-04-21', '0', '0');
INSERT INTO `bao_tongji` VALUES ('15', '', '', '1', '7070', '2016', '04', '22', '2016-04-22', '0', '0');
INSERT INTO `bao_tongji` VALUES ('16', '', '', '1', '7070', '2016', '04', '22', '2016-04-22', '0', '0');
INSERT INTO `bao_tongji` VALUES ('17', '', '', '1', '10', '2016', '04', '25', '2016-04-25', '0', '0');
INSERT INTO `bao_tongji` VALUES ('18', '', '', '2', '3229', '2016', '04', '29', '2016-04-29', '0', '0');
INSERT INTO `bao_tongji` VALUES ('19', null, null, '1', '8900', '2016', '06', '03', '2016-06-03', '0', '0');
INSERT INTO `bao_tongji` VALUES ('20', null, null, '2', '567700', '2016', '06', '03', '2016-06-03', '0', '0');
INSERT INTO `bao_tongji` VALUES ('21', null, null, '2', '1689', '2016', '06', '08', '2016-06-08', '1', '0');

-- ----------------------------
-- Table structure for `bao_tuan`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tuan`;
CREATE TABLE `bao_tuan` (
  `tuan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT '0',
  `cate_id` smallint(6) DEFAULT NULL,
  `area_id` smallint(6) DEFAULT NULL,
  `city_id` smallint(5) DEFAULT '0',
  `business_id` smallint(6) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `intro` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `thumb` text COMMENT '缩略图',
  `price` int(11) DEFAULT NULL,
  `tuan_price` int(11) DEFAULT NULL,
  `mobile_fan` int(11) DEFAULT NULL,
  `settlement_price` int(11) DEFAULT '0' COMMENT '结算金额',
  `use_integral` int(11) DEFAULT '0' COMMENT '代表允许使用的积分数，100积分是1RMB',
  `num` int(11) DEFAULT '0',
  `sold_num` int(11) DEFAULT '0',
  `tao_num` tinyint(2) DEFAULT '0' COMMENT '套餐人数',
  `wei_pic` varchar(256) DEFAULT NULL COMMENT '抢购二维码',
  `bg_date` date DEFAULT '0000-00-00',
  `end_date` date DEFAULT NULL,
  `fail_date` date DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  `is_hot` tinyint(2) DEFAULT '0',
  `is_new` tinyint(2) DEFAULT '0',
  `is_chose` tinyint(2) DEFAULT '0',
  `is_multi` tinyint(1) DEFAULT '0' COMMENT '多店可用',
  `freebook` tinyint(2) DEFAULT '0',
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `is_return_cash` tinyint(2) DEFAULT '0',
  `xiangou` int(11) DEFAULT NULL,
  `xiadan` int(1) DEFAULT NULL,
  `is_seckill` tinyint(1) DEFAULT '0',
  `kill_bg` date DEFAULT NULL,
  `kill_end` date DEFAULT NULL,
  `kill_num` int(11) DEFAULT '0',
  `kill_price` int(11) DEFAULT '0',
  `profit_enable` tinyint(1) unsigned DEFAULT '0',
  `profit_rate1` tinyint(3) unsigned DEFAULT '0',
  `profit_rate2` tinyint(3) unsigned DEFAULT '0',
  `profit_rate3` tinyint(3) unsigned DEFAULT '0',
  `profit_rank_id` tinyint(3) unsigned DEFAULT '0',
  `top_date` date DEFAULT '0000-00-00',
  PRIMARY KEY (`tuan_id`),
  KEY `cate_id` (`cate_id`,`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tuan
-- ----------------------------
INSERT INTO `bao_tuan` VALUES ('1', '1', null, '4', '2', '7', '1', '傅氏铁板烧', '仅售85元，价值100元代金券！可叠加使用，节假日通用，提供免费WiFi！', '2016/06/03/thumb_5750d34c348ae.jpg', 'a:1:{i:0;s:34:\"2016/06/03/thumb_5750d34e72cb9.jpg\";}', '13300', '9000', '100', '8800', '100', '197', '133', '0', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHw7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL3VqcVFwN1BrZG00UEc1YnJEeFkyAAIEOc5QVwMEAAAAAA%3D%3D', '2016-06-03', '2019-06-27', '2016-06-24', '1464914808', '27.13.160.80', '1', '0', '1', '0', '0', '0', '0', '0', '124.145211', '39.123041', '22', '0', '1', '0', '0', null, null, '0', '0', '1', '5', '3', '2', '0', '0000-00-00');
INSERT INTO `bao_tuan` VALUES ('2', '1', '0', '4', '2', '7', '1', '隆化辅导辅导', 'df df dsf ', '2016/06/08/thumb_5757da2436fae.jpg', 'a:1:{i:0;s:34:\"2016/06/08/thumb_5757da30b8c86.jpg\";}', '8000', '2000', null, '1840', '100', '500', '0', '0', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHG7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xLzZ6b0pjblhrOG02TFdjY2psaFkyAAIEOtVXVwMEAAAAAA%3D%3D', '2016-06-07', '2016-06-23', '2016-06-30', '1465375347', '121.26.221.10', '1', '0', '100', '1', '1', '1', '0', '1', '124.145211', '39.123041', '14', '0', null, null, '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0000-00-00');

-- ----------------------------
-- Table structure for `bao_tuan_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tuan_cate`;
CREATE TABLE `bao_tuan_cate` (
  `cate_id` int(10) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT NULL,
  `is_hot` tinyint(2) DEFAULT NULL,
  `rate` int(11) DEFAULT '60' COMMENT '结算费率',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tuan_cate
-- ----------------------------
INSERT INTO `bao_tuan_cate` VALUES ('1', '美食', '0', '1', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('2', '电影/在线选座', '0', '99', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('3', '自助餐', '1', '12', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('4', '火锅', '1', '11', '0', '80');
INSERT INTO `bao_tuan_cate` VALUES ('5', '午市套餐', '1', '13', '0', '61');
INSERT INTO `bao_tuan_cate` VALUES ('6', '下午茶', '1', '14', '0', '120');
INSERT INTO `bao_tuan_cate` VALUES ('7', '日韩料理', '1', '15', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('8', '江浙菜', '1', '16', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('9', '西餐', '1', '17', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('10', '蛋糕', '1', '18', '0', '180');
INSERT INTO `bao_tuan_cate` VALUES ('11', '甜品饮料', '1', '19', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('12', '烤鱼', '1', '20', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('13', '烧烤/烤肉', '1', '21', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('14', '海鲜', '1', '22', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('16', '小吃快餐', '1', '24', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('17', '汤/粥/炖菜', '1', '25', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('18', '聚餐宴请', '1', '26', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('19', ' 8-10人套餐', '1', '27', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('20', '川湘菜', '1', '28', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('21', '粤菜/茶餐厅', '1', '29', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('22', '西北/新疆菜', '1', '30', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('23', '东北菜', '1', '31', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('24', '云贵菜', '1', '32', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('25', '清真', '1', '33', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('26', '台湾菜', '1', '34', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('27', '特色菜', '1', '35', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('28', '咖啡茶馆', '1', '36', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('29', '东南亚菜', '1', '37', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('30', '京菜/鲁菜', '1', '38', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('31', '蟹宴', '1', '39', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('34', '休闲娱乐', '0', '2', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('35', '酒店', '0', '3', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('36', '丽人', '0', '7', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('37', '购物', '0', '5', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('38', '旅游', '0', '50', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('39', '生活服务', '0', '6', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('40', '亲子', '0', '8', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('41', '结婚', '0', '10', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('42', '热映电影', '2', '100', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('43', '电影团购', '2', '100', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('44', '找电影院', '2', '100', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('45', 'KTV', '34', '1', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('46', '温泉', '34', '12', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('47', '滑雪', '34', '13', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('48', '公园/游乐园', '34', '14', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('49', '景点/郊游', '34', '15', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('50', '密室逃脱', '34', '16', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('51', '桌游/电玩/网吧', '34', '17', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('52', '酒吧', '34', '18', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('53', '足疗按摩', '34', '19', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('54', '洗浴/汗蒸', '34', '20', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('55', '电影', '34', '21', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('56', '私人影院', '34', '22', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('57', '4D/5D电影', '34', '23', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('58', '演出/赛事/展览', '34', '24', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('59', 'DIY手工', '34', '25', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('60', '真人CS/卡丁车', '34', '26', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('61', '农家乐/采摘', '34', '27', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('62', '运动健身', '34', '28', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('63', '游泳', '34', '29', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('64', '轰趴馆', '34', '30', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('65', '水上乐园', '34', '31', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('66', '亲子游玩', '34', '32', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('67', '更多', '34', '33', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('68', '经济/客栈', '35', '20', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('69', '三星/舒适', '35', '21', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('70', '四星/精品', '35', '22', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('71', '五星/豪华', '35', '23', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('72', '美发', '36', '20', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('73', '美甲', '36', '21', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('74', '美容/SPA', '36', '22', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('75', '个性写真', '36', '23', '1', '60');
INSERT INTO `bao_tuan_cate` VALUES ('76', '瘦身纤体', '36', '24', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('77', '瑜珈/舞蹈', '36', '25', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('78', '其他', '36', '26', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('79', '服饰鞋包', '37', '20', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('80', '生活家居', '37', '21', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('81', '食品饮料', '37', '22', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('82', '母婴用品', '37', '23', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('83', '数码家电', '37', '24', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('84', '个护化妆', '37', '25', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('85', '钟表眼镜', '37', '26', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('86', '水果生鲜', '37', '27', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('87', '影音书刊', '37', '28', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('88', '珠宝饰品', '37', '29', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('89', '其他', '37', '30', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('90', '景点门票', '38', '20', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('91', '当地/周边游', '38', '21', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('92', '国内游', '38', '22', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('93', '出境游', '38', '23', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('94', '汽车服务', '39', '20', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('95', '体检保健', '39', '21', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('96', '培训课程', '39', '22', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('97', '鲜花婚庆', '39', '23', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('98', '照片冲印', '39', '24', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('99', '家具建材', '39', '25', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('100', '装修设计', '39', '26', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('101', '婚纱摄影', '39', '27', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('102', '个性写真', '39', '28', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('103', '儿童摄影', '39', '29', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('104', '母婴亲子', '39', '30', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('105', '服装洗护', '39', '31', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('106', '宠物服务', '39', '32', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('107', '家政服务', '39', '33', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('108', '配眼镜', '39', '34', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('109', '商场购物券', '39', '35', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('110', '孕产护理', '40', '20', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('111', '亲子购物', '40', '21', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('112', '亲子游乐', '40', '22', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('113', '幼儿教育', '40', '23', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('114', '亲子摄影', '40', '24', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('115', '其他亲子', '40', '25', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('116', '婚纱摄影', '41', '20', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('117', '旅游婚纱照', '41', '21', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('118', '婚纱礼服', '41', '22', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('119', '成衣定制', '41', '23', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('120', '婚庆公司', '41', '24', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('121', '婚戒首饰', '41', '25', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('122', '婚礼小商品', '41', '26', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('123', '彩妆造型', '41', '27', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('124', '司仪主持', '41', '28', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('125', '婚礼跟拍', '41', '29', '0', '60');
INSERT INTO `bao_tuan_cate` VALUES ('126', '其他结婚', '41', '30', '0', '60');

-- ----------------------------
-- Table structure for `bao_tuan_code`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tuan_code`;
CREATE TABLE `bao_tuan_code` (
  `code_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(8) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `worker_id` int(10) DEFAULT NULL,
  `shop_id` int(11) DEFAULT '0',
  `branch_id` int(11) DEFAULT '0',
  `order_id` int(11) DEFAULT NULL,
  `tuan_id` int(11) DEFAULT '0',
  `price` int(11) DEFAULT NULL,
  `settlement_price` int(11) DEFAULT NULL,
  `real_money` int(11) DEFAULT '0' COMMENT '真实花费的MONEY',
  `real_integral` int(11) DEFAULT '0' COMMENT '真实积分',
  `fail_date` date DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `used_time` int(11) DEFAULT NULL,
  `used_ip` varchar(15) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT '0' COMMENT '1代表已经使用',
  `is_sms` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '0代表正常，1代表申请退款中，2代表已经退款',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`code_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tuan_code
-- ----------------------------
INSERT INTO `bao_tuan_code` VALUES ('1', '70295337', '1', '1', '1', '0', '1', '1', '13300', '8800', '8900', '0', '2016-06-24', '1464914928', '27.13.160.80', '1464915212', '27.13.160.80', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for `bao_tuan_details`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tuan_details`;
CREATE TABLE `bao_tuan_details` (
  `tuan_id` int(10) NOT NULL,
  `details` text,
  `instructions` text,
  PRIMARY KEY (`tuan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tuan_details
-- ----------------------------
INSERT INTO `bao_tuan_details` VALUES ('1', '<p>你好！</p>', '<p><span style=\"color: rgb(0, 0, 0); font-size: 12px; line-height: normal; white-space: normal; float: none;\">你好！</span></p>');
INSERT INTO `bao_tuan_details` VALUES ('2', '<p><img src=\"http://www.haoid.cn/attachs/editor/2016/06/08/thumb_5757da501a100.jpg\" _src=\"http://www.haoid.cn/attachs/editor/2016/06/08/thumb_5757da501a100.jpg\"/></p>', '<p><img src=\"http://www.haoid.cn/attachs/editor/2016/06/08/thumb_5757da43a9667.jpg\" _src=\"http://www.haoid.cn/attachs/editor/2016/06/08/thumb_5757da43a9667.jpg\"/></p>');

-- ----------------------------
-- Table structure for `bao_tuan_dianping`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tuan_dianping`;
CREATE TABLE `bao_tuan_dianping` (
  `dianping_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `tuan_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `contents` varchar(1024) DEFAULT NULL,
  `reply` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `show_date` date DEFAULT NULL,
  `closed` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `dianping_id` (`dianping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tuan_dianping
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_tuan_dianping_pics`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tuan_dianping_pics`;
CREATE TABLE `bao_tuan_dianping_pics` (
  `pic_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `pic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tuan_dianping_pics
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_tuan_meal`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tuan_meal`;
CREATE TABLE `bao_tuan_meal` (
  `tuan_id` int(11) unsigned DEFAULT '0' COMMENT '主套餐',
  `id` int(11) unsigned DEFAULT '0' COMMENT '分套餐id',
  `name` varchar(64) DEFAULT NULL COMMENT '套餐名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tuan_meal
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_tuan_order`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tuan_order`;
CREATE TABLE `bao_tuan_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `tuan_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  `shop_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT '0',
  `total_price` int(11) DEFAULT NULL,
  `mobile_fan` int(11) DEFAULT NULL,
  `use_integral` int(11) DEFAULT '0',
  `need_pay` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `update_time` int(11) DEFAULT '0',
  `update_ip` varchar(15) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '1代表已经付款购买  -1表示到店付，3代表申请退款，4代表已退款',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `is_mobile` tinyint(1) DEFAULT '0' COMMENT '为了统计用',
  `is_dianping` tinyint(1) DEFAULT '0',
  `is_separate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tuan_order
-- ----------------------------
INSERT INTO `bao_tuan_order` VALUES ('1', '1', '1', '1', '1', '0', '9000', '100', '0', '8900', '1464914907', '27.13.160.80', '0', null, '1', '0', '1', '0', '0');
INSERT INTO `bao_tuan_order` VALUES ('2', '6', '1', '1', '1', '0', '9000', '100', '0', '8900', '1465016714', '120.237.224.57', '0', null, '0', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for `bao_tuan_view`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tuan_view`;
CREATE TABLE `bao_tuan_view` (
  `view_id` int(10) NOT NULL AUTO_INCREMENT,
  `tuan_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`view_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tuan_view
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_tui`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tui`;
CREATE TABLE `bao_tui` (
  `tui_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tui_name` varchar(64) DEFAULT NULL,
  `tui_link` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`tui_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tui
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_tuisongduanxin`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tuisongduanxin`;
CREATE TABLE `bao_tuisongduanxin` (
  `tuisong_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `rank_id` int(10) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `is_tuisong` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`tuisong_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tuisongduanxin
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_tuisongemail`
-- ----------------------------
DROP TABLE IF EXISTS `bao_tuisongemail`;
CREATE TABLE `bao_tuisongemail` (
  `tuisong_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `rank_id` int(10) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `content` text,
  `create_time` int(11) DEFAULT NULL,
  `is_tuisong` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`tuisong_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_tuisongemail
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_uploadset`
-- ----------------------------
DROP TABLE IF EXISTS `bao_uploadset`;
CREATE TABLE `bao_uploadset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `para` text NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传插件';

-- ----------------------------
-- Records of bao_uploadset
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_users`
-- ----------------------------
DROP TABLE IF EXISTS `bao_users`;
CREATE TABLE `bao_users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) DEFAULT NULL COMMENT '邮件或者手机',
  `password` char(32) DEFAULT NULL,
  `face` varchar(500) DEFAULT NULL,
  `ext0` varchar(15) DEFAULT NULL COMMENT '为了兼容DISCUZ 设立的用户名存储的字段',
  `nickname` varchar(32) DEFAULT NULL,
  `integral` int(11) DEFAULT '0',
  `prestige` int(11) DEFAULT '0' COMMENT '声望，影响等级的',
  `money` int(11) DEFAULT '0' COMMENT '账户余额',
  `rank_id` tinyint(4) DEFAULT '1' COMMENT '等级ID',
  `gold` int(11) DEFAULT '0',
  `frozen` int(11) DEFAULT NULL,
  `reg_time` int(11) DEFAULT '0',
  `reg_ip` varchar(15) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  `frozen_time` int(11) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0' COMMENT '-1代表需要激活   0 代表正常  1 代表删除',
  `uc_id` int(11) DEFAULT '0',
  `email` varchar(64) DEFAULT NULL COMMENT '认证的邮件',
  `mobile` varchar(11) DEFAULT NULL COMMENT '认证的手机号码',
  `ping_num` int(11) DEFAULT '0',
  `post_num` int(11) DEFAULT '0',
  `invite1` int(11) DEFAULT NULL,
  `invite2` int(11) DEFAULT NULL,
  `invite3` int(11) DEFAULT NULL,
  `invite4` int(11) DEFAULT NULL,
  `invite5` int(11) DEFAULT NULL,
  `invite6` int(11) DEFAULT '0',
  `token` char(32) DEFAULT '0',
  `fuid1` int(10) unsigned NOT NULL DEFAULT '0',
  `fuid2` int(10) unsigned NOT NULL DEFAULT '0',
  `fuid3` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_users
-- ----------------------------
INSERT INTO `bao_users` VALUES ('1', '123456@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', '123456@qq.com', '测试号', '4726', '127', '99391712', '0', '577800', '0', '1463886964', '27.13.29.14', '1467384916', '0', '0', '0', '2625807874@qq.com', '13345678902', '0', '1', '0', '0', '0', '0', '0', '0', '1bffeddd9466013125ef2acaffd92d41', '0', '0', '0');
INSERT INTO `bao_users` VALUES ('26', '575c0caa0525b@5maiche.cn', 'caf4a34e759fca5262fa25aecff2b950', 'http://wx.qlogo.cn/mmopen/5IbsibPRrLUbSkia5Wbic7Dmbd2ia12XteckfK2YCUQaeFZMxGLo7aiaF9xgQZZFnrFOCTiclsOG5OQLIpoX3mhgFJ5yQ4Aer4ibZPG/0', '575c0caa0525b@5', 'seoer', '0', '0', '0', '1', '0', null, '1465650344', '118.254.105.7', null, null, '0', '0', null, null, '0', '0', null, null, null, null, null, '0', 'c1LZzgkEnzQ0V_rcV3c82qMZ2YMVvegf', '0', '0', '0');
INSERT INTO `bao_users` VALUES ('27', '5775e490af5c2@qgjz.net', '5534b84715ecd485ea7f785824bf4a2a', 'http://wx.qlogo.cn/mmopen/NoFChqEQomFxQMeGY3iaNDLO1YOtftluwlU7d0BFJH7mBCorlY51wQyjl6m6AP5YI23giak7P7Yc2owuR5XVh6icA/0', '5775e490af5c2@q', '六个石头', '0', '0', '1', '1', '0', null, '1467344016', '106.35.37.171', null, null, '0', '0', null, null, '0', '0', null, null, null, null, null, '0', 'BCwp-XuQDxFMZtTYIR5TdwDkDmCDmg9X', '0', '0', '0');
INSERT INTO `bao_users` VALUES ('28', '5775fb57c1545@qgjz.net', 'b8803afeb4565df199682f9192ebfcd8', 'http://wx.qlogo.cn/mmopen/1mVwCZPawUtTrpiaBjOe6VgNtESaBVGPLDq4IyoACib6Fgh53iaRWwbBkyRIGeQoI89nXkRY5xZ9ic6hNTfhMuwYIH0nSUdoCIXy/0', '5775fb57c1545@q', '岁月凉茶', '0', '0', '0', '1', '0', null, '1467349847', '222.134.79.5', null, null, '0', '0', null, null, '0', '0', null, null, null, null, null, '0', 'lwiJteiTN2wrwNmqKrfPuo-sxZd5tW1z', '0', '0', '0');
INSERT INTO `bao_users` VALUES ('29', '5776228e4c4b4@qgjz.net', '703c74a43d6a4950057bdcb53cb8e4b8', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6d9Bb61Kyibia8pXxl9OhlmZ6NpFHooh87OJ6DohFdlCk2Hibde64ibxGkMeD3YYI2WruVfzqZo1JicEJBgoDwUserGPIoIic7BSw4w/0', '5776228e4c4b4@q', '掌上汶上·刘海旭', '0', '0', '1', '1', '0', null, '1467359885', '222.134.79.5', null, null, '0', '0', null, null, '0', '0', null, null, null, null, null, '0', 'jih4klVKQ121sjbljIAz5u_buEaGVZBX', '0', '0', '0');
INSERT INTO `bao_users` VALUES ('30', '57767ead17805@qgjz.net', 'ca47a37a328c5025b96a5460b804abf5', 'http://wx.qlogo.cn/mmopen/8KRQciczTl93MicYXuQN2iaROMVlKJvICDfqZosSwBPY4ib8qkrD68KPTWJ9rwrFmlMNHibaFAAFjMuQkHLxA5uia0gA/0', '57767ead17805@q', '屌丝', '0', '0', '0', '1', '0', null, '1467383468', '123.147.246.222', null, null, '0', '0', null, null, '0', '0', null, null, null, null, null, '0', 'Mw6yFh1dhaKoBC6LGQzXEaORVmVPIXde', '0', '0', '0');

-- ----------------------------
-- Table structure for `bao_users_cash`
-- ----------------------------
DROP TABLE IF EXISTS `bao_users_cash`;
CREATE TABLE `bao_users_cash` (
  `cash_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` enum('user','shop','community') DEFAULT 'user',
  `shop_id` smallint(5) DEFAULT NULL,
  `city_id` smallint(5) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0未审核1通过2拒绝',
  `reason` text,
  `account` varchar(64) DEFAULT NULL,
  `bank_name` varchar(128) NOT NULL,
  `bank_num` varchar(32) NOT NULL,
  `bank_branch` varchar(128) NOT NULL,
  `bank_realname` varchar(64) NOT NULL,
  `is_lock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cash_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_users_cash
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_users_ex`
-- ----------------------------
DROP TABLE IF EXISTS `bao_users_ex`;
CREATE TABLE `bao_users_ex` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `last_uid` int(11) DEFAULT '0',
  `views` int(11) DEFAULT NULL,
  `bank_name` varchar(128) DEFAULT NULL,
  `bank_num` varchar(32) DEFAULT NULL,
  `bank_branch` varchar(128) DEFAULT NULL,
  `bank_realname` varchar(64) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL,
  `sex` int(2) DEFAULT NULL,
  `star_id` tinyint(10) NOT NULL DEFAULT '0',
  `born_year` varchar(20) DEFAULT NULL,
  `born_month` tinyint(20) DEFAULT NULL,
  `born_day` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_users_ex
-- ----------------------------
INSERT INTO `bao_users_ex` VALUES ('1', '0', '0', null, null, null, null, null, null, '0', null, null, null);
INSERT INTO `bao_users_ex` VALUES ('27', '0', '0', null, null, null, null, null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `bao_users_goods`
-- ----------------------------
DROP TABLE IF EXISTS `bao_users_goods`;
CREATE TABLE `bao_users_goods` (
  `record_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT '0',
  `goods_id` int(10) DEFAULT NULL,
  `record_time` int(11) DEFAULT NULL,
  `record_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_users_goods
-- ----------------------------
INSERT INTO `bao_users_goods` VALUES ('1', '1', '1', '1465014229', '120.35.164.172');
INSERT INTO `bao_users_goods` VALUES ('3', '13', '2', '1465010131', '175.164.163.235');
INSERT INTO `bao_users_goods` VALUES ('2', '13', '1', '1465010111', '175.164.163.235');
INSERT INTO `bao_users_goods` VALUES ('4', '6', '2', '1465016848', '120.237.224.57');
INSERT INTO `bao_users_goods` VALUES ('5', '19', '1', '1465022903', '14.125.241.145');
INSERT INTO `bao_users_goods` VALUES ('6', '1', '3', '1465129112', '223.96.152.184');

-- ----------------------------
-- Table structure for `bao_users_look`
-- ----------------------------
DROP TABLE IF EXISTS `bao_users_look`;
CREATE TABLE `bao_users_look` (
  `look_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`look_id`),
  UNIQUE KEY `user_id` (`user_id`,`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_users_look
-- ----------------------------
INSERT INTO `bao_users_look` VALUES ('1', '1', '1', '1465190538');
INSERT INTO `bao_users_look` VALUES ('2', '1', '2', '1464926360');
INSERT INTO `bao_users_look` VALUES ('3', '1', '3', '1464830665');
INSERT INTO `bao_users_look` VALUES ('4', '2', '1', '1464680063');
INSERT INTO `bao_users_look` VALUES ('5', '227', '2', '1464694311');
INSERT INTO `bao_users_look` VALUES ('6', '10', '2', '1464802117');
INSERT INTO `bao_users_look` VALUES ('7', '14', '1', '1464943031');
INSERT INTO `bao_users_look` VALUES ('8', '11', '1', '1464953436');
INSERT INTO `bao_users_look` VALUES ('9', '1', '4', '1465194756');
INSERT INTO `bao_users_look` VALUES ('10', '13', '4', '1465012445');
INSERT INTO `bao_users_look` VALUES ('11', '18', '1', '1464965313');
INSERT INTO `bao_users_look` VALUES ('12', '13', '1', '1465177133');
INSERT INTO `bao_users_look` VALUES ('13', '6', '4', '1465634477');
INSERT INTO `bao_users_look` VALUES ('14', '19', '4', '1465023325');
INSERT INTO `bao_users_look` VALUES ('15', '21', '4', '1465108699');
INSERT INTO `bao_users_look` VALUES ('16', '19', '1', '1465152369');
INSERT INTO `bao_users_look` VALUES ('17', '24', '4', '1465404160');
INSERT INTO `bao_users_look` VALUES ('18', '10', '1', '1465616877');
INSERT INTO `bao_users_look` VALUES ('19', '6', '5', '1465634488');

-- ----------------------------
-- Table structure for `bao_users_visitors`
-- ----------------------------
DROP TABLE IF EXISTS `bao_users_visitors`;
CREATE TABLE `bao_users_visitors` (
  `visitors_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `last_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`visitors_id`),
  UNIQUE KEY `uid` (`uid`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_users_visitors
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_user_addr`
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_addr`;
CREATE TABLE `bao_user_addr` (
  `addr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `city_id` int(11) DEFAULT '0',
  `area_id` int(11) DEFAULT '0',
  `business_id` int(11) DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `addr` varchar(1024) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`addr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_addr
-- ----------------------------
INSERT INTO `bao_user_addr` VALUES ('1', '1', '7', '2', '1', '测试', '13344555554', '测试能不能跳转回去', '1', '0');
INSERT INTO `bao_user_addr` VALUES ('2', '13', '7', '2', '1', '哦咯', '18390766588', '空空空', '0', '0');

-- ----------------------------
-- Table structure for `bao_user_card`
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_card`;
CREATE TABLE `bao_user_card` (
  `card_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_num` varchar(32) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`card_id`),
  UNIQUE KEY `card_num` (`card_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_card
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_user_gold_logs`
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_gold_logs`;
CREATE TABLE `bao_user_gold_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `gold` int(11) DEFAULT '0',
  `intro` varchar(64) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_gold_logs
-- ----------------------------
INSERT INTO `bao_user_gold_logs` VALUES ('1', '1', '9000', '用户买单，订单号:6', '1464598070', '27.13.26.107');
INSERT INTO `bao_user_gold_logs` VALUES ('2', '1', '8800', '商户抢购资金结算:1', '1464915212', '27.13.160.80');
INSERT INTO `bao_user_gold_logs` VALUES ('3', '1', '560000', '商户商城订单资金结算：1', '1464916080', '27.13.160.80');

-- ----------------------------
-- Table structure for `bao_user_integral_logs`
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_integral_logs`;
CREATE TABLE `bao_user_integral_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `intro` varchar(256) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_integral_logs
-- ----------------------------
INSERT INTO `bao_user_integral_logs` VALUES ('1', '6', '50', '首次签到', '1464771676', '14.215.61.68');
INSERT INTO `bao_user_integral_logs` VALUES ('2', '6', '5', '2016-06-01手机签到', '1464771676', '14.215.61.68');
INSERT INTO `bao_user_integral_logs` VALUES ('3', '1', '133', '抢购券消费成功', '1464915212', '27.13.160.80');
INSERT INTO `bao_user_integral_logs` VALUES ('4', '1', '-100', '商城购物使用积分', '1464915873', '27.13.160.80');
INSERT INTO `bao_user_integral_logs` VALUES ('5', '1', '5688', '购物积分奖励', '1464916080', '27.13.160.80');
INSERT INTO `bao_user_integral_logs` VALUES ('6', '1', '-100', '赠送会员积分', '1464959517', '175.164.163.235');
INSERT INTO `bao_user_integral_logs` VALUES ('7', '11', '100', '获得商家赠送积分', '1464959517', '175.164.163.235');
INSERT INTO `bao_user_integral_logs` VALUES ('8', '1', '-100', '商城购物使用积分', '1465289873', '12.18.78.208');
INSERT INTO `bao_user_integral_logs` VALUES ('9', '1', '-100', '商城购物使用积分', '1465289879', '12.18.78.208');
INSERT INTO `bao_user_integral_logs` VALUES ('10', '1', '-100', '商城购物使用积分', '1465289884', '12.18.78.208');
INSERT INTO `bao_user_integral_logs` VALUES ('11', '1', '-100', '商城购物使用积分', '1465289890', '12.18.78.208');
INSERT INTO `bao_user_integral_logs` VALUES ('12', '1', '-100', '商城购物使用积分', '1465289895', '12.18.78.208');
INSERT INTO `bao_user_integral_logs` VALUES ('13', '1', '-100', '商城购物使用积分', '1465289972', '12.18.78.208');
INSERT INTO `bao_user_integral_logs` VALUES ('14', '1', '-300', '商城购物使用积分', '1465354161', '124.67.252.149');
INSERT INTO `bao_user_integral_logs` VALUES ('15', '1', '100', '邮件认证', '1465372746', '121.26.221.10');
INSERT INTO `bao_user_integral_logs` VALUES ('16', '1', '5', '发帖分享', '1465701764', '12.18.78.208');
INSERT INTO `bao_user_integral_logs` VALUES ('17', '19', '5', '发帖分享', '1465701770', '12.18.78.208');
INSERT INTO `bao_user_integral_logs` VALUES ('18', '1', '-100', '商城购物使用积分', '1467385000', '27.13.157.207');

-- ----------------------------
-- Table structure for `bao_user_message`
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_message`;
CREATE TABLE `bao_user_message` (
  `from_id` int(15) NOT NULL AUTO_INCREMENT,
  `send_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_time` int(10) NOT NULL DEFAULT '0',
  `create_ip` varchar(20) NOT NULL,
  PRIMARY KEY (`from_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_message
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_user_money_logs`
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_money_logs`;
CREATE TABLE `bao_user_money_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `money` int(11) DEFAULT '0',
  `intro` varchar(64) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_money_logs
-- ----------------------------
INSERT INTO `bao_user_money_logs` VALUES ('1', '1', '99968700', '送你！', '1464598035', '27.13.26.107');
INSERT INTO `bao_user_money_logs` VALUES ('2', '1', '-9000', '余额支付2', '1464598070', '27.13.26.107');
INSERT INTO `bao_user_money_logs` VALUES ('3', '1', '9000', '优惠买单，支付记录ID：2', '1464598070', '27.13.26.107');
INSERT INTO `bao_user_money_logs` VALUES ('4', '1', '-8900', '余额支付3', '1464914928', '27.13.160.80');
INSERT INTO `bao_user_money_logs` VALUES ('5', '1', '-567700', '余额支付4', '1464915878', '27.13.160.80');
INSERT INTO `bao_user_money_logs` VALUES ('6', '22', '10000', '', '1465178358', '113.84.7.23');
INSERT INTO `bao_user_money_logs` VALUES ('7', '22', '-1400', '云购商品测试购买，扣费', '1465178435', '113.84.7.23');
INSERT INTO `bao_user_money_logs` VALUES ('8', '1', '1200', '商品测试成功卖出，收款！', '1465178435', '113.84.7.23');
INSERT INTO `bao_user_money_logs` VALUES ('9', '1', '-1689', '余额支付8', '1465354169', '124.67.252.149');
INSERT INTO `bao_user_money_logs` VALUES ('10', '6', '100000', '', '1465390285', '14.208.41.129');
INSERT INTO `bao_user_money_logs` VALUES ('11', '27', '1', '余额充值\n						，支付记录ID：12', '1467344292', '101.226.103.59');
INSERT INTO `bao_user_money_logs` VALUES ('12', '1', '100', '余额充值\n						，支付记录ID：15', '1467349020', '140.207.54.75');
INSERT INTO `bao_user_money_logs` VALUES ('13', '29', '1', '余额充值\n						，支付记录ID：27009', '1467384986', '140.207.54.74');
INSERT INTO `bao_user_money_logs` VALUES ('14', '1', '1', '余额充值\n						，支付记录ID：27012', '1467385385', '140.207.54.74');

-- ----------------------------
-- Table structure for `bao_user_profit_logs`
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_profit_logs`;
CREATE TABLE `bao_user_profit_logs` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `money` int(11) unsigned NOT NULL DEFAULT '0',
  `is_separate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bao_user_profit_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_user_rank`
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_rank`;
CREATE TABLE `bao_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(32) DEFAULT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `icon1` varchar(64) DEFAULT NULL,
  `prestige` int(11) DEFAULT '0' COMMENT '需要的积分数',
  `rebate` int(10) DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_rank
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_user_sign`
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_sign`;
CREATE TABLE `bao_user_sign` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `day` int(11) DEFAULT '0',
  `is_first` tinyint(4) DEFAULT '1',
  `last_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_sign
-- ----------------------------
INSERT INTO `bao_user_sign` VALUES ('6', '1', '0', '1464771676');
INSERT INTO `bao_user_sign` VALUES ('1', '0', '1', '1464865971');
INSERT INTO `bao_user_sign` VALUES ('19', '0', '1', '1464932981');

-- ----------------------------
-- Table structure for `bao_user_weixin`
-- ----------------------------
DROP TABLE IF EXISTS `bao_user_weixin`;
CREATE TABLE `bao_user_weixin` (
  `wx_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `openid` varchar(200) DEFAULT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `unionid` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`wx_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_user_weixin
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_village`
-- ----------------------------
DROP TABLE IF EXISTS `bao_village`;
CREATE TABLE `bao_village` (
  `village_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '管理员',
  `city_id` smallint(5) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT NULL,
  `cate` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `addr` varchar(128) DEFAULT NULL,
  `tel` varchar(20) NOT NULL,
  `pic` varchar(64) NOT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT '0',
  `profiles` varchar(128) DEFAULT NULL,
  `orderby` tinyint(4) DEFAULT '100',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `info` text NOT NULL,
  `is_bbs` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`village_id`),
  KEY `city_id` (`city_id`,`area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小区表';

-- ----------------------------
-- Records of bao_village
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_village_bbs`
-- ----------------------------
DROP TABLE IF EXISTS `bao_village_bbs`;
CREATE TABLE `bao_village_bbs` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(80) NOT NULL,
  `village_id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `view_num` int(10) NOT NULL DEFAULT '0',
  `zan_num` int(10) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL,
  `create_ip` varchar(30) NOT NULL,
  `hot` int(1) NOT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  `audit` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_village_bbs
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_village_bbs_replys`
-- ----------------------------
DROP TABLE IF EXISTS `bao_village_bbs_replys`;
CREATE TABLE `bao_village_bbs_replys` (
  `reply_id` int(10) NOT NULL AUTO_INCREMENT,
  `village_id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL DEFAULT '0',
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `create_time` int(10) NOT NULL,
  `create_ip` varchar(20) NOT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `audit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reply_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_village_bbs_replys
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_village_notice`
-- ----------------------------
DROP TABLE IF EXISTS `bao_village_notice`;
CREATE TABLE `bao_village_notice` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `village_id` smallint(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `context` text NOT NULL,
  `addtime` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_village_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_village_suggestion`
-- ----------------------------
DROP TABLE IF EXISTS `bao_village_suggestion`;
CREATE TABLE `bao_village_suggestion` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `village_id` smallint(5) NOT NULL,
  `user` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `context` varchar(255) NOT NULL,
  `addtime` int(11) NOT NULL,
  `replytime` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `reply` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `person` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_village_suggestion
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_village_users`
-- ----------------------------
DROP TABLE IF EXISTS `bao_village_users`;
CREATE TABLE `bao_village_users` (
  `join_id` int(11) NOT NULL AUTO_INCREMENT,
  `village_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`join_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_village_users
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_village_worker`
-- ----------------------------
DROP TABLE IF EXISTS `bao_village_worker`;
CREATE TABLE `bao_village_worker` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `village_id` smallint(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `job` varchar(50) NOT NULL,
  `orderby` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_village_worker
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_vote`
-- ----------------------------
DROP TABLE IF EXISTS `bao_vote`;
CREATE TABLE `bao_vote` (
  `vote_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `is_select` tinyint(2) DEFAULT '0',
  `is_pic` tinyint(2) DEFAULT '0',
  `banner` varchar(64) DEFAULT NULL,
  `num` int(10) DEFAULT '0',
  `shop_id` int(11) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_work` tinyint(2) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_vote
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_vote_option`
-- ----------------------------
DROP TABLE IF EXISTS `bao_vote_option`;
CREATE TABLE `bao_vote_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `photo` varchar(64) DEFAULT NULL,
  `number` int(11) DEFAULT '0',
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_vote_option
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_vote_result`
-- ----------------------------
DROP TABLE IF EXISTS `bao_vote_result`;
CREATE TABLE `bao_vote_result` (
  `result_id` int(10) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `vote_option` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `vote_id` (`vote_id`,`create_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_vote_result
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weidian_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weidian_cate`;
CREATE TABLE `bao_weidian_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `photo` varchar(32) DEFAULT NULL,
  `orderby` tinyint(3) DEFAULT '100',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weidian_cate
-- ----------------------------
INSERT INTO `bao_weidian_cate` VALUES ('1', '微店顶级分类', '0', '', '1');
INSERT INTO `bao_weidian_cate` VALUES ('2', '承德隆化', '1', '', '1');
INSERT INTO `bao_weidian_cate` VALUES ('3', '微店二级分类2', '1', '', '2');
INSERT INTO `bao_weidian_cate` VALUES ('4', '承德隆化1', '1', '2016/06/07/575670bcb487a.jpg', '1');

-- ----------------------------
-- Table structure for `bao_weidian_details`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weidian_details`;
CREATE TABLE `bao_weidian_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weidian_name` varchar(64) NOT NULL,
  `addr` varchar(128) NOT NULL,
  `business_time` varchar(32) NOT NULL,
  `details` text NOT NULL,
  `pic` varchar(64) NOT NULL,
  `logo` varchar(64) NOT NULL,
  `shop_id` int(10) unsigned NOT NULL,
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `cate_id` int(10) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL,
  `reg_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned NOT NULL,
  `city_id` smallint(5) unsigned NOT NULL,
  `area_id` smallint(5) unsigned NOT NULL,
  `closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weidian_details
-- ----------------------------
INSERT INTO `bao_weidian_details` VALUES ('1', '隆鑫玫瑰酒店', '玫瑰湾酒店', '', '<p>你好，测试申请微店。</p>', '2016/06/08/5757ca2aab1eb.jpg', '2016/06/08/5757ca3272004.JPG', '1', '117.741128', '41.320255', '2', '1', '1459816788', '1465371293', '1', '3', '0');
INSERT INTO `bao_weidian_details` VALUES ('2', '654321', '42', '', '<p>654321654321654321654321654321654321654321</p>', '2016/06/03/5751899410f35.jpg', '2016/06/03/575189a181b1f.jpg', '4', '111.015429', '27.121843', '2', '1', '1464961507', '1464961533', '7', '28', '0');
INSERT INTO `bao_weidian_details` VALUES ('3', '快乐旅游', '颠倒是非地方地方', '', '<p>个功夫功夫个发谈<img src=\"http://img.baidu.com/hi/jx2/j_0001.gif\" _src=\"http://img.baidu.com/hi/jx2/j_0001.gif\"/></p>', '2016/06/08/5757dff03002a.jpg', '2016/06/08/5757dff3d6901.jpg', '5', '117.755528', '41.334943', '2', '1', '1465376902', '1465390143', '7', '28', '0');

-- ----------------------------
-- Table structure for `bao_weixin_conn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_conn`;
CREATE TABLE `bao_weixin_conn` (
  `conn_id` int(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) NOT NULL,
  `status` int(2) NOT NULL,
  `user_id` int(10) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`conn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_conn
-- ----------------------------
INSERT INTO `bao_weixin_conn` VALUES ('1', 'ddf4478732fccccf8b162a0213d06eea', '0', '0', '1459818870');
INSERT INTO `bao_weixin_conn` VALUES ('2', 'a539dd2982721d85cf098d1b82245b59', '0', '0', '1459841329');
INSERT INTO `bao_weixin_conn` VALUES ('3', '49180f727c43b50791f25174bd2cf203', '0', '0', '1459859388');
INSERT INTO `bao_weixin_conn` VALUES ('4', '8642b18b22832c2f34cf549db36b2696', '0', '0', '1459906660');
INSERT INTO `bao_weixin_conn` VALUES ('5', 'b9e9cdca0caa788d80c866b8a01ecfdb', '0', '0', '1460473755');
INSERT INTO `bao_weixin_conn` VALUES ('6', '0eea6e565257f2e6a56c60b017e51e0e', '0', '0', '1460712754');
INSERT INTO `bao_weixin_conn` VALUES ('7', 'aa140619184c9d26d7c8ab402601bb20', '0', '0', '1460791733');
INSERT INTO `bao_weixin_conn` VALUES ('8', '58b8d8404689db59026bfefcdad9d5bf', '0', '0', '1460835510');
INSERT INTO `bao_weixin_conn` VALUES ('9', '8491860756786d0cd5ea6296d7fdaad6', '0', '0', '1460840603');
INSERT INTO `bao_weixin_conn` VALUES ('10', 'fae9e912f6497f538368fab263fd758a', '0', '0', '1460888718');
INSERT INTO `bao_weixin_conn` VALUES ('11', 'fffa3fca8d02b505e722eb3a58a4421b', '0', '0', '1460895852');
INSERT INTO `bao_weixin_conn` VALUES ('12', '9761283b17a5e114fd8254312a78cab7', '0', '0', '1460901020');
INSERT INTO `bao_weixin_conn` VALUES ('13', 'a7499182540ddff631919e03f9af81f0', '0', '0', '1460942328');
INSERT INTO `bao_weixin_conn` VALUES ('14', '721faa5080f7ed5e9e900db0543226b1', '0', '0', '1461138250');
INSERT INTO `bao_weixin_conn` VALUES ('15', 'c33ca11dd4789c523c5df54916f49a42', '0', '0', '1461160110');
INSERT INTO `bao_weixin_conn` VALUES ('16', '2d11fd65f7e48d30d91cfe0be35634bc', '0', '0', '1461251194');
INSERT INTO `bao_weixin_conn` VALUES ('17', '0f111cbf9fa17e5647d4bd7cf5ae50a8', '1', '3', '1461295389');
INSERT INTO `bao_weixin_conn` VALUES ('18', 'ac570772d8beb67ebdcb44e2eddc4213', '0', '0', '1461296068');
INSERT INTO `bao_weixin_conn` VALUES ('19', '0573b517d982f43a1d3abde20092f0fa', '0', '0', '1461296069');
INSERT INTO `bao_weixin_conn` VALUES ('20', 'cce6cd125a333b89e849b137b0449bbc', '0', '0', '1461296165');
INSERT INTO `bao_weixin_conn` VALUES ('21', 'ab47b632060a0e5fa8b86ef1de44270e', '0', '0', '1461296227');
INSERT INTO `bao_weixin_conn` VALUES ('22', '142472859a56aa671cd1a3bd6624db52', '1', '3', '1461296763');
INSERT INTO `bao_weixin_conn` VALUES ('23', 'a2424f7190762d93882f18bcce86b9eb', '0', '0', '1461387641');

-- ----------------------------
-- Table structure for `bao_weixin_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_coupon`;
CREATE TABLE `bao_weixin_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(30) DEFAULT '',
  `title` varchar(50) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `photo` varchar(150) DEFAULT '',
  `stime` date DEFAULT NULL,
  `ltime` date DEFAULT NULL,
  `use_tips` varchar(1024) DEFAULT '',
  `end_tips` varchar(1024) DEFAULT '',
  `end_photo` varchar(150) DEFAULT '',
  `num` mediumint(8) DEFAULT '0' COMMENT '数量',
  `max_count` mediumint(8) DEFAULT '0',
  `down_count` mediumint(8) DEFAULT '0',
  `use_count` mediumint(8) DEFAULT '0',
  `views` int(10) DEFAULT '0',
  `follower_condtion` tinyint(1) DEFAULT '0' COMMENT '关注限制，0:不限,1:必须关注',
  `member_condtion` tinyint(1) DEFAULT NULL,
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_couponsn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_couponsn`;
CREATE TABLE `bao_weixin_couponsn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_couponsn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_goldegg`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_goldegg`;
CREATE TABLE `bao_weixin_goldegg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `predict_num` int(11) NOT NULL COMMENT '参与人数',
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `keyword` varchar(10) NOT NULL,
  `photo` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `use_tips` varchar(200) NOT NULL COMMENT '简介',
  `stime` date DEFAULT NULL COMMENT '活动开始时间',
  `ltime` date DEFAULT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `end_tips` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `end_photo` varchar(100) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `joinnum` int(10) DEFAULT NULL,
  `max_num` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL COMMENT '兑奖密码',
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL,
  `follower_condtion` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`shop_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_goldegg
-- ----------------------------
INSERT INTO `bao_weixin_goldegg` VALUES ('76', '9000', '1', '砸金蛋', '2016/05/03/thumb_572856d6537a9.jpg', '活动名称', '砸金蛋简介', '2016-05-03', '2019-05-24', '活动说明', '你妹中奖', '活动结束公告主题', '2016/05/03/thumb_572856d9040ca.jpg', '一等奖奖品设置', '12', '0', '二等奖奖品设置', '12', '0', '三等奖奖品设置', '0', '0', '0', '12', '0', '四等奖中奖设置', '8', '0', '五等奖中奖设置', '12', '0', '六等奖中奖设置', '0', '0', '333', '0', '1462261496', '0');

-- ----------------------------
-- Table structure for `bao_weixin_goldeggsn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_goldeggsn`;
CREATE TABLE `bao_weixin_goldeggsn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `egg_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(11) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `isegg` tinyint(1) DEFAULT NULL,
  `prize` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT '0',
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_goldeggsn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_help`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_help`;
CREATE TABLE `bao_weixin_help` (
  `help_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `intro` varchar(1024) NOT NULL DEFAULT '' COMMENT '封面简介',
  `photo` varchar(150) NOT NULL DEFAULT '' COMMENT '封面图片',
  `stime` date DEFAULT NULL COMMENT '开始时间',
  `ltime` date DEFAULT NULL COMMENT '结束时间',
  `use_tips` varchar(1024) NOT NULL DEFAULT '' COMMENT '使用说明',
  `end_tips` varchar(1204) NOT NULL COMMENT '过期说明',
  `predict_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '预计参与人数',
  `max_num` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '每人最多允许抽奖次数',
  `follower_condtion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '粉丝状态',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已领取人数',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览人数',
  `end_photo` varchar(150) NOT NULL DEFAULT '' COMMENT '过期提示图片',
  `lastupdate` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  PRIMARY KEY (`help_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_help
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_helplist`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_helplist`;
CREATE TABLE `bao_weixin_helplist` (
  `list_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `openid` varchar(150) DEFAULT NULL,
  `help_id` mediumint(8) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `zhuliid` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_helplist
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_helpprize`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_helpprize`;
CREATE TABLE `bao_weixin_helpprize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `help_id` int(10) unsigned NOT NULL COMMENT '来源ID',
  `title` varchar(255) NOT NULL COMMENT '奖项标题',
  `name` varchar(255) NOT NULL COMMENT '奖项',
  `num` int(10) unsigned NOT NULL COMMENT '名额数量',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序号',
  `photo` varchar(225) NOT NULL COMMENT '奖品图片',
  `shop_id` int(10) NOT NULL COMMENT 'wx_id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_helpprize
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_helpsn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_helpsn`;
CREATE TABLE `bao_weixin_helpsn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `help_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `zhuanfa` mediumint(8) DEFAULT '0',
  `zhuli` mediumint(8) DEFAULT '0',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`),
  UNIQUE KEY `openid` (`openid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_helpsn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_keyword`;
CREATE TABLE `bao_weixin_keyword` (
  `keyword_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) DEFAULT NULL,
  `type` enum('news','text') DEFAULT 'text' COMMENT '0普通消息 1图片消息',
  `title` varchar(128) DEFAULT NULL,
  `contents` text,
  `url` varchar(128) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`keyword_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_keyword
-- ----------------------------
INSERT INTO `bao_weixin_keyword` VALUES ('1', '你好', 'text', '', '你更好！', '', '');
INSERT INTO `bao_weixin_keyword` VALUES ('2', '图片', 'news', '你好，图片', '你好，图片回复。', 'http://www.haoid.cn/', '2016/04/11/thumb_570b4da55ba7f.jpg');

-- ----------------------------
-- Table structure for `bao_weixin_lottery`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_lottery`;
CREATE TABLE `bao_weixin_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `predict_num` int(11) NOT NULL COMMENT '参与人数',
  `views` int(11) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `photo` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '用户输入兑奖时候的显示信息',
  `use_tips` varchar(200) NOT NULL COMMENT '简介',
  `stime` date DEFAULT NULL COMMENT '活动开始时间',
  `ltime` date DEFAULT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `end_tips` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `end_photo` varchar(100) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` varchar(30) NOT NULL DEFAULT '' COMMENT '预计活动人数',
  `joinnum` int(10) DEFAULT NULL,
  `max_num` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL COMMENT '兑奖密码',
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL,
  `follower_condtion` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`shop_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_lottery
-- ----------------------------
INSERT INTO `bao_weixin_lottery` VALUES ('64', '1000', '0', '1', '大转盘', '2016/05/03/thumb_57284103349fe.jpg', '大转盘', '你好，大转盘', '大转盘简介', '2016-05-03', '2020-05-29', '活动说明', '你好没中奖', '活动结束', '2016/05/03/thumb_5728412321c4b.jpg', '汽车', '10', '0', '美女', '10', '0', '摩托车', '8', '0', '', '0', '5', '0', '三轮车', '5', '0', '自行车', '13', '0', '搅拌车', '14', '0', '10', '0', '1462255953', '0');

-- ----------------------------
-- Table structure for `bao_weixin_lotterysn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_lotterysn`;
CREATE TABLE `bao_weixin_lotterysn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lottery_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `islottery` tinyint(1) DEFAULT NULL,
  `prize` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_lotterysn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_msg`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_msg`;
CREATE TABLE `bao_weixin_msg` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FromUserName` varchar(64) DEFAULT NULL,
  `ToUserName` varchar(64) DEFAULT NULL,
  `Content` varchar(1024) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_packet`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_packet`;
CREATE TABLE `bao_weixin_packet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(30) NOT NULL,
  `msg_pic` char(120) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `start_time` char(11) NOT NULL,
  `end_time` char(11) NOT NULL,
  `ext_total` mediumint(8) unsigned NOT NULL,
  `get_number` smallint(5) unsigned NOT NULL,
  `value_count` mediumint(8) unsigned NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `item_num` mediumint(9) NOT NULL,
  `item_sum` mediumint(9) NOT NULL,
  `item_max` mediumint(9) NOT NULL,
  `item_unit` varchar(30) NOT NULL,
  `packet_type` enum('1','2') NOT NULL,
  `deci` smallint(6) NOT NULL,
  `people` mediumint(9) NOT NULL,
  `password` char(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_packet
-- ----------------------------
INSERT INTO `bao_weixin_packet` VALUES ('11', '1', '红包', '红包', '2016/05/03/thumb_57285678d8941.jpg', '活动介绍', '活动规则说明', '2016-05-03', '2020-05-03', '0', '12', '0', '1', '100', '8000', '2', '', '1', '0', '133', '123456');

-- ----------------------------
-- Table structure for `bao_weixin_packetling`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_packetling`;
CREATE TABLE `bao_weixin_packetling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `open_id` char(50) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `price` char(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `type_name` char(45) NOT NULL,
  `time` char(11) NOT NULL,
  `sn_id` text NOT NULL,
  `mobile` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_packetling
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_packetling_copy`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_packetling_copy`;
CREATE TABLE `bao_weixin_packetling_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `open_id` char(50) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `price` char(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `type_name` char(45) NOT NULL,
  `time` char(11) NOT NULL,
  `sn_id` text NOT NULL,
  `mobile` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_packetling_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_packetsn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_packetsn`;
CREATE TABLE `bao_weixin_packetsn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `add_time` char(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `packet_id` int(11) NOT NULL,
  `prize_id` int(11) NOT NULL,
  `prize_name` char(40) NOT NULL,
  `worth` decimal(10,2) NOT NULL,
  `is_reward` enum('0','1','2') NOT NULL,
  `type` enum('1','2') NOT NULL,
  `code` char(40) NOT NULL,
  `open_id` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_packetsn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_prize`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_prize`;
CREATE TABLE `bao_weixin_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `scratch_id` int(10) unsigned NOT NULL COMMENT '来源ID',
  `title` varchar(255) NOT NULL COMMENT '奖项标题',
  `name` varchar(255) NOT NULL COMMENT '奖项',
  `num` int(10) unsigned NOT NULL COMMENT '名额数量',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序号',
  `photo` varchar(225) NOT NULL COMMENT '奖品图片',
  `shop_id` int(10) NOT NULL COMMENT 'shop_id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_prize
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_qrcode`;
CREATE TABLE `bao_weixin_qrcode` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT '0',
  `soure_id` smallint(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_qrcode
-- ----------------------------
INSERT INTO `bao_weixin_qrcode` VALUES ('1', '1', '1');
INSERT INTO `bao_weixin_qrcode` VALUES ('2', '3', '1');
INSERT INTO `bao_weixin_qrcode` VALUES ('3', '2', '1');
INSERT INTO `bao_weixin_qrcode` VALUES ('4', '1', '2');
INSERT INTO `bao_weixin_qrcode` VALUES ('5', '3', '2');
INSERT INTO `bao_weixin_qrcode` VALUES ('6', '2', '2');
INSERT INTO `bao_weixin_qrcode` VALUES ('7', '1', '39');
INSERT INTO `bao_weixin_qrcode` VALUES ('8', '1', '33');
INSERT INTO `bao_weixin_qrcode` VALUES ('9', '2', '3');
INSERT INTO `bao_weixin_qrcode` VALUES ('10', '3', '3');
INSERT INTO `bao_weixin_qrcode` VALUES ('11', '1', '3');
INSERT INTO `bao_weixin_qrcode` VALUES ('12', '1', '4');
INSERT INTO `bao_weixin_qrcode` VALUES ('13', '3', '5');
INSERT INTO `bao_weixin_qrcode` VALUES ('14', '3', '4');
INSERT INTO `bao_weixin_qrcode` VALUES ('15', '1', '5');
INSERT INTO `bao_weixin_qrcode` VALUES ('16', '1', '6');

-- ----------------------------
-- Table structure for `bao_weixin_relay`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_relay`;
CREATE TABLE `bao_weixin_relay` (
  `relay_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `intro` varchar(1024) NOT NULL DEFAULT '' COMMENT '封面简介',
  `photo` varchar(150) NOT NULL DEFAULT '' COMMENT '分享图片',
  `stime` date DEFAULT NULL COMMENT '开始时间',
  `ltime` date DEFAULT NULL COMMENT '结束时间',
  `use_tips` varchar(1024) NOT NULL DEFAULT '' COMMENT '使用说明',
  `end_tips` varchar(1204) NOT NULL COMMENT '过期说明',
  `relay_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分享用户参加次数',
  `max_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每人最多允许次数',
  `max_gold` mediumint(8) DEFAULT NULL,
  `min_gold` mediumint(8) DEFAULT '30',
  `time` mediumint(8) DEFAULT '30',
  `follower_condtion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '粉丝状态',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已领取人数',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览人数',
  `end_photo` varchar(150) NOT NULL DEFAULT '' COMMENT '过期提示图片',
  `lastupdate` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  PRIMARY KEY (`relay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_relay
-- ----------------------------
INSERT INTO `bao_weixin_relay` VALUES ('14', '1', '微接力', ' 添加微接力', '封面介绍', '2016/05/03/thumb_5728573324595.jpg', '2016-05-03', '2019-05-03', '使用说明', '过期说明', '12', '11', '300', '200', '300', '0', '0', '0', '9999', '2016/05/03/thumb_5728574db6731.jpg', '0', '', '1462261597');

-- ----------------------------
-- Table structure for `bao_weixin_relaylist`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_relaylist`;
CREATE TABLE `bao_weixin_relaylist` (
  `list_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `openid` varchar(150) DEFAULT NULL,
  `relay_id` mediumint(8) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1',
  `jieliid` varchar(50) DEFAULT NULL,
  `gold` mediumint(8) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_relaylist
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_relayprize`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_relayprize`;
CREATE TABLE `bao_weixin_relayprize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `relay_id` int(10) unsigned NOT NULL COMMENT '来源ID',
  `title` varchar(255) NOT NULL COMMENT '奖项标题',
  `name` varchar(255) NOT NULL COMMENT '奖项',
  `num` int(10) unsigned NOT NULL COMMENT '名额数量',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序号',
  `photo` varchar(225) NOT NULL COMMENT '奖品图片',
  `shop_id` int(10) NOT NULL COMMENT 'shop_id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_relayprize
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_relaysn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_relaysn`;
CREATE TABLE `bao_weixin_relaysn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relay_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `cishu` mediumint(8) DEFAULT '0',
  `gold` mediumint(8) DEFAULT '0',
  `dateline` int(10) DEFAULT '0',
  PRIMARY KEY (`sn_id`),
  UNIQUE KEY `openid` (`openid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_relaysn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_scratch`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_scratch`;
CREATE TABLE `bao_weixin_scratch` (
  `scratch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `intro` varchar(1024) NOT NULL DEFAULT '' COMMENT '封面简介',
  `photo` varchar(150) NOT NULL DEFAULT '' COMMENT '封面图片',
  `stime` date DEFAULT NULL COMMENT '开始时间',
  `ltime` date DEFAULT NULL COMMENT '结束时间',
  `use_tips` varchar(1024) NOT NULL DEFAULT '' COMMENT '使用说明',
  `end_tips` varchar(1204) NOT NULL COMMENT '过期说明',
  `predict_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '预计参与人数',
  `max_num` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '每人最多允许抽奖次数',
  `follower_condtion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '粉丝状态',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已领取人数',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览人数',
  `end_photo` varchar(150) NOT NULL DEFAULT '' COMMENT '过期提示图片',
  `lastupdate` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  PRIMARY KEY (`scratch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_scratch
-- ----------------------------
INSERT INTO `bao_weixin_scratch` VALUES ('1', '1', '刮刮卡', '刮刮卡', '封面介绍', '2016/05/03/thumb_5728560b8a34d.jpg', '2016-05-03', '2020-05-29', '使用说明', '过期说明', '0', '1', '0', '0', '0', '45', '', '0', '', '1462261293');

-- ----------------------------
-- Table structure for `bao_weixin_scratchsn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_scratchsn`;
CREATE TABLE `bao_weixin_scratchsn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scratch_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` int(10) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `prize_id` int(10) DEFAULT NULL,
  `prize_title` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT '0',
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_scratchsn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_shake`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_shake`;
CREATE TABLE `bao_weixin_shake` (
  `shake_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(10) DEFAULT '0',
  `keyword` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `intro` varchar(1024) NOT NULL DEFAULT '' COMMENT '封面简介',
  `photo` varchar(150) NOT NULL DEFAULT '' COMMENT '封面图片',
  `stime` date DEFAULT NULL COMMENT '开始时间',
  `ltime` date DEFAULT NULL COMMENT '结束时间',
  `use_tips` varchar(1024) NOT NULL DEFAULT '' COMMENT '使用说明',
  `end_tips` varchar(1204) NOT NULL COMMENT '过期说明',
  `predict_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '预计参与人数',
  `max_num` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '每人最多允许抽奖次数',
  `follower_condtion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '粉丝状态',
  `member_condtion` tinyint(1) NOT NULL DEFAULT '0',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已领取人数',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览人数',
  `end_photo` varchar(150) NOT NULL DEFAULT '' COMMENT '过期提示图片',
  `lastupdate` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `clientip` varchar(15) DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  PRIMARY KEY (`shake_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_shake
-- ----------------------------
INSERT INTO `bao_weixin_shake` VALUES ('12', '1', '摇一摇', '摇一摇标题', '封面简介', '2016/05/03/thumb_5728578d7fde0.jpg', '2016-05-03', '2020-05-22', '使用说明', '过期说明', '1200', '800', '0', '0', '23', '1232', '2016/05/03/thumb_572857a7e8d85.jpg', '0', '', '1462261683');

-- ----------------------------
-- Table structure for `bao_weixin_shakeprize`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_shakeprize`;
CREATE TABLE `bao_weixin_shakeprize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shake_id` int(10) unsigned NOT NULL COMMENT '来源ID',
  `title` varchar(255) NOT NULL COMMENT '奖项标题',
  `name` varchar(255) NOT NULL COMMENT '奖项',
  `num` int(10) unsigned NOT NULL COMMENT '名额数量',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序号',
  `photo` varchar(225) NOT NULL COMMENT '奖品图片',
  `shop_id` int(10) NOT NULL COMMENT 'wx_id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_shakeprize
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_shakesn`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_shakesn`;
CREATE TABLE `bao_weixin_shakesn` (
  `sn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shake_id` int(10) DEFAULT '0',
  `uid` mediumint(8) DEFAULT '0',
  `shop_id` varchar(30) DEFAULT '0',
  `openid` varchar(150) DEFAULT '',
  `nickname` varchar(50) DEFAULT NULL,
  `sn` varchar(15) DEFAULT '',
  `is_use` tinyint(1) DEFAULT '0',
  `use_time` int(10) DEFAULT '0',
  `prize_id` int(10) DEFAULT NULL,
  `prize_title` varchar(50) DEFAULT NULL,
  `dateline` int(10) DEFAULT '0',
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_shakesn
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_weixin_tmpl`
-- ----------------------------
DROP TABLE IF EXISTS `bao_weixin_tmpl`;
CREATE TABLE `bao_weixin_tmpl` (
  `tmpl_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '模板标题',
  `serial` varchar(255) DEFAULT NULL COMMENT '模板系统编号',
  `template_id` varchar(255) DEFAULT NULL COMMENT '模板应用ID',
  `info` varchar(255) DEFAULT NULL COMMENT '模板介绍',
  `sort` tinyint(4) unsigned DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) DEFAULT NULL COMMENT '模板介绍',
  `create_time` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`tmpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_weixin_tmpl
-- ----------------------------
INSERT INTO `bao_weixin_tmpl` VALUES ('1', '下单成功通知', 'OPENTM202297555', 'py5I84ROmNrKiRov38VABwCZodsViqhUPv7PbhvoHQE', '', '0', '1', '0', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('4', '订单支付成功', 'OPENTM201490080', 'JiQxtUoAPMlITLdXuO2Tv8WF_9w8US3PdR2ooMQNoSs', '', '0', '1', '1440472398', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('2', '商家订单确认', 'OPENTM203940481', 'IlRBcBh7SzcLzBn8fnts5f57QvkYkfrfsDG97ngCvh0', '', '0', '1', '1440464265', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('3', '账户余额变动通知', 'OPENTM205454780', 'O5NVYKENwXQ5pTbNkWiq8ZaT9VJkli26xEDjC0GezTQ', '', '0', '1', '1440464265', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('5', '订单发货通知', 'OPENTM202297614', 'BR4VuyjJXLCB-JqfiFNUDJmwCxWamEprK1lhUKVIb5w', '', '0', '1', '1440483587', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('6', '订单确认收货', 'OPENTM202314085', 'Cq0fFfmKHg5R9xlNHZL6AJAr3MqXD0Q1zxaRibQlKt8', '', '0', '1', '1440483697', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('7', '订单取消', 'TM00850', 'pLOVjvvhnVDKxImL3BsVuOXh60wMxClvkbPPB5qfPhY', '', '0', '1', '1440483772', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('11', '卖家接收订单', 'OPENTM201495678', 'JNVOX9fS18vfcp-kxxcGE3XhIjZ1mAhIM61a7h44uiI', '', '0', '1', '1441012762', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('12', '商家发货通知', 'OPENTM201495888', 'AyLqbNwJYd6yUKTFEADDJzU0y7PhebVlhC9J3w7eJhw', '', '0', '1', '1441013266', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('13', '账户余额变动通知', 'OPENTM201495900', 'MQVYQzLc_AcRjIHaAoR-1Qm9WVvP9b9pf6LmOORzQT4', '', '0', '1', '1441014046', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('15', '商家拼团成功通知  ', 'OPENTM400932513', 'JNVOX9fS18vfcp-kxxcGE3XhIjZ1mAhIM6cRjIHaAoR-1', '', '0', '1', '1460567263', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('16', '用户拼团成功通知', 'OPENTM401153728', 'MQVYQzLc_AcRjIHaAoR-1Qm9WVvlNHZL6AJAr3Mq', '', '0', '1', '1460567421', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('17', '参团成功通知  ', 'OPENTM400890529', 'Xh60wMxClvkbPPB5qfPhYc_AcRjIHaAoR-1QCB-JqfiFN', '', '0', '1', '1460567437', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('18', '开团成功提醒 ', 'OPENTM206953801', 'lNHZL6AJAr3MqXD0Q1zxaRibQlK3XhIjZ1mAhIM6', '', '0', '1', '1460567455', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('19', '订单发货通知  ', 'OPENTM202243318', 'BR4VuyjJXLCB-JqfiFNUDJmc_AcRjIHaAoR-1QB5qfPhYc_', '', '0', '1', '1460567476', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('20', '拼团失败提醒  ', 'OPENTM401202557', 'mNrKiRov38VABwCZodsViqhUPv7PbhvoHQEQm9WV', '', '0', '1', '1460567504', '1460567613');
INSERT INTO `bao_weixin_tmpl` VALUES ('21', '退款通知  ', 'TM00004', 'c_AcRjIHaAoR-1Qm9WVvP9b9pf6LmOORzQT4ABwCZod', '', '0', '1', '1460567522', '1460567613');

-- ----------------------------
-- Table structure for `bao_work`
-- ----------------------------
DROP TABLE IF EXISTS `bao_work`;
CREATE TABLE `bao_work` (
  `work_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `area_id` smallint(5) DEFAULT '0',
  `city_id` smallint(5) DEFAULT '0',
  `business_id` smallint(5) DEFAULT '0',
  `money1` int(11) DEFAULT '0' COMMENT '起步MONEY',
  `money2` int(11) DEFAULT '0' COMMENT '封顶MONEY',
  `num` tinyint(4) DEFAULT '0' COMMENT '0代表若干',
  `intro` varchar(1024) DEFAULT NULL,
  `work_time` varchar(32) DEFAULT NULL,
  `lng` varchar(15) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `expir_date` date DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `create_ip` varchar(15) DEFAULT NULL,
  `audit` tinyint(1) DEFAULT '0' COMMENT '1 代表显示',
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`work_id`),
  KEY `shop_id` (`shop_id`),
  KEY `lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_work
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_zhuan`
-- ----------------------------
DROP TABLE IF EXISTS `bao_zhuan`;
CREATE TABLE `bao_zhuan` (
  `zhuan_id` int(10) NOT NULL AUTO_INCREMENT,
  `map_id` tinyint(4) DEFAULT NULL,
  `goods_id` int(10) NOT NULL,
  `floor_id` tinyint(4) NOT NULL,
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `deadline` int(10) NOT NULL COMMENT '到期时间',
  PRIMARY KEY (`zhuan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_zhuan
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_zhuan_config`
-- ----------------------------
DROP TABLE IF EXISTS `bao_zhuan_config`;
CREATE TABLE `bao_zhuan_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) DEFAULT NULL,
  `color_title` varchar(10) DEFAULT NULL,
  `color_bg` varchar(10) DEFAULT NULL,
  `color_mtitle` varchar(10) DEFAULT NULL,
  `color_mbg` varchar(10) DEFAULT NULL,
  `pc_banner` varchar(255) DEFAULT NULL,
  `mobile_banner` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0:删除,1正常',
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_zhuan_config
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_zhuan_floor`
-- ----------------------------
DROP TABLE IF EXISTS `bao_zhuan_floor`;
CREATE TABLE `bao_zhuan_floor` (
  `floor_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(11) DEFAULT NULL COMMENT '11',
  `sort` tinyint(4) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0:删除,1:正常',
  PRIMARY KEY (`floor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_zhuan_floor
-- ----------------------------

-- ----------------------------
-- Table structure for `bao_zhuan_map`
-- ----------------------------
DROP TABLE IF EXISTS `bao_zhuan_map`;
CREATE TABLE `bao_zhuan_map` (
  `map_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '专题ID',
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '0:不启用，1:启用',
  PRIMARY KEY (`map_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bao_zhuan_map
-- ----------------------------
