/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : yihaocaipu

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-20 09:24:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `src` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foods` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '实用分类', 'src/components/good/images/m1.png', '[]');
INSERT INTO `menu` VALUES ('2', '每日三餐', 'src/components/good/images/m2.png', '[]');
INSERT INTO `menu` VALUES ('3', '主食', 'src/components/good/images/m3.png', '[]');
INSERT INTO `menu` VALUES ('4', '家常菜谱', 'src/components/good/images/m4.png', '[]');
INSERT INTO `menu` VALUES ('5', '中华菜系', 'src/components/good/images/m5.png', '[]');
INSERT INTO `menu` VALUES ('6', '烘焙', 'src/components/good/images/m6.png', '[]');
INSERT INTO `menu` VALUES ('7', '食材', 'src/components/good/images/m7.png', '[]');
INSERT INTO `menu` VALUES ('8', '人群', 'src/components/good/images/m8.png', '[]');
