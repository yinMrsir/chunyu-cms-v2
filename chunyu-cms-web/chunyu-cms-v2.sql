/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : chunyu-cms-v2

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 27/04/2025 22:23:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actor
-- ----------------------------
DROP TABLE IF EXISTS `actor`;
CREATE TABLE `actor` (
  `actor_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT '',
  `name` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT '',
  `name_more` varchar(255) DEFAULT '',
  `name_en_more` varchar(255) DEFAULT '',
  `gender` varchar(10) DEFAULT '3',
  `birthday` date DEFAULT NULL,
  `death_day` date DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `born_place` varchar(255) NOT NULL DEFAULT '',
  `brief` text,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`actor_id`),
  UNIQUE KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of actor
-- ----------------------------
BEGIN;
INSERT INTO `actor` VALUES (1, 'https://cms.yinchunyu.com/uploads/2025-04-03/pDRmWJag7.jpeg', '申奥', '', '', '', '1', NULL, NULL, 1, '', NULL, '', '', '2025-04-03 03:25:01', '', '2025-04-03 05:56:50');
INSERT INTO `actor` VALUES (2, 'https://cms.yinchunyu.com/uploads/2025-04-03/BqDkpQUEo.jpeg', '王一博', 'Yibo Wang', '白牡丹,小王子', '', '1', '1997-08-05', NULL, 1, '', NULL, '', '', '2025-04-03 03:25:01', '', '2025-04-03 03:25:01');
INSERT INTO `actor` VALUES (3, 'https://cms.yinchunyu.com/uploads/2025-04-12/9vd7IAoGi.jpeg', '达里奥·格兰迪内蒂', 'Darío Grandinetti', '', '', '1', '1959-03-05', NULL, NULL, '', 'DaríoGrandinetti是阿根廷获得艾美奖的演员。他以其在电视，戏剧和电影中的众多角色而闻名，在那里他参演了由Alejandro Doria，Pedro Almodovar和DamiánSzifron等知名导演的电影。', '', '', '2025-04-11 15:17:53', '', '2025-04-12 02:11:56');
INSERT INTO `actor` VALUES (4, 'https://cms.yinchunyu.com/uploads/2025-04-12/5djVyKz83.jpeg', '井土纪州', '', '', '', '1', NULL, NULL, 9, '', '井土 紀州（いづち きしゅう、1968年4月25日 - ）は三重県出身の映画監督・脚本家。\n\n法政大学在学中に松阪高校時代からの仲間である吉岡文平と『第一アパート』を製作、東京学生映画祭において崔洋一に絶賛され、特別賞を受賞。8mmで撮影された『百年の絶唱』はレイトロードショー公開され、僅か8日間の上映にもかかわらず、およそ1,000人もの観客を動員した。その後、吉岡文平らと共に映画製作集団「スピリチュアル・ムービーズ」を立ち上げ、『百年の絶唱』、『レフト・アローン』などを監督。また、脚本家としても瀬々敬久監督作品などピンク映画において多数の脚本を書いている。', '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `actor` VALUES (5, 'https://cms.yinchunyu.com/uploads/2025-04-12/vrcxUsYus.jpeg', '大西信满', '', '', '', '1', NULL, NULL, 9, '日本神奈川县', NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `actor` VALUES (6, 'https://cms.yinchunyu.com/uploads/2025-04-12/a8IPvgEHK.jpeg', '赵又廷', 'Mark Chao', '', '', '1', '1984-09-25', NULL, 1, '中国,台湾,台北', '赵又廷，华语影视男演员，2007年毕业于加拿大维多利亚大学经济专业。2009年出演第一部电视剧作品《痞子英雄》获得第44届台湾金钟奖最佳男主角，并入围第16届上海电视节白玉兰奖最佳男演员奖。2010年主演个人首部大银幕作品《艋舺》获得第五届亚洲电影大奖最佳新演员奖。2012年主演陈凯歌执导电影《搜索》获得第十五届中国电影华表奖优秀境外华裔男演员奖。2017年出演《三生三世十里桃花》夜华一角获得极高关注度。', '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `actor` VALUES (7, 'https://cms.yinchunyu.com/uploads/2025-04-12/ofKFcmT2j.jpeg', '宋佳', 'Jia Song', '', '', '2', '1980-11-13', NULL, 1, '中国,黑龙江,哈尔滨', '宋佳，1980年11月13日出生于黑龙江省哈尔滨市南岗区，中国内地影视女演员、歌手，国家话剧院演员，毕业于上海戏剧学院表演系。\n\n2001年，因参演现代剧《其实不想走》而出道。2006年，因出演电影《好奇害死猫》开始崭露头角。2007年，主演电视剧《闯关东》。2010年4月，主演的都市情感剧《大女当嫁》播出。2012年，凭借电视剧《悬崖》获第18届上海电视节白玉兰奖最佳电视剧女演员奖及第九届中国金鹰电视艺术节最佳艺术表演女演员奖。2013年，凭借电影《萧红》获第29届中国电影金鸡奖最佳女主角、第9届中美电影节金天使奖最佳女演员、第1届温哥华华语电影节红枫叶奖最佳女主角。2015年，担任第21届上海电视节白玉兰奖电视剧单元评委。2016年9月7日，凭借电影《师父》获得第20届华鼎奖中国最佳女主角奖。2018年6月，担任第21届上海国际电影节“亚洲新人奖”国际影片评选委员会评委；11月，宋佳主演的电影《诗人》入围第31届东京国际电影节主竞赛单元；12月，当选中国电影家协会第十届理事会理事。2019年12月16日，获得粤港澳大湾区电影行业大会暨电影之夜年度女主角；12月19日，获MAHB时尚先生盛典“年度电影演员”年度电影演员。2020年5月25日，主演的电视剧《小舍得》开机。2024年9月10日，主演的电视剧《山花烂漫时》在中央电视台播出；11月22日，主演的电影《好东西》上映。', '', '', '2025-04-11 15:17:53', '', '2025-04-12 02:31:59');
INSERT INTO `actor` VALUES (8, 'https://cms.yinchunyu.com/uploads/2025-04-12/DAjUnXNUf.jpeg', '刘德华', 'Andy Lau', '刘福荣(幼时学名),华仔(昵称)', 'Lau Tak Wah,Wah Jai (昵称)', '1', '1961-09-27', NULL, 1, '中国香港,新界', '刘德华，著名演员和歌手。1990年代被封为香港“四大天王”之一，亦是大中华地区极具代表性的艺人之一。 刘德华是个多线发展的艺人：作为歌手，他是吉尼斯世界纪录大全中，获奖最多的香港歌手；电影方面他曾三度夺得香港电影金像奖最佳男主角、以及获得两座台湾金马奖影帝，截止2010年参与出演的电影已经超过140部。\n\n刘德华现在是映艺集团的老板，作为投资人参与制作了多部华语电影。\n\n1999年，刘德华获得“香港十大杰出青年”的荣誉，2000年11月则顺利荣登“世界十大杰出青年”，成为获此殊荣的少数几位香港艺人。2006年7月7日，由于他“是香港最受尊重和喜爱的演艺名人之一，对香港电影及音乐贡献良多。其严谨专业的工作态度，足以成为年轻人的典范”和“以表彰他在表演艺术方面的成就”的原因而被香港演艺学院授予荣誉院士称号，成为获此荣誉的少数几位香港演员之一。\n\n刘德华笃信佛教，法号慧果，热心公益，时常参与慈善活动。2008年，刘德华获香港特别行政区政府委任为太平绅士。2010年4月23日，刘德华获任中国残疾人福利基金会理事并担任副理事长。\n\n2010年5月2日，刘德华获颁第十二届世界杰出华人奖同时获颁授加拿大纽奔驰域蓝仕桥大学荣誉博士学位。', '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `actor` VALUES (9, 'https://cms.yinchunyu.com/uploads/2025-04-12/8Qt40GaCf.jpeg', '斯科特·德瑞克森', 'Scott Derrickson', '斯科特·德里克森', '', '1', '1966-07-16', NULL, 2, '美国,科罗拉多,丹佛', '奇异博士2016 导演/编剧。资深奇异博士漫画粉。nerd宅一枚，热爱音乐，奇异博士电影中的70年代音乐为他所选。黑框眼镜是其本体。', '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `actor` VALUES (10, 'https://cms.yinchunyu.com/uploads/2025-04-12/5v7aqeYXk.png', '成龙', 'Jackie Chan', '房仕龙(本名),陈港生(原名),元楼(前艺名)', 'Kong-sang Chan(本名),Pao Pao(昵称),Sing Lung(昵称) ,Y\'uen Lo(昵称)', '1', '1954-04-07', NULL, 1, '中国,香港,太平山', '成龙的父母亲最初在法国领事馆工作，父亲是厨师，也是京剧票友。成龙小时候很喜欢打架，跟那些反对各个外国小孩子打。因为他住在山顶领事馆区，几乎附近的尽是法国人，美国人，这种情况一直到他小学一年级，由于常打架，闹事，所以无法升级。成龙除了喜欢打架之外，还喜欢看武侠片。那时候飞过海 ，武侠片大行其道，曹达华，于素秋是当时最红的明星，成龙崇拜他们，一心想上山学艺。一天，他的父亲带着成龙来到尖沙咀的美丽都大厦，拜访京剧武生于占元师傅，他正是成龙崇拜警察故事的武侠女星于素秋的父亲，成龙看到这边的学生在旁勤奋的练功，觉得非常羡慕。便要求父亲让他在这练武。于是，成龙便成为这的一员，与洪金宝（元龙）﹑元奎 、元华 、成龙（元楼）、元彬 、元德 、元彪 为七小福。于占元师傅的教育方式基本上是老戏行规矩的严厉与苦练。管束孩子做事，练功的方式就打、罚。不到四天，成龙就后悔了。最初的那段日子，成龙常常在晚上暗自哭泣。父亲在把他送进学院之后，就飞去澳洲美大使馆了。\n\n　　1962年在《大小黄天霸》中首登银幕，后又参加《梁山伯与祝英台》、《秦香莲》等影片的拍摄。1971年满师后始任龙虎武师和特技演员。1972 年入大地电影公司。1973年改名陈元龙，出演《女警察》(1973)并任武术指导；同年还主演《广东小老虎》。后一度离港赴澳发展。\n\n　　1976年，罗维游说他重返影坛，并改名成龙，主演《新精武门》、《少林木人巷》、《剑花烟雨江南》、《拳精》、《蛇鹤八步》等，但未能引起注意。1978年思远公司邀他主演《蛇形刁手》和《醉拳》，与导演袁和平找对谐趣功夫戏路，一举成名，此后平步青云。1979年编导演《笑拳怪招》，成绩不俗。\n\n　　1980年转入嘉禾公司，编导演《师弟出马》。后曾往好莱坞拍摄《杀手壕》、《炮弹飞车》等，不大理想。折返香港后编导演《龙少爷》(1982)，再度掀起热潮。后陆续编导演《A计划》(1983)、《警察故事》(1985)、《龙兄虎弟》、《A计划续集》(1987)、《警察故事续集》(1988)、《奇迹》(1989)、《火烧岛》(1990)、《飞鹰计划》(1991)等，皆票房大热。他陆续主演的影片有师兄洪金宝导演的“福星”系列、《快餐车》(1984)、《龙的心》(1985)、《飞龙猛将》等，以及《警察故事III超级警察》、《双龙会》(1992)、《城市猎人》、《重案组》(1993)、《醉拳2》(1994)、《红番区》、《霹雳火》(1995)、《警察故事四之简单任务》(1996)、《一个好人》(1997)、《我是谁》(1998)等。\n\n　　1998年后曾往好莱坞拍摄了《尖峰时刻》两集、《上海正午》两集，终获好莱坞肯定，成为继李小龙之后扬名西方的华人功夫巨星。近年作品有《飞龙再生》(2003，陈嘉上)、《环游地球八十天》(2004)、《新警察故事》(2004)、《神话》(2005)等。《宝贝计划》(2006)。成龙执导的《警察故事》曾获第五届金像奖最佳影片奖，并以《红番区》、《我是谁》分别获第15、18届金像奖最佳动作指导奖；他个人并因主演《超级警察》、《重案组》两度荣获金马奖影帝，2005年获金像奖专业精神奖。2008年，成龙与李连杰携手，主演好莱坞影片《功夫之王》，影片口碑平平，但“双J合作”令无数影迷兴奋。2009年，成龙又与香港导演尔冬升合作《新宿事件》，影片充满血腥暴力与真实震撼，令人惊艳，于导演和主演成龙来说都是一大里程碑式的作品。接下来大哥还将主演好莱坞影片《邻家特工》，是他拿手的功夫喜剧片。\n\n　　由成龙带领的成家班战功彪炳，曾荣获第4、5、7、8、9、14、21届金像奖最佳动作指导奖，以及金马奖第31、32、34届金马奖最佳动作指导奖。', '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `actor` VALUES (11, 'https://cms.yinchunyu.com/uploads/2025-04-12/uspk7d6W7.png', '陈坤', '', '', '', '1', NULL, NULL, 1, '中国,重庆', NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `actor` VALUES (12, 'https://cms.yinchunyu.com/uploads/2025-04-12/sLApFO9ll.png', '黄渤', 'Bo Huang', '渤哥', '', '1', NULL, NULL, NULL, '', NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
COMMIT;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `banner_id` int NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_type` char(1) DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  `video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` VALUES (2, 'http://localhost:3000/uploads/2025-04-27/0vRpnmil9.jpeg', '灌篮高手', '/column/movie/video/48', '0', '', '', '2025-04-07 14:14:38', '', '2025-04-27 14:15:19', 'https://cms.yinchunyu.com/uploads/2025-04-03/vyDvWDGSc.mp4');
INSERT INTO `banner` VALUES (3, 'http://localhost:3000/uploads/2025-04-27/fFLDMaZ5n.jpeg', '测的负担', '/column/movie/video/47', '0', '', '', '2025-04-09 07:49:12', '', '2025-04-27 14:15:25', 'https://cms.yinchunyu.com/uploads/2025-04-03/93iXAgPes.mp4');
COMMIT;

-- ----------------------------
-- Table structure for cast
-- ----------------------------
DROP TABLE IF EXISTS `cast`;
CREATE TABLE `cast` (
  `cast_id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int NOT NULL,
  `actor_id` int NOT NULL,
  `profession_id` int NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cast
-- ----------------------------
BEGIN;
INSERT INTO `cast` VALUES (4, 17, 2, 2, '11', '', '', '2025-04-07 14:14:38', '', '2025-04-07 14:14:38');
INSERT INTO `cast` VALUES (5, 27, 2, 21, NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (6, 27, 1, 2, NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (7, 28, 3, 21, NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (8, 29, 4, 2, NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (9, 29, 5, 21, NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (10, 30, 7, 21, '王铁梅', '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (11, 30, 6, 21, '前夫', '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (12, 31, 8, 21, '范伟立', '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (13, 32, 9, 2, NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (14, 47, 11, 21, NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (15, 40, 10, 21, NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (16, 35, 10, 21, NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (17, 47, 12, 21, NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
INSERT INTO `cast` VALUES (18, 48, 2, 21, '王先生', '', '', '2025-04-22 06:14:48', '', '2025-04-23 02:05:54');
INSERT INTO `cast` VALUES (19, 48, 1, 2, NULL, '', '', '2025-04-22 06:14:48', '', '2025-04-22 06:14:48');
INSERT INTO `cast` VALUES (20, 48, 6, 21, NULL, '', '', '2025-04-22 06:14:48', '', '2025-04-22 06:14:48');
INSERT INTO `cast` VALUES (21, 48, 7, 24, NULL, '', '', '2025-04-22 06:14:48', '', '2025-04-22 06:14:48');
INSERT INTO `cast` VALUES (22, 48, 12, 21, NULL, '', '', '2025-04-22 06:14:48', '', '2025-04-22 06:14:48');
COMMIT;

-- ----------------------------
-- Table structure for columns
-- ----------------------------
DROP TABLE IF EXISTS `columns`;
CREATE TABLE `columns` (
  `column_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` char(1) DEFAULT '1',
  `value` varchar(255) DEFAULT NULL,
  `order` int DEFAULT '1',
  `status` char(1) DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of columns
-- ----------------------------
BEGIN;
INSERT INTO `columns` VALUES (1, '电影', '1', 'movie', 1, '0', 'https://cms.yinchunyu.com/uploads/2025-04-09/7wI91upL0.png');
INSERT INTO `columns` VALUES (2, '电视剧', '1', 'tv', 2, '0', 'https://cms.yinchunyu.com/uploads/2025-04-09/aJc1XDnS4.png');
INSERT INTO `columns` VALUES (3, '动漫', '1', 'cartoon', 3, '0', 'https://cms.yinchunyu.com/uploads/2025-04-09/fdc2Kt7E1.png');
INSERT INTO `columns` VALUES (4, '综艺', '1', 'variety', 4, '0', 'https://cms.yinchunyu.com/uploads/2025-04-09/XhFCfx1NG.png');
INSERT INTO `columns` VALUES (5, '源码下载', '2', 'https://github.com/yinMrsir/chunyu-cms-v2', 5, '0', 'https://cms.yinchunyu.com/uploads/2025-04-09/PYgWdFEAA.png');
COMMIT;

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT '',
  `type` char(1) DEFAULT '0',
  `full_name` varchar(255) DEFAULT '',
  `continent` varchar(255) DEFAULT '',
  `name_en` varchar(255) DEFAULT '',
  `full_name_en` varchar(255) DEFAULT '',
  `original_name` varchar(255) DEFAULT '',
  `original_full_name` varchar(255) DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `brief` text DEFAULT (_utf8mb4''),
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of country
-- ----------------------------
BEGIN;
INSERT INTO `country` VALUES (1, '中国', '', '0', '中华人民共和国', '亚洲', 'china', 'the People\'s Republic of China', '', NULL, NULL, 'https://cms.yinchunyu.com/uploads/2025-01-03/nGKCeZYRd.jpeg', '', '', '', '2025-01-03 06:51:20', '', '2025-02-13 08:49:16', NULL);
INSERT INTO `country` VALUES (2, '美国', 'USA', '0', '美利坚合众国', '北美洲', '', 'The United States of America', '', NULL, NULL, 'https://cms.yinchunyu.com/uploads/2025-01-03/bvBagglbR.jpeg', '', '', '', '2025-01-03 06:51:20', '', '2025-01-03 06:54:40', NULL);
INSERT INTO `country` VALUES (7, '英国', 'GBR', '0', '大不列颠及北爱尔兰联合王国', '欧洲', '', 'United Kingdom of Great Britain and Northern Ireland', '', NULL, NULL, 'https://cms.yinchunyu.com/uploads/2025-04-12/fg89tmVLy.jpeg', '', '', '', '2025-02-14 02:41:05', '', '2025-04-12 10:07:26', NULL);
INSERT INTO `country` VALUES (8, '韩国', '', '0', '大韩民国', '亚洲', '', 'Republic of Korea', '대한민국', NULL, NULL, 'https://cms.yinchunyu.com/uploads/2025-04-12/lHNXLxhX4.jpeg', '', '', '', '2025-02-14 02:41:05', '', '2025-04-12 10:07:33', NULL);
INSERT INTO `country` VALUES (9, '日本', '', '0', '日本国', '亚洲', 'Japan', 'Japan', 'にほんこく', NULL, NULL, 'https://cms.yinchunyu.com/uploads/2025-04-12/qbLaEEfQT.png', '', '', '', '2025-02-14 02:41:05', '', '2025-04-12 10:49:55', NULL);
COMMIT;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(50) DEFAULT '',
  `order_num` int DEFAULT '0',
  `leader` varchar(20) DEFAULT '',
  `phone` varchar(11) DEFAULT '',
  `email` varchar(50) DEFAULT '',
  `status` char(1) DEFAULT '0',
  `del_flag` char(1) DEFAULT '0',
  `parent_dept_id` int DEFAULT '0',
  `mpath` varchar(255) DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dept
-- ----------------------------
BEGIN;
INSERT INTO `dept` VALUES (1, '淳渔', 1, '', '', '', '0', '0', 0, '', '', 'admin', NULL, 'admin', NULL);
COMMIT;

-- ----------------------------
-- Table structure for dict_data
-- ----------------------------
DROP TABLE IF EXISTS `dict_data`;
CREATE TABLE `dict_data` (
  `dict_data_id` int NOT NULL AUTO_INCREMENT,
  `dict_sort` int DEFAULT '0',
  `dict_label` varchar(100) DEFAULT NULL,
  `dict_value` varchar(100) DEFAULT NULL,
  `css_class` varchar(100) DEFAULT NULL,
  `list_class` varchar(100) DEFAULT NULL,
  `is_default` char(1) DEFAULT 'N',
  `status` char(1) DEFAULT '0',
  `dict_type_id` int DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`dict_data_id`),
  KEY `dict_data_dict_type_id_dict_type_dict_id_fk` (`dict_type_id`),
  CONSTRAINT `dict_data_dict_type_id_dict_type_dict_id_fk` FOREIGN KEY (`dict_type_id`) REFERENCES `dict_type` (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dict_data
-- ----------------------------
BEGIN;
INSERT INTO `dict_data` VALUES (1, 1, '正常', '0', NULL, 'primary', 'N', '0', 1, '正常状态', '', '2022-01-06 17:22:29', '', '2022-01-06 17:22:29');
INSERT INTO `dict_data` VALUES (2, 2, '停用', '1', NULL, 'danger', 'N', '0', 1, '停用状态', '', '2022-01-06 17:22:47', '', '2022-01-06 17:22:47');
INSERT INTO `dict_data` VALUES (3, 1, '是', 'Y', NULL, 'primary', 'N', '0', 2, '系统默认是', '', '2022-01-06 17:23:11', '', '2022-01-06 17:23:11');
INSERT INTO `dict_data` VALUES (4, 2, '否', 'N', NULL, 'danger', 'N', '0', 2, '系统默认否', '', '2022-01-06 17:23:28', '', '2022-01-06 17:23:28');
INSERT INTO `dict_data` VALUES (5, 1, '通知', '1', NULL, 'warning', 'N', '0', 3, '通知', '', '2022-01-06 17:23:53', '', '2022-01-06 17:23:53');
INSERT INTO `dict_data` VALUES (6, 2, '公告', '2', NULL, 'success', 'N', '0', 3, '公告', '', '2022-01-06 17:24:48', '', '2022-01-06 17:24:48');
INSERT INTO `dict_data` VALUES (7, 1, '正常', '0', NULL, 'primary', 'N', '0', 4, '正常状态', '', '2022-01-06 17:25:17', '', '2022-01-06 17:25:17');
INSERT INTO `dict_data` VALUES (8, 2, '关闭', '1', NULL, 'danger', 'N', '0', 4, '关闭状态', '', '2022-01-06 17:25:32', '', '2022-01-06 17:25:32');
INSERT INTO `dict_data` VALUES (9, 1, '显示', '0', NULL, 'primary', 'N', '0', 5, '显示菜单', '', '2022-01-06 17:26:13', '', '2022-01-06 17:26:13');
INSERT INTO `dict_data` VALUES (10, 2, '隐藏', '1', NULL, 'danger', 'N', '0', 5, '隐藏菜单', '', '2022-01-06 17:26:29', '', '2022-01-06 17:26:29');
INSERT INTO `dict_data` VALUES (11, 1, '男', '0', NULL, 'default', 'N', '0', 6, '性别男', '', '2022-01-06 17:26:54', '', '2022-01-06 17:26:54');
INSERT INTO `dict_data` VALUES (12, 2, '女', '1', NULL, 'default', 'N', '0', 6, '', '', '2022-01-06 17:27:09', '', '2022-01-06 17:27:09');
INSERT INTO `dict_data` VALUES (13, 3, '未知', '2', NULL, 'default', 'N', '0', 6, '', '', '2022-01-06 17:27:27', '', '2022-01-06 17:27:27');
INSERT INTO `dict_data` VALUES (14, 1, '其他', '1', '', 'default', 'N', '0', 7, '其他操作', '', '2022-01-06 17:28:03', '', '2022-01-06 17:28:03');
INSERT INTO `dict_data` VALUES (15, 2, '插入', '2', NULL, 'primary', 'N', '0', 7, '插入操作', '', '2022-01-06 17:28:17', '', '2022-01-06 17:28:17');
INSERT INTO `dict_data` VALUES (16, 3, '更新', '3', NULL, 'success', 'N', '0', 7, '更新操作', '', '2022-01-06 17:28:32', '', '2022-01-06 17:28:32');
INSERT INTO `dict_data` VALUES (17, 4, '删除', '4', NULL, 'danger', 'N', '0', 7, '删除操作', '', '2022-01-06 17:28:47', '', '2022-01-06 17:28:47');
INSERT INTO `dict_data` VALUES (18, 5, '授权', '5', NULL, 'info', 'N', '0', 7, '授权操作', '', '2022-01-06 17:29:03', '', '2022-01-06 17:29:03');
INSERT INTO `dict_data` VALUES (19, 6, '导出', '6', NULL, 'primary', 'N', '0', 7, '导出操作', '', '2022-01-06 17:29:18', '', '2022-01-06 17:29:18');
INSERT INTO `dict_data` VALUES (20, 7, '导入', '7', NULL, 'success', 'N', '0', 7, '导入操作', '', '2022-01-06 17:29:32', '', '2022-01-06 17:29:32');
INSERT INTO `dict_data` VALUES (21, 8, '强退', '8', NULL, 'info', 'N', '0', 7, '强退操作', '', '2022-01-06 17:29:48', '', '2022-01-06 17:29:48');
INSERT INTO `dict_data` VALUES (22, 9, '清除', '9', NULL, 'danger', 'N', '0', 7, '清除操作', '', '2022-01-06 17:30:06', '', '2022-01-06 17:30:06');
INSERT INTO `dict_data` VALUES (23, 1, '成功', '0', NULL, 'primary', 'N', '0', 8, '正常状态', '', '2022-01-06 17:30:29', '', '2022-01-06 17:30:29');
INSERT INTO `dict_data` VALUES (24, 2, '失败', '1', NULL, 'danger', 'N', '0', 8, '停用状态', '', '2022-01-06 17:30:44', '', '2022-01-06 17:30:57');
INSERT INTO `dict_data` VALUES (25, 1, '正常', '0', NULL, 'primary', 'N', '0', 9, '正常状态', '', '2022-01-06 17:31:20', '', '2022-01-06 17:31:20');
INSERT INTO `dict_data` VALUES (26, 2, '暂停', '1', NULL, 'danger', 'N', '0', 9, '停用状态', '', '2022-01-06 17:31:34', '', '2022-01-06 17:31:34');
INSERT INTO `dict_data` VALUES (27, 1, '默认', 'DEFAULT', NULL, 'default', 'N', '0', 10, '默认分组', '', '2022-01-06 17:31:55', '', '2022-01-06 17:31:55');
INSERT INTO `dict_data` VALUES (28, 2, '系统', 'SYSTEM', NULL, 'default', 'N', '0', 10, '系统分组', '', '2022-01-06 17:32:12', '', '2022-01-06 17:32:12');
INSERT INTO `dict_data` VALUES (29, 1, '网站', '1', NULL, 'default', 'N', '0', 11, '', '', '2025-02-14 02:41:05', '', '2025-02-14 02:41:05');
INSERT INTO `dict_data` VALUES (30, 2, '外链', '2', NULL, 'default', 'N', '0', 11, '', '', '2025-02-14 02:41:05', '', '2025-02-14 02:41:05');
INSERT INTO `dict_data` VALUES (31, 1, '男', '1', NULL, 'primary', 'N', '0', 12, '', '', '2025-04-03 03:25:01', 'admin', '2025-04-03 03:45:18');
INSERT INTO `dict_data` VALUES (32, 2, '女', '2', NULL, 'danger', 'N', '0', 12, '', '', '2025-04-03 03:25:01', '', '2025-04-03 03:25:01');
INSERT INTO `dict_data` VALUES (33, 3, '未知', '3', NULL, 'info', 'N', '0', 12, '', '', '2025-04-03 03:25:01', '', '2025-04-03 03:25:01');
INSERT INTO `dict_data` VALUES (34, 1, '正片', '1', NULL, 'default', 'N', '0', 13, '', '', '2025-04-07 09:12:56', '', '2025-04-07 09:12:56');
INSERT INTO `dict_data` VALUES (35, 2, '预告片', '2', NULL, 'default', 'N', '0', 13, '', '', '2025-04-07 09:12:56', 'admin', '2025-04-07 09:15:00');
INSERT INTO `dict_data` VALUES (36, 3, '花絮', '3', NULL, 'default', 'N', '0', 13, '', '', '2025-04-07 09:12:56', 'admin', '2025-04-07 09:14:56');
INSERT INTO `dict_data` VALUES (37, 4, '片段', '4', NULL, 'default', 'N', '0', 13, '', '', '2025-04-07 09:12:56', '', '2025-04-07 09:12:56');
INSERT INTO `dict_data` VALUES (38, 5, '其他', '5', NULL, 'default', 'N', '0', 13, '', '', '2025-04-07 09:12:56', '', '2025-04-07 09:12:56');
INSERT INTO `dict_data` VALUES (39, 1, '海报', '1', NULL, 'default', 'N', '0', 14, '', '', '2025-04-07 09:20:01', 'admin', '2025-04-07 11:07:33');
INSERT INTO `dict_data` VALUES (40, 2, '剧照', '2', NULL, 'default', 'N', '0', 14, '', '', '2025-04-07 09:20:01', '', '2025-04-07 09:20:01');
INSERT INTO `dict_data` VALUES (41, 3, '壁纸', '3', NULL, 'default', 'N', '0', 14, '', '', '2025-04-07 09:20:01', '', '2025-04-07 09:20:01');
INSERT INTO `dict_data` VALUES (42, 1, '未审核', '1', NULL, 'warning', 'N', '0', 15, '', '', '2025-04-07 09:20:01', 'admin', '2025-04-07 11:08:38');
INSERT INTO `dict_data` VALUES (43, 2, '已通过', '2', NULL, 'success', 'N', '0', 15, '', '', '2025-04-07 09:20:01', 'admin', '2025-04-07 11:08:33');
INSERT INTO `dict_data` VALUES (44, 3, '未通过', '3', NULL, 'danger', 'N', '0', 15, '', '', '2025-04-07 09:20:01', '', '2025-04-07 09:20:01');
COMMIT;

-- ----------------------------
-- Table structure for dict_type
-- ----------------------------
DROP TABLE IF EXISTS `dict_type`;
CREATE TABLE `dict_type` (
  `dict_id` int NOT NULL AUTO_INCREMENT,
  `dict_name` varchar(100) DEFAULT '',
  `dict_type` varchar(100) NOT NULL DEFAULT '',
  `status` char(1) DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type_dict_type_unique` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dict_type
-- ----------------------------
BEGIN;
INSERT INTO `dict_type` VALUES (1, '系统开关', 'sys_normal_disable', '0', '系统开关列表', '', '2022-01-06 17:19:33', '', '2022-01-06 17:19:33');
INSERT INTO `dict_type` VALUES (2, '系统是否', 'sys_yes_no', '0', '系统是否列表', '', '2022-01-06 17:19:56', '', '2022-01-06 17:19:56');
INSERT INTO `dict_type` VALUES (3, '通知类型', 'sys_notice_type', '0', '通知类型列表', '', '2022-01-06 17:20:09', '', '2022-01-06 17:20:09');
INSERT INTO `dict_type` VALUES (4, '通知状态', 'sys_notice_status', '0', '通知状态列表', '', '2022-01-06 17:20:20', '', '2022-01-06 17:20:20');
INSERT INTO `dict_type` VALUES (5, '菜单状态', 'sys_show_hide', '0', '菜单状态列表', '', '2022-01-06 17:20:43', '', '2022-01-06 17:20:43');
INSERT INTO `dict_type` VALUES (6, '用户性别', 'sys_user_sex', '0', '用户性别列表', '', '2022-01-06 17:20:58', '', '2022-01-06 17:20:58');
INSERT INTO `dict_type` VALUES (7, '操作类型', 'sys_oper_type', '0', '操作类型列表', '', '2022-01-06 17:21:17', '', '2022-01-06 17:21:17');
INSERT INTO `dict_type` VALUES (8, '系统状态', 'sys_common_status', '0', '登录状态列表', '', '2022-01-06 17:21:34', '', '2022-01-06 17:21:34');
INSERT INTO `dict_type` VALUES (9, '任务状态', 'sys_job_status', '0', '任务状态列表', '', '2022-01-06 17:21:50', 'admin', '2022-12-13 15:12:17');
INSERT INTO `dict_type` VALUES (10, '任务分组', 'sys_job_group', '0', '任务分组列表', '', '2022-01-06 17:22:00', '', '2022-01-06 17:22:00');
INSERT INTO `dict_type` VALUES (11, '栏目类型', 'column_type', '0', '', '', '2025-02-14 02:41:05', '', '2025-02-14 02:41:05');
INSERT INTO `dict_type` VALUES (12, '性别类型', 'sex_type', '0', '', '', '2025-04-03 03:25:01', '', '2025-04-03 03:25:01');
INSERT INTO `dict_type` VALUES (13, '影视分类', 'videos_type', '0', '', '', '2025-04-07 09:12:56', '', '2025-04-07 09:12:56');
INSERT INTO `dict_type` VALUES (14, '图片类型', 'movie_img_type', '0', '', '', '2025-04-07 09:20:01', '', '2025-04-07 09:20:01');
INSERT INTO `dict_type` VALUES (15, '图片状态', 'movie_img_status', '0', '', '', '2025-04-07 09:20:01', '', '2025-04-07 09:20:01');
COMMIT;

-- ----------------------------
-- Table structure for file_config
-- ----------------------------
DROP TABLE IF EXISTS `file_config`;
CREATE TABLE `file_config` (
  `file_config_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `bucket` varchar(255) NOT NULL,
  `access_key_id` varchar(255) NOT NULL,
  `access_key_secret` varchar(255) NOT NULL,
  `cname` char(1) NOT NULL DEFAULT '0',
  `endpoint` varchar(255) DEFAULT NULL,
  `timeout` int NOT NULL DEFAULT '300000',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`file_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of file_config
-- ----------------------------
BEGIN;
INSERT INTO `file_config` VALUES (1, '阿里云存储', 'aliyun', 'oss-cn-shenzhen', 'yinchunyu', 'LTAI5tNuCPhW1Qu9B8Aj6yH1', 'x', '0', 'oss.yinchunyu.com', 300000, '', '', '2025-04-18 07:07:15', 'admin', '2025-04-22 09:15:44');
COMMIT;

-- ----------------------------
-- Table structure for genre
-- ----------------------------
DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `column_value` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `name_en` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of genre
-- ----------------------------
BEGIN;
INSERT INTO `genre` VALUES (3, 'movie', '喜剧片', NULL, '0', '', '', '2025-02-14 02:41:05', '', '2025-02-14 02:41:05');
INSERT INTO `genre` VALUES (6, 'movie', '动作片', NULL, '0', '', '', '2025-02-14 02:41:05', '', '2025-02-14 02:41:05');
INSERT INTO `genre` VALUES (7, 'movie', '爱情片', NULL, '0', '', 'admin', '2023-02-20 17:57:07', 'admin', '2023-03-10 05:36:23');
INSERT INTO `genre` VALUES (8, 'movie', '科幻片', NULL, '0', '', 'admin', '2023-02-20 17:57:25', 'admin', '2023-03-10 05:36:26');
INSERT INTO `genre` VALUES (9, 'movie', '恐怖片', NULL, '0', '', 'admin', '2023-02-20 17:57:32', 'admin', '2023-03-10 05:36:29');
INSERT INTO `genre` VALUES (10, 'movie', '剧情片', NULL, '0', '', 'admin', '2023-02-20 17:57:47', 'admin', '2023-03-10 05:36:33');
INSERT INTO `genre` VALUES (11, 'movie', '犯罪片', NULL, '0', '', 'admin', '2023-02-20 17:57:58', 'admin', '2023-03-10 05:36:37');
INSERT INTO `genre` VALUES (12, 'movie', '战争片', NULL, '0', '', 'admin', '2023-02-20 17:58:11', 'admin', '2023-03-10 05:36:45');
INSERT INTO `genre` VALUES (13, 'movie', '伦理片', NULL, '0', '', 'admin', '2023-02-20 17:58:19', 'admin', '2023-03-10 05:36:41');
INSERT INTO `genre` VALUES (14, 'tv', '国产剧', NULL, '0', '', 'admin', '2023-02-20 18:00:51', 'admin', '2023-03-10 06:03:19');
INSERT INTO `genre` VALUES (15, 'tv', '港剧', NULL, '0', '', 'admin', '2023-02-20 18:01:01', 'admin', '2023-03-10 06:03:23');
INSERT INTO `genre` VALUES (16, 'tv', '台湾剧', NULL, '0', '', 'admin', '2023-02-20 18:01:16', 'admin', '2023-03-10 06:03:27');
INSERT INTO `genre` VALUES (17, 'tv', '韩剧', NULL, '0', '', 'admin', '2023-02-20 18:22:54', 'admin', '2023-03-10 06:03:30');
INSERT INTO `genre` VALUES (18, 'tv', '日剧', NULL, '0', '', 'admin', '2023-02-20 18:23:02', 'admin', '2023-03-10 06:03:33');
INSERT INTO `genre` VALUES (19, 'tv', '泰剧', NULL, '0', '', 'admin', '2023-02-20 18:23:12', 'admin', '2023-03-10 06:03:37');
INSERT INTO `genre` VALUES (20, 'tv', '欧美剧', NULL, '0', '', 'admin', '2023-02-20 18:23:25', 'admin', '2023-03-10 07:19:05');
INSERT INTO `genre` VALUES (21, 'tv', '海外剧', NULL, '0', '', 'admin', '2023-02-20 18:23:32', 'admin', '2023-03-10 07:19:01');
INSERT INTO `genre` VALUES (22, 'cartoon', '国产动漫', NULL, '0', '', 'admin', '2023-02-27 17:10:47', 'admin', '2023-03-10 06:03:44');
INSERT INTO `genre` VALUES (23, 'cartoon', '日本动漫', NULL, '0', '', 'admin', '2023-02-27 17:10:55', 'admin', '2023-03-10 06:03:51');
INSERT INTO `genre` VALUES (24, 'cartoon', '欧美动漫', NULL, '0', '', 'admin', '2023-02-27 17:11:03', 'admin', '2023-03-10 06:03:54');
INSERT INTO `genre` VALUES (25, 'cartoon', '海外动漫', NULL, '0', '', 'admin', '2023-02-27 17:11:54', 'admin', '2023-03-10 06:03:58');
INSERT INTO `genre` VALUES (26, 'variety', '大陆综艺', NULL, '0', '', 'admin', '2023-03-02 14:48:32', 'admin', '2023-03-10 06:04:01');
INSERT INTO `genre` VALUES (27, 'variety', '日韩综艺', NULL, '0', '', 'admin', '2023-03-02 14:48:45', 'admin', '2023-03-10 06:04:03');
INSERT INTO `genre` VALUES (28, 'variety', '港台综艺', NULL, '0', '', 'admin', '2023-03-02 14:49:02', 'admin', '2023-03-10 06:04:06');
INSERT INTO `genre` VALUES (29, 'variety', '欧美综艺', NULL, '0', '', 'admin', '2023-03-02 14:49:14', 'admin', '2023-03-10 06:04:09');
COMMIT;

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `job_name` varchar(64) NOT NULL,
  `job_group` varchar(64) DEFAULT 'DEFAULT',
  `invoke_target` varchar(225) NOT NULL,
  `cron_expression` varchar(225) NOT NULL,
  `misfire_policy` varchar(20) DEFAULT '3',
  `concurrent` varchar(1) DEFAULT '1',
  `status` varchar(1) DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of job
-- ----------------------------
BEGIN;
INSERT INTO `job` VALUES (1, 'test', 'DEFAULT', 'test1(\'helloworld\')', '0 * * * * ?', '2', '1', '1', '', '', '2024-12-22 03:13:18', '', '2024-12-22 03:30:17');
INSERT INTO `job` VALUES (2, 'test111', 'DEFAULT', 'test()', '0,1,2 * * * * ?', '1', '1', '1', '', '', '2024-12-22 03:25:42', '', '2024-12-22 03:41:45');
COMMIT;

-- ----------------------------
-- Table structure for job_log
-- ----------------------------
DROP TABLE IF EXISTS `job_log`;
CREATE TABLE `job_log` (
  `job_log_id` int NOT NULL AUTO_INCREMENT,
  `job_name` varchar(64) DEFAULT NULL,
  `job_group` varchar(64) DEFAULT NULL,
  `invoke_target` varchar(500) DEFAULT NULL,
  `job_message` varchar(500) DEFAULT '',
  `status` varchar(1) DEFAULT '0',
  `exception_info` varchar(2000) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8579 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `name_en` varchar(50) DEFAULT NULL,
  `full_name_en` varchar(50) DEFAULT NULL,
  `original_name` varchar(50) DEFAULT NULL,
  `original_full_name` varchar(50) DEFAULT NULL,
  `brief` varchar(500) DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of language
-- ----------------------------
BEGIN;
INSERT INTO `language` VALUES (1, '汉语普通话', NULL, 1, NULL, NULL, NULL, NULL, NULL, '', '', '2025-01-03 07:32:38', '', '2025-04-12 02:44:55');
INSERT INTO `language` VALUES (3, '粤语', NULL, 1, NULL, NULL, NULL, NULL, NULL, '', '', '2025-01-03 07:32:38', '', '2025-02-13 08:50:33');
INSERT INTO `language` VALUES (5, '英语', NULL, 7, NULL, NULL, NULL, NULL, NULL, '', '', '2025-02-14 02:41:05', '', '2025-02-14 02:41:05');
INSERT INTO `language` VALUES (6, '韩语', NULL, 8, NULL, NULL, NULL, NULL, NULL, '', '', '2025-02-14 02:41:05', '', '2025-02-14 02:41:05');
INSERT INTO `language` VALUES (7, '日语', NULL, 9, NULL, NULL, NULL, NULL, NULL, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
COMMIT;

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `level_id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `level` varchar(10) NOT NULL,
  `level_zh` varchar(10) DEFAULT NULL,
  `status` char(1) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of level
-- ----------------------------
BEGIN;
INSERT INTO `level` VALUES (7, 2, 'G', '大众级', '0', '本片在${country}的评级为【${level}】，任何人都可以观看。', '', 'admin', '2022-12-23 16:15:46', 'admin', '2023-03-02 14:39:17');
INSERT INTO `level` VALUES (8, 2, 'PG', '辅导级', '0', '本片在${country}的评级为【${level}】，该级别电影中的一些内容可能不适合儿童观看。', '', 'admin', '2023-03-02 14:39:48', 'admin', '2023-03-02 14:39:48');
INSERT INTO `level` VALUES (9, 2, 'PG-13', '特别辅导级', '0', '本片在${country}的评级为【${level}】，建议13岁后儿童观看。', '', 'admin', '2023-03-02 14:40:14', 'admin', '2023-03-02 14:40:14');
INSERT INTO `level` VALUES (10, 2, 'NC-17', NULL, '0', '本片在${country}的评级为【${level}】，17岁以下（包括17岁）禁止观看。', '', 'admin', '2023-03-02 14:40:34', 'admin', '2023-03-02 14:40:34');
INSERT INTO `level` VALUES (11, 2, 'R', '限制级', '0', '本片在${country}的评级为【${level}】，建议17岁以上观看。', '', 'admin', '2023-03-02 14:41:01', 'admin', '2023-03-02 14:41:01');
INSERT INTO `level` VALUES (12, 9, 'G', NULL, '0', '本片在${country}的评级为【${level}】，没有任何限制。', '', 'admin', '2023-03-02 14:41:44', 'admin', '2023-03-02 14:41:44');
INSERT INTO `level` VALUES (13, 9, 'PG-12', NULL, '0', '本片在${country}的评级为【${level}】，12岁以下的人要有家长陪同才可观看。', '', 'admin', '2023-03-02 14:42:04', 'admin', '2023-03-02 14:42:04');
INSERT INTO `level` VALUES (14, 9, 'R-15', NULL, '0', '本片在${country}的评级为【${level}】，15岁以下禁止入场。', '', 'admin', '2023-03-02 14:42:22', 'admin', '2023-03-02 14:42:22');
INSERT INTO `level` VALUES (15, 9, 'R-18', NULL, '0', '本片在${country}的评级为【${level}】，18岁以下禁止入场。', '', 'admin', '2023-03-02 14:42:43', 'admin', '2023-03-02 14:42:43');
INSERT INTO `level` VALUES (16, 1, 'I', NULL, '0', '本片在${country}的评级为【${level}】，适合任何年龄人士观看。', '', 'admin', '2023-03-02 14:44:23', 'admin', '2025-04-03 03:52:31');
INSERT INTO `level` VALUES (17, 1, 'Ⅱ', NULL, '0', '本片在${country}的评级为【${level}】，儿童不宜观看。', '', 'admin', '2023-03-02 14:44:46', 'admin', '2025-04-03 03:52:37');
INSERT INTO `level` VALUES (18, 1, 'Ⅲ', NULL, '0', '本片在${country}的评级为【${level}】，只准18岁或以上人士观看。', '', 'admin', '2023-03-02 14:45:21', 'admin', '2025-04-03 03:52:40');
INSERT INTO `level` VALUES (19, 1, 'ⅡA', NULL, '0', '本片在${country}的评级为【${level}】，儿童不宜。', '', 'admin', '2023-03-02 14:45:41', 'admin', '2025-04-03 03:52:44');
INSERT INTO `level` VALUES (20, 1, 'ⅡB', NULL, '0', '本片在${country}的评级为【${level}】，青少年及儿童不宜。', '', 'admin', '2023-03-02 14:45:57', 'admin', '2025-04-03 03:52:52');
COMMIT;

-- ----------------------------
-- Table structure for login_info
-- ----------------------------
DROP TABLE IF EXISTS `login_info`;
CREATE TABLE `login_info` (
  `info_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL DEFAULT '',
  `ipaddr` varchar(128) NOT NULL DEFAULT '',
  `login_location` varchar(255) NOT NULL DEFAULT '',
  `browser` varchar(50) NOT NULL DEFAULT '',
  `os` varchar(50) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT '0',
  `msg` text NOT NULL DEFAULT (_utf8mb4''),
  `login_time` datetime NOT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of login_info
-- ----------------------------
BEGIN;
INSERT INTO `login_info` VALUES (53, 'admin', '104.168.83.13', '未知', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-04-11 09:19:47');
INSERT INTO `login_info` VALUES (54, 'admin', '119.39.23.70', '未知', 'Chrome134', 'macOS10.15.7', '0', '登录成功', '2025-04-11 09:21:14');
INSERT INTO `login_info` VALUES (55, 'admin', '119.39.23.70', '湖南省 长沙市', 'Chrome134', 'macOS10.15.7', '0', '登录成功', '2025-04-11 09:31:05');
INSERT INTO `login_info` VALUES (56, 'admin', '120.227.33.125', '湖南省 长沙市', 'Chrome134', 'macOS10.15.7', '0', '登录成功', '2025-04-11 12:12:44');
INSERT INTO `login_info` VALUES (57, 'admin', '120.36.110.183', '福建省 福州市', 'Chrome128', 'Windows10', '0', '登录成功', '2025-04-11 14:05:22');
INSERT INTO `login_info` VALUES (58, 'admin', '120.227.33.125', '湖南省 长沙市', 'Chrome134', 'macOS10.15.7', '0', '登录成功', '2025-04-11 14:12:40');
INSERT INTO `login_info` VALUES (59, 'admin', '40.160.230.146', ' ', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-11 14:26:11');
INSERT INTO `login_info` VALUES (60, 'admin', '183.192.61.170', '上海市 上海市', 'Quark7', 'Android15', '0', '登录成功', '2025-04-11 14:34:24');
INSERT INTO `login_info` VALUES (61, 'laoying', '120.227.33.125', '湖南省 长沙市', 'Chrome134', 'macOS10.15.7', '0', '登录成功', '2025-04-11 15:35:48');
INSERT INTO `login_info` VALUES (62, 'admin', '120.227.33.125', '湖南省 长沙市', 'Chrome134', 'macOS10.15.7', '0', '登录成功', '2025-04-11 15:36:08');
INSERT INTO `login_info` VALUES (63, 'laoying', '120.227.33.125', '湖南省 长沙市', 'Chrome134', 'macOS10.15.7', '1', '验证码错误', '2025-04-11 15:38:01');
INSERT INTO `login_info` VALUES (64, 'laoying', '120.227.33.125', '湖南省 长沙市', 'Chrome134', 'macOS10.15.7', '0', '登录成功', '2025-04-11 15:38:04');
INSERT INTO `login_info` VALUES (65, 'admin', '120.227.33.125', '湖南省 长沙市', 'Chrome134', 'macOS10.15.7', '0', '登录成功', '2025-04-11 15:44:47');
INSERT INTO `login_info` VALUES (66, 'laoying', '120.227.33.125', '湖南省 长沙市', 'Chrome134', 'macOS10.15.7', '0', '登录成功', '2025-04-11 15:45:10');
INSERT INTO `login_info` VALUES (67, 'admin', '183.218.163.107', '江西省 南昌市', 'Chrome129', 'Windows10', '1', '验证码错误', '2025-04-11 16:37:11');
INSERT INTO `login_info` VALUES (68, 'admin', '183.218.163.107', '江西省 南昌市', 'Chrome129', 'Windows10', '1', '验证码错误', '2025-04-11 16:37:13');
INSERT INTO `login_info` VALUES (69, 'admin', '183.218.163.107', '江西省 南昌市', 'Chrome129', 'Windows10', '0', '登录成功', '2025-04-11 16:37:16');
INSERT INTO `login_info` VALUES (70, 'admin', '103.251.98.212', '广西 南宁市', 'Mobile Safari16', 'iOS16.7.10', '0', '登录成功', '2025-04-11 17:18:06');
INSERT INTO `login_info` VALUES (71, 'laoying', '120.227.33.125', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-12 02:02:33');
INSERT INTO `login_info` VALUES (72, 'admin', '103.251.98.212', '广西 南宁市', 'QQBrowser13', 'Windows10', '0', '登录成功', '2025-04-12 03:14:19');
INSERT INTO `login_info` VALUES (73, 'admin', '103.251.98.212', '广西 南宁市', 'QQBrowser13', 'Windows10', '0', '登录成功', '2025-04-12 05:44:18');
INSERT INTO `login_info` VALUES (74, 'admin', '183.228.72.133', '重庆市 重庆市', 'Chrome120', 'Windows10', '0', '登录成功', '2025-04-12 09:20:25');
INSERT INTO `login_info` VALUES (75, 'admin', '104.243.21.220', ' ', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-12 13:49:56');
INSERT INTO `login_info` VALUES (76, 'admin', '117.139.195.71', '四川省 成都市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-12 14:47:06');
INSERT INTO `login_info` VALUES (77, 'admin', '127.0.0.1', '内网IP', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-16 02:38:10');
INSERT INTO `login_info` VALUES (78, 'admin', '127.0.0.1', '内网IP', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-17 02:54:26');
INSERT INTO `login_info` VALUES (79, 'admin', '127.0.0.1', '内网IP', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-18 02:16:57');
INSERT INTO `login_info` VALUES (80, 'admin', '127.0.0.1', '内网IP', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-19 11:55:14');
INSERT INTO `login_info` VALUES (81, 'admin', '127.0.0.1', '内网IP', 'Chrome135', 'macOS10.15.7', '1', '验证码错误', '2025-04-21 06:23:34');
INSERT INTO `login_info` VALUES (82, 'admin', '127.0.0.1', '内网IP', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-21 06:23:39');
INSERT INTO `login_info` VALUES (83, 'admin', '127.0.0.1', '内网IP', 'Chrome135', 'macOS10.15.7', '1', '验证码错误', '2025-04-21 08:11:34');
INSERT INTO `login_info` VALUES (84, 'admin', '127.0.0.1', '内网IP', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-21 08:11:37');
INSERT INTO `login_info` VALUES (85, 'admin', '127.0.0.1', '内网IP', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-22 03:20:07');
INSERT INTO `login_info` VALUES (86, 'admin', '127.0.0.1', '内网IP', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-24 01:42:21');
INSERT INTO `login_info` VALUES (87, 'admin', '127.0.0.1', '内网IP', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-27 14:15:02');
COMMIT;

-- ----------------------------
-- Table structure for member_user
-- ----------------------------
DROP TABLE IF EXISTS `member_user`;
CREATE TABLE `member_user` (
  `member_user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT '',
  `nickname` varchar(255) NOT NULL,
  `phonenumber` varchar(11) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL,
  `salt` varchar(100) DEFAULT '',
  `del_flag` char(1) NOT NULL DEFAULT '0',
  `login_ip` varchar(128) DEFAULT '',
  `login_date` date DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`member_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_user
-- ----------------------------
BEGIN;
INSERT INTO `member_user` VALUES (2, '542968439@qq.com', '123123', 'MIRSrZ', NULL, 'http://localhost:3000/images/toux.png', '', '0', '', NULL, '', '', '2025-04-27 09:28:03', '', '2025-04-27 09:28:03');
COMMIT;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `order_num` int NOT NULL,
  `path` varchar(200) NOT NULL DEFAULT '',
  `component` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `is_frame` int NOT NULL DEFAULT '1',
  `is_cache` char(1) NOT NULL DEFAULT '0',
  `menu_type` char(1) NOT NULL DEFAULT '',
  `visible` char(1) NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT '0',
  `perms` varchar(100) DEFAULT NULL,
  `icon` char(100) NOT NULL DEFAULT '#',
  `parent_menu_id` int DEFAULT '0',
  `mpath` varchar(255) DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
BEGIN;
INSERT INTO `menu` VALUES (1, '系统管理', 8, 'system', NULL, NULL, 1, '0', 'M', '0', '0', NULL, 'system', NULL, '1.', '', '', '2021-12-22 10:43:24', 'admin', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (2, '系统监控', 9, 'monitor', NULL, NULL, 1, '0', 'M', '0', '0', NULL, 'monitor', 0, '', '', '', '2021-12-22 10:43:24', 'admin', '2024-12-14 08:48:41');
INSERT INTO `menu` VALUES (3, '系统工具', 10, 'tool', NULL, NULL, 1, '0', 'M', '1', '1', NULL, 'tool', 0, '', '', '', '2021-12-22 10:43:24', 'test', '2024-12-14 14:18:09');
INSERT INTO `menu` VALUES (4, '用户管理', 1, 'user', 'system/user/index', NULL, 1, '0', 'C', '0', '0', 'system:user:list', 'user', 1, '1.4.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (5, '角色管理', 2, 'role', 'system/role/index', NULL, 1, '0', 'C', '0', '0', 'system:role:list', 'peoples', 1, '1.5.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (6, '菜单管理', 3, 'menu', 'system/menu/index', NULL, 1, '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 1, '1.6.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (7, '部门管理', 4, 'dept', 'system/dept/index', NULL, 1, '0', 'C', '0', '0', 'system:dept:list', 'tree', 1, '1.7.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (8, '岗位管理', 5, 'post', 'system/post/index', NULL, 1, '0', 'C', '0', '0', 'system:post:list', 'post', 1, '1.8.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (9, '字典管理', 6, 'dict', 'system/dict/index', NULL, 1, '0', 'C', '0', '0', 'system:dict:list', 'dict', 1, '1.9.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (10, '参数设置', 7, 'config', 'system/config/index', NULL, 1, '0', 'C', '0', '0', 'system:config:list', 'edit', 1, '1.10.', '', '', '2021-12-22 10:43:24', 'admin', '2025-01-02 01:50:19');
INSERT INTO `menu` VALUES (11, '通知公告', 8, 'notice', 'system/notice/index', NULL, 1, '0', 'C', '1', '1', 'system:notice:list', 'message', 1, '1.11.', '', '', '2021-12-22 10:43:24', 'admin', '2024-12-14 07:05:06');
INSERT INTO `menu` VALUES (12, '日志管理', 9, 'log', NULL, NULL, 1, '0', 'M', '0', '0', NULL, 'log', 1, '1.12.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (13, '操作日志', 1, 'operlog', 'monitor/operlog/index', NULL, 1, '0', 'C', '1', '1', 'monitor:operlog:list', 'form', 12, '1.12.13.', '', '', '2021-12-22 10:43:24', 'admin', '2024-12-14 07:05:01');
INSERT INTO `menu` VALUES (14, '登录日志', 2, 'logininfor', 'monitor/logininfor/index', NULL, 1, '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 12, '1.12.14.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (15, '用户查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:user:query', '#', 4, '1.4.15.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (16, '用户新增', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:user:add', '#', 4, '1.4.16.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (17, '用户修改', 3, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:user:edit', '#', 4, '1.4.17.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (18, '用户删除', 4, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:user:remove', '#', 4, '1.4.18.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (19, '用户导出', 5, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:user:export', '#', 4, '1.4.19.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (20, '用户导入', 6, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:user:import', '#', 4, '1.4.20.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (21, '重置密码', 7, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:user:resetPwd', '#', 4, '1.4.21.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (22, '角色查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:role:query', '#', 5, '1.5.22.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (23, '角色新增', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:role:add', '#', 5, '1.5.23.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (24, '角色修改', 3, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:role:edit', '#', 5, '1.5.24.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (25, '角色删除', 4, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:role:remove', '#', 5, '1.5.25.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (26, '菜单查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:menu:query', '#', 6, '1.6.26.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (27, '菜单新增', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:menu:add', '#', 6, '1.6.27.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (28, '菜单修改', 3, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:menu:edit', '#', 6, '1.6.28.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (29, '菜单删除', 4, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:menu:remove', '#', 6, '1.6.29.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (30, '部门查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:dept:query', '#', 7, '1.7.30.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (31, '部门新增', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:dept:add', '#', 7, '1.7.31.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (32, '部门修改', 3, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:dept:edit', '#', 7, '1.7.32.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (33, '部门删除', 4, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:dept:remove', '#', 7, '1.7.33.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (34, '公告新增', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:notice:add', '#', 11, '1.11.34.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (35, '公告查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:notice:query', '#', 11, '1.11.35.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (36, '公告修改', 3, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:notice:edit', '#', 11, '1.11.36.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (37, '公告删除', 4, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:notice:remove', '#', 11, '1.11.37.', '', '', '2021-12-22 10:43:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (38, '岗位查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:post:query', '#', 8, '1.8.38.', '', '', '2021-12-22 13:42:28', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (39, '岗位新增', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:post:add', '#', 8, '1.8.39.', '', '', '2021-12-22 13:42:50', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (40, '岗位修改', 3, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:post:edit', '#', 8, '1.8.40.', '', '', '2021-12-22 13:43:09', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (41, '岗位删除', 4, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:post:remove', '#', 8, '1.8.41.', '', '', '2021-12-22 13:43:43', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (42, '岗位导出', 5, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:post:export', '#', 8, '1.8.42.', '', '', '2021-12-22 13:45:04', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (43, '在线用户', 1, 'online', 'monitor/online/index', NULL, 1, '0', 'C', '0', '0', 'monitor:online:list', 'online', 2, '2.43.', '', '', '2021-12-23 21:10:14', '', '2023-01-16 11:34:54');
INSERT INTO `menu` VALUES (44, '表单构建', 1, 'build', 'tool/build/index', NULL, 1, '0', 'C', '1', '0', 'tool:build:list', 'build', 3, '3.44.', '', '', '2021-12-24 11:19:41', 'admin', '2023-01-29 15:57:10');
INSERT INTO `menu` VALUES (45, '系统接口', 2, 'swagger', 'tool/swagger/index', NULL, 1, '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 3, '3.45.', '', '', '2021-12-24 11:20:28', '', '2023-01-16 11:34:45');
INSERT INTO `menu` VALUES (46, '定时任务', 2, 'job', 'monitor/job/index', NULL, 1, '0', 'C', '0', '0', 'monitor:job:list', 'job', 2, '46.', '', '', '2021-12-24 11:53:24', 'admin', '2024-12-21 15:24:39');
INSERT INTO `menu` VALUES (48, '服务监控', 4, 'server', 'monitor/server/index', NULL, 1, '0', 'C', '0', '0', 'monitor:server:list', 'server', 2, '2.48.', '', '', '2021-12-24 11:55:16', '', '2023-01-16 11:34:54');
INSERT INTO `menu` VALUES (49, '字典查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:dict:query', '#', 9, '1.9.49.', '', '', '2021-12-29 14:58:27', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (50, '字典新增', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:dict:add', '#', 9, '1.9.50.', '', '', '2021-12-29 14:59:15', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (51, '字典修改', 3, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:dict:edit', '#', 9, '1.9.51.', '', '', '2021-12-29 15:01:08', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (52, '字典删除', 4, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:dict:remove', '#', 9, '1.9.52.', '', '', '2021-12-29 15:03:37', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (53, '字典导出', 5, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:dict:export', '#', 9, '1.9.53.', '', '', '2021-12-29 15:06:54', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (54, '参数查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:config:query', '#', 10, '1.10.54.', '', '', '2021-12-29 15:07:37', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (55, '参数新增', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:config:add', '#', 10, '1.10.55.', '', '', '2021-12-29 15:15:51', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (56, '参数修改', 3, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:config:edit', '#', 10, '1.10.56.', '', '', '2021-12-29 15:29:36', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (57, '参数删除', 4, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:config:remove', '#', 10, '1.10.57.', '', '', '2021-12-29 15:30:05', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (58, '参数导出', 5, '', NULL, NULL, 1, '0', 'F', '0', '0', 'system:config:export', '#', 10, '1.10.58.', '', '', '2021-12-29 15:30:33', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (59, '操作查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:operlog:query', '#', 13, '1.12.13.59.', '', '', '2021-12-29 15:31:40', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (60, '操作删除', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 13, '1.12.13.60.', '', '', '2021-12-29 15:33:25', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (61, '日志导出', 4, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:operlog:export', '#', 13, '1.12.13.61.', '', '', '2021-12-29 15:33:58', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (62, '登录查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 14, '1.12.14.62.', '', '', '2021-12-29 15:34:24', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (63, '登录删除', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 14, '1.12.14.63.', '', '', '2021-12-29 15:34:36', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (64, '日志导出', 3, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 14, '1.12.14.64.', '', '', '2021-12-29 15:34:46', '', '2023-01-16 11:35:17');
INSERT INTO `menu` VALUES (65, '在线查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:online:query', '#', 43, '2.43.65.', '', '', '2021-12-29 15:35:26', '', '2023-01-16 11:34:54');
INSERT INTO `menu` VALUES (66, '批量强退', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 43, '2.43.66.', '', '', '2021-12-29 15:35:40', '', '2023-01-16 11:34:54');
INSERT INTO `menu` VALUES (67, '单条强退', 3, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 43, '2.43.67.', '', '', '2021-12-29 15:35:51', '', '2023-01-16 11:34:54');
INSERT INTO `menu` VALUES (68, '任务查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:job:query', '#', 46, '2.46.68.', '', '', '2021-12-29 15:36:13', '', '2023-01-16 11:34:54');
INSERT INTO `menu` VALUES (69, '任务新增', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:job:add', '#', 46, '2.46.69.', '', '', '2021-12-29 15:36:25', '', '2023-01-16 11:34:54');
INSERT INTO `menu` VALUES (70, '任务修改', 3, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:job:edit', '#', 46, '2.46.70.', '', '', '2021-12-29 15:36:36', '', '2023-01-16 11:34:54');
INSERT INTO `menu` VALUES (71, '任务删除', 4, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:job:remove', '#', 46, '2.46.71.', '', '', '2021-12-29 15:36:48', '', '2023-01-16 11:34:54');
INSERT INTO `menu` VALUES (72, '状态修改', 5, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 46, '2.46.72.', '', '', '2021-12-29 15:36:58', '', '2023-01-16 11:34:54');
INSERT INTO `menu` VALUES (73, '任务导出', 7, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:job:export', '#', 46, '2.46.73.', '', '', '2021-12-29 15:37:31', '', '2023-01-16 11:34:54');
INSERT INTO `menu` VALUES (93, '缓存管理', 1, 'cache', 'monitor/cache/index', NULL, 1, '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 2, '2.93.', '', 'admin', '2023-03-27 14:14:04', 'admin', '2023-03-27 15:06:32');
INSERT INTO `menu` VALUES (96, '缓存查询', 1, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:cache:query', '#', 93, '2.93.96.', '', 'admin', '2023-03-27 16:08:06', 'admin', '2023-03-27 16:08:20');
INSERT INTO `menu` VALUES (97, '缓存删除', 2, '', NULL, NULL, 1, '0', 'F', '0', '0', 'monitor:cache:remove', '#', 93, '2.93.97.', '', 'admin', '2023-03-27 16:09:19', 'admin', '2023-03-27 16:09:50');
INSERT INTO `menu` VALUES (98, '基础数据', 2, 'basic', NULL, NULL, 1, '0', 'M', '0', '0', NULL, 'tab', 0, '', '', 'admin', '2025-01-02 01:49:54', 'admin', '2025-04-03 08:09:38');
INSERT INTO `menu` VALUES (99, '国家管理', 1, 'country', 'basic/country/index', NULL, 1, '0', 'C', '0', '0', NULL, 'peoples', 98, '99.', '', 'admin', '2025-01-02 01:49:54', 'admin', '2025-01-02 01:49:54');
INSERT INTO `menu` VALUES (100, '语言管理', 2, 'language', 'basic/language/index', NULL, 1, '0', 'C', '0', '0', NULL, 'nested', 98, '100.', '', 'admin', '2025-01-02 01:49:54', 'admin', '2025-01-02 01:49:54');
INSERT INTO `menu` VALUES (101, '类型管理', 3, 'genre', 'basic/genre/index', NULL, 1, '0', 'C', '0', '0', NULL, 'row', 98, '101.', '', 'admin', '2025-01-02 01:49:54', 'admin', '2025-01-02 01:49:54');
INSERT INTO `menu` VALUES (102, '影人职务', 4, 'profession', 'basic/profession/index', NULL, 1, '0', 'C', '0', '0', NULL, 'peoples', 98, '102.', '', 'admin', '2025-01-02 01:49:54', 'admin', '2025-01-02 01:49:54');
INSERT INTO `menu` VALUES (103, '家长引导', 5, 'level', 'basic/level/index', NULL, 1, '0', 'C', '0', '0', NULL, 'server', 98, '103.', '', 'admin', '2025-01-02 01:49:54', 'admin', '2025-01-02 01:49:54');
INSERT INTO `menu` VALUES (104, '栏目管理', 1, 'column', 'basic/column/index', NULL, 1, '0', 'C', '0', '0', NULL, 'tree-table', 98, '104.', '', 'admin', '2025-02-14 02:41:05', 'admin', '2025-02-14 02:49:22');
INSERT INTO `menu` VALUES (105, '横幅管理', 5, 'banner', 'basic/banner/index', NULL, 1, '0', 'C', '0', '0', NULL, 'druid', 98, '105.', '', 'admin', '2025-02-14 02:41:05', 'admin', '2025-02-14 02:41:05');
INSERT INTO `menu` VALUES (106, '影视管理', 1, 'movie', NULL, NULL, 1, '0', 'M', '0', '0', NULL, 'redis-list', 0, '', '', 'admin', '2025-04-03 03:25:01', 'admin', '2025-04-03 03:25:01');
INSERT INTO `menu` VALUES (107, '影人列表', 1, 'actor', 'movie/actor/list/index', NULL, 1, '0', 'C', '0', '0', NULL, 'list', 106, '107.', '', 'admin', '2025-04-03 03:25:01', 'admin', '2025-04-03 06:03:02');
INSERT INTO `menu` VALUES (108, '视频列表', 2, 'video', 'movie/video/list/index', NULL, 1, '0', 'C', '0', '0', NULL, 'list', 106, '108.', '', 'admin', '2025-04-03 03:25:01', 'admin', '2025-04-03 06:03:12');
INSERT INTO `menu` VALUES (109, '影视列表', 3, 'list', 'movie/list/index', NULL, 1, '0', 'C', '0', '0', NULL, 'list', 106, '109.', '', 'admin', '2025-04-03 06:22:02', 'admin', '2025-04-03 06:22:02');
INSERT INTO `menu` VALUES (110, '文件配置', 8, 'file-config', 'system/file-config/index', NULL, 1, '0', 'C', '0', '0', 'system:file-config:list', 'documentation', 1, '1.110.', '', 'admin', '2025-04-17 03:15:30', 'admin', '2025-04-18 06:16:12');
COMMIT;

-- ----------------------------
-- Table structure for movie_basic_to_country
-- ----------------------------
DROP TABLE IF EXISTS `movie_basic_to_country`;
CREATE TABLE `movie_basic_to_country` (
  `movie_basic_to_country_id` int NOT NULL AUTO_INCREMENT,
  `movie_basics_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  PRIMARY KEY (`movie_basic_to_country_id`),
  KEY `movie_basic_to_country_fk` (`movie_basics_id`),
  CONSTRAINT `movie_basic_to_country_fk` FOREIGN KEY (`movie_basics_id`) REFERENCES `movie_basics` (`movie_basics_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_basic_to_country
-- ----------------------------
BEGIN;
INSERT INTO `movie_basic_to_country` VALUES (3, 42, 1);
INSERT INTO `movie_basic_to_country` VALUES (4, 48, 1);
COMMIT;

-- ----------------------------
-- Table structure for movie_basic_to_genre
-- ----------------------------
DROP TABLE IF EXISTS `movie_basic_to_genre`;
CREATE TABLE `movie_basic_to_genre` (
  `movie_basic_to_genre_id` int NOT NULL AUTO_INCREMENT,
  `movie_basics_id` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`movie_basic_to_genre_id`),
  KEY `movie_basic_to_genre_fk` (`movie_basics_id`),
  CONSTRAINT `movie_basic_to_genre_fk` FOREIGN KEY (`movie_basics_id`) REFERENCES `movie_basics` (`movie_basics_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_basic_to_genre
-- ----------------------------
BEGIN;
INSERT INTO `movie_basic_to_genre` VALUES (1, 47, 8);
INSERT INTO `movie_basic_to_genre` VALUES (2, 47, 6);
INSERT INTO `movie_basic_to_genre` VALUES (3, 46, 3);
INSERT INTO `movie_basic_to_genre` VALUES (4, 46, 6);
INSERT INTO `movie_basic_to_genre` VALUES (5, 45, 12);
INSERT INTO `movie_basic_to_genre` VALUES (6, 45, 6);
INSERT INTO `movie_basic_to_genre` VALUES (7, 44, 8);
INSERT INTO `movie_basic_to_genre` VALUES (8, 44, 6);
INSERT INTO `movie_basic_to_genre` VALUES (9, 43, 11);
INSERT INTO `movie_basic_to_genre` VALUES (10, 43, 6);
INSERT INTO `movie_basic_to_genre` VALUES (13, 40, 3);
INSERT INTO `movie_basic_to_genre` VALUES (14, 40, 6);
INSERT INTO `movie_basic_to_genre` VALUES (15, 39, 3);
INSERT INTO `movie_basic_to_genre` VALUES (16, 39, 10);
INSERT INTO `movie_basic_to_genre` VALUES (17, 37, 6);
INSERT INTO `movie_basic_to_genre` VALUES (18, 36, 12);
INSERT INTO `movie_basic_to_genre` VALUES (19, 36, 6);
INSERT INTO `movie_basic_to_genre` VALUES (20, 35, 3);
INSERT INTO `movie_basic_to_genre` VALUES (21, 35, 6);
INSERT INTO `movie_basic_to_genre` VALUES (22, 33, 3);
INSERT INTO `movie_basic_to_genre` VALUES (23, 33, 7);
INSERT INTO `movie_basic_to_genre` VALUES (24, 32, 8);
INSERT INTO `movie_basic_to_genre` VALUES (25, 32, 9);
INSERT INTO `movie_basic_to_genre` VALUES (26, 32, 7);
INSERT INTO `movie_basic_to_genre` VALUES (27, 31, 6);
INSERT INTO `movie_basic_to_genre` VALUES (28, 31, 10);
INSERT INTO `movie_basic_to_genre` VALUES (29, 30, 3);
INSERT INTO `movie_basic_to_genre` VALUES (30, 30, 7);
INSERT INTO `movie_basic_to_genre` VALUES (31, 25, 14);
INSERT INTO `movie_basic_to_genre` VALUES (32, 29, 13);
INSERT INTO `movie_basic_to_genre` VALUES (33, 29, 7);
INSERT INTO `movie_basic_to_genre` VALUES (34, 28, 10);
INSERT INTO `movie_basic_to_genre` VALUES (35, 26, 14);
INSERT INTO `movie_basic_to_genre` VALUES (36, 27, 12);
INSERT INTO `movie_basic_to_genre` VALUES (37, 1, 14);
INSERT INTO `movie_basic_to_genre` VALUES (38, 24, 22);
INSERT INTO `movie_basic_to_genre` VALUES (39, 23, 26);
INSERT INTO `movie_basic_to_genre` VALUES (40, 22, 3);
INSERT INTO `movie_basic_to_genre` VALUES (41, 21, 3);
INSERT INTO `movie_basic_to_genre` VALUES (42, 20, 10);
INSERT INTO `movie_basic_to_genre` VALUES (43, 19, 7);
INSERT INTO `movie_basic_to_genre` VALUES (44, 4, 6);
INSERT INTO `movie_basic_to_genre` VALUES (45, 4, 10);
INSERT INTO `movie_basic_to_genre` VALUES (46, 4, 11);
INSERT INTO `movie_basic_to_genre` VALUES (47, 17, 7);
INSERT INTO `movie_basic_to_genre` VALUES (48, 18, 7);
INSERT INTO `movie_basic_to_genre` VALUES (64, 42, 6);
INSERT INTO `movie_basic_to_genre` VALUES (65, 42, 12);
INSERT INTO `movie_basic_to_genre` VALUES (66, 48, 6);
INSERT INTO `movie_basic_to_genre` VALUES (67, 48, 11);
INSERT INTO `movie_basic_to_genre` VALUES (68, 48, 10);
COMMIT;

-- ----------------------------
-- Table structure for movie_basics
-- ----------------------------
DROP TABLE IF EXISTS `movie_basics`;
CREATE TABLE `movie_basics` (
  `movie_basics_id` int NOT NULL AUTO_INCREMENT,
  `status` char(1) DEFAULT '0',
  `release_status` char(1) DEFAULT '0',
  `release_date` date DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `poster` varchar(300) DEFAULT NULL,
  `bg_color` varchar(100) DEFAULT NULL,
  `title_en` varchar(100) DEFAULT NULL,
  `title_original` varchar(100) DEFAULT NULL,
  `akas` varchar(100) DEFAULT NULL,
  `column_value` varchar(255) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `pub_date` datetime DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `durations` varchar(100) DEFAULT NULL,
  `versions` varchar(100) DEFAULT NULL,
  `egg_hunt` int DEFAULT NULL,
  `color` char(1) DEFAULT NULL,
  `season_count` int DEFAULT NULL,
  `current_season` int DEFAULT NULL,
  `episode_count` int DEFAULT NULL,
  `current_episode` int DEFAULT NULL,
  `the_end` char(1) DEFAULT NULL,
  `languages` varchar(100) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `is_pay` int NOT NULL DEFAULT '0',
  `payment_amount` int NOT NULL DEFAULT '0',
  `free_duration` int NOT NULL DEFAULT '1',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`movie_basics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_basics
-- ----------------------------
BEGIN;
INSERT INTO `movie_basics` VALUES (1, '0', '2', NULL, '大宋少年志2', 'https://cms.yinchunyu.com/uploads/2025-04-03/3I4O3ob3p.png', NULL, NULL, NULL, NULL, 'tv', 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 2, '0', '国语', '剧情,古装', '<p>庆历年间，北宋为免除战事，维护各民族间的和平与稳定，借秘阁之名培训少年暗探。经过严密的选拔和审查，聪慧的元仲辛、美貌机敏的赵简、从不杀生的小景、绝不说谎的王宽、不爱交流的薛映、性格开朗的韦衙内六位少年组成了秘阁第七斋。在经历了一次次生死相关的任务后，曾经年轻懵懂的少年们逐渐成长，他们彼此团结，用自己的热血和忠诚为保卫和平献身消除大宋面临的灾难。遍体鳞伤的少年们，终于可以踏上归家之路，他们为国而战，百死无悔，同时他们也相信，未来的岁月里，会有更多少年，为了理想而战，不懂后退，世界总是被这样的少年点亮，那是名为希望的光芒。</p>', 1, 5, 1, '', '', '2025-04-03 12:28:21', '', '2025-04-12 15:40:47');
INSERT INTO `movie_basics` VALUES (4, '0', '0', NULL, '黑金风暴', 'https://cms.yinchunyu.com/uploads/2025-04-10/4439CRCAd.jpeg', NULL, NULL, NULL, NULL, 'movie', 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>11ee</p>', 0, 0, 1, '', '', '2025-04-03 12:28:21', '', '2025-04-12 15:52:17');
INSERT INTO `movie_basics` VALUES (17, '0', '0', NULL, '成长加衣', 'https://cms.yinchunyu.com/uploads/2025-04-10/rzI0Dlgig.jpeg', NULL, NULL, NULL, NULL, 'movie', 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'admin', '2025-04-07 14:35:21', 'admin', '2025-04-12 15:52:29');
INSERT INTO `movie_basics` VALUES (18, '0', '0', NULL, '做自己的光', 'https://cms.yinchunyu.com/uploads/2025-04-10/2btsOyi8Y.jpeg', NULL, NULL, NULL, NULL, 'movie', 2024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 0, 0, 1, '', 'admin', '2025-04-10 03:55:25', 'admin', '2025-04-12 15:52:41');
INSERT INTO `movie_basics` VALUES (19, '0', '0', NULL, '吃饭跑步和恋爱', 'https://cms.yinchunyu.com/uploads/2025-04-10/naI8Ew8k1.jpeg', NULL, NULL, NULL, NULL, 'movie', 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'admin', '2025-04-10 03:55:53', 'admin', '2025-04-12 15:51:58');
INSERT INTO `movie_basics` VALUES (20, '0', '0', NULL, '我经过风暴', 'https://cms.yinchunyu.com/uploads/2025-04-10/SVxennMHP.jpeg', NULL, NULL, NULL, NULL, 'movie', 2023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'admin', '2025-04-10 07:14:55', 'admin', '2025-04-12 15:51:47');
INSERT INTO `movie_basics` VALUES (21, '0', '0', NULL, '你好，李焕英', 'https://cms.yinchunyu.com/uploads/2025-04-10/BUzq44Gju.jpeg', NULL, NULL, NULL, NULL, 'movie', 2021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'admin', '2025-04-10 07:15:39', 'admin', '2025-04-12 15:51:31');
INSERT INTO `movie_basics` VALUES (22, '0', '0', NULL, '一出好戏', 'https://cms.yinchunyu.com/uploads/2025-04-10/pgKFM0hd8.jpeg', NULL, NULL, NULL, NULL, 'movie', 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'admin', '2025-04-10 07:16:07', 'admin', '2025-04-12 15:51:18');
INSERT INTO `movie_basics` VALUES (23, '0', '0', NULL, '真话真话', 'https://cms.yinchunyu.com/uploads/2025-04-10/5uIPJtoL4.jpeg', NULL, NULL, NULL, NULL, 'variety', 2025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'admin', '2025-04-10 14:52:07', 'admin', '2025-04-12 15:41:07');
INSERT INTO `movie_basics` VALUES (24, '0', '0', NULL, '超级飞侠', 'https://cms.yinchunyu.com/uploads/2025-04-10/WA0HYlxga.jpeg', NULL, NULL, NULL, NULL, 'cartoon', 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'admin', '2025-04-10 14:52:34', 'admin', '2025-04-12 15:40:57');
INSERT INTO `movie_basics` VALUES (25, '0', '0', NULL, '黑狐', 'https://cms.yinchunyu.com/uploads/2025-04-10/KSR3F9usM.jpeg', NULL, NULL, NULL, NULL, 'tv', 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'admin', '2025-04-10 14:52:53', 'admin', '2025-04-12 15:36:40');
INSERT INTO `movie_basics` VALUES (26, '0', '0', NULL, '情满四合院', 'https://cms.yinchunyu.com/uploads/2025-04-10/S4MER8U8r.png', NULL, NULL, NULL, NULL, 'tv', 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'admin', '2025-04-10 14:53:25', 'admin', '2025-04-12 15:37:27');
INSERT INTO `movie_basics` VALUES (27, '0', '0', NULL, '智取威虎山', 'https://cms.yinchunyu.com/uploads/2025-04-11/9mSkKlnaa.jpeg', NULL, NULL, NULL, NULL, 'movie', 2022, NULL, NULL, NULL, '2D', NULL, '0', NULL, NULL, NULL, NULL, '1', '汉语普通话', '战争', NULL, 0, 0, 1, '', 'admin', '2025-04-11 14:28:12', 'admin', '2025-04-12 15:37:43');
INSERT INTO `movie_basics` VALUES (28, '0', '0', NULL, '荒蛮故事', 'https://cms.yinchunyu.com/uploads/2025-04-12/nObbrReLB.jpeg', NULL, NULL, NULL, NULL, 'movie', 2014, NULL, NULL, NULL, '2D', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 02:10:01', 'laoying', '2025-04-12 15:37:14');
INSERT INTO `movie_basics` VALUES (29, '0', '2', '2024-11-29', '痴人之爱', 'https://cms.yinchunyu.com/uploads/2025-04-12/aRRL0SYlm.jpeg', NULL, NULL, '痴人の愛', NULL, 'movie', 2024, NULL, '106', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', '日语', NULL, '<p>本作的主人公是河合譲治，他是一名曾在剧本比赛中获奖但至今未能正式出道的剧作家。故事从他在一家萧条的酒吧遇到一位自称为直美的女性开始展开。某天，譲治代替剧本课程的讲师，接下了改编自谷崎润一郎的《痴人之爱》的电影剧本创作任务。在创作过程中，譲治苦于写作瓶颈，与直美再次相遇并在关系逐渐加深中，经历了一段既甜蜜又苦涩且疯狂的时光。</p>', 0, 0, 1, '', 'laoying', '2025-04-12 02:20:18', 'laoying', '2025-04-12 15:36:56');
INSERT INTO `movie_basics` VALUES (30, '0', '0', NULL, '好东西', 'https://cms.yinchunyu.com/uploads/2025-04-12/ryWdsk8AM.jpeg', NULL, NULL, NULL, '爱情神话平行篇：好东西,爱情神话·平行篇,爱情神话2,Herstory,Her Story', 'movie', 2024, NULL, '123', NULL, '2D', NULL, '0', NULL, NULL, NULL, NULL, NULL, '汉语普通话', NULL, '<p>　　爱逞强的单亲妈妈王铁梅（宋佳 饰）带小孩王茉莉（曾慕梅 饰）搬到新家，结识了所谓清醒恋爱脑的邻居小叶（钟楚曦 饰）。两位性格迥异的女性，一个坚强，一个柔软，一个擅长给人当妈，一个擅长随时撒谎。面对旧创伤和新挑战，她们彼此温暖互相慰藉。<br>　　而围绕王铁梅的两个男人，前夫（赵又廷 饰）不时&ldquo;添乱&rdquo;，女儿的鼓手老师（章宇 饰）似乎充满新的可能。作为已经觉醒的女人们和学习过性别议题的男人们，会遇到什么新问题？会如何看待自己和世界？</p>', 0, 0, 1, '', 'laoying', '2025-04-12 02:30:15', 'laoying', '2025-04-12 15:36:23');
INSERT INTO `movie_basics` VALUES (31, '0', '0', NULL, '焚城', 'https://cms.yinchunyu.com/uploads/2025-04-12/txhRHXQzz.jpeg', NULL, NULL, NULL, NULL, 'movie', 2025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '汉语普通话,粤语', NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 02:44:02', 'laoying', '2025-04-12 15:36:08');
INSERT INTO `movie_basics` VALUES (32, '0', '0', NULL, '峡谷', 'https://cms.yinchunyu.com/uploads/2025-04-12/axmynovlW.jpeg', NULL, NULL, NULL, NULL, 'movie', 2025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '英语', '爱情,恐怖,科幻,冒险', NULL, 0, 0, 1, '', 'laoying', '2025-04-12 05:32:37', 'laoying', '2025-04-12 15:35:48');
INSERT INTO `movie_basics` VALUES (33, '0', '0', NULL, '夏洛特烦恼', 'https://cms.yinchunyu.com/uploads/2025-04-12/b6TaNUUx6.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '汉语普通话', NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 10:52:44', 'laoying', '2025-04-12 15:35:25');
INSERT INTO `movie_basics` VALUES (35, '0', '0', NULL, '警察故事续集', 'https://cms.yinchunyu.com/uploads/2025-04-12/PiPiER55m.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 10:55:22', 'laoying', '2025-04-12 15:35:10');
INSERT INTO `movie_basics` VALUES (36, '0', '0', NULL, '红海行动', 'https://cms.yinchunyu.com/uploads/2025-04-12/G2LiBGcNH.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 10:58:07', 'laoying', '2025-04-12 15:34:56');
INSERT INTO `movie_basics` VALUES (37, '0', '0', NULL, '杀破狼2', 'https://cms.yinchunyu.com/uploads/2025-04-12/yDPDwuEN0.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 10:58:40', 'laoying', '2025-04-12 15:34:43');
INSERT INTO `movie_basics` VALUES (39, '0', '0', NULL, '西虹市首富', 'https://cms.yinchunyu.com/uploads/2025-04-12/NQL9atp59.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 10:59:44', 'laoying', '2025-04-12 15:34:34');
INSERT INTO `movie_basics` VALUES (40, '0', '0', NULL, '我是谁', 'https://cms.yinchunyu.com/uploads/2025-04-12/cZHKW7D4Q.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:00:34', 'laoying', '2025-04-12 15:34:20');
INSERT INTO `movie_basics` VALUES (42, '0', '2', '2024-10-01', '湄公河行动', 'https://cms.yinchunyu.com/uploads/2025-04-12/dAkYv2CYY.jpeg', '#005762', NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, '2D', 1, '0', NULL, NULL, NULL, NULL, '1', '汉语普通话', '动作,战争', NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:01:20', 'laoying', '2025-04-24 01:48:20');
INSERT INTO `movie_basics` VALUES (43, '0', '0', NULL, '扫毒', 'https://cms.yinchunyu.com/uploads/2025-04-12/xL9HV0k7r.jpeg', NULL, NULL, NULL, NULL, 'movie', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:03:25', 'laoying', '2025-04-12 15:33:53');
INSERT INTO `movie_basics` VALUES (44, '0', '0', NULL, '九层妖塔', 'https://cms.yinchunyu.com/uploads/2025-04-12/cGkxCjQB4.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:04:02', 'laoying', '2025-04-12 15:33:40');
INSERT INTO `movie_basics` VALUES (45, '0', '0', NULL, '敢死队3', 'https://cms.yinchunyu.com/uploads/2025-04-12/gMXPeqiTP.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:04:42', 'laoying', '2025-04-12 15:33:31');
INSERT INTO `movie_basics` VALUES (46, '0', '0', NULL, '唐人街探案', 'https://cms.yinchunyu.com/uploads/2025-04-12/VgDMfRrvr.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:05:36', 'laoying', '2025-04-12 15:33:22');
INSERT INTO `movie_basics` VALUES (47, '0', '0', NULL, '寻龙诀', 'https://cms.yinchunyu.com/uploads/2025-04-12/gCXtYPbHP.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:06:28', 'laoying', '2025-04-12 15:33:12');
INSERT INTO `movie_basics` VALUES (48, '0', '0', NULL, '超级保镖', 'https://cms.yinchunyu.com/uploads/2025-04-12/84WAoRlXO.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, '2D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '汉语普通话,英语', '动作', NULL, 0, 0, 1, '', 'laoying', '2025-04-12 15:54:29', 'laoying', '2025-04-24 01:49:05');
COMMIT;

-- ----------------------------
-- Table structure for movie_level
-- ----------------------------
DROP TABLE IF EXISTS `movie_level`;
CREATE TABLE `movie_level` (
  `movie_level_id` int NOT NULL AUTO_INCREMENT,
  `movieId` int NOT NULL,
  `levelId` int NOT NULL,
  PRIMARY KEY (`movie_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_level
-- ----------------------------
BEGIN;
INSERT INTO `movie_level` VALUES (3, 17, 20);
COMMIT;

-- ----------------------------
-- Table structure for movie_photo
-- ----------------------------
DROP TABLE IF EXISTS `movie_photo`;
CREATE TABLE `movie_photo` (
  `movie_photo_id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `img` varchar(500) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `img_width` int NOT NULL DEFAULT '0',
  `img_height` int NOT NULL DEFAULT '0',
  `img_size` int NOT NULL DEFAULT '0',
  `del_flag` varchar(1) NOT NULL DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`movie_photo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_photo
-- ----------------------------
BEGIN;
INSERT INTO `movie_photo` VALUES (2, 1, '1', 'http://localhost:3000/uploads/2025-04-07/D0V43NXN2.png', '2', 270, 404, 246388, '0', '', '', '2025-04-07 14:14:38', '', '2025-04-07 14:14:38');
INSERT INTO `movie_photo` VALUES (3, 17, '1', 'http://localhost:3000/uploads/2025-04-07/9f1RAcSzh.png', '1', 270, 404, 246388, '0', '', '', '2025-04-07 14:14:38', '', '2025-04-07 14:14:38');
INSERT INTO `movie_photo` VALUES (4, 17, '2', 'http://localhost:3000/uploads/2025-04-07/fMfpUrdgi.jpeg', '2', 140, 193, 6866, '0', '', '', '2025-04-07 14:14:38', '', '2025-04-07 14:14:38');
COMMIT;

-- ----------------------------
-- Table structure for movie_pv
-- ----------------------------
DROP TABLE IF EXISTS `movie_pv`;
CREATE TABLE `movie_pv` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_basic_id` int NOT NULL,
  `pv` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_pv
-- ----------------------------
BEGIN;
INSERT INTO `movie_pv` VALUES (1, 48, 66);
INSERT INTO `movie_pv` VALUES (2, 47, 8);
INSERT INTO `movie_pv` VALUES (3, 46, 9);
INSERT INTO `movie_pv` VALUES (4, 45, 2);
INSERT INTO `movie_pv` VALUES (5, 44, 1);
INSERT INTO `movie_pv` VALUES (6, 43, 2);
INSERT INTO `movie_pv` VALUES (7, 39, 2);
INSERT INTO `movie_pv` VALUES (8, 32, 10);
INSERT INTO `movie_pv` VALUES (9, 4, 1);
INSERT INTO `movie_pv` VALUES (10, 36, 1);
INSERT INTO `movie_pv` VALUES (11, 31, 17);
INSERT INTO `movie_pv` VALUES (12, 33, 1);
INSERT INTO `movie_pv` VALUES (13, 28, 1);
INSERT INTO `movie_pv` VALUES (14, 1, 5);
INSERT INTO `movie_pv` VALUES (15, 52, 0);
INSERT INTO `movie_pv` VALUES (16, 42, 3);
INSERT INTO `movie_pv` VALUES (17, 26, 1);
INSERT INTO `movie_pv` VALUES (18, 40, 2);
INSERT INTO `movie_pv` VALUES (19, 30, 3);
INSERT INTO `movie_pv` VALUES (20, 29, 1);
COMMIT;

-- ----------------------------
-- Table structure for movie_video
-- ----------------------------
DROP TABLE IF EXISTS `movie_video`;
CREATE TABLE `movie_video` (
  `movie_video_id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int NOT NULL,
  `type_id` varchar(255) NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT '',
  `video_id` int NOT NULL,
  `cover` varchar(255) NOT NULL DEFAULT '',
  `sort` int NOT NULL DEFAULT '1',
  `status` varchar(255) NOT NULL DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`movie_video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_video
-- ----------------------------
BEGIN;
INSERT INTO `movie_video` VALUES (1, 4, '2', '12', 2, '', 1, '0', '', '', '2025-04-07 09:20:01', '', '2025-04-07 09:25:37');
INSERT INTO `movie_video` VALUES (3, 17, '1', 'ss', 2, '', 1, '0', '', '', '2025-04-07 14:14:38', '', '2025-04-07 14:14:38');
INSERT INTO `movie_video` VALUES (4, 48, '1', '超级保镖-上集', 2, '', 3, '0', '', '', '2025-04-12 15:32:16', '', '2025-04-16 02:53:25');
INSERT INTO `movie_video` VALUES (5, 48, '1', '超级保镖-下集', 1, '', 2, '0', '', '', '2025-04-12 15:32:16', '', '2025-04-16 02:39:20');
INSERT INTO `movie_video` VALUES (6, 48, '2', '预告片', 1, '', 1, '0', '', '', '2025-04-12 15:32:16', '', '2025-04-16 02:53:20');
INSERT INTO `movie_video` VALUES (7, 48, '1', '预告片-关闭', 1, '', 4, '1', '', '', '2025-04-12 15:32:16', '', '2025-04-12 15:32:16');
INSERT INTO `movie_video` VALUES (8, 31, '1', '焚城', 2, '', 1, '0', '', '', '2025-04-17 03:15:30', '', '2025-04-17 03:15:30');
COMMIT;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `post_code` varchar(30) NOT NULL,
  `post_name` varchar(30) NOT NULL,
  `post_sort` int NOT NULL,
  `status` varchar(1) NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `post_post_code_unique` (`post_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of post
-- ----------------------------
BEGIN;
INSERT INTO `post` VALUES (1, '1', '董事长', 1, '0', '', 'admin', '2024-12-14 09:20:20', 'admin', '2024-12-14 09:20:20');
COMMIT;

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `profession_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  `brief` varchar(100) DEFAULT NULL,
  `parent_id` int DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  `mpath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`profession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of profession
-- ----------------------------
BEGIN;
INSERT INTO `profession` VALUES (1, '导演', 'Director', '0', '0', NULL, '', 'admin', '2022-12-15 10:52:25', 'admin', '2022-12-15 14:50:09', NULL);
INSERT INTO `profession` VALUES (2, '导演', 'Director', '0', '', 1, '', 'admin', '2022-12-15 10:58:19', 'admin', '2025-04-07 08:35:15', '1.2');
INSERT INTO `profession` VALUES (3, '联合执导', 'Co-Director', '0', '', 1, '', 'admin', '2022-12-15 10:58:31', 'admin', '2023-03-02 14:35:30', '1.3');
INSERT INTO `profession` VALUES (20, '演员', 'Cast', '0', '', NULL, '', 'admin', '2022-12-15 14:25:07', 'admin', '2023-03-02 14:35:53', '20.');
INSERT INTO `profession` VALUES (21, '演员', 'Actor/Actress', '0', '', 20, '', 'admin', '2022-12-15 14:25:20', 'admin', '2023-03-02 14:36:04', '20.21.');
INSERT INTO `profession` VALUES (23, '总导演', 'General Director', '0', NULL, 1, '', 'admin', '2022-12-16 15:02:20', 'admin', '2023-03-02 14:35:40', '23.');
INSERT INTO `profession` VALUES (24, '配音', 'Voice', '0', NULL, 20, '', 'admin', '2023-03-02 14:36:24', 'admin', '2023-03-02 14:36:24', '20.24.');
INSERT INTO `profession` VALUES (25, '自己', 'Self', '0', NULL, 20, '', 'admin', '2023-03-02 14:36:41', 'admin', '2025-04-07 08:36:08', '20.25.');
INSERT INTO `profession` VALUES (26, '主持人', 'Host', '0', NULL, 20, '', 'admin', '2023-03-02 14:36:55', 'admin', '2023-03-02 14:36:55', '20.26.');
INSERT INTO `profession` VALUES (27, '嘉宾', 'Guest', '0', NULL, 20, '', 'admin', '2023-03-02 14:37:10', 'admin', '2023-03-02 14:37:10', '20.27.');
INSERT INTO `profession` VALUES (28, '动作捕捉', 'Motion Capture', '0', NULL, 20, '', 'admin', '2023-03-02 14:37:26', 'admin', '2023-03-02 14:37:26', '20.28.');
COMMIT;

-- ----------------------------
-- Table structure for pub_date
-- ----------------------------
DROP TABLE IF EXISTS `pub_date`;
CREATE TABLE `pub_date` (
  `pub_date_id` int NOT NULL AUTO_INCREMENT,
  `pub_date` text NOT NULL,
  `country_id` int NOT NULL,
  `premiere` varchar(255) DEFAULT '1',
  `movie_id` int NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`pub_date_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of pub_date
-- ----------------------------
BEGIN;
INSERT INTO `pub_date` VALUES (3, '2025-04-07', 1, '1', 17, '', '', '2025-04-07 14:14:38', '', '2025-04-07 14:14:38');
INSERT INTO `pub_date` VALUES (4, '2024-11-22', 1, '1', 30, '', '', '2025-04-11 15:17:53', '', '2025-04-11 15:17:53');
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) NOT NULL,
  `role_key` varchar(100) NOT NULL,
  `role_sort` int NOT NULL,
  `data_scope` char(1) DEFAULT '1',
  `menu_check_strictly` tinyint(1) DEFAULT '1',
  `dept_check_strictly` tinyint(1) DEFAULT '1',
  `status` char(1) NOT NULL,
  `del_flag` char(1) DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', '', '', NULL, '', NULL);
INSERT INTO `role` VALUES (2, '管理员', '2', 2, '1', 1, 1, '0', '0', '', 'admin', '2024-12-14 09:20:20', 'test', '2024-12-14 14:17:55');
COMMIT;

-- ----------------------------
-- Table structure for role_to_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_to_menu`;
CREATE TABLE `role_to_menu` (
  `role_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  KEY `role_to_menu_role_id_role_role_id_fk` (`role_id`),
  KEY `role_to_menu_menu_id_menu_menu_id_fk` (`menu_id`),
  CONSTRAINT `role_to_menu_menu_id_menu_menu_id_fk` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`),
  CONSTRAINT `role_to_menu_role_id_role_role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of role_to_menu
-- ----------------------------
BEGIN;
INSERT INTO `role_to_menu` VALUES (2, 1);
INSERT INTO `role_to_menu` VALUES (2, 4);
INSERT INTO `role_to_menu` VALUES (2, 15);
INSERT INTO `role_to_menu` VALUES (2, 16);
INSERT INTO `role_to_menu` VALUES (2, 17);
INSERT INTO `role_to_menu` VALUES (2, 18);
INSERT INTO `role_to_menu` VALUES (2, 19);
INSERT INTO `role_to_menu` VALUES (2, 20);
INSERT INTO `role_to_menu` VALUES (2, 21);
INSERT INTO `role_to_menu` VALUES (2, 5);
INSERT INTO `role_to_menu` VALUES (2, 22);
INSERT INTO `role_to_menu` VALUES (2, 23);
INSERT INTO `role_to_menu` VALUES (2, 24);
INSERT INTO `role_to_menu` VALUES (2, 25);
INSERT INTO `role_to_menu` VALUES (2, 6);
INSERT INTO `role_to_menu` VALUES (2, 26);
INSERT INTO `role_to_menu` VALUES (2, 27);
INSERT INTO `role_to_menu` VALUES (2, 28);
INSERT INTO `role_to_menu` VALUES (2, 29);
INSERT INTO `role_to_menu` VALUES (2, 7);
INSERT INTO `role_to_menu` VALUES (2, 30);
INSERT INTO `role_to_menu` VALUES (2, 31);
INSERT INTO `role_to_menu` VALUES (2, 32);
INSERT INTO `role_to_menu` VALUES (2, 33);
INSERT INTO `role_to_menu` VALUES (2, 8);
INSERT INTO `role_to_menu` VALUES (2, 38);
INSERT INTO `role_to_menu` VALUES (2, 39);
INSERT INTO `role_to_menu` VALUES (2, 40);
INSERT INTO `role_to_menu` VALUES (2, 41);
INSERT INTO `role_to_menu` VALUES (2, 42);
INSERT INTO `role_to_menu` VALUES (2, 9);
INSERT INTO `role_to_menu` VALUES (2, 49);
INSERT INTO `role_to_menu` VALUES (2, 50);
INSERT INTO `role_to_menu` VALUES (2, 51);
INSERT INTO `role_to_menu` VALUES (2, 52);
INSERT INTO `role_to_menu` VALUES (2, 53);
INSERT INTO `role_to_menu` VALUES (2, 10);
INSERT INTO `role_to_menu` VALUES (2, 54);
INSERT INTO `role_to_menu` VALUES (2, 55);
INSERT INTO `role_to_menu` VALUES (2, 56);
INSERT INTO `role_to_menu` VALUES (2, 57);
INSERT INTO `role_to_menu` VALUES (2, 58);
INSERT INTO `role_to_menu` VALUES (2, 11);
INSERT INTO `role_to_menu` VALUES (2, 35);
INSERT INTO `role_to_menu` VALUES (2, 34);
INSERT INTO `role_to_menu` VALUES (2, 36);
INSERT INTO `role_to_menu` VALUES (2, 37);
INSERT INTO `role_to_menu` VALUES (2, 12);
INSERT INTO `role_to_menu` VALUES (2, 13);
INSERT INTO `role_to_menu` VALUES (2, 59);
INSERT INTO `role_to_menu` VALUES (2, 60);
INSERT INTO `role_to_menu` VALUES (2, 61);
INSERT INTO `role_to_menu` VALUES (2, 14);
INSERT INTO `role_to_menu` VALUES (2, 62);
INSERT INTO `role_to_menu` VALUES (2, 63);
INSERT INTO `role_to_menu` VALUES (2, 64);
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `sys_config_id` int NOT NULL AUTO_INCREMENT,
  `config_name` varchar(100) DEFAULT '',
  `config_key` varchar(100) DEFAULT '',
  `config_value` text DEFAULT (_utf8mb4''),
  `config_type` enum('Y','N') DEFAULT 'N',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`sys_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '登录过期时长', 'loginTime', '86400', 'Y', '一天(60 * 60 * 24)', '', '2025-01-02 01:53:49', '', '2025-01-03 02:20:44');
INSERT INTO `sys_config` VALUES (2, '文件上传', 'fileConfig', 'default', 'Y', '参数键值可到文件配置中获取，值为空时默认存储到服务器', '', '2025-04-18 06:10:27', '', '2025-04-21 07:05:29');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `nick_name` varchar(30) NOT NULL,
  `user_type` varchar(2) DEFAULT '00',
  `email` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(11) DEFAULT NULL,
  `sex` char(1) DEFAULT '0',
  `avatar` varchar(100) DEFAULT '',
  `password` varchar(100) DEFAULT '',
  `salt` varchar(100) DEFAULT '',
  `status` char(1) DEFAULT '0',
  `del_flag` char(1) DEFAULT '0',
  `login_ip` varchar(128) DEFAULT '',
  `login_date` date DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`user_id`),
  KEY `user_dept_id_dept_dept_id_fk` (`dept_id`),
  CONSTRAINT `user_dept_id_dept_dept_id_fk` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (-1, 'laoying', 'laoying', '00', '5428@qq.com', '15677777777', '0', '/uploads/DRYdnUydl.png', '205cef87ef43f79760db6b3bcd2c0984', 'Y2uPc7hyq8Vi5qBc879Ut', '0', '0', '', NULL, 1, '', '', NULL, '', '2024-12-14 09:14:45');
INSERT INTO `user` VALUES (1, 'admin', 'admin', '00', '5428@qq.com', '15677777777', '0', '/uploads/DRYdnUydl.png', '9c68fb331431f8dcfb7defef22b0c527', 'Y2uPc7hyq8Vi5qBc879Ut', '0', '0', '', NULL, 1, '', '', NULL, '', '2024-12-14 09:14:45');
INSERT INTO `user` VALUES (2, 'test', 'test', '00', NULL, NULL, '0', '', '728c992f87ae532307c688d1e212394f', 'BBIs09BXeYNzzzILTqPXQ', '0', '0', '', NULL, 1, '', 'admin', '2024-12-14 09:20:20', 'admin', '2024-12-14 09:20:20');
COMMIT;

-- ----------------------------
-- Table structure for user_to_post
-- ----------------------------
DROP TABLE IF EXISTS `user_to_post`;
CREATE TABLE `user_to_post` (
  `user_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  KEY `user_to_post_user_id_user_user_id_fk` (`user_id`),
  KEY `user_to_post_post_id_post_post_id_fk` (`post_id`),
  CONSTRAINT `user_to_post_post_id_post_post_id_fk` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  CONSTRAINT `user_to_post_user_id_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_to_post
-- ----------------------------
BEGIN;
INSERT INTO `user_to_post` VALUES (2, 1);
COMMIT;

-- ----------------------------
-- Table structure for user_to_role
-- ----------------------------
DROP TABLE IF EXISTS `user_to_role`;
CREATE TABLE `user_to_role` (
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  KEY `user_to_role_user_id_user_user_id_fk` (`user_id`),
  KEY `user_to_role_role_id_role_role_id_fk` (`role_id`),
  CONSTRAINT `user_to_role_role_id_role_role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `user_to_role_user_id_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_to_role
-- ----------------------------
BEGIN;
INSERT INTO `user_to_role` VALUES (1, 1);
INSERT INTO `user_to_role` VALUES (2, 2);
INSERT INTO `user_to_role` VALUES (-1, 1);
COMMIT;

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `video_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `poster` longtext NOT NULL,
  `name` text,
  `path` text,
  `duration` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `size` int DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-27 09:28:03',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-27 09:28:03',
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
BEGIN;
INSERT INTO `video` VALUES (1, '超能一家人', 'https://cms.yinchunyu.com/uploads/2025-04-03/vyDvWDGSc.mp4', 'https://cms.yinchunyu.com/uploads/2025-04-03/r938IoHbp.jpeg', '1692668895164-668765805-403060223.mp4', '/Users/yinchunyu/my/project/chunyu-cms-v2/chunyu-cms-web/uploads/2025-04-03/vyDvWDGSc.mp4', 74, 486, 864, 18737380, '', '', '2025-04-03 06:22:02', '', '2025-04-07 15:03:03');
INSERT INTO `video` VALUES (2, '灌篮高手', 'https://cms.yinchunyu.com/uploads/2025-04-03/93iXAgPes.mp4', 'https://cms.yinchunyu.com/uploads/2025-04-03/jJEy1UQ9N.jpeg', '1682085201153-202759664-403030638.mp4', '/Users/yinchunyu/my/project/chunyu-cms-v2/chunyu-cms-web/uploads/2025-04-03/93iXAgPes.mp4', 15, 486, 864, 3371942, '', '', '2025-04-03 06:22:02', '', '2025-04-03 06:22:02');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
