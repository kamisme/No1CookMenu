/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : yihaocaipu

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-20 19:17:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `foodlist`
-- ----------------------------
DROP TABLE IF EXISTS `foodlist`;
CREATE TABLE `foodlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taste` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `star` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of foodlist
-- ----------------------------
INSERT INTO `foodlist` VALUES ('1', 'src/components/foods/images/a2654771_69571.jpg', '醋溜白菜', '4步/<10分钟', '酸辣味/炒', '快手菜', 'star-a');
INSERT INTO `foodlist` VALUES ('2', 'src/components/foods/images/68310bef9aaa009e7a07190216cd6ba4_150x150.jpg', '自制美味薯条', '4步/<10分钟', '咸鲜味/炸', '快手菜', 'star-a');
INSERT INTO `foodlist` VALUES ('3', 'src/components/foods/images/498f2eec1458f8d47adcecc6a9c4434d_150x150.jpg', '凉拌花生', '5步/<5分钟', '香辣味/拌', '快手菜', 'star-a');
INSERT INTO `foodlist` VALUES ('4', 'src/components/foods/images/a2654771_142528406701664.jpg', '蚝油西兰花', '3步/<10分钟', '咸鲜味/煮', '快手菜', 'star-e');
INSERT INTO `foodlist` VALUES ('5', 'src/components/foods/images/e2db115ef8899e0e4fb7c87525f217e7_150x150.jpg', '微波炉烤红薯', '4步/<5分钟', '甜味/微波', '快手菜', 'star-b');
INSERT INTO `foodlist` VALUES ('6', 'src/components/foods/images/51093dd0940de56a2ca490f30dac0d83_150x150.jpg', '西红柿鸡蛋汤', '4步/<10分钟', '茄汁味/煮', '快手菜', 'star-b');
INSERT INTO `foodlist` VALUES ('7', 'src/components/foods/images/24a3880ed3851cf383b04897664af849_150x150.jpg', '万剑穿肠面', '3步/<10分钟', '家常味/煮', '快手菜', 'star-a');
INSERT INTO `foodlist` VALUES ('8', 'src/components/foods/images/0fcce2426ca425723440da7d06a02c18_150x150.jpg', '清蒸鱼', '4步/<10分钟', '咸鲜味/蒸', '快手菜', 'star-e');
INSERT INTO `foodlist` VALUES ('9', 'src/components/foods/images/a69523_142863573780317.jpg', '烤冷面', '5步/<10分钟', '酸甜味/煎', '快手菜', 'star-e');
INSERT INTO `foodlist` VALUES ('10', 'src/components/foods/images/a1830294_69207.jpg', '薯饼', '5步/<5分钟', '家常味/煎', '快手菜', 'star-a');
INSERT INTO `foodlist` VALUES ('11', 'src/components/foods/images/a494680_142233469442473.jpg', '荷塘小炒', '5步/<5分钟', '家常味/炒', '快手菜', 'star-e');
INSERT INTO `foodlist` VALUES ('12', 'src/components/foods/images/a4174647_146254029371963.jpg', '#陕西小吃#肉夹馍', '4步/<5分钟', '咸鲜味/其他', '快手菜', 'star-b');
INSERT INTO `foodlist` VALUES ('13', 'src/components/foods/images/a5defcd24635ca6420b0d63889d2b932_150x150.jpg', '清炒西兰花', '3步/<5分钟', '咸鲜味/炒', '快手菜', 'star-e');
INSERT INTO `foodlist` VALUES ('14', 'src/components/foods/images/af9dee31291ab24160e98754add82dac_150x150.jpg', '鸡蛋布丁', '5步/<10分钟', '甜味/微波', '快手菜', 'star-a');
INSERT INTO `foodlist` VALUES ('15', 'src/components/foods/images/9c3361e4440eab5440b77eaef1ec9c61_150x150.jpg', '凉拌藕片', '4步/<10分钟', '香辣味/拌', '快手菜', 'star-b');
INSERT INTO `foodlist` VALUES ('16', 'src/components/foods/images/7ac54605eadc0af662b1a2dd619453ed_150x150.jpg', '炸红薯丸子', '5步/<5分钟', '甜味/炸', '快手菜', 'star-e');
INSERT INTO `foodlist` VALUES ('17', 'src/components/foods/images/8accd2f36f349be1369579e23b788b10_150x150.jpg', '家常赛螃蟹', '4步/<5分钟', '咸鲜味/炒', '快手菜', 'star-b');
INSERT INTO `foodlist` VALUES ('18', 'src/components/foods/images/55a849eabf7f2893a877be72667b9aa6_150x150.jpg', '牙签肉', '2步/<10分钟', '麻辣味/炸', '快手菜', 'star-e');
INSERT INTO `foodlist` VALUES ('19', 'src/components/foods/images/a2654771_40647.jpg', '贵妃豆腐', '5步/<10分钟', '咸鲜味/蒸', '快手菜', 'star-e');
INSERT INTO `foodlist` VALUES ('20', 'src/components/foods/images/fb52dfd5655abaab63a2025f0e869d50_150x150.jpg', '微波薯片', '2步/<5分钟', '家常味/微波', '快手菜', 'star-b');
INSERT INTO `foodlist` VALUES ('21', 'src/components/foods/images/a4174647_143483944078861.jpg', '凉拌香辣土豆片', '5步/<10分钟', '香辣味/拌', '快手菜', 'star-b');
INSERT INTO `foodlist` VALUES ('22', 'src/components/foods/images/065605d766aa3866cbdf2f06bec92a3b_150x150.jpg', '脆炸香蕉', '5步/<10分钟', '甜味/炸', '快手菜', 'star-a');
INSERT INTO `foodlist` VALUES ('23', 'src/components/foods/images/9bb9a6e51a25dca2b7b2f35f24b1d337_150x150.jpg', '红烧土豆', '3步/<10分钟', '家常味/烧', '快手菜', 'star-b');
INSERT INTO `foodlist` VALUES ('24', 'src/components/foods/images/61dd94d18ab276edd24222388c69a718_150x150.jpg', '炸香蕉', '2步/<10分钟', '甜味/炸', '快手菜', 'star-b');
INSERT INTO `foodlist` VALUES ('25', 'src/components/foods/images/88561ca81c1696e669dba881769b4ebb_150x150.jpg', '煮方便面', '5步/<10分钟', '家常味/煮', '快手菜', 'star-a');
INSERT INTO `foodlist` VALUES ('26', 'src/components/foods/images/ee6cbb65508744b8abca76b80371d8b9_150x150.jpg', '剁椒金针菇', '5步/<10分钟', '酸辣味/蒸', '快手菜', 'star-e');
INSERT INTO `foodlist` VALUES ('27', 'src/components/foods/images/ec0c4ba568b1d1bb393c9e47296f4645_150x150.jpg', '皮蛋拌豆腐', '4步/<10分钟', '香辣味/拌', '快手菜', 'star-e');
INSERT INTO `foodlist` VALUES ('28', 'src/components/foods/images/76404b886255c440b51a9bedaa027911_150x150.jpg', '凉拌蕨菜', '3步/<10分钟', '咸鲜味/拌', '快手菜', 'star-e');
INSERT INTO `foodlist` VALUES ('29', 'src/components/foods/images/a2945202_89195.jpg', '蜂蜜柠檬茶', '4步/<10分钟', '酸甜味/腌', '快手菜', 'star-c');
INSERT INTO `foodlist` VALUES ('30', 'src/components/foods/images/c176798a6a344b21043bfcc5f9174bc9_150x150.jpg', '寿司', '5步/<10分钟', '家常味/其他', '下饭菜', 'star-a');
INSERT INTO `foodlist` VALUES ('31', 'src/components/foods/images/b0fdb40098e276609b21b49980ea8703_150x150.jpg', '酸辣海带丝', '5步/<5分钟', '酸辣味/拌', '下饭菜', 'star-b');
INSERT INTO `foodlist` VALUES ('32', 'src/components/foods/images/7a15de477ac4ffefcee0b7b151aad0fb_150x150.jpg', '凉拌黄瓜', '5步/<5分钟', '蒜香味/拌', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('33', 'src/components/foods/images/b8c982edc08b996cdbbfa0049927151f_150x150.jpg', '蒜泥鸡蛋', '2步/<10分钟', '蒜香味/拌', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('34', 'src/components/foods/images/96482684370fb009698446bd019975f2_150x150.jpg', '什锦辣炒方便面', '4步/<10分钟', '家常味/炒', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('35', 'src/components/foods/images/ee6eb1870222d482e167852005aecf46_150x150.jpg', '辣炒千页豆腐', '4步/<10分钟', '香辣味/炒', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('36', 'src/components/foods/images/a1364519_32565.jpg', '葱油拌面', '5步/<10分钟', '咸鲜味/拌', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('37', 'src/components/foods/images/ef0e832e9b3dcc11a785d096b0823928_150x150.jpg', '红烧土豆片', '4步/<10分钟', '酱香味/烧', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('38', 'src/components/foods/images/a5570978_146216219868619.jpg', '黄瓜树', '5步/<5分钟', '家常味/拌', '下饭菜', 'star-c');
INSERT INTO `foodlist` VALUES ('39', 'src/components/foods/images/569f1f9da8df1950ca430373282f4772_160x160_150x150.jpg', '韩式辣炒鱿鱼', '3步/<10分钟', '香辣味/炒', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('40', 'src/components/foods/images/a1025708_143280156625254.jpg', '鸡蛋手抓饼', '2步/<5分钟', '咸鲜味/煎', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('41', 'src/components/foods/images/2a909387c38ab291415a55eb9e09f247_150x150.jpg', '自制苹果醋', '3步/<10分钟', '酸甜味/泡', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('42', 'src/components/foods/images/a2654771_55454.jpg', '干煸菜花', '5步/<10分钟', '香辣味/干煸', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('43', 'src/components/foods/images/1943f954cbb839769238c344294c1743_150x150.jpg', '彩虹面条', '4步/<10分钟', '家常味/煮', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('44', 'src/components/foods/images/a4174647_147212806855090.jpg', '微波炉版紫薯小米粥', '5步/<10分钟', '甜味/微波', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('45', 'src/components/foods/images/a3375473_143529861693452.jpg', '炝炒空心菜', '4步/<10分钟', '家常味/炒', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('46', 'src/components/foods/images/a2654771_33321.jpg', '炸土豆丸子', '5步/<10分钟', '家常味/炸', '下饭菜', 'star-c');
INSERT INTO `foodlist` VALUES ('47', 'src/components/foods/images/edcc9886ad46c5bb32f7820e88517e9a_150x150.jpg', '酸辣土豆丝', '4步/<5分钟', '酸辣味/炒', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('48', 'src/components/foods/images/a2654771_04403.jpg', '手撕包菜', '3步/<5分钟', '香辣味/炒', '下饭菜', 'star-c');
INSERT INTO `foodlist` VALUES ('49', 'src/components/foods/images/a2939308_147473034962020.jpg', '小炒肉丝#樱花味道#', '5步/<10分钟', '家常味/炒', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('50', 'src/components/foods/images/ff7318e0075239f959483057677a8880_150x150.jpg', '黑三剁', '4步/<10分钟', '咸鲜味/炒', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('51', 'src/components/foods/images/a3100608_146641607151169.jpg', '金枪鱼三明治', '5步/<10分钟', '其他/烘焙', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('52', 'src/components/foods/images/a3161769_33680.jpg', '辣炒蛤蜊', '5步/<10分钟', '咸鲜味/炒', '下饭菜', 'star-c');
INSERT INTO `foodlist` VALUES ('53', 'src/components/foods/images/ed31a9010d620dd5592b840d77b68768_150x150.jpg', '云南老奶洋芋', '2步/<10分钟', '香辣味/炒', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('54', 'src/components/foods/images/2cf87972d0de112492fa762c33a3372a_150x150.jpg', '涮羊肉火锅', '3步/<5分钟', '麻辣味/其他', '下饭菜', 'star-c');
INSERT INTO `foodlist` VALUES ('55', 'src/components/foods/images/37f8ed909465cc81a2874c43489aea77_150x150.jpg', '农家小炒肉', '3步/<10分钟', '香辣味/炒', '下饭菜', 'star-c');
INSERT INTO `foodlist` VALUES ('56', 'src/components/foods/images/90c197dff0b106326110ad353f6d3935_150x150.jpg', '桂花茶', '2步/<10分钟', '其他/煮', '下饭菜', 'star-e');
INSERT INTO `foodlist` VALUES ('57', 'src/components/foods/images/a6445424_147790560037087.jpg', '北非蛋', '5步/<10分钟', '咸鲜味/煎', '下饭菜', 'star-b');
INSERT INTO `foodlist` VALUES ('58', 'src/components/foods/images/a2468684_144049195247444.jpg', '蓑衣黄瓜', '5步/<5分钟', '家常味/拌', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('59', 'src/components/foods/images/79bcc88917ecf1cf7bdd26cd7320f4f3_150x150.jpg', '香蕉牛奶', '3步/<10分钟', '甜味/榨汁', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('60', 'src/components/foods/images/334576bc87df5fbc3c663ec20ee3cbc9_150x150.jpg', '四川凉面', '5步/<5分钟', '香辣味/煮', '热菜', 'star-b');
INSERT INTO `foodlist` VALUES ('61', 'src/components/foods/images/a880320_35625.jpg', '家常红烧鱼', '5步/<10分钟', '家常味/烧', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('62', 'src/components/foods/images/ad49219387cb86119d4471afa4d676f5_150x150.jpg', '韩式炒杂菜', '4步/<10分钟', '家常味/炒', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('63', 'src/components/foods/images/a4174647_143536319228859.jpg', '糖炒栗子', '5步/<5分钟', '甜味/微波', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('64', 'src/components/foods/images/a3260746_143192040534838.jpg', '老干妈拌干脆面', '5步/<5分钟', '香辣味/拌', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('65', 'src/components/foods/images/a2654771_67942.jpg', '微波麻辣豆腐', '5步/<10分钟', '麻辣味/微波', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('66', 'src/components/foods/images/a2801819_145569674052032.jpg', '辣爆圆白菜', '5步/<5分钟', '酸辣味/炒', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('67', 'src/components/foods/images/b173a2f82c40cba06b8ffd6183f2775c_150x150.jpg', '自制奶茶', '2步/<5分钟', '奶香味/煮', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('68', 'src/components/foods/images/a2654771_142543776090399.jpg', '拌杏仁茄子', '5步/<10分钟', '家常味/拌', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('69', 'src/components/foods/images/a0d15cef5f76cdffafbb7f8dc4dd93f8_150x150.jpg', '酸辣土豆丝', '5步/<5分钟', '酸辣味/炒', '热菜', 'star-b');
INSERT INTO `foodlist` VALUES ('70', 'src/components/foods/images/a2269628_59198.jpg', '懒人版盐焗大虾', '5步/<10分钟', '家常味/微波', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('71', 'src/components/foods/images/a4367086_144768806397970.jpg', '盐煎肉', '4步/<5分钟', '家常味/炒', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('72', 'src/components/foods/images/a3260746_143221325183122.jpg', '红豆酸奶冰棒', '5步/<5分钟', '酸甜味/冻', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('73', 'src/components/foods/images/11f8f631c2b9d777bb3891e1fad99171_150x150.jpg', '软炸馒头干', '4步/<10分钟', '咸鲜味/炸', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('74', 'src/components/foods/images/4b0b9f8f54dbc5050033e6f60b388ee3_150x150.jpg', '木瓜牛奶', '3步/<5分钟', '奶香味/拌', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('75', 'src/components/foods/images/3b0f8e488b78aac99707ba64e5e8bc92_150x150.jpg', '炸洋葱圈', '4步/<5分钟', '其他/炸', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('76', 'src/components/foods/images/a880320_145316984043911.jpg', '牙签肉', '4步/<10分钟', '咸鲜味/烤', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('77', 'src/components/foods/images/a2273175_146324039297730.jpg', '锅巴土豆', '5步/<5分钟', '香辣味/煎', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('78', 'src/components/foods/images/a30133_143912972074450.jpg', '白灼虾', '4步/<5分钟', '家常味/汆', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('79', 'src/components/foods/images/a2939308_146305036135590.jpg', '枸杞酒酿蛋花汤#美的微波炉#', '5步/<5分钟', '其他/微波', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('80', 'src/components/foods/images/9e890b0332800fe9820cc3b0f5178ada_150x150.jpg', '香辣基围虾', '3步/<10分钟', '咸鲜味/炒', '热菜', 'star-e');
INSERT INTO `foodlist` VALUES ('81', 'src/components/foods/images/8431ae967095842e889d4a8c6743d50d_150x150.jpg', '脆炸香蕉', '4步/<5分钟', '甜味/炸', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('82', 'src/components/foods/images/a6008213_145986097658431.jpg', '「家夏」太阳蛋的做法鸡蛋的做法', '4步/<5分钟', '咸鲜味/煎', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('83', 'src/components/foods/images/df0e6c6f6b4f2d9ad56c32c5af40f9e2_150x150.jpg', '上汤娃娃菜', '5步/<10分钟', '咸鲜味/煮', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('84', 'src/components/foods/images/a2654771_145146378964538.jpg', '黑胡椒烤土豆片', '3步/<10分钟', '黑椒味/烤', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('85', 'src/components/foods/images/a3552450_143193654256928.jpg', '家常糊塌子', '5步/<10分钟', '家常味/煎', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('86', 'src/components/foods/images/a113291_10993.jpg', '霜糖小番茄', '5步/<5分钟', '甜味/煮', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('87', 'src/components/foods/images/a2975247_146338543742640.jpg', '清汤面', '5步/<10分钟', '家常味/煮', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('88', 'src/components/foods/images/ae2a88269ffffde3fc365e761d1c595a_150x150.jpg', '炸肉丸子', '5步/<10分钟', '五香味/炸', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('89', 'src/components/foods/images/a4351131_146115563952809.jpg', '酱爆肉末花菜', '5步/<10分钟', '酱香味/爆', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('90', 'src/components/foods/images/a5119380_146157701660383.jpg', '自制油条', '5步/<10分钟', '甜味/炸', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('91', 'src/components/foods/images/a6625587_147791648176675.jpg', '卷心菜烘蛋', '4步/<10分钟', '咸鲜味/煎', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('92', 'src/components/foods/images/f910d739de47a963578d46de9f6fa535_150x150.jpg', '鸡蛋仔', '4步/<10分钟', '奶香味/烤', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('93', 'src/components/foods/images/a494680_143511499834162.jpg', '山药红豆糕', '5步/<10分钟', '甜味/蒸', '热菜', 'star-d');
INSERT INTO `foodlist` VALUES ('94', 'src/components/foods/images/a1641211_147383552536910.jpg', '红薯丸子', '5步/<10分钟', '甜味/炸', '应季时蔬', 'star-d');
INSERT INTO `foodlist` VALUES ('95', 'src/components/foods/images/a2827639_148690285584110.jpg', '麻汁豆芽菜', '5步/<10分钟', '麻酱味/拌', '应季时蔬', 'star-d');
INSERT INTO `foodlist` VALUES ('96', 'src/components/foods/images/a8972445_148040384652023.jpg', '烩南瓜', '4步/<10分钟', '家常味/烩', '应季时蔬', 'star-d');
INSERT INTO `foodlist` VALUES ('97', 'src/components/foods/images/a2654771_27775.jpg', '土豆鸡蛋饼', '5步/<10分钟', '奶香味/煎', '应季时蔬', 'star-d');
INSERT INTO `foodlist` VALUES ('98', 'src/components/foods/images/a3552450_143070735340936.jpg', '虾皮芹菜叶饼', '3步/<10分钟', '家常味/煎', '应季时蔬', 'star-d');
INSERT INTO `foodlist` VALUES ('99', 'src/components/foods/images/ebca2df000c20154bde8231f219b8063_150x150.jpg', '赛螃蟹', '5步/<10分钟', '酸甜味/炒', '应季时蔬', 'star-c');
INSERT INTO `foodlist` VALUES ('100', 'src/components/foods/images/92f22afd364e9df5e8edde6997c088e9_150x150.jpg', '蒜蓉西兰花', '5步/<5分钟', '蒜香味/炒', '应季时蔬', 'star-c');
INSERT INTO `foodlist` VALUES ('101', 'src/components/foods/images/a8972445_148178380284279.jpg', '尖椒炒煎蛋', '4步/<10分钟', '家常味/炒', '应季时蔬', 'star-c');
INSERT INTO `foodlist` VALUES ('102', 'src/components/foods/images/a4806741_145656798311544.jpg', '面包鸡蛋饼#快手早餐#', '5步/<5分钟', '甜味/煎', '应季时蔬', 'star-c');
INSERT INTO `foodlist` VALUES ('103', 'src/components/foods/images/a9034723_148109629980056.jpg', '香酥鸡米花', '4步/<10分钟', '咸鲜味/炸', '应季时蔬', 'star-c');
INSERT INTO `foodlist` VALUES ('104', 'src/components/foods/images/a2268802_148989540379195.jpg', '蒸菠菜鸡蛋糕', '5步/<10分钟', '咸鲜味/蒸', '应季时蔬', 'star-e');
INSERT INTO `foodlist` VALUES ('105', 'src/components/foods/images/4e7d6e5fd5fc531a72dca4d423e9b7ce_150x150.jpg', '丝瓜炒鸡蛋', '5步/<5分钟', '咸鲜味/炒', '应季时蔬', 'star-e');
INSERT INTO `foodlist` VALUES ('106', 'src/components/foods/images/a2809972_68170.jpg', '原汁花蛤', '4步/<10分钟', '家常味/炒', '应季时蔬', 'star-e');
INSERT INTO `foodlist` VALUES ('107', 'src/components/foods/images/a2975247_147175874014843.jpg', '太阳蛋', '5步/<5分钟', '其他/烤', '应季时蔬', 'star-e');
INSERT INTO `foodlist` VALUES ('108', 'src/components/foods/images/dbb12a6cdd890d1362e8919a00465165_150x150.jpg', '柠檬蜂蜜水', '5步/<5分钟', '酸甜味/泡', '应季时蔬', 'star-c');
INSERT INTO `foodlist` VALUES ('109', 'src/components/foods/images/a1d7cdfb0569050d4f992f1220460503_150x150.jpg', '火烧红橘', '1步/<10分钟', '酸甜味/烤', '应季时蔬', 'star-c');
INSERT INTO `foodlist` VALUES ('110', 'src/components/foods/images/a2939308_146304564230618.jpg', '微波炉懒人鸡翅#美的微波炉#', '4步/<10分钟', '咸鲜味/微波', '应季时蔬', 'star-c');
INSERT INTO `foodlist` VALUES ('111', 'src/components/foods/images/a2765589_145394962295392.jpg', '红烧素鸡', '5步/<5分钟', '家常味/炒', '应季时蔬', 'star-c');
INSERT INTO `foodlist` VALUES ('112', 'src/components/foods/images/53650e2714a6d2ea9c1b8ec31102374f_150x150.jpg', '炝炒包菜', '4步/<5分钟', '香辣味/炒', '应季时蔬', 'star-c');
INSERT INTO `foodlist` VALUES ('113', 'src/components/foods/images/a8972445_148048201536507.jpg', '宫爆三丁', '3步/<10分钟', '家常味/炒', '应季时蔬', 'star-c');
INSERT INTO `foodlist` VALUES ('114', 'src/components/foods/images/520b78eefe2a90b748d9790fea5f37b0_150x150.jpg', '老油条炒丝瓜', '4步/<10分钟', '咸鲜味/炒', '应季时蔬', 'star-c');
INSERT INTO `foodlist` VALUES ('115', 'src/components/foods/images/a9078770_148046874357240.jpg', '恶魔吐司(只需三步没等口水留下来)', '3步/<10分钟', '甜味/烤', '应季时蔬', 'star-e');
INSERT INTO `foodlist` VALUES ('116', 'src/components/foods/images/95fe7d8e41956e4cf47d8f5aa263b814_150x150.jpg', '快手凉皮', '5步/<10分钟', '香辣味/拌', '应季时蔬', 'star-e');
INSERT INTO `foodlist` VALUES ('117', 'src/components/foods/images/a2939308_144973773684050.jpg', '香蕉牛奶', '5步/<5分钟', '甜味/榨汁', '应季时蔬', 'star-e');
INSERT INTO `foodlist` VALUES ('118', 'src/components/foods/images/3e951ba9d1c0d132d9897f74fcb5b93c_150x150.jpg', '什锦捞拌', '5步/<5分钟', '酸辣味/拌', '应季时蔬', 'star-e');
INSERT INTO `foodlist` VALUES ('119', 'src/components/foods/images/a1047139_97133.jpg', '白肉双丝卷', '5步/<10分钟', '香辣味/煮', '应季时蔬', 'star-e');
INSERT INTO `foodlist` VALUES ('120', 'src/components/foods/images/a3375473_143521692903361.jpg', '蚝油生菜', '5步/<10分钟', '咸鲜味/炒', '应季时蔬', 'star-e');
INSERT INTO `foodlist` VALUES ('121', 'src/components/foods/images/dc2ac2ec0662c6f658d33a5ac7a6920d_150x150.jpg', '白灼虾', '5步/<5分钟', '咸鲜味/煮', '应季时蔬', 'star-e');
INSERT INTO `foodlist` VALUES ('122', 'src/components/foods/images/0674b191b78d2b5ef1d6a0a408d630e3_150x150.jpg', '白糖发糕', '3步/<10分钟', '甜味/蒸', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('123', 'src/components/foods/images/6daf06289de958e9ec8051b4741810d1_150x150.jpg', '棋子', '4步/<10分钟', '/炸', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('124', 'src/components/foods/images/a2654771_88848.jpg', '酸辣土豆片', '5步/<10分钟', '酸辣味/拌', '晚餐', 'star-d');
INSERT INTO `foodlist` VALUES ('125', 'src/components/foods/images/a3386737_146510956683703.jpg', '早餐烤肠#美的电烤箱#', '5步/<10分钟', '咸鲜味/烤', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('126', 'src/components/foods/images/0dde67a0ea43e1afd1d1233a4daa3db0_150x150.jpg', '开水鸡蛋汤', '3步/<5分钟', '咸鲜味/泡', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('127', 'src/components/foods/images/a2468684_145286222977972.jpg', '桂花蜜山药', '4步/<5分钟', '甜味/煮', '晚餐', 'star-d');
INSERT INTO `foodlist` VALUES ('128', 'src/components/foods/images/a3847941_147953357183984.jpg', '5分钟早餐之吐司煎蛋#苏泊尔第三季晋级赛#', '5步/<5分钟', '家常味/煎', '晚餐', 'star-d');
INSERT INTO `foodlist` VALUES ('129', 'src/components/foods/images/a2414773_148306088253393.jpg', '花生酱油麦菜', '5步/<10分钟', '香辣味/拌', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('130', 'src/components/foods/images/a1047139_82724.jpg', '红烧萝卜', '4步/<5分钟', '家常味/煮', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('131', 'src/components/foods/images/16bc23afa4e3477206e6584ed9a413c0_150x150.jpg', '绿豆饼', '3步/<10分钟', '甜味/炸', '晚餐', 'star-d');
INSERT INTO `foodlist` VALUES ('132', 'src/components/foods/images/5d0b95378c0c8e8282760b5290429aeb_150x150.jpg', '蛋黄豆腐', '5步/<10分钟', '咸鲜味/烧', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('133', 'src/components/foods/images/3d7df80e3fafbe62f1236abcd84c8811_150x150.jpg', '肉末茄子', '4步/<10分钟', '咸鲜味/炒', '晚餐', 'star-d');
INSERT INTO `foodlist` VALUES ('134', 'src/components/foods/images/a5120456_146831760582563.jpg', '豆渣饼', '4步/<10分钟', '咸鲜味/煎', '晚餐', 'star-d');
INSERT INTO `foodlist` VALUES ('135', 'src/components/foods/images/b0feb4dc1fc0406df0079fd12c14afae_150x150.jpg', '葱爆羊肉片', '5步/<5分钟', '葱香味/爆', '晚餐', 'star-d');
INSERT INTO `foodlist` VALUES ('136', 'src/components/foods/images/cc884d78dce789be9477ad0969d08f7c_150x150.jpg', '菜脯蛋', '3步/<5分钟', '咸鲜味/炒', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('137', 'src/components/foods/images/a3552450_146277902659218.jpg', '微波烤红薯片#美的微波炉#', '5步/<5分钟', '家常味/微波', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('138', 'src/components/foods/images/78c6000c7f8e4407a44d6eba325500e1_150x150.jpg', '蒸苹果', '4步/<10分钟', '果味/蒸', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('139', 'src/components/foods/images/c721a8945d1264083d2de4e55922690d_150x150.jpg', '巧克力草莓', '4步/<5分钟', '奶香味/其他', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('140', 'src/components/foods/images/82947a09e3580da641ba3c023c822bdb_150x150.jpg', '猕猴桃沙冰', '3步/<5分钟', '酸甜味/榨汁', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('141', 'src/components/foods/images/a5111156_145715909040441.jpg', '春竹', '5步/<5分钟', '咸鲜味/煎', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('142', 'src/components/foods/images/19375041dc175607d76278b281fa75d4_150x150.jpg', '老厨白菜', '2步/<10分钟', '家常味/炒', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('143', 'src/components/foods/images/b3e6b21f6a72950cf7b5154f04fd5f1c_150x150.jpg', '凉拌翠衣', '4步/<10分钟', '咸鲜味/拌', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('144', 'src/components/foods/images/a2654771_142554155441182.jpg', '辣酱烧茄子', '5步/<10分钟', '咸鲜味/炒', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('145', 'src/components/foods/images/a2268802_148325628711647.jpg', '肉末烧豆腐', '5步/<10分钟', '酱香味/烧', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('146', 'src/components/foods/images/a3809556_146750348684923.jpg', '十五分钟早餐', '4步/<10分钟', '酸甜味/烤', '晚餐', 'star-e');
INSERT INTO `foodlist` VALUES ('147', 'src/components/foods/images/a3552450_143140393237437.jpg', '蚝油素鲍', '5步/<10分钟', '咸鲜味/炒', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('148', 'src/components/foods/images/a8607139_147698726298547.jpg', '虾茸蒸豆腐', '5步/<10分钟', '家常味/蒸', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('149', 'src/components/foods/images/a2468684_144644941780397.jpg', '斋炒河粉', '5步/<10分钟', '家常味/炒', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('150', 'src/components/foods/images/a2912303_145171476983336.jpg', '煎香肠', '5步/<5分钟', '咸鲜味/煎', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('151', 'src/components/foods/images/9832eafcefa58b34f23c7cc574583396_150x150.jpg', '花朵寿司', '4步/<10分钟', '酸甜味/其他', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('152', 'src/components/foods/images/0dfc2fc8050c1489d035962c8f67b5c6_150x150.jpg', '丝袜奶茶', '3步/<10分钟', '奶香味/煮', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('153', 'src/components/foods/images/e1f020c5889e37d077b62d76e8411884_150x150.jpg', '家常小炒', '3步/<5分钟', '家常味/炒', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('154', 'src/components/foods/images/6e0bca0c431502545ae88450ee78cf4d_150x150.jpg', '素炒藕片', '5步/<10分钟', '咸鲜味/炒', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('155', 'src/components/foods/images/cfa129e34b6e05c7697dd8399e39ba59_150x150.jpg', '辣白菜炒五花肉', '4步/<10分钟', '酸辣味/炒', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('156', 'src/components/foods/images/e022b4ff972065bf5695ed9f529c9688_160x160_150x150.jpg', '白菜炒木耳', '5步/<5分钟', '家常味/炒', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('157', 'src/components/foods/images/a4283179_147127057787149.jpeg', '西红柿炒鸡蛋-不出汤的秘诀', '5步/<10分钟', '家常味/炒', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('158', 'src/components/foods/images/a4351131_147641329615204.jpg', '炸蘑菇', '4步/<10分钟', '家常味/炸', '夜宵', 'star-e');
INSERT INTO `foodlist` VALUES ('159', 'src/components/foods/images/edb80f5595c41afca32da770bf57ffe3_150x150.jpg', '日式味噌汤', '4步/<10分钟', '咸鲜味/煮', '夜宵', 'star-e');
INSERT INTO `foodlist` VALUES ('160', 'src/components/foods/images/a2654771_52401.jpg', '干煸杏鲍菇', '5步/<10分钟', '黑椒味/干煸', '夜宵', 'star-e');
INSERT INTO `foodlist` VALUES ('161', 'src/components/foods/images/a96063_148290600242759.jpg', '豆豉香菇小炒', '3步/<10分钟', '家常味/炒', '夜宵', 'star-e');
INSERT INTO `foodlist` VALUES ('162', 'src/components/foods/images/a4351131_148816949660280.jpg', '糖醋荷包蛋', '5步/<5分钟', '酸甜味/煎', '夜宵', 'star-e');
INSERT INTO `foodlist` VALUES ('163', 'src/components/foods/images/a8972445_148194346302858.jpg', '尖椒土豆丝', '4步/<10分钟', '家常味/炒', '夜宵', 'star-e');
INSERT INTO `foodlist` VALUES ('164', 'src/components/foods/images/a2414773_146775931532059.jpg', '纤体柠檬汁', '4步/<5分钟', '酸甜味/其他', '夜宵', 'star-e');
INSERT INTO `foodlist` VALUES ('165', 'src/components/foods/images/a4706280_144875376345833.jpg', '火锅蘸料', '4步/<5分钟', '麻酱味/拌', '夜宵', 'star-e');
INSERT INTO `foodlist` VALUES ('166', 'src/components/foods/images/a455681_95622.jpg', '生财福卷', '5步/<5分钟', '豆瓣味/其他', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('167', 'src/components/foods/images/a621773_145940110734772.jpg', '营养又美味的小炒鸡蛋', '5步/<5分钟', '咸鲜味/炒', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('168', 'src/components/foods/images/a4351131_148886028865219.jpg', '爽口黄瓜条', '5步/<5分钟', '香辣味/拌', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('169', 'src/components/foods/images/a2827639_148171781760965.jpg', '蒸茄子', '5步/<5分钟', '蒜香味/蒸', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('170', 'src/components/foods/images/a271944_145938876627234.jpg', '营养零食麻仁鸡柳', '5步/<5分钟', '家常味/炸', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('171', 'src/components/foods/images/a3319309_148422394156146.jpg', '香煎米饭饼', '5步/<5分钟', '咸鲜味/煎', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('172', 'src/components/foods/images/59c5d29322b242814bfae2c8001b4574_150x150.jpg', '韩风韩式拌饭', '3步/<5分钟', '香辣味/焖', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('173', 'src/components/foods/images/a3544412_147018932170398.jpg', '一秒钟洗净桃毛的小妙招', '5步/<5分钟', '甜味/其他', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('174', 'src/components/foods/images/a4046136_148110261427070.jpg', '肉末四季豆丝煲', '5步/<10分钟', '家常味/炖', '夜宵', 'star-d');
INSERT INTO `foodlist` VALUES ('175', 'src/components/foods/images/a4359676_146130285953887.jpg', '鸡蛋饼', '5步/<5分钟', '家常味/煎', '夜宵', 'star-e');
INSERT INTO `foodlist` VALUES ('176', 'src/components/foods/images/a113291_90664.jpg', '蒸米肠', '5步/<10分钟', '咸鲜味/蒸', '夜宵', 'star-e');
INSERT INTO `foodlist` VALUES ('177', 'src/components/foods/images/a2765589_144591251673894.jpg', '小炒山药黑木耳', '5步/<5分钟', '家常味/炒', '夜宵', 'star-e');
INSERT INTO `foodlist` VALUES ('178', 'src/components/foods/images/052f4e5fe470af67c664b69174be80e9_150x150.jpg', '酱爆肉末茄子', '4步/<10分钟', '酱香味/酱', '夜宵', 'star-e');
INSERT INTO `foodlist` VALUES ('179', 'src/components/foods/images/a4324832_144221502643590.jpg', '自制面包糠', '5步/<10分钟', '其他/烤', '午餐', 'star-c');
INSERT INTO `foodlist` VALUES ('180', 'src/components/foods/images/a494680_143678115892283.jpg', '香辣土豆丝', '5步/<5分钟', '香辣味/微波', '午餐', 'star-c');
INSERT INTO `foodlist` VALUES ('181', 'src/components/foods/images/9bb51de40cdd19ad873c5f2ef13ee785_150x150.jpg', '沾糖炸小芋头', '4步/<10分钟', '甜味/炸', '午餐', 'star-c');
INSERT INTO `foodlist` VALUES ('182', 'src/components/foods/images/d6cc17a0bc7aabeef9a3426ba798f506_150x150.jpg', '麻辣豆腐', '5步/<10分钟', '麻辣味/炒', '午餐', 'star-c');
INSERT INTO `foodlist` VALUES ('183', 'src/components/foods/images/a3100608_145933988478347.jpg', '乡土美食：鸡蛋蒜', '5步/<5分钟', '咸鲜味/拌', '午餐', 'star-c');
INSERT INTO `foodlist` VALUES ('184', 'src/components/foods/images/dd969995c5deb3dfd5fe3bef3260fcf5_150x150.jpg', '家常菜——清蒸鱼', '3步/<10分钟', '咸鲜味/蒸', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('185', 'src/components/foods/images/a5154142_147712099370520.jpg', '10分钟家常快手菜-五花肉煸豇豆', '4步/<10分钟', '家常味/炒', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('186', 'src/components/foods/images/a2654771_143349459453827.jpg', '营养豆浆', '3步/<10分钟', '其他/煮', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('187', 'src/components/foods/images/f5689d49bcd5fffc954b13e6435fa973_150x150.jpg', '麻辣手撕香菇根', '5步/<5分钟', '麻辣味/微波', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('188', 'src/components/foods/images/a2654771_99919.jpg', '清蒸鱼', '4步/<10分钟', '咸鲜味/蒸', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('189', 'src/components/foods/images/3b67f29b66706038a4ee4ce9b4134925_150x150.jpg', '拔丝山药', '2步/<10分钟', '甜味/拔丝', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('190', 'src/components/foods/images/a2939308_147712906590355.jpg', '杂蔬炒鸡蛋', '5步/<10分钟', '家常味/炒', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('191', 'src/components/foods/images/34d2f8b6074aa1b36ff304fb1e5fd381_150x150.jpg', '自制酸豆角', '3步/<10分钟', '酸味/腌', '午餐', 'star-c');
INSERT INTO `foodlist` VALUES ('192', 'src/components/foods/images/a2654771_24558.jpg', '红烧日本豆腐', '5步/<10分钟', '家常味/烧', '午餐', 'star-c');
INSERT INTO `foodlist` VALUES ('193', 'src/components/foods/images/a6501557_146832410048252.jpg', '芒果酸奶棒冰', '3步/<5分钟', '甜味/冻', '午餐', 'star-c');
INSERT INTO `foodlist` VALUES ('194', 'src/components/foods/images/a5291524_145839419634003.jpg', '椒盐蘑菇', '3步/<10分钟', '咸鲜味/炸', '午餐', 'star-c');
INSERT INTO `foodlist` VALUES ('195', 'src/components/foods/images/20c0ca09aa245b9269a588b7cc9d673a_150x150.jpg', '蚝油生菜', '4步/<5分钟', '咸鲜味/炒', '午餐', 'star-c');
INSERT INTO `foodlist` VALUES ('196', 'src/components/foods/images/654615a0234d43139f9dd62572310b2f_150x150.jpg', '茄子烧豆角', '4步/<10分钟', '家常味/烧', '午餐', 'star-c');
INSERT INTO `foodlist` VALUES ('197', 'src/components/foods/images/046bb016a97f3268571df5bbab5cae94_160x160_150x150.jpg', '干煸土豆丝', '5步/<5分钟', '家常味/炒', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('198', 'src/components/foods/images/2ac948f1bf248ed2e724bf00247c004f_160x160_150x150.jpg', '迷你南瓜饭', '5步/<5分钟', '其他/炒', '午餐', 'star-c');
INSERT INTO `foodlist` VALUES ('199', 'src/components/foods/images/a2789950_146373651323528.jpg', '爆炒辣椒萝卜干', '5步/<5分钟', '香辣味/炒', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('200', 'src/components/foods/images/a2654771_92793.jpg', '凉拌皮蛋', '4步/<5分钟', '咸鲜味/拌', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('201', 'src/components/foods/images/a4351131_145587177290293.jpg', '起司煎蛋', '3步/<5分钟', '奶香味/煎', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('202', 'src/components/foods/images/07e6784632cdf232edc857bfd1e8753c_150x150.jpg', '蒸水蛋', '5步/<10分钟', '家常味/蒸', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('203', 'src/components/foods/images/8719681d50c24ad5913fe753c76cf7b7_150x150.jpg', '干煸菜花', '3步/<10分钟', '咸鲜味/干煸', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('204', 'src/components/foods/images/f96f6afd16c08f92751d2478cd3abf60_150x150.jpg', '洋葱炒猪肝', '4步/<10分钟', '家常味/炒', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('205', 'src/components/foods/images/ec8cc2a319100cdd033e7583a5234e83_150x150.jpg', '地三鲜', '5步/<10分钟', '香辣味/炒', '午餐', 'star-e');
INSERT INTO `foodlist` VALUES ('206', 'src/components/foods/images/7d11058d15ac90161077935913801ead_150x150.jpg', '蓑衣黄瓜', '5步/<10分钟', '香辣味/拌', '午餐', 'star-e');
INSERT INTO `foodlist` VALUES ('207', 'src/components/foods/images/8f5724a1e505cbbd2940a7a434f443b3_150x150.jpg', '炒蚬子', '3步/<5分钟', '咸鲜味/炒', '午餐', 'star-e');
INSERT INTO `foodlist` VALUES ('208', 'src/components/foods/images/a2268802_148870551858439.jpg', '炸馒头片', '5步/<10分钟', '咸鲜味/炸', '午餐', 'star-e');
INSERT INTO `foodlist` VALUES ('209', 'src/components/foods/images/35f74de1173820c85a675fdad59e3093_160x160_150x150.jpg', '鱼香肉丝', '3步/<5分钟', '鱼香味/炒', '午餐', 'star-d');
INSERT INTO `foodlist` VALUES ('210', 'src/components/foods/images/a1421651_146598029006482.jpg', '#德国WOLL#爱心糊塌子', '5步/<10分钟', '咸鲜味/烙', '午餐', 'star-e');
