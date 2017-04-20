/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : no1cookmenu

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-20 15:18:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lifecircle`
-- ----------------------------
DROP TABLE IF EXISTS `lifecircle`;
CREATE TABLE `lifecircle` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `new` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `comment` int(255) DEFAULT NULL,
  `good` int(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `loading` varchar(255) DEFAULT NULL,
  `goodimg` varchar(255) DEFAULT NULL,
  `comimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lifecircle
-- ----------------------------
INSERT INTO `lifecircle` VALUES ('1', '一号厨房', '闲话浮生.#普通食物的最好吃时刻#分享大会', '炒辣椒', './src/images/LifeCircle/food1.jpg', './src/images/LifeCircle/food1.1.jpg', './src/images/LifeCircle/food1.2.jpg', '苦瓜炒蛋 上汤米苋 浇汁金针菇 豆腐鸭汤 粉蒸肉 蒸榆钱儿', '鱼儿', '10', '20', './src/images/LifeCircle/index.png', './src/images/LifeCircle/loading.gif', './src/images/LifeCircle/good.png', './src/images/LifeCircle/message.png');
INSERT INTO `lifecircle` VALUES ('2', '', null, '吃晚饭了', './src/images/LifeCircle/food3.jpg', './src/images/LifeCircle/food3.1.jpg', './src/images/LifeCircle/food3.2.jpg', '葱香土豆泥 鲨鱼肉 白玉笋炒油渣 卤菜 开胃小菜 蒸蛋', '爱笑的眼睛', '51', '109', null, null, null, null);
INSERT INTO `lifecircle` VALUES ('3', '', null, '营养午餐', './src/images/LifeCircle/food2.jpg', './src/images/LifeCircle/food2.1.jpg', './src/images/LifeCircle/food2.2.jpg', null, '晴空', '2', '6', null, null, null, null);
INSERT INTO `lifecircle` VALUES ('4', '', null, '红糖发糕', './src/images/LifeCircle/food4.jpg', './src/images/LifeCircle/food4.1.jpg', './src/images/LifeCircle/food4.2.jpg', null, '未来', '2', '5', null, null, null, null);
INSERT INTO `lifecircle` VALUES ('5', '', null, '午餐', './src/images/LifeCircle/food5.jpg', './src/images/LifeCircle/food5.1.jpg', './src/images/LifeCircle/food5.2.jpg', null, '浅笑', '10', '20', null, null, null, null);
INSERT INTO `lifecircle` VALUES ('6', '', null, '美味', './src/images/LifeCircle/food6.jpg', './src/images/LifeCircle/food6.1.jpg', './src/images/LifeCircle/food6.2.jpg', null, '思念', '11', '11', null, null, null, null);
INSERT INTO `lifecircle` VALUES ('7', '', null, '好吃', './src/images/LifeCircle/food7.jpg', './src/images/LifeCircle/food7.1.jpg', './src/images/LifeCircle/food7.2.jpg', null, '怡然自得', '30', '20', null, null, null, null);
INSERT INTO `lifecircle` VALUES ('8', '', null, '营养美味', './src/images/LifeCircle/food8.jpg', './src/images/LifeCircle/food8.1.jpg', './src/images/LifeCircle/food8.2.jpg', null, '珊baby', '22', '12', null, null, null, null);
