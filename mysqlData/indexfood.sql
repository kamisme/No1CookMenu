/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : no1cookmenu

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-20 10:40:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `indexfood`
-- ----------------------------
DROP TABLE IF EXISTS `indexfood`;
CREATE TABLE `indexfood` (
  `foodId` int(11) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(255) DEFAULT NULL,
  `foodDescribe` varchar(255) DEFAULT NULL,
  `foodTime` varchar(255) DEFAULT NULL,
  `foodUserIcon` varchar(255) DEFAULT NULL,
  `foodUserName` varchar(255) DEFAULT NULL,
  `foodImg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`foodId`)
) ENGINE=InnoDB AUTO_INCREMENT=10016 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexfood
-- ----------------------------
INSERT INTO `indexfood` VALUES ('10001', '绣球酥', '喜欢尝试做各种美食，从中得到乐趣！', '昨天', 'src/images/index/touxiang1.jpg', '小晓的香饽饽', 'src/images/index/food1.jpg');
INSERT INTO `indexfood` VALUES ('10002', '蒜毫炒鸡蛋', '买菜去看见了今年的新蒜毫特别的嫩，就买点，我家不...', '昨天', 'src/images/index/touxiang2.jpg', '琪琪涵涵妈', 'src/images/index/food2.jpg');
INSERT INTO `indexfood` VALUES ('10003', '草莓豆沙卷', '闲的无聊 倒腾一下自己想吃的 还不错呢', '昨天', 'src/images/index/touxiang3.jpg', '莫雪消融', 'src/images/index/food3.jpg');
INSERT INTO `indexfood` VALUES ('10004', '皮包肉', '老公买菜我真无语了，买一次我能吃三天同样的食材，...', '昨天', 'src/images/index/touxiang4.jpg', '林乡', 'src/images/index/food4.jpg');
INSERT INTO `indexfood` VALUES ('10005', '炒鱼肚（胃）', '现在卖鱼的都很精，单独把新鲜的鱼肚留下来另外卖，...', '昨天', 'src/images/index/touxiang5.jpg', '含笑的花蕊', 'src/images/index/food5.jpg');
INSERT INTO `indexfood` VALUES ('10006', '蒜蓉香辣酱炒娃娃菜', '', '昨天', 'src/images/index/touxiang6.jpg', '村里来的小芳', 'src/images/index/food6.jpg');
INSERT INTO `indexfood` VALUES ('10007', '洋葱炒千叶豆腐', '', '昨天', 'src/images/index/touxiang7.jpg', '村里来的小芳', 'src/images/index/food7.jpg');
INSERT INTO `indexfood` VALUES ('10008', '抹茶麻薯软欧', '喜欢抹茶的清香，喜欢抹茶的颜色，喜欢麻薯的软糯香...', '昨天', 'src/images/index/touxiang8.jpg', 'So明儿', 'src/images/index/food8.jpg');
INSERT INTO `indexfood` VALUES ('10009', '草莓拿破仑', '', '昨天', 'src/images/index/touxiang9.jpg', '治愈系小十七', 'src/images/index/food9.jpg');
INSERT INTO `indexfood` VALUES ('10010', '糖水菠萝罐头', '现在是菠萝大量上市的季节，酸酸甜甜的菠萝既可以直...', '昨天', 'src/images/index/touxiang10.jpg', '因为爱情', 'src/images/index/food10.jpg');
INSERT INTO `indexfood` VALUES ('10011', '芹菜炒肉', '芹菜炒肉是一地地道道的家常菜！很多人都很爱吃，我...', '昨天', 'src/images/index/touxiang11.jpg', '甜美美', 'src/images/index/food11.jpg');
INSERT INTO `indexfood` VALUES ('10012', '香菇菜心', '菜心是我喜欢的绿叶蔬菜之一，口感爽脆，水煮又能保...', '昨天', 'src/images/index/touxiang12.jpg', '贞爱厨房', 'src/images/index/food12.jpg');
INSERT INTO `indexfood` VALUES ('10013', '红烧肉（简易版）', '红烧肉是很多肉食喜爱者的钟爱。上次传了一个红烧肉...', '昨天', 'src/images/index/touxiang13.jpg', '甜美美', 'src/images/index/food13.jpg');
INSERT INTO `indexfood` VALUES ('10014', '凉拌西瓜皮', '夏天渐渐到来，西瓜在市场也普遍出现。甘甜解渴的西...', '昨天', 'src/images/index/touxiang14.jpg', '甜美美', 'src/images/index/food14.jpg');
INSERT INTO `indexfood` VALUES ('10015', '无水无油蒸蛋糕', '这个蛋糕不放水不放油，不用烤箱，吃了不上火，宝宝...', '昨天', 'src/images/index/touxiang15.jpg', '呵自作孽', 'src/images/index/food15.jpg');
