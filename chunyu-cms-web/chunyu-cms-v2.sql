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

 Date: 05/12/2025 20:22:56
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`actor_id`),
  UNIQUE KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of actor
-- ----------------------------
BEGIN;
INSERT INTO `actor` VALUES (1, 'https://cms.yinchunyu.com/uploads/2025-04-03/pDRmWJag7.jpeg', '申奥', '', '', '', '1', NULL, NULL, 1, '', NULL, '', '', '2025-04-03 03:25:01', '', '2025-04-03 05:56:50');
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
INSERT INTO `actor` VALUES (13, 'http://yinchunyu.oss-cn-shenzhen.aliyuncs.com/uploads/2025-04-19/AjdSrleFG.png', '古天乐', 'Louis Koo', '', '', '1', '1970-10-21', NULL, 1, '香港', '古天乐，香港以及华人地区著名演员、歌手，1993年签约无线，后凭《神雕侠侣》演活亦正亦邪的杨过，开始备受注意。1999年凭借《刑事侦缉档案4》中徐飞的角色成为TVB最年轻的视帝。2000年发行专辑《男朋友》，获得不俗的成绩。2001年凭《寻秦记》达到他电视剧时代的巅峰，两度问鼎视帝之后开始将工作重心放入电影。 代表作有《神雕侠侣》、《一个好爸爸》、《宝贝计划》等。', '', '', '2025-04-18 08:56:56', '', '2025-04-18 08:56:56');
INSERT INTO `actor` VALUES (14, 'https://cms.yinchunyu.com/uploads/2025-05-13/RjHJ5FN6F.png', '詹怀云', 'Huai-Yun Zhan', '', '', '1', NULL, NULL, 1, '中国台湾', '詹怀云，台湾男演员，个性调皮的他，15岁时去西门町逛街，被剧组邀请去参加电影《行动代号：孙中山》的海选，导演易智言最终选中他出演“阿左”这一角色。詹怀云曾说，有机会拍电影真的很意外，“当时被找到的时候，我只是在西门町看人家表演的人，结果突然就有这个机会让去拍电影，从没想过有一天自己也会出现在那个大银幕上面。”看过电影的王家卫甚至预言，詹怀云在电影上非常有魅力，未来会是电影圈的巨星。', '', '', '2025-05-13 06:14:56', '', '2025-05-13 06:14:56');
INSERT INTO `actor` VALUES (15, 'https://cms.yinchunyu.com/uploads/2025-05-13/gnSzLuVcw.png', '江齐', 'Jiang Qi', '', '', '2', NULL, NULL, 1, '中国台湾', '江齐从小就学芭蕾舞和民族舞蹈，入行前是在广告制作公司当制作助理，在这段工作过程中认识瞿友宁公司的同事，不久后就获得试镜机会，也签给了瞿友宁的氧气电影，成为陈昊森的师妹。', '', '', '2025-05-13 06:14:56', '', '2025-05-13 06:14:56');
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  `video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` VALUES (2, 'https://cms.yinchunyu.com/uploads/2025-04-27/11x6BhSks.jpeg', '私家侦探', '/column/movie/video/52', '0', '', '', '2025-04-07 14:14:38', '', '2025-04-27 14:06:16', 'https://cms.yinchunyu.com/uploads/2025-04-21/XjUUJl7J0.mp4');
INSERT INTO `banner` VALUES (3, 'https://cms.yinchunyu.com/uploads/2025-04-27/suCN0CKWo.jpeg', '测的负担', '/column/movie/video/58', '0', '', '', '2025-04-09 07:49:12', '', '2025-05-09 14:30:56', 'https://cms.yinchunyu.com/uploads/2025-05-09/30cChh1uW.mp4');
INSERT INTO `banner` VALUES (4, 'https://cms.yinchunyu.com/uploads/2025-05-09/SYD8HOzEc.png', '测试2', '/column/movie/video/33', '0', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52', 'https://cms.yinchunyu.com/uploads/2025-04-03/vyDvWDGSc.mp4');
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cast
-- ----------------------------
BEGIN;
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
INSERT INTO `cast` VALUES (18, 4, 12, 2, NULL, '', '', '2025-04-12 15:32:16', '', '2025-04-12 15:32:16');
INSERT INTO `cast` VALUES (19, 48, 12, 2, NULL, '', '', '2025-04-12 15:32:16', '', '2025-04-12 15:32:16');
INSERT INTO `cast` VALUES (20, 52, 13, 21, '欧阳伟业', '', '', '2025-04-18 08:56:56', '', '2025-04-18 08:56:56');
INSERT INTO `cast` VALUES (21, 64, 14, 21, '叶子杰', '', '', '2025-05-13 06:14:56', '', '2025-05-13 06:14:56');
INSERT INTO `cast` VALUES (22, 64, 15, 21, '叶梓洁', '', '', '2025-05-13 06:14:56', '', '2025-05-13 06:14:56');
INSERT INTO `cast` VALUES (23, 17, 7, 21, NULL, '', '', '2025-05-21 03:52:59', '', '2025-05-21 03:52:59');
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
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `video_id` int NOT NULL,
  `member_user_id` int NOT NULL,
  `is_dm` char(1) NOT NULL DEFAULT '0',
  `content` varchar(512) NOT NULL,
  `start` int NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  `movie_basics_id` int DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES (1, 4, 1, '1', '精彩，终于可以看了！', 8647, '', '', '2025-05-13 06:18:04', '', '2025-05-13 06:14:56', NULL);
INSERT INTO `comment` VALUES (2, 4, 1, '1', '爱看❤️', 2980, '', '', '2025-05-13 08:06:59', '', '2025-05-13 06:14:56', NULL);
INSERT INTO `comment` VALUES (3, 4, 1, '0', '可以哦～', 2360, '', '', '2025-05-13 08:07:27', '', '2025-05-13 06:14:56', NULL);
INSERT INTO `comment` VALUES (4, 4, 2, '1', '期待上映，私家侦探好看！', 7202, '', '', '2025-05-13 08:08:36', '', '2025-05-13 06:14:56', NULL);
INSERT INTO `comment` VALUES (5, 2, 2, '1', '牛逼啊～', 9318, '', '', '2025-05-13 08:16:16', '', '2025-05-13 06:14:56', NULL);
INSERT INTO `comment` VALUES (6, 5, 2, '1', '匹夫，速速更新', 13728, '', '', '2025-05-13 08:17:20', '', '2025-05-13 06:14:56', NULL);
INSERT INTO `comment` VALUES (7, 6, 1, '1', '期待上映～', 69258, '', '', '2025-05-13 13:13:48', '', '2025-05-13 06:14:56', NULL);
INSERT INTO `comment` VALUES (8, 2, 1, '1', '222', 1736, '', '', '2025-11-20 07:56:44', '', '2025-09-26 14:10:49', NULL);
INSERT INTO `comment` VALUES (9, 5, 1, '1', '666', 1678, '', '', '2025-11-20 08:44:04', '', '2025-09-26 14:10:49', NULL);
INSERT INTO `comment` VALUES (10, 2, 1, '0', '测试一下', 0, '', '', '2025-11-25 09:18:56', '', '2025-11-25 09:17:25', 48);
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`dict_data_id`),
  KEY `dict_data_dict_type_id_dict_type_dict_id_fk` (`dict_type_id`),
  CONSTRAINT `dict_data_dict_type_id_dict_type_dict_id_fk` FOREIGN KEY (`dict_type_id`) REFERENCES `dict_type` (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `dict_data` VALUES (45, 1, '魔都资源', '1', NULL, 'default', 'N', '0', 16, 'https://moduzy5.com/', '', '2025-09-26 06:24:52', 'admin', '2025-09-26 12:28:33');
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type_dict_type_unique` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `dict_type` VALUES (16, '视频资源来源', 'video_resources_source', '0', '', '', '2025-09-26 06:24:52', 'admin', '2025-09-26 12:55:20');
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`file_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of file_config
-- ----------------------------
BEGIN;
INSERT INTO `file_config` VALUES (1, '阿里云存储', 'aliyun', 'oss-cn-shenzhen', 'yinchunyu', 'LTAI5tNuCPhW1Qu9B8Aj6yH1', 'x', '0', '', 300000, '', '', '2025-04-18 08:56:56', 'laoying', '2025-04-19 14:31:27');
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of job
-- ----------------------------
BEGIN;
INSERT INTO `job` VALUES (1, '同步微信支付订单状态', 'DEFAULT', 'syncOrderStatus()', '0/30 * * * * ?', '2', '1', '1', '', '', '2024-12-22 03:13:18', '', '2025-05-15 08:38:45');
INSERT INTO `job` VALUES (3, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '0 0/30 * ? * *', '1', '1', '0', '', '', '2025-05-21 03:52:59', '', '2025-05-21 03:59:25');
INSERT INTO `job` VALUES (4, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '0 1/30 * * * ?', '1', '1', '0', '', '', '2025-05-21 03:52:59', '', '2025-05-21 03:59:47');
INSERT INTO `job` VALUES (5, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '0 0 0 1/1 * ?', '1', '1', '0', '', '', '2025-05-21 03:52:59', '', '2025-05-21 03:52:59');
INSERT INTO `job` VALUES (6, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '0 0 2 * * ?', '1', '1', '0', '', '', '2025-12-02 08:57:13', '', '2025-12-02 08:57:13');
INSERT INTO `job` VALUES (7, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '0 0 2 * * ?', '3', '1', '0', '自动发放邀请奖励，给注册超过24小时的用户发放邀请奖励金币', '', '2025-12-05 17:24:56', '', '2025-12-05 08:54:28');
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
) ENGINE=InnoDB AUTO_INCREMENT=12164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of job_log
-- ----------------------------
BEGIN;
INSERT INTO `job_log` VALUES (8579, '生成周排名(每2个小时执行一次)', NULL, 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 03:56:53');
INSERT INTO `job_log` VALUES (8580, '生成月排名(每2个小时执行一次)', NULL, 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 03:57:16');
INSERT INTO `job_log` VALUES (8581, '生成年排名(每天零点执行一次)', NULL, 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 03:57:38');
INSERT INTO `job_log` VALUES (8582, '生成周排名(每2个小时执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 03:57:45');
INSERT INTO `job_log` VALUES (8583, '生成月排名(每2个小时执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 03:57:50');
INSERT INTO `job_log` VALUES (8584, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-05-21 03:57:54');
INSERT INTO `job_log` VALUES (8585, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 03:59:25');
INSERT INTO `job_log` VALUES (8586, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 03:59:47');
INSERT INTO `job_log` VALUES (8587, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 04:00:00');
INSERT INTO `job_log` VALUES (8588, '生成周排名(每2个小时执行一次)', NULL, 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 04:00:00');
INSERT INTO `job_log` VALUES (8589, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 04:01:00');
INSERT INTO `job_log` VALUES (8590, '生成月排名(每2个小时执行一次)', NULL, 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 04:01:00');
INSERT INTO `job_log` VALUES (8591, '生成周排名(每2个小时执行一次)', NULL, 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 04:10:00');
INSERT INTO `job_log` VALUES (8592, '生成月排名(每2个小时执行一次)', NULL, 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 04:11:00');
INSERT INTO `job_log` VALUES (8593, '生成周排名(每2个小时执行一次)', NULL, 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 04:20:00');
INSERT INTO `job_log` VALUES (8594, '生成月排名(每2个小时执行一次)', NULL, 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 04:21:00');
INSERT INTO `job_log` VALUES (8595, '生成周排名(每2个小时执行一次)', NULL, 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 04:30:00');
INSERT INTO `job_log` VALUES (8596, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 04:30:00');
INSERT INTO `job_log` VALUES (8597, '生成月排名(每2个小时执行一次)', NULL, 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 04:31:00');
INSERT INTO `job_log` VALUES (8598, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 04:31:00');
INSERT INTO `job_log` VALUES (8599, '生成周排名(每2个小时执行一次)', NULL, 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 04:40:00');
INSERT INTO `job_log` VALUES (8600, '生成月排名(每2个小时执行一次)', NULL, 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 04:41:00');
INSERT INTO `job_log` VALUES (8601, '生成周排名(每2个小时执行一次)', NULL, 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 04:50:00');
INSERT INTO `job_log` VALUES (8602, '生成月排名(每2个小时执行一次)', NULL, 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 04:51:00');
INSERT INTO `job_log` VALUES (8603, '生成周排名(每2个小时执行一次)', NULL, 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 05:00:00');
INSERT INTO `job_log` VALUES (8604, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 05:00:00');
INSERT INTO `job_log` VALUES (8605, '生成月排名(每2个小时执行一次)', NULL, 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 05:01:00');
INSERT INTO `job_log` VALUES (8606, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 05:01:00');
INSERT INTO `job_log` VALUES (8607, '生成周排名(每2个小时执行一次)', NULL, 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 05:10:00');
INSERT INTO `job_log` VALUES (8608, '生成月排名(每2个小时执行一次)', NULL, 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 05:11:00');
INSERT INTO `job_log` VALUES (8609, '生成周排名(每2个小时执行一次)', NULL, 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 05:20:00');
INSERT INTO `job_log` VALUES (8610, '生成月排名(每2个小时执行一次)', NULL, 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 05:21:00');
INSERT INTO `job_log` VALUES (8611, '生成周排名(每2个小时执行一次)', NULL, 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 05:30:00');
INSERT INTO `job_log` VALUES (8612, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 05:30:00');
INSERT INTO `job_log` VALUES (8613, '生成月排名(每2个小时执行一次)', NULL, 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 05:31:00');
INSERT INTO `job_log` VALUES (8614, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 05:31:00');
INSERT INTO `job_log` VALUES (8615, '生成周排名(每2个小时执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 06:20:00');
INSERT INTO `job_log` VALUES (8616, '生成月排名(每2个小时执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 06:21:00');
INSERT INTO `job_log` VALUES (8617, '生成周排名(每2个小时执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 06:30:00');
INSERT INTO `job_log` VALUES (8618, '生成月排名(每2个小时执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 06:31:00');
INSERT INTO `job_log` VALUES (8619, '生成周排名(每2个小时执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 06:40:00');
INSERT INTO `job_log` VALUES (8620, '生成月排名(每2个小时执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 06:41:00');
INSERT INTO `job_log` VALUES (8621, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 06:41:21');
INSERT INTO `job_log` VALUES (8622, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 06:41:21');
INSERT INTO `job_log` VALUES (8623, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 06:41:21');
INSERT INTO `job_log` VALUES (8624, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 06:42:16');
INSERT INTO `job_log` VALUES (8625, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 06:42:16');
INSERT INTO `job_log` VALUES (8626, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 06:42:16');
INSERT INTO `job_log` VALUES (8627, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 06:43:35');
INSERT INTO `job_log` VALUES (8628, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 06:43:35');
INSERT INTO `job_log` VALUES (8629, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 06:43:35');
INSERT INTO `job_log` VALUES (8630, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 06:49:58');
INSERT INTO `job_log` VALUES (8631, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 06:49:59');
INSERT INTO `job_log` VALUES (8632, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 06:49:59');
INSERT INTO `job_log` VALUES (8633, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 06:50:14');
INSERT INTO `job_log` VALUES (8634, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 06:50:14');
INSERT INTO `job_log` VALUES (8635, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 06:50:14');
INSERT INTO `job_log` VALUES (8636, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 07:00:00');
INSERT INTO `job_log` VALUES (8637, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 07:01:00');
INSERT INTO `job_log` VALUES (8638, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 07:25:12');
INSERT INTO `job_log` VALUES (8639, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 07:25:12');
INSERT INTO `job_log` VALUES (8640, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 07:25:12');
INSERT INTO `job_log` VALUES (8641, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 07:30:00');
INSERT INTO `job_log` VALUES (8642, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 07:31:00');
INSERT INTO `job_log` VALUES (8643, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 08:00:00');
INSERT INTO `job_log` VALUES (8644, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 08:01:00');
INSERT INTO `job_log` VALUES (8645, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 08:30:00');
INSERT INTO `job_log` VALUES (8646, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 08:31:00');
INSERT INTO `job_log` VALUES (8647, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 08:49:30');
INSERT INTO `job_log` VALUES (8648, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 08:49:30');
INSERT INTO `job_log` VALUES (8649, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 08:49:30');
INSERT INTO `job_log` VALUES (8650, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 08:49:57');
INSERT INTO `job_log` VALUES (8651, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 08:49:57');
INSERT INTO `job_log` VALUES (8652, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 08:49:57');
INSERT INTO `job_log` VALUES (8653, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:08');
INSERT INTO `job_log` VALUES (8654, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:08');
INSERT INTO `job_log` VALUES (8655, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:08');
INSERT INTO `job_log` VALUES (8656, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:29');
INSERT INTO `job_log` VALUES (8657, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:29');
INSERT INTO `job_log` VALUES (8658, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:29');
INSERT INTO `job_log` VALUES (8659, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:41');
INSERT INTO `job_log` VALUES (8660, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:41');
INSERT INTO `job_log` VALUES (8661, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:41');
INSERT INTO `job_log` VALUES (8662, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:45');
INSERT INTO `job_log` VALUES (8663, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:45');
INSERT INTO `job_log` VALUES (8664, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:45');
INSERT INTO `job_log` VALUES (8665, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:58');
INSERT INTO `job_log` VALUES (8666, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:58');
INSERT INTO `job_log` VALUES (8667, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 08:50:58');
INSERT INTO `job_log` VALUES (8668, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-21 08:56:56');
INSERT INTO `job_log` VALUES (8669, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-21 08:56:56');
INSERT INTO `job_log` VALUES (8670, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-21 08:56:56');
INSERT INTO `job_log` VALUES (8671, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 09:00:00');
INSERT INTO `job_log` VALUES (8672, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 09:01:00');
INSERT INTO `job_log` VALUES (8673, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 09:30:00');
INSERT INTO `job_log` VALUES (8674, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 09:31:00');
INSERT INTO `job_log` VALUES (8675, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 10:25:37');
INSERT INTO `job_log` VALUES (8676, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 10:25:37');
INSERT INTO `job_log` VALUES (8677, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 10:42:22');
INSERT INTO `job_log` VALUES (8678, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 10:42:22');
INSERT INTO `job_log` VALUES (8679, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 11:00:01');
INSERT INTO `job_log` VALUES (8680, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 11:01:00');
INSERT INTO `job_log` VALUES (8681, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 11:35:46');
INSERT INTO `job_log` VALUES (8682, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 11:35:46');
INSERT INTO `job_log` VALUES (8683, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 12:00:49');
INSERT INTO `job_log` VALUES (8684, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 12:01:25');
INSERT INTO `job_log` VALUES (8685, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 12:36:45');
INSERT INTO `job_log` VALUES (8686, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 12:36:45');
INSERT INTO `job_log` VALUES (8687, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 13:14:09');
INSERT INTO `job_log` VALUES (8688, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 13:14:09');
INSERT INTO `job_log` VALUES (8689, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 13:36:37');
INSERT INTO `job_log` VALUES (8690, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 13:36:37');
INSERT INTO `job_log` VALUES (8691, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 14:01:11');
INSERT INTO `job_log` VALUES (8692, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 14:01:11');
INSERT INTO `job_log` VALUES (8693, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 14:35:30');
INSERT INTO `job_log` VALUES (8694, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 14:35:30');
INSERT INTO `job_log` VALUES (8695, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 15:00:45');
INSERT INTO `job_log` VALUES (8696, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 15:01:50');
INSERT INTO `job_log` VALUES (8697, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 15:39:08');
INSERT INTO `job_log` VALUES (8698, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 15:39:08');
INSERT INTO `job_log` VALUES (8699, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 16:00:27');
INSERT INTO `job_log` VALUES (8700, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-05-21 16:00:27');
INSERT INTO `job_log` VALUES (8701, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 16:02:36');
INSERT INTO `job_log` VALUES (8702, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 16:38:46');
INSERT INTO `job_log` VALUES (8703, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 16:38:46');
INSERT INTO `job_log` VALUES (8704, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 17:14:59');
INSERT INTO `job_log` VALUES (8705, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 17:14:59');
INSERT INTO `job_log` VALUES (8706, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 17:33:28');
INSERT INTO `job_log` VALUES (8707, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 17:33:28');
INSERT INTO `job_log` VALUES (8708, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 18:13:02');
INSERT INTO `job_log` VALUES (8709, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 18:13:02');
INSERT INTO `job_log` VALUES (8710, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 18:36:40');
INSERT INTO `job_log` VALUES (8711, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 18:36:40');
INSERT INTO `job_log` VALUES (8712, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 19:00:00');
INSERT INTO `job_log` VALUES (8713, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 19:02:08');
INSERT INTO `job_log` VALUES (8714, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 19:31:26');
INSERT INTO `job_log` VALUES (8715, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 19:31:26');
INSERT INTO `job_log` VALUES (8716, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 20:00:30');
INSERT INTO `job_log` VALUES (8717, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 20:02:40');
INSERT INTO `job_log` VALUES (8718, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 20:30:16');
INSERT INTO `job_log` VALUES (8719, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 20:32:26');
INSERT INTO `job_log` VALUES (8720, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 21:08:20');
INSERT INTO `job_log` VALUES (8721, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 21:08:20');
INSERT INTO `job_log` VALUES (8722, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 21:45:57');
INSERT INTO `job_log` VALUES (8723, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 21:45:57');
INSERT INTO `job_log` VALUES (8724, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 22:15:15');
INSERT INTO `job_log` VALUES (8725, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 22:15:15');
INSERT INTO `job_log` VALUES (8726, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 22:31:16');
INSERT INTO `job_log` VALUES (8727, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 22:31:16');
INSERT INTO `job_log` VALUES (8728, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 23:09:55');
INSERT INTO `job_log` VALUES (8729, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 23:09:55');
INSERT INTO `job_log` VALUES (8730, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-21 23:33:20');
INSERT INTO `job_log` VALUES (8731, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-21 23:33:20');
INSERT INTO `job_log` VALUES (8732, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-22 00:08:34');
INSERT INTO `job_log` VALUES (8733, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-22 00:08:34');
INSERT INTO `job_log` VALUES (8734, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-22 01:04:26');
INSERT INTO `job_log` VALUES (8735, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-22 01:04:26');
INSERT INTO `job_log` VALUES (8736, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-22 01:04:26');
INSERT INTO `job_log` VALUES (8737, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-22 01:04:26');
INSERT INTO `job_log` VALUES (8738, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-22 01:30:00');
INSERT INTO `job_log` VALUES (8739, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-22 01:31:00');
INSERT INTO `job_log` VALUES (8740, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-22 01:41:38');
INSERT INTO `job_log` VALUES (8741, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-22 01:41:38');
INSERT INTO `job_log` VALUES (8742, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-22 01:41:38');
INSERT INTO `job_log` VALUES (8743, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-22 01:42:09');
INSERT INTO `job_log` VALUES (8744, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-22 01:42:09');
INSERT INTO `job_log` VALUES (8745, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-22 01:42:09');
INSERT INTO `job_log` VALUES (8746, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-22 02:00:00');
INSERT INTO `job_log` VALUES (8747, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-22 02:01:00');
INSERT INTO `job_log` VALUES (8748, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-22 02:30:00');
INSERT INTO `job_log` VALUES (8749, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-22 02:31:00');
INSERT INTO `job_log` VALUES (8750, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-26 03:48:42');
INSERT INTO `job_log` VALUES (8751, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-26 03:48:42');
INSERT INTO `job_log` VALUES (8752, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-26 03:48:42');
INSERT INTO `job_log` VALUES (8753, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-26 03:53:02');
INSERT INTO `job_log` VALUES (8754, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-26 03:53:02');
INSERT INTO `job_log` VALUES (8755, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-26 03:53:02');
INSERT INTO `job_log` VALUES (8756, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-26 04:00:00');
INSERT INTO `job_log` VALUES (8757, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-26 04:01:00');
INSERT INTO `job_log` VALUES (8758, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-26 04:33:28');
INSERT INTO `job_log` VALUES (8759, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-26 04:33:28');
INSERT INTO `job_log` VALUES (8760, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-26 05:05:24');
INSERT INTO `job_log` VALUES (8761, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-26 05:05:24');
INSERT INTO `job_log` VALUES (8762, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-26 05:31:23');
INSERT INTO `job_log` VALUES (8763, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-26 05:31:24');
INSERT INTO `job_log` VALUES (8764, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-26 05:36:42');
INSERT INTO `job_log` VALUES (8765, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-26 05:36:42');
INSERT INTO `job_log` VALUES (8766, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-26 05:36:42');
INSERT INTO `job_log` VALUES (8767, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-26 05:37:08');
INSERT INTO `job_log` VALUES (8768, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-26 05:38:15');
INSERT INTO `job_log` VALUES (8769, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-26 05:38:15');
INSERT INTO `job_log` VALUES (8770, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-26 05:38:15');
INSERT INTO `job_log` VALUES (8771, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-26 05:38:31');
INSERT INTO `job_log` VALUES (8772, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-26 05:38:31');
INSERT INTO `job_log` VALUES (8773, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-26 05:38:31');
INSERT INTO `job_log` VALUES (8774, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-26 06:00:00');
INSERT INTO `job_log` VALUES (8775, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-26 06:01:00');
INSERT INTO `job_log` VALUES (8776, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-26 06:18:01');
INSERT INTO `job_log` VALUES (8777, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-26 06:18:02');
INSERT INTO `job_log` VALUES (8778, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-26 06:18:02');
INSERT INTO `job_log` VALUES (8779, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-26 06:18:07');
INSERT INTO `job_log` VALUES (8780, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-26 06:18:07');
INSERT INTO `job_log` VALUES (8781, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-26 06:18:07');
INSERT INTO `job_log` VALUES (8782, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-05-27 02:03:14');
INSERT INTO `job_log` VALUES (8783, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-05-27 02:03:14');
INSERT INTO `job_log` VALUES (8784, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-05-27 02:03:14');
INSERT INTO `job_log` VALUES (8785, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-27 02:30:00');
INSERT INTO `job_log` VALUES (8786, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-27 02:31:00');
INSERT INTO `job_log` VALUES (8787, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-05-27 03:00:00');
INSERT INTO `job_log` VALUES (8788, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-05-27 03:01:00');
INSERT INTO `job_log` VALUES (8789, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:40:19');
INSERT INTO `job_log` VALUES (8790, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:40:20');
INSERT INTO `job_log` VALUES (8791, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:40:20');
INSERT INTO `job_log` VALUES (8792, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-06-03 01:41:40');
INSERT INTO `job_log` VALUES (8793, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:42:16');
INSERT INTO `job_log` VALUES (8794, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:42:16');
INSERT INTO `job_log` VALUES (8795, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:42:16');
INSERT INTO `job_log` VALUES (8796, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:43:13');
INSERT INTO `job_log` VALUES (8797, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:43:13');
INSERT INTO `job_log` VALUES (8798, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:43:13');
INSERT INTO `job_log` VALUES (8799, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:43:16');
INSERT INTO `job_log` VALUES (8800, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:43:16');
INSERT INTO `job_log` VALUES (8801, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:43:16');
INSERT INTO `job_log` VALUES (8802, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:44:05');
INSERT INTO `job_log` VALUES (8803, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:44:05');
INSERT INTO `job_log` VALUES (8804, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:44:05');
INSERT INTO `job_log` VALUES (8805, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:44:09');
INSERT INTO `job_log` VALUES (8806, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:44:09');
INSERT INTO `job_log` VALUES (8807, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:44:09');
INSERT INTO `job_log` VALUES (8808, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:44:12');
INSERT INTO `job_log` VALUES (8809, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:44:12');
INSERT INTO `job_log` VALUES (8810, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:44:12');
INSERT INTO `job_log` VALUES (8811, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:44:37');
INSERT INTO `job_log` VALUES (8812, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:44:37');
INSERT INTO `job_log` VALUES (8813, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:44:37');
INSERT INTO `job_log` VALUES (8814, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:45:08');
INSERT INTO `job_log` VALUES (8815, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:45:08');
INSERT INTO `job_log` VALUES (8816, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:45:08');
INSERT INTO `job_log` VALUES (8817, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:45:10');
INSERT INTO `job_log` VALUES (8818, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:45:10');
INSERT INTO `job_log` VALUES (8819, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:45:10');
INSERT INTO `job_log` VALUES (8820, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:45:20');
INSERT INTO `job_log` VALUES (8821, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:45:20');
INSERT INTO `job_log` VALUES (8822, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:45:20');
INSERT INTO `job_log` VALUES (8823, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:45:36');
INSERT INTO `job_log` VALUES (8824, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:45:36');
INSERT INTO `job_log` VALUES (8825, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:45:36');
INSERT INTO `job_log` VALUES (8826, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:46:28');
INSERT INTO `job_log` VALUES (8827, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:46:28');
INSERT INTO `job_log` VALUES (8828, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:46:28');
INSERT INTO `job_log` VALUES (8829, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:46:32');
INSERT INTO `job_log` VALUES (8830, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:46:32');
INSERT INTO `job_log` VALUES (8831, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:46:32');
INSERT INTO `job_log` VALUES (8832, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:46:36');
INSERT INTO `job_log` VALUES (8833, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:46:36');
INSERT INTO `job_log` VALUES (8834, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:46:36');
INSERT INTO `job_log` VALUES (8835, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:47:03');
INSERT INTO `job_log` VALUES (8836, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:47:03');
INSERT INTO `job_log` VALUES (8837, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:47:03');
INSERT INTO `job_log` VALUES (8838, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:59:08');
INSERT INTO `job_log` VALUES (8839, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:59:08');
INSERT INTO `job_log` VALUES (8840, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:59:08');
INSERT INTO `job_log` VALUES (8841, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-03 01:59:16');
INSERT INTO `job_log` VALUES (8842, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-03 01:59:16');
INSERT INTO `job_log` VALUES (8843, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-03 01:59:16');
INSERT INTO `job_log` VALUES (8844, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-06-03 02:00:00');
INSERT INTO `job_log` VALUES (8845, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-06-03 02:01:00');
INSERT INTO `job_log` VALUES (8846, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-16 03:22:29');
INSERT INTO `job_log` VALUES (8847, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-16 03:22:29');
INSERT INTO `job_log` VALUES (8848, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-16 03:22:29');
INSERT INTO `job_log` VALUES (8849, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-16 03:29:27');
INSERT INTO `job_log` VALUES (8850, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-16 03:29:27');
INSERT INTO `job_log` VALUES (8851, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-16 03:29:27');
INSERT INTO `job_log` VALUES (8852, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-06-16 03:30:00');
INSERT INTO `job_log` VALUES (8853, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-18 06:46:56');
INSERT INTO `job_log` VALUES (8854, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-18 06:46:56');
INSERT INTO `job_log` VALUES (8855, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-18 06:46:56');
INSERT INTO `job_log` VALUES (8856, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-06-18 07:00:00');
INSERT INTO `job_log` VALUES (8857, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-06-18 07:01:00');
INSERT INTO `job_log` VALUES (8858, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-06-27 01:45:47');
INSERT INTO `job_log` VALUES (8859, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-06-27 01:45:47');
INSERT INTO `job_log` VALUES (8860, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-06-27 01:45:47');
INSERT INTO `job_log` VALUES (8861, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:07:55');
INSERT INTO `job_log` VALUES (8862, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:07:55');
INSERT INTO `job_log` VALUES (8863, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:07:55');
INSERT INTO `job_log` VALUES (8864, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:08:51');
INSERT INTO `job_log` VALUES (8865, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:08:51');
INSERT INTO `job_log` VALUES (8866, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:08:51');
INSERT INTO `job_log` VALUES (8867, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:09:07');
INSERT INTO `job_log` VALUES (8868, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:09:07');
INSERT INTO `job_log` VALUES (8869, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:09:07');
INSERT INTO `job_log` VALUES (8870, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:13:17');
INSERT INTO `job_log` VALUES (8871, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:13:17');
INSERT INTO `job_log` VALUES (8872, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:13:17');
INSERT INTO `job_log` VALUES (8873, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:13:18');
INSERT INTO `job_log` VALUES (8874, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:13:18');
INSERT INTO `job_log` VALUES (8875, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:13:18');
INSERT INTO `job_log` VALUES (8876, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:14:13');
INSERT INTO `job_log` VALUES (8877, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:14:13');
INSERT INTO `job_log` VALUES (8878, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:14:13');
INSERT INTO `job_log` VALUES (8879, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:14:34');
INSERT INTO `job_log` VALUES (8880, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:14:34');
INSERT INTO `job_log` VALUES (8881, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:14:34');
INSERT INTO `job_log` VALUES (8882, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:15:47');
INSERT INTO `job_log` VALUES (8883, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:15:47');
INSERT INTO `job_log` VALUES (8884, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:15:47');
INSERT INTO `job_log` VALUES (8885, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:16:19');
INSERT INTO `job_log` VALUES (8886, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:16:19');
INSERT INTO `job_log` VALUES (8887, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:16:19');
INSERT INTO `job_log` VALUES (8888, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:17:14');
INSERT INTO `job_log` VALUES (8889, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:17:14');
INSERT INTO `job_log` VALUES (8890, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:17:14');
INSERT INTO `job_log` VALUES (8891, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:23:53');
INSERT INTO `job_log` VALUES (8892, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:23:53');
INSERT INTO `job_log` VALUES (8893, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:23:53');
INSERT INTO `job_log` VALUES (8894, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:29:14');
INSERT INTO `job_log` VALUES (8895, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:29:14');
INSERT INTO `job_log` VALUES (8896, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:29:14');
INSERT INTO `job_log` VALUES (8897, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:29:30');
INSERT INTO `job_log` VALUES (8898, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:29:30');
INSERT INTO `job_log` VALUES (8899, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:29:30');
INSERT INTO `job_log` VALUES (8900, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-13 03:30:00');
INSERT INTO `job_log` VALUES (8901, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-13 03:31:00');
INSERT INTO `job_log` VALUES (8902, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:33:30');
INSERT INTO `job_log` VALUES (8903, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:33:30');
INSERT INTO `job_log` VALUES (8904, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:33:30');
INSERT INTO `job_log` VALUES (8905, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:40:41');
INSERT INTO `job_log` VALUES (8906, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:40:41');
INSERT INTO `job_log` VALUES (8907, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:40:41');
INSERT INTO `job_log` VALUES (8908, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:42:11');
INSERT INTO `job_log` VALUES (8909, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:42:11');
INSERT INTO `job_log` VALUES (8910, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:42:11');
INSERT INTO `job_log` VALUES (8911, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:46:55');
INSERT INTO `job_log` VALUES (8912, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:46:55');
INSERT INTO `job_log` VALUES (8913, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:46:55');
INSERT INTO `job_log` VALUES (8914, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:47:51');
INSERT INTO `job_log` VALUES (8915, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:47:51');
INSERT INTO `job_log` VALUES (8916, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:47:51');
INSERT INTO `job_log` VALUES (8917, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:48:32');
INSERT INTO `job_log` VALUES (8918, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:48:32');
INSERT INTO `job_log` VALUES (8919, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:48:32');
INSERT INTO `job_log` VALUES (8920, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:49:27');
INSERT INTO `job_log` VALUES (8921, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:49:27');
INSERT INTO `job_log` VALUES (8922, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:49:27');
INSERT INTO `job_log` VALUES (8923, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 03:58:11');
INSERT INTO `job_log` VALUES (8924, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 03:58:11');
INSERT INTO `job_log` VALUES (8925, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 03:58:11');
INSERT INTO `job_log` VALUES (8926, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-13 04:00:00');
INSERT INTO `job_log` VALUES (8927, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-13 04:01:00');
INSERT INTO `job_log` VALUES (8928, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 04:09:50');
INSERT INTO `job_log` VALUES (8929, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 04:09:50');
INSERT INTO `job_log` VALUES (8930, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 04:09:50');
INSERT INTO `job_log` VALUES (8931, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-13 04:20:51');
INSERT INTO `job_log` VALUES (8932, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-13 04:20:51');
INSERT INTO `job_log` VALUES (8933, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-13 04:20:51');
INSERT INTO `job_log` VALUES (8934, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-13 04:40:16');
INSERT INTO `job_log` VALUES (8935, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-13 04:40:16');
INSERT INTO `job_log` VALUES (8936, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-13 05:00:00');
INSERT INTO `job_log` VALUES (8937, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-13 05:16:21');
INSERT INTO `job_log` VALUES (8938, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-13 05:34:22');
INSERT INTO `job_log` VALUES (8939, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-13 05:34:22');
INSERT INTO `job_log` VALUES (8940, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-13 06:00:04');
INSERT INTO `job_log` VALUES (8941, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-13 06:01:00');
INSERT INTO `job_log` VALUES (8942, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-13 06:30:25');
INSERT INTO `job_log` VALUES (8943, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-13 06:46:20');
INSERT INTO `job_log` VALUES (8944, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-13 07:04:45');
INSERT INTO `job_log` VALUES (8945, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-13 07:04:45');
INSERT INTO `job_log` VALUES (8946, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-13 07:30:00');
INSERT INTO `job_log` VALUES (8947, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-13 07:31:00');
INSERT INTO `job_log` VALUES (8948, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-13 08:14:24');
INSERT INTO `job_log` VALUES (8949, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-13 08:14:24');
INSERT INTO `job_log` VALUES (8950, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-13 08:30:00');
INSERT INTO `job_log` VALUES (8951, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-13 08:31:00');
INSERT INTO `job_log` VALUES (8952, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-13 09:07:05');
INSERT INTO `job_log` VALUES (8953, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-13 09:07:05');
INSERT INTO `job_log` VALUES (8954, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-24 08:51:39');
INSERT INTO `job_log` VALUES (8955, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-24 08:51:39');
INSERT INTO `job_log` VALUES (8956, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-24 08:51:39');
INSERT INTO `job_log` VALUES (8957, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-24 08:52:52');
INSERT INTO `job_log` VALUES (8958, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-24 08:52:52');
INSERT INTO `job_log` VALUES (8959, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-24 08:52:52');
INSERT INTO `job_log` VALUES (8960, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 09:00:00');
INSERT INTO `job_log` VALUES (8961, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 09:01:00');
INSERT INTO `job_log` VALUES (8962, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-24 09:30:07');
INSERT INTO `job_log` VALUES (8963, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-24 09:30:07');
INSERT INTO `job_log` VALUES (8964, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-24 09:30:07');
INSERT INTO `job_log` VALUES (8965, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 09:31:00');
INSERT INTO `job_log` VALUES (8966, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 10:14:33');
INSERT INTO `job_log` VALUES (8967, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 10:14:33');
INSERT INTO `job_log` VALUES (8968, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 10:52:54');
INSERT INTO `job_log` VALUES (8969, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 10:52:54');
INSERT INTO `job_log` VALUES (8970, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 11:11:48');
INSERT INTO `job_log` VALUES (8971, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 11:11:48');
INSERT INTO `job_log` VALUES (8972, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 11:41:02');
INSERT INTO `job_log` VALUES (8973, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 11:41:02');
INSERT INTO `job_log` VALUES (8974, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 12:00:22');
INSERT INTO `job_log` VALUES (8975, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 12:01:41');
INSERT INTO `job_log` VALUES (8976, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 12:35:41');
INSERT INTO `job_log` VALUES (8977, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 12:35:41');
INSERT INTO `job_log` VALUES (8978, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 13:00:25');
INSERT INTO `job_log` VALUES (8979, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 13:02:35');
INSERT INTO `job_log` VALUES (8980, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 13:30:07');
INSERT INTO `job_log` VALUES (8981, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 13:42:32');
INSERT INTO `job_log` VALUES (8982, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 14:04:01');
INSERT INTO `job_log` VALUES (8983, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 14:04:01');
INSERT INTO `job_log` VALUES (8984, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 14:40:30');
INSERT INTO `job_log` VALUES (8985, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 14:40:30');
INSERT INTO `job_log` VALUES (8986, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 15:05:03');
INSERT INTO `job_log` VALUES (8987, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 15:05:03');
INSERT INTO `job_log` VALUES (8988, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 15:42:52');
INSERT INTO `job_log` VALUES (8989, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 15:42:52');
INSERT INTO `job_log` VALUES (8990, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 16:00:02');
INSERT INTO `job_log` VALUES (8991, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-09-24 16:00:02');
INSERT INTO `job_log` VALUES (8992, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 16:02:11');
INSERT INTO `job_log` VALUES (8993, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 16:31:34');
INSERT INTO `job_log` VALUES (8994, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 16:31:34');
INSERT INTO `job_log` VALUES (8995, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 17:04:18');
INSERT INTO `job_log` VALUES (8996, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 17:04:18');
INSERT INTO `job_log` VALUES (8997, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 17:35:40');
INSERT INTO `job_log` VALUES (8998, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 17:35:40');
INSERT INTO `job_log` VALUES (8999, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 18:13:54');
INSERT INTO `job_log` VALUES (9000, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 18:13:54');
INSERT INTO `job_log` VALUES (9001, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 18:31:03');
INSERT INTO `job_log` VALUES (9002, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 18:31:03');
INSERT INTO `job_log` VALUES (9003, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 19:08:19');
INSERT INTO `job_log` VALUES (9004, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 19:08:19');
INSERT INTO `job_log` VALUES (9005, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 19:34:07');
INSERT INTO `job_log` VALUES (9006, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 19:34:07');
INSERT INTO `job_log` VALUES (9007, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 20:11:31');
INSERT INTO `job_log` VALUES (9008, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 20:11:31');
INSERT INTO `job_log` VALUES (9009, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 20:30:51');
INSERT INTO `job_log` VALUES (9010, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 20:31:25');
INSERT INTO `job_log` VALUES (9011, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 21:00:13');
INSERT INTO `job_log` VALUES (9012, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 21:16:33');
INSERT INTO `job_log` VALUES (9013, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 21:35:52');
INSERT INTO `job_log` VALUES (9014, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 21:35:52');
INSERT INTO `job_log` VALUES (9015, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 22:01:17');
INSERT INTO `job_log` VALUES (9016, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 22:01:17');
INSERT INTO `job_log` VALUES (9017, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 22:36:16');
INSERT INTO `job_log` VALUES (9018, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 22:36:16');
INSERT INTO `job_log` VALUES (9019, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 23:13:18');
INSERT INTO `job_log` VALUES (9020, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 23:13:18');
INSERT INTO `job_log` VALUES (9021, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-24 23:35:41');
INSERT INTO `job_log` VALUES (9022, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-24 23:35:41');
INSERT INTO `job_log` VALUES (9023, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 00:00:15');
INSERT INTO `job_log` VALUES (9024, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 00:16:35');
INSERT INTO `job_log` VALUES (9025, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 01:13:07');
INSERT INTO `job_log` VALUES (9026, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 01:13:07');
INSERT INTO `job_log` VALUES (9027, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 01:13:07');
INSERT INTO `job_log` VALUES (9028, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 01:13:07');
INSERT INTO `job_log` VALUES (9029, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 01:30:00');
INSERT INTO `job_log` VALUES (9030, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 01:31:00');
INSERT INTO `job_log` VALUES (9031, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 02:00:00');
INSERT INTO `job_log` VALUES (9032, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 02:01:00');
INSERT INTO `job_log` VALUES (9033, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 02:30:00');
INSERT INTO `job_log` VALUES (9034, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 02:31:00');
INSERT INTO `job_log` VALUES (9035, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 03:00:00');
INSERT INTO `job_log` VALUES (9036, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 03:01:00');
INSERT INTO `job_log` VALUES (9037, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 03:30:00');
INSERT INTO `job_log` VALUES (9038, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 03:31:00');
INSERT INTO `job_log` VALUES (9039, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 04:09:54');
INSERT INTO `job_log` VALUES (9040, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 04:09:54');
INSERT INTO `job_log` VALUES (9041, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 04:42:44');
INSERT INTO `job_log` VALUES (9042, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 04:42:44');
INSERT INTO `job_log` VALUES (9043, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 05:15:25');
INSERT INTO `job_log` VALUES (9044, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 05:15:25');
INSERT INTO `job_log` VALUES (9045, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 05:32:00');
INSERT INTO `job_log` VALUES (9046, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 05:32:00');
INSERT INTO `job_log` VALUES (9047, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 06:00:00');
INSERT INTO `job_log` VALUES (9048, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 06:01:00');
INSERT INTO `job_log` VALUES (9049, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 06:30:00');
INSERT INTO `job_log` VALUES (9050, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 06:31:00');
INSERT INTO `job_log` VALUES (9051, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 07:00:00');
INSERT INTO `job_log` VALUES (9052, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 07:01:00');
INSERT INTO `job_log` VALUES (9053, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 07:30:00');
INSERT INTO `job_log` VALUES (9054, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 07:31:00');
INSERT INTO `job_log` VALUES (9055, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 08:00:00');
INSERT INTO `job_log` VALUES (9056, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 08:01:00');
INSERT INTO `job_log` VALUES (9057, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 08:30:00');
INSERT INTO `job_log` VALUES (9058, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 08:31:00');
INSERT INTO `job_log` VALUES (9059, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 09:00:00');
INSERT INTO `job_log` VALUES (9060, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 09:01:00');
INSERT INTO `job_log` VALUES (9061, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-25 09:28:27');
INSERT INTO `job_log` VALUES (9062, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-25 09:28:27');
INSERT INTO `job_log` VALUES (9063, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-25 09:28:27');
INSERT INTO `job_log` VALUES (9064, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-25 09:28:50');
INSERT INTO `job_log` VALUES (9065, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-25 09:28:50');
INSERT INTO `job_log` VALUES (9066, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-25 09:28:50');
INSERT INTO `job_log` VALUES (9067, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 09:30:00');
INSERT INTO `job_log` VALUES (9068, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 10:04:25');
INSERT INTO `job_log` VALUES (9069, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 10:04:25');
INSERT INTO `job_log` VALUES (9070, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 10:04:25');
INSERT INTO `job_log` VALUES (9071, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 10:46:19');
INSERT INTO `job_log` VALUES (9072, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 10:46:19');
INSERT INTO `job_log` VALUES (9073, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 11:03:59');
INSERT INTO `job_log` VALUES (9074, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 11:03:59');
INSERT INTO `job_log` VALUES (9075, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 11:33:02');
INSERT INTO `job_log` VALUES (9076, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 11:33:02');
INSERT INTO `job_log` VALUES (9077, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 12:07:28');
INSERT INTO `job_log` VALUES (9078, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 12:07:28');
INSERT INTO `job_log` VALUES (9079, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 12:48:01');
INSERT INTO `job_log` VALUES (9080, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 12:48:01');
INSERT INTO `job_log` VALUES (9081, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 13:00:59');
INSERT INTO `job_log` VALUES (9082, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 13:01:00');
INSERT INTO `job_log` VALUES (9083, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 13:30:41');
INSERT INTO `job_log` VALUES (9084, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 13:31:25');
INSERT INTO `job_log` VALUES (9085, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 14:00:20');
INSERT INTO `job_log` VALUES (9086, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 14:02:29');
INSERT INTO `job_log` VALUES (9087, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 14:34:58');
INSERT INTO `job_log` VALUES (9088, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 14:34:58');
INSERT INTO `job_log` VALUES (9089, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 15:00:01');
INSERT INTO `job_log` VALUES (9090, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 15:02:11');
INSERT INTO `job_log` VALUES (9091, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 15:35:28');
INSERT INTO `job_log` VALUES (9092, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 15:35:28');
INSERT INTO `job_log` VALUES (9093, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 16:11:16');
INSERT INTO `job_log` VALUES (9094, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-09-25 16:11:16');
INSERT INTO `job_log` VALUES (9095, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 16:11:16');
INSERT INTO `job_log` VALUES (9096, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 16:37:06');
INSERT INTO `job_log` VALUES (9097, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 16:37:06');
INSERT INTO `job_log` VALUES (9098, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 17:00:36');
INSERT INTO `job_log` VALUES (9099, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 17:02:15');
INSERT INTO `job_log` VALUES (9100, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 17:45:13');
INSERT INTO `job_log` VALUES (9101, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 17:45:13');
INSERT INTO `job_log` VALUES (9102, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 18:04:32');
INSERT INTO `job_log` VALUES (9103, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 18:04:32');
INSERT INTO `job_log` VALUES (9104, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 18:36:24');
INSERT INTO `job_log` VALUES (9105, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 18:36:24');
INSERT INTO `job_log` VALUES (9106, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 19:01:22');
INSERT INTO `job_log` VALUES (9107, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 19:01:22');
INSERT INTO `job_log` VALUES (9108, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 19:42:16');
INSERT INTO `job_log` VALUES (9109, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 19:42:16');
INSERT INTO `job_log` VALUES (9110, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 20:02:55');
INSERT INTO `job_log` VALUES (9111, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 20:02:55');
INSERT INTO `job_log` VALUES (9112, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 20:41:52');
INSERT INTO `job_log` VALUES (9113, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 20:41:52');
INSERT INTO `job_log` VALUES (9114, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 21:06:26');
INSERT INTO `job_log` VALUES (9115, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 21:06:26');
INSERT INTO `job_log` VALUES (9116, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 21:45:59');
INSERT INTO `job_log` VALUES (9117, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 21:45:59');
INSERT INTO `job_log` VALUES (9118, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 22:04:10');
INSERT INTO `job_log` VALUES (9119, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 22:04:10');
INSERT INTO `job_log` VALUES (9120, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 22:42:53');
INSERT INTO `job_log` VALUES (9121, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 22:42:53');
INSERT INTO `job_log` VALUES (9122, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 23:14:50');
INSERT INTO `job_log` VALUES (9123, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 23:14:50');
INSERT INTO `job_log` VALUES (9124, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-25 23:30:26');
INSERT INTO `job_log` VALUES (9125, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-25 23:31:00');
INSERT INTO `job_log` VALUES (9126, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 00:06:37');
INSERT INTO `job_log` VALUES (9127, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 00:06:37');
INSERT INTO `job_log` VALUES (9128, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 01:12:09');
INSERT INTO `job_log` VALUES (9129, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 01:12:09');
INSERT INTO `job_log` VALUES (9130, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 01:12:09');
INSERT INTO `job_log` VALUES (9131, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 01:12:09');
INSERT INTO `job_log` VALUES (9132, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 01:30:00');
INSERT INTO `job_log` VALUES (9133, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 01:31:00');
INSERT INTO `job_log` VALUES (9134, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 01:58:30');
INSERT INTO `job_log` VALUES (9135, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 01:58:30');
INSERT INTO `job_log` VALUES (9136, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 01:58:30');
INSERT INTO `job_log` VALUES (9137, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 01:58:30');
INSERT INTO `job_log` VALUES (9138, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 01:58:31');
INSERT INTO `job_log` VALUES (9139, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 01:58:31');
INSERT INTO `job_log` VALUES (9140, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 01:58:31');
INSERT INTO `job_log` VALUES (9141, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '停止任务成功', '0', '', '2025-09-26 01:58:42');
INSERT INTO `job_log` VALUES (9142, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 01:58:51');
INSERT INTO `job_log` VALUES (9143, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 02:00:00');
INSERT INTO `job_log` VALUES (9144, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 02:01:00');
INSERT INTO `job_log` VALUES (9145, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 02:30:00');
INSERT INTO `job_log` VALUES (9146, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 02:31:00');
INSERT INTO `job_log` VALUES (9147, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 03:00:00');
INSERT INTO `job_log` VALUES (9148, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 03:01:00');
INSERT INTO `job_log` VALUES (9149, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 03:24:53');
INSERT INTO `job_log` VALUES (9150, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 03:24:53');
INSERT INTO `job_log` VALUES (9151, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 03:24:53');
INSERT INTO `job_log` VALUES (9152, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 03:30:00');
INSERT INTO `job_log` VALUES (9153, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 03:31:00');
INSERT INTO `job_log` VALUES (9154, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 03:53:45');
INSERT INTO `job_log` VALUES (9155, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 03:53:45');
INSERT INTO `job_log` VALUES (9156, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 03:53:45');
INSERT INTO `job_log` VALUES (9157, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 03:57:37');
INSERT INTO `job_log` VALUES (9158, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 03:57:37');
INSERT INTO `job_log` VALUES (9159, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 03:57:37');
INSERT INTO `job_log` VALUES (9160, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 03:57:47');
INSERT INTO `job_log` VALUES (9161, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 03:57:47');
INSERT INTO `job_log` VALUES (9162, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 03:57:47');
INSERT INTO `job_log` VALUES (9163, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 04:14:18');
INSERT INTO `job_log` VALUES (9164, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 04:14:18');
INSERT INTO `job_log` VALUES (9165, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 04:30:19');
INSERT INTO `job_log` VALUES (9166, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 04:46:13');
INSERT INTO `job_log` VALUES (9167, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 05:03:08');
INSERT INTO `job_log` VALUES (9168, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 05:03:08');
INSERT INTO `job_log` VALUES (9169, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 05:34:47');
INSERT INTO `job_log` VALUES (9170, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 05:34:47');
INSERT INTO `job_log` VALUES (9171, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 05:45:29');
INSERT INTO `job_log` VALUES (9172, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 05:45:29');
INSERT INTO `job_log` VALUES (9173, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 05:45:30');
INSERT INTO `job_log` VALUES (9174, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 05:48:23');
INSERT INTO `job_log` VALUES (9175, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 05:48:23');
INSERT INTO `job_log` VALUES (9176, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 05:48:23');
INSERT INTO `job_log` VALUES (9177, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 06:00:00');
INSERT INTO `job_log` VALUES (9178, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 06:01:00');
INSERT INTO `job_log` VALUES (9179, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:15:27');
INSERT INTO `job_log` VALUES (9180, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:15:27');
INSERT INTO `job_log` VALUES (9181, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:15:27');
INSERT INTO `job_log` VALUES (9182, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:24:06');
INSERT INTO `job_log` VALUES (9183, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:24:06');
INSERT INTO `job_log` VALUES (9184, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:24:06');
INSERT INTO `job_log` VALUES (9185, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:24:42');
INSERT INTO `job_log` VALUES (9186, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:24:42');
INSERT INTO `job_log` VALUES (9187, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:24:42');
INSERT INTO `job_log` VALUES (9188, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 06:30:00');
INSERT INTO `job_log` VALUES (9189, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 06:31:00');
INSERT INTO `job_log` VALUES (9190, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:35:04');
INSERT INTO `job_log` VALUES (9191, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:35:04');
INSERT INTO `job_log` VALUES (9192, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:35:04');
INSERT INTO `job_log` VALUES (9193, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:39:59');
INSERT INTO `job_log` VALUES (9194, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:39:59');
INSERT INTO `job_log` VALUES (9195, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:39:59');
INSERT INTO `job_log` VALUES (9196, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:40:41');
INSERT INTO `job_log` VALUES (9197, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:40:41');
INSERT INTO `job_log` VALUES (9198, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:40:41');
INSERT INTO `job_log` VALUES (9199, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:40:52');
INSERT INTO `job_log` VALUES (9200, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:40:52');
INSERT INTO `job_log` VALUES (9201, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:40:52');
INSERT INTO `job_log` VALUES (9202, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:43:05');
INSERT INTO `job_log` VALUES (9203, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:43:05');
INSERT INTO `job_log` VALUES (9204, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:43:05');
INSERT INTO `job_log` VALUES (9205, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:43:19');
INSERT INTO `job_log` VALUES (9206, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:43:19');
INSERT INTO `job_log` VALUES (9207, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:43:19');
INSERT INTO `job_log` VALUES (9208, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:43:55');
INSERT INTO `job_log` VALUES (9209, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:43:55');
INSERT INTO `job_log` VALUES (9210, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:43:55');
INSERT INTO `job_log` VALUES (9211, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:44:26');
INSERT INTO `job_log` VALUES (9212, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:44:26');
INSERT INTO `job_log` VALUES (9213, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:44:26');
INSERT INTO `job_log` VALUES (9214, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:44:45');
INSERT INTO `job_log` VALUES (9215, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:44:45');
INSERT INTO `job_log` VALUES (9216, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:44:45');
INSERT INTO `job_log` VALUES (9217, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:45:00');
INSERT INTO `job_log` VALUES (9218, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:45:00');
INSERT INTO `job_log` VALUES (9219, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:45:00');
INSERT INTO `job_log` VALUES (9220, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:45:15');
INSERT INTO `job_log` VALUES (9221, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:45:15');
INSERT INTO `job_log` VALUES (9222, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:45:15');
INSERT INTO `job_log` VALUES (9223, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:56:05');
INSERT INTO `job_log` VALUES (9224, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:56:05');
INSERT INTO `job_log` VALUES (9225, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:56:05');
INSERT INTO `job_log` VALUES (9226, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 06:57:17');
INSERT INTO `job_log` VALUES (9227, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 06:57:17');
INSERT INTO `job_log` VALUES (9228, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 06:57:17');
INSERT INTO `job_log` VALUES (9229, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 07:00:00');
INSERT INTO `job_log` VALUES (9230, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 07:01:00');
INSERT INTO `job_log` VALUES (9231, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 07:16:41');
INSERT INTO `job_log` VALUES (9232, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 07:16:41');
INSERT INTO `job_log` VALUES (9233, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 07:16:41');
INSERT INTO `job_log` VALUES (9234, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 07:16:55');
INSERT INTO `job_log` VALUES (9235, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 07:16:55');
INSERT INTO `job_log` VALUES (9236, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 07:16:55');
INSERT INTO `job_log` VALUES (9237, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 07:17:26');
INSERT INTO `job_log` VALUES (9238, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 07:17:26');
INSERT INTO `job_log` VALUES (9239, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 07:17:26');
INSERT INTO `job_log` VALUES (9240, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 07:18:19');
INSERT INTO `job_log` VALUES (9241, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 07:18:19');
INSERT INTO `job_log` VALUES (9242, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 07:18:19');
INSERT INTO `job_log` VALUES (9243, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 07:21:26');
INSERT INTO `job_log` VALUES (9244, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 07:21:26');
INSERT INTO `job_log` VALUES (9245, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 07:21:26');
INSERT INTO `job_log` VALUES (9246, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 07:21:48');
INSERT INTO `job_log` VALUES (9247, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 07:21:48');
INSERT INTO `job_log` VALUES (9248, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 07:21:48');
INSERT INTO `job_log` VALUES (9249, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 07:22:37');
INSERT INTO `job_log` VALUES (9250, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 07:22:37');
INSERT INTO `job_log` VALUES (9251, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 07:22:37');
INSERT INTO `job_log` VALUES (9252, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 07:22:48');
INSERT INTO `job_log` VALUES (9253, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 07:22:48');
INSERT INTO `job_log` VALUES (9254, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 07:22:48');
INSERT INTO `job_log` VALUES (9255, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 07:30:00');
INSERT INTO `job_log` VALUES (9256, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 07:31:00');
INSERT INTO `job_log` VALUES (9257, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 07:55:19');
INSERT INTO `job_log` VALUES (9258, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 07:55:19');
INSERT INTO `job_log` VALUES (9259, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 07:55:19');
INSERT INTO `job_log` VALUES (9260, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 07:56:29');
INSERT INTO `job_log` VALUES (9261, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 07:56:29');
INSERT INTO `job_log` VALUES (9262, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 07:56:29');
INSERT INTO `job_log` VALUES (9263, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 07:58:35');
INSERT INTO `job_log` VALUES (9264, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 07:58:35');
INSERT INTO `job_log` VALUES (9265, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 07:58:35');
INSERT INTO `job_log` VALUES (9266, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 07:58:46');
INSERT INTO `job_log` VALUES (9267, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 07:58:46');
INSERT INTO `job_log` VALUES (9268, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 07:58:46');
INSERT INTO `job_log` VALUES (9269, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 08:00:00');
INSERT INTO `job_log` VALUES (9270, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 08:01:00');
INSERT INTO `job_log` VALUES (9271, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 08:17:23');
INSERT INTO `job_log` VALUES (9272, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 08:17:23');
INSERT INTO `job_log` VALUES (9273, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 08:17:23');
INSERT INTO `job_log` VALUES (9274, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 08:17:29');
INSERT INTO `job_log` VALUES (9275, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 08:17:29');
INSERT INTO `job_log` VALUES (9276, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 08:17:29');
INSERT INTO `job_log` VALUES (9277, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 08:17:43');
INSERT INTO `job_log` VALUES (9278, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 08:17:43');
INSERT INTO `job_log` VALUES (9279, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 08:17:43');
INSERT INTO `job_log` VALUES (9280, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 08:17:49');
INSERT INTO `job_log` VALUES (9281, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 08:17:49');
INSERT INTO `job_log` VALUES (9282, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 08:17:49');
INSERT INTO `job_log` VALUES (9283, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 08:18:14');
INSERT INTO `job_log` VALUES (9284, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 08:18:14');
INSERT INTO `job_log` VALUES (9285, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 08:18:14');
INSERT INTO `job_log` VALUES (9286, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 08:30:00');
INSERT INTO `job_log` VALUES (9287, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 08:31:00');
INSERT INTO `job_log` VALUES (9288, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 08:33:42');
INSERT INTO `job_log` VALUES (9289, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 08:33:42');
INSERT INTO `job_log` VALUES (9290, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 08:33:42');
INSERT INTO `job_log` VALUES (9291, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 09:00:00');
INSERT INTO `job_log` VALUES (9292, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 09:01:00');
INSERT INTO `job_log` VALUES (9293, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 09:30:00');
INSERT INTO `job_log` VALUES (9294, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 09:31:00');
INSERT INTO `job_log` VALUES (9295, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 10:28:43');
INSERT INTO `job_log` VALUES (9296, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 10:28:43');
INSERT INTO `job_log` VALUES (9297, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 10:45:03');
INSERT INTO `job_log` VALUES (9298, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 10:45:03');
INSERT INTO `job_log` VALUES (9299, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 11:05:15');
INSERT INTO `job_log` VALUES (9300, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 11:05:15');
INSERT INTO `job_log` VALUES (9301, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 11:26:07');
INSERT INTO `job_log` VALUES (9302, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 11:26:07');
INSERT INTO `job_log` VALUES (9303, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 11:26:07');
INSERT INTO `job_log` VALUES (9304, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 11:30:00');
INSERT INTO `job_log` VALUES (9305, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 11:31:00');
INSERT INTO `job_log` VALUES (9306, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 11:43:50');
INSERT INTO `job_log` VALUES (9307, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 11:43:50');
INSERT INTO `job_log` VALUES (9308, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 11:43:50');
INSERT INTO `job_log` VALUES (9309, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 11:50:33');
INSERT INTO `job_log` VALUES (9310, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 11:50:33');
INSERT INTO `job_log` VALUES (9311, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 11:50:33');
INSERT INTO `job_log` VALUES (9312, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 11:56:00');
INSERT INTO `job_log` VALUES (9313, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 11:56:00');
INSERT INTO `job_log` VALUES (9314, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 11:56:00');
INSERT INTO `job_log` VALUES (9315, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 11:57:23');
INSERT INTO `job_log` VALUES (9316, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 11:57:23');
INSERT INTO `job_log` VALUES (9317, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 11:57:23');
INSERT INTO `job_log` VALUES (9318, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 11:57:35');
INSERT INTO `job_log` VALUES (9319, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 11:57:35');
INSERT INTO `job_log` VALUES (9320, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 11:57:35');
INSERT INTO `job_log` VALUES (9321, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 11:57:49');
INSERT INTO `job_log` VALUES (9322, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 11:57:49');
INSERT INTO `job_log` VALUES (9323, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 11:57:49');
INSERT INTO `job_log` VALUES (9324, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 11:59:58');
INSERT INTO `job_log` VALUES (9325, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 11:59:58');
INSERT INTO `job_log` VALUES (9326, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 11:59:58');
INSERT INTO `job_log` VALUES (9327, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 12:00:00');
INSERT INTO `job_log` VALUES (9328, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 12:01:00');
INSERT INTO `job_log` VALUES (9329, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 12:01:57');
INSERT INTO `job_log` VALUES (9330, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:02');
INSERT INTO `job_log` VALUES (9331, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:02');
INSERT INTO `job_log` VALUES (9332, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:02');
INSERT INTO `job_log` VALUES (9333, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:14');
INSERT INTO `job_log` VALUES (9334, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:14');
INSERT INTO `job_log` VALUES (9335, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:14');
INSERT INTO `job_log` VALUES (9336, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:40');
INSERT INTO `job_log` VALUES (9337, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:40');
INSERT INTO `job_log` VALUES (9338, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:40');
INSERT INTO `job_log` VALUES (9339, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:52');
INSERT INTO `job_log` VALUES (9340, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:58');
INSERT INTO `job_log` VALUES (9341, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:58');
INSERT INTO `job_log` VALUES (9342, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 12:02:58');
INSERT INTO `job_log` VALUES (9343, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 12:08:01');
INSERT INTO `job_log` VALUES (9344, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 12:08:01');
INSERT INTO `job_log` VALUES (9345, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 12:08:01');
INSERT INTO `job_log` VALUES (9346, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 12:08:11');
INSERT INTO `job_log` VALUES (9347, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 12:08:11');
INSERT INTO `job_log` VALUES (9348, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 12:08:11');
INSERT INTO `job_log` VALUES (9349, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 12:08:17');
INSERT INTO `job_log` VALUES (9350, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 12:08:17');
INSERT INTO `job_log` VALUES (9351, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 12:08:17');
INSERT INTO `job_log` VALUES (9352, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 12:08:57');
INSERT INTO `job_log` VALUES (9353, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 12:08:57');
INSERT INTO `job_log` VALUES (9354, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 12:08:57');
INSERT INTO `job_log` VALUES (9355, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 12:10:30');
INSERT INTO `job_log` VALUES (9356, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 12:10:30');
INSERT INTO `job_log` VALUES (9357, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 12:10:30');
INSERT INTO `job_log` VALUES (9358, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 12:10:35');
INSERT INTO `job_log` VALUES (9359, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 12:10:35');
INSERT INTO `job_log` VALUES (9360, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 12:10:35');
INSERT INTO `job_log` VALUES (9361, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 12:30:00');
INSERT INTO `job_log` VALUES (9362, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 12:31:00');
INSERT INTO `job_log` VALUES (9363, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 13:00:00');
INSERT INTO `job_log` VALUES (9364, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 13:01:00');
INSERT INTO `job_log` VALUES (9365, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 13:30:00');
INSERT INTO `job_log` VALUES (9366, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 13:31:00');
INSERT INTO `job_log` VALUES (9367, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 13:51:37');
INSERT INTO `job_log` VALUES (9368, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 13:51:38');
INSERT INTO `job_log` VALUES (9369, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 13:51:38');
INSERT INTO `job_log` VALUES (9370, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 13:55:38');
INSERT INTO `job_log` VALUES (9371, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 13:55:38');
INSERT INTO `job_log` VALUES (9372, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 13:55:38');
INSERT INTO `job_log` VALUES (9373, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 13:55:50');
INSERT INTO `job_log` VALUES (9374, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 13:55:50');
INSERT INTO `job_log` VALUES (9375, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 13:55:50');
INSERT INTO `job_log` VALUES (9376, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 13:57:13');
INSERT INTO `job_log` VALUES (9377, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 13:57:13');
INSERT INTO `job_log` VALUES (9378, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 13:57:13');
INSERT INTO `job_log` VALUES (9379, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 13:57:21');
INSERT INTO `job_log` VALUES (9380, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 13:57:21');
INSERT INTO `job_log` VALUES (9381, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 13:57:21');
INSERT INTO `job_log` VALUES (9382, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 13:57:50');
INSERT INTO `job_log` VALUES (9383, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 13:57:50');
INSERT INTO `job_log` VALUES (9384, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 13:57:50');
INSERT INTO `job_log` VALUES (9385, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 13:58:25');
INSERT INTO `job_log` VALUES (9386, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 13:58:25');
INSERT INTO `job_log` VALUES (9387, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 13:58:25');
INSERT INTO `job_log` VALUES (9388, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 14:00:00');
INSERT INTO `job_log` VALUES (9389, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:00:13');
INSERT INTO `job_log` VALUES (9390, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:00:13');
INSERT INTO `job_log` VALUES (9391, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:00:13');
INSERT INTO `job_log` VALUES (9392, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:00:17');
INSERT INTO `job_log` VALUES (9393, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:00:17');
INSERT INTO `job_log` VALUES (9394, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:00:17');
INSERT INTO `job_log` VALUES (9395, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:00:22');
INSERT INTO `job_log` VALUES (9396, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:00:22');
INSERT INTO `job_log` VALUES (9397, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:00:22');
INSERT INTO `job_log` VALUES (9398, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 14:01:00');
INSERT INTO `job_log` VALUES (9399, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:04:32');
INSERT INTO `job_log` VALUES (9400, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:04:32');
INSERT INTO `job_log` VALUES (9401, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:04:32');
INSERT INTO `job_log` VALUES (9402, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:05:01');
INSERT INTO `job_log` VALUES (9403, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:05:01');
INSERT INTO `job_log` VALUES (9404, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:05:01');
INSERT INTO `job_log` VALUES (9405, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:05:25');
INSERT INTO `job_log` VALUES (9406, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:05:25');
INSERT INTO `job_log` VALUES (9407, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:05:25');
INSERT INTO `job_log` VALUES (9408, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:05:30');
INSERT INTO `job_log` VALUES (9409, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:05:30');
INSERT INTO `job_log` VALUES (9410, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:05:30');
INSERT INTO `job_log` VALUES (9411, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:05:45');
INSERT INTO `job_log` VALUES (9412, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:05:45');
INSERT INTO `job_log` VALUES (9413, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:05:45');
INSERT INTO `job_log` VALUES (9414, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:06:11');
INSERT INTO `job_log` VALUES (9415, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:06:11');
INSERT INTO `job_log` VALUES (9416, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:06:11');
INSERT INTO `job_log` VALUES (9417, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:07:30');
INSERT INTO `job_log` VALUES (9418, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:07:30');
INSERT INTO `job_log` VALUES (9419, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:07:30');
INSERT INTO `job_log` VALUES (9420, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:07:45');
INSERT INTO `job_log` VALUES (9421, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:07:45');
INSERT INTO `job_log` VALUES (9422, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:07:45');
INSERT INTO `job_log` VALUES (9423, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:09:58');
INSERT INTO `job_log` VALUES (9424, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:09:58');
INSERT INTO `job_log` VALUES (9425, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:09:58');
INSERT INTO `job_log` VALUES (9426, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:10:05');
INSERT INTO `job_log` VALUES (9427, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:10:05');
INSERT INTO `job_log` VALUES (9428, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:10:05');
INSERT INTO `job_log` VALUES (9429, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:10:07');
INSERT INTO `job_log` VALUES (9430, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:10:07');
INSERT INTO `job_log` VALUES (9431, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:10:07');
INSERT INTO `job_log` VALUES (9432, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:19:24');
INSERT INTO `job_log` VALUES (9433, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:19:24');
INSERT INTO `job_log` VALUES (9434, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:19:24');
INSERT INTO `job_log` VALUES (9435, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:20:23');
INSERT INTO `job_log` VALUES (9436, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:20:23');
INSERT INTO `job_log` VALUES (9437, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:20:23');
INSERT INTO `job_log` VALUES (9438, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:20:28');
INSERT INTO `job_log` VALUES (9439, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:20:28');
INSERT INTO `job_log` VALUES (9440, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:20:28');
INSERT INTO `job_log` VALUES (9441, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:20:33');
INSERT INTO `job_log` VALUES (9442, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:20:33');
INSERT INTO `job_log` VALUES (9443, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:20:33');
INSERT INTO `job_log` VALUES (9444, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 14:30:00');
INSERT INTO `job_log` VALUES (9445, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 14:31:00');
INSERT INTO `job_log` VALUES (9446, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:45:42');
INSERT INTO `job_log` VALUES (9447, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:45:43');
INSERT INTO `job_log` VALUES (9448, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:45:43');
INSERT INTO `job_log` VALUES (9449, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:48:31');
INSERT INTO `job_log` VALUES (9450, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:48:31');
INSERT INTO `job_log` VALUES (9451, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:48:31');
INSERT INTO `job_log` VALUES (9452, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:51:06');
INSERT INTO `job_log` VALUES (9453, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:51:06');
INSERT INTO `job_log` VALUES (9454, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:51:06');
INSERT INTO `job_log` VALUES (9455, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:51:14');
INSERT INTO `job_log` VALUES (9456, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:51:14');
INSERT INTO `job_log` VALUES (9457, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:51:14');
INSERT INTO `job_log` VALUES (9458, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:51:29');
INSERT INTO `job_log` VALUES (9459, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:51:29');
INSERT INTO `job_log` VALUES (9460, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:51:29');
INSERT INTO `job_log` VALUES (9461, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:51:30');
INSERT INTO `job_log` VALUES (9462, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:51:30');
INSERT INTO `job_log` VALUES (9463, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:51:30');
INSERT INTO `job_log` VALUES (9464, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:08');
INSERT INTO `job_log` VALUES (9465, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:08');
INSERT INTO `job_log` VALUES (9466, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:08');
INSERT INTO `job_log` VALUES (9467, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:19');
INSERT INTO `job_log` VALUES (9468, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:19');
INSERT INTO `job_log` VALUES (9469, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:19');
INSERT INTO `job_log` VALUES (9470, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:35');
INSERT INTO `job_log` VALUES (9471, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:35');
INSERT INTO `job_log` VALUES (9472, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:35');
INSERT INTO `job_log` VALUES (9473, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:41');
INSERT INTO `job_log` VALUES (9474, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:41');
INSERT INTO `job_log` VALUES (9475, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:41');
INSERT INTO `job_log` VALUES (9476, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:43');
INSERT INTO `job_log` VALUES (9477, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:43');
INSERT INTO `job_log` VALUES (9478, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:43');
INSERT INTO `job_log` VALUES (9479, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:44');
INSERT INTO `job_log` VALUES (9480, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:44');
INSERT INTO `job_log` VALUES (9481, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:52:44');
INSERT INTO `job_log` VALUES (9482, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-26 14:53:32');
INSERT INTO `job_log` VALUES (9483, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-26 14:53:32');
INSERT INTO `job_log` VALUES (9484, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-26 14:53:32');
INSERT INTO `job_log` VALUES (9485, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 15:00:00');
INSERT INTO `job_log` VALUES (9486, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 15:01:00');
INSERT INTO `job_log` VALUES (9487, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 15:39:42');
INSERT INTO `job_log` VALUES (9488, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 15:39:42');
INSERT INTO `job_log` VALUES (9489, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 16:16:02');
INSERT INTO `job_log` VALUES (9490, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-09-26 16:16:02');
INSERT INTO `job_log` VALUES (9491, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 16:16:02');
INSERT INTO `job_log` VALUES (9492, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 16:33:18');
INSERT INTO `job_log` VALUES (9493, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 16:33:18');
INSERT INTO `job_log` VALUES (9494, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 17:11:53');
INSERT INTO `job_log` VALUES (9495, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 17:11:53');
INSERT INTO `job_log` VALUES (9496, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 17:41:19');
INSERT INTO `job_log` VALUES (9497, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 17:41:19');
INSERT INTO `job_log` VALUES (9498, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 18:17:20');
INSERT INTO `job_log` VALUES (9499, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 18:17:20');
INSERT INTO `job_log` VALUES (9500, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 18:43:35');
INSERT INTO `job_log` VALUES (9501, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 18:43:35');
INSERT INTO `job_log` VALUES (9502, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 19:02:02');
INSERT INTO `job_log` VALUES (9503, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 19:02:02');
INSERT INTO `job_log` VALUES (9504, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 19:42:54');
INSERT INTO `job_log` VALUES (9505, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 19:42:54');
INSERT INTO `job_log` VALUES (9506, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 20:00:04');
INSERT INTO `job_log` VALUES (9507, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 20:19:29');
INSERT INTO `job_log` VALUES (9508, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 20:42:36');
INSERT INTO `job_log` VALUES (9509, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 20:42:36');
INSERT INTO `job_log` VALUES (9510, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 21:01:34');
INSERT INTO `job_log` VALUES (9511, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 21:01:34');
INSERT INTO `job_log` VALUES (9512, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 21:44:38');
INSERT INTO `job_log` VALUES (9513, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 21:44:38');
INSERT INTO `job_log` VALUES (9514, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 22:02:42');
INSERT INTO `job_log` VALUES (9515, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 22:02:42');
INSERT INTO `job_log` VALUES (9516, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 22:30:48');
INSERT INTO `job_log` VALUES (9517, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 22:47:02');
INSERT INTO `job_log` VALUES (9518, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 23:05:31');
INSERT INTO `job_log` VALUES (9519, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 23:05:31');
INSERT INTO `job_log` VALUES (9520, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-26 23:54:36');
INSERT INTO `job_log` VALUES (9521, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-26 23:54:36');
INSERT INTO `job_log` VALUES (9522, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 00:13:21');
INSERT INTO `job_log` VALUES (9523, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 00:13:21');
INSERT INTO `job_log` VALUES (9524, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 00:30:31');
INSERT INTO `job_log` VALUES (9525, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 00:47:53');
INSERT INTO `job_log` VALUES (9526, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 01:04:04');
INSERT INTO `job_log` VALUES (9527, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 01:04:04');
INSERT INTO `job_log` VALUES (9528, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 01:39:30');
INSERT INTO `job_log` VALUES (9529, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 01:39:30');
INSERT INTO `job_log` VALUES (9530, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 02:00:00');
INSERT INTO `job_log` VALUES (9531, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 02:01:00');
INSERT INTO `job_log` VALUES (9532, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 02:30:00');
INSERT INTO `job_log` VALUES (9533, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 02:31:00');
INSERT INTO `job_log` VALUES (9534, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 02:44:09');
INSERT INTO `job_log` VALUES (9535, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 02:44:09');
INSERT INTO `job_log` VALUES (9536, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 02:44:09');
INSERT INTO `job_log` VALUES (9537, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 02:44:41');
INSERT INTO `job_log` VALUES (9538, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 02:44:41');
INSERT INTO `job_log` VALUES (9539, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 02:44:41');
INSERT INTO `job_log` VALUES (9540, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 02:45:12');
INSERT INTO `job_log` VALUES (9541, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 02:45:12');
INSERT INTO `job_log` VALUES (9542, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 02:45:12');
INSERT INTO `job_log` VALUES (9543, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 07:37:24');
INSERT INTO `job_log` VALUES (9544, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 07:37:24');
INSERT INTO `job_log` VALUES (9545, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 07:37:24');
INSERT INTO `job_log` VALUES (9546, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 08:00:00');
INSERT INTO `job_log` VALUES (9547, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 08:01:00');
INSERT INTO `job_log` VALUES (9548, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 08:06:55');
INSERT INTO `job_log` VALUES (9549, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 08:06:55');
INSERT INTO `job_log` VALUES (9550, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 08:06:55');
INSERT INTO `job_log` VALUES (9551, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 08:06:59');
INSERT INTO `job_log` VALUES (9552, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 08:06:59');
INSERT INTO `job_log` VALUES (9553, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 08:06:59');
INSERT INTO `job_log` VALUES (9554, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 08:08:56');
INSERT INTO `job_log` VALUES (9555, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 08:08:56');
INSERT INTO `job_log` VALUES (9556, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 08:08:56');
INSERT INTO `job_log` VALUES (9557, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 08:11:57');
INSERT INTO `job_log` VALUES (9558, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 08:11:57');
INSERT INTO `job_log` VALUES (9559, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 08:11:57');
INSERT INTO `job_log` VALUES (9560, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 08:17:01');
INSERT INTO `job_log` VALUES (9561, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 08:17:01');
INSERT INTO `job_log` VALUES (9562, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 08:17:01');
INSERT INTO `job_log` VALUES (9563, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 08:17:50');
INSERT INTO `job_log` VALUES (9564, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 08:17:50');
INSERT INTO `job_log` VALUES (9565, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 08:17:50');
INSERT INTO `job_log` VALUES (9566, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 08:30:00');
INSERT INTO `job_log` VALUES (9567, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 08:31:00');
INSERT INTO `job_log` VALUES (9568, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 08:34:26');
INSERT INTO `job_log` VALUES (9569, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 08:34:26');
INSERT INTO `job_log` VALUES (9570, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 08:34:26');
INSERT INTO `job_log` VALUES (9571, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 08:34:30');
INSERT INTO `job_log` VALUES (9572, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 08:34:30');
INSERT INTO `job_log` VALUES (9573, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 08:34:30');
INSERT INTO `job_log` VALUES (9574, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 08:34:49');
INSERT INTO `job_log` VALUES (9575, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 08:34:49');
INSERT INTO `job_log` VALUES (9576, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 08:34:49');
INSERT INTO `job_log` VALUES (9577, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 08:34:53');
INSERT INTO `job_log` VALUES (9578, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 08:34:53');
INSERT INTO `job_log` VALUES (9579, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 08:34:53');
INSERT INTO `job_log` VALUES (9580, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-27 08:35:57');
INSERT INTO `job_log` VALUES (9581, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-27 08:35:57');
INSERT INTO `job_log` VALUES (9582, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-27 08:35:57');
INSERT INTO `job_log` VALUES (9583, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 09:00:00');
INSERT INTO `job_log` VALUES (9584, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 09:01:00');
INSERT INTO `job_log` VALUES (9585, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 09:36:27');
INSERT INTO `job_log` VALUES (9586, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 09:36:27');
INSERT INTO `job_log` VALUES (9587, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 10:09:55');
INSERT INTO `job_log` VALUES (9588, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 10:09:55');
INSERT INTO `job_log` VALUES (9589, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 10:30:00');
INSERT INTO `job_log` VALUES (9590, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 10:31:00');
INSERT INTO `job_log` VALUES (9591, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 11:14:16');
INSERT INTO `job_log` VALUES (9592, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 11:14:16');
INSERT INTO `job_log` VALUES (9593, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 11:33:09');
INSERT INTO `job_log` VALUES (9594, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 11:33:09');
INSERT INTO `job_log` VALUES (9595, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 12:10:31');
INSERT INTO `job_log` VALUES (9596, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 12:10:31');
INSERT INTO `job_log` VALUES (9597, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 12:30:00');
INSERT INTO `job_log` VALUES (9598, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 12:31:00');
INSERT INTO `job_log` VALUES (9599, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 13:00:00');
INSERT INTO `job_log` VALUES (9600, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 13:01:00');
INSERT INTO `job_log` VALUES (9601, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 13:30:00');
INSERT INTO `job_log` VALUES (9602, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 13:31:00');
INSERT INTO `job_log` VALUES (9603, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 14:11:34');
INSERT INTO `job_log` VALUES (9604, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 14:11:34');
INSERT INTO `job_log` VALUES (9605, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 14:30:00');
INSERT INTO `job_log` VALUES (9606, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 14:45:54');
INSERT INTO `job_log` VALUES (9607, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 15:02:06');
INSERT INTO `job_log` VALUES (9608, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 15:02:06');
INSERT INTO `job_log` VALUES (9609, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 15:42:51');
INSERT INTO `job_log` VALUES (9610, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 15:42:51');
INSERT INTO `job_log` VALUES (9611, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 16:00:00');
INSERT INTO `job_log` VALUES (9612, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-09-27 16:00:00');
INSERT INTO `job_log` VALUES (9613, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 16:01:00');
INSERT INTO `job_log` VALUES (9614, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 16:35:34');
INSERT INTO `job_log` VALUES (9615, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 16:35:34');
INSERT INTO `job_log` VALUES (9616, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 17:08:07');
INSERT INTO `job_log` VALUES (9617, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 17:08:07');
INSERT INTO `job_log` VALUES (9618, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 17:42:14');
INSERT INTO `job_log` VALUES (9619, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 17:42:14');
INSERT INTO `job_log` VALUES (9620, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 18:01:38');
INSERT INTO `job_log` VALUES (9621, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 18:01:38');
INSERT INTO `job_log` VALUES (9622, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 18:30:00');
INSERT INTO `job_log` VALUES (9623, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 18:31:00');
INSERT INTO `job_log` VALUES (9624, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 19:03:59');
INSERT INTO `job_log` VALUES (9625, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 19:03:59');
INSERT INTO `job_log` VALUES (9626, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 19:31:25');
INSERT INTO `job_log` VALUES (9627, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 19:31:25');
INSERT INTO `job_log` VALUES (9628, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 20:11:10');
INSERT INTO `job_log` VALUES (9629, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 20:11:10');
INSERT INTO `job_log` VALUES (9630, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 20:30:00');
INSERT INTO `job_log` VALUES (9631, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 20:31:00');
INSERT INTO `job_log` VALUES (9632, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 21:04:48');
INSERT INTO `job_log` VALUES (9633, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 21:04:48');
INSERT INTO `job_log` VALUES (9634, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 21:34:53');
INSERT INTO `job_log` VALUES (9635, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 21:34:53');
INSERT INTO `job_log` VALUES (9636, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 22:04:27');
INSERT INTO `job_log` VALUES (9637, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 22:04:27');
INSERT INTO `job_log` VALUES (9638, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 22:30:23');
INSERT INTO `job_log` VALUES (9639, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 22:31:00');
INSERT INTO `job_log` VALUES (9640, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 23:05:27');
INSERT INTO `job_log` VALUES (9641, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 23:05:27');
INSERT INTO `job_log` VALUES (9642, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-27 23:31:10');
INSERT INTO `job_log` VALUES (9643, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-27 23:31:10');
INSERT INTO `job_log` VALUES (9644, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-28 00:07:40');
INSERT INTO `job_log` VALUES (9645, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-28 00:07:40');
INSERT INTO `job_log` VALUES (9646, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-28 01:09:27');
INSERT INTO `job_log` VALUES (9647, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-28 01:09:27');
INSERT INTO `job_log` VALUES (9648, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-28 01:09:27');
INSERT INTO `job_log` VALUES (9649, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-28 01:09:27');
INSERT INTO `job_log` VALUES (9650, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-28 01:30:00');
INSERT INTO `job_log` VALUES (9651, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-28 01:31:00');
INSERT INTO `job_log` VALUES (9652, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-09-28 01:45:21');
INSERT INTO `job_log` VALUES (9653, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-09-28 01:45:21');
INSERT INTO `job_log` VALUES (9654, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-09-28 01:45:21');
INSERT INTO `job_log` VALUES (9655, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-28 02:00:00');
INSERT INTO `job_log` VALUES (9656, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-28 02:01:00');
INSERT INTO `job_log` VALUES (9657, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-28 02:30:00');
INSERT INTO `job_log` VALUES (9658, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-28 02:31:00');
INSERT INTO `job_log` VALUES (9659, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-28 03:00:00');
INSERT INTO `job_log` VALUES (9660, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-28 03:01:00');
INSERT INTO `job_log` VALUES (9661, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-28 03:30:00');
INSERT INTO `job_log` VALUES (9662, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-28 03:31:00');
INSERT INTO `job_log` VALUES (9663, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-28 04:00:00');
INSERT INTO `job_log` VALUES (9664, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-28 04:01:00');
INSERT INTO `job_log` VALUES (9665, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-28 04:36:18');
INSERT INTO `job_log` VALUES (9666, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-28 04:36:18');
INSERT INTO `job_log` VALUES (9667, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-28 05:15:06');
INSERT INTO `job_log` VALUES (9668, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-28 05:15:06');
INSERT INTO `job_log` VALUES (9669, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-09-28 05:34:21');
INSERT INTO `job_log` VALUES (9670, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-09-28 05:34:21');
INSERT INTO `job_log` VALUES (9671, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-14 06:30:46');
INSERT INTO `job_log` VALUES (9672, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-14 06:30:46');
INSERT INTO `job_log` VALUES (9673, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-14 06:30:46');
INSERT INTO `job_log` VALUES (9674, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 06:31:00');
INSERT INTO `job_log` VALUES (9675, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 07:00:00');
INSERT INTO `job_log` VALUES (9676, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 07:01:00');
INSERT INTO `job_log` VALUES (9677, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-14 07:17:39');
INSERT INTO `job_log` VALUES (9678, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-14 07:17:39');
INSERT INTO `job_log` VALUES (9679, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-14 07:17:39');
INSERT INTO `job_log` VALUES (9680, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 07:30:00');
INSERT INTO `job_log` VALUES (9681, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 07:31:00');
INSERT INTO `job_log` VALUES (9682, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 08:00:00');
INSERT INTO `job_log` VALUES (9683, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 08:01:00');
INSERT INTO `job_log` VALUES (9684, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 08:30:00');
INSERT INTO `job_log` VALUES (9685, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 08:31:00');
INSERT INTO `job_log` VALUES (9686, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 09:00:00');
INSERT INTO `job_log` VALUES (9687, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 09:01:00');
INSERT INTO `job_log` VALUES (9688, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-14 09:06:09');
INSERT INTO `job_log` VALUES (9689, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-14 09:06:09');
INSERT INTO `job_log` VALUES (9690, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-14 09:06:09');
INSERT INTO `job_log` VALUES (9691, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 09:30:00');
INSERT INTO `job_log` VALUES (9692, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 09:30:00');
INSERT INTO `job_log` VALUES (9693, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 09:31:00');
INSERT INTO `job_log` VALUES (9694, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 09:31:00');
INSERT INTO `job_log` VALUES (9695, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 10:50:53');
INSERT INTO `job_log` VALUES (9696, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 10:50:53');
INSERT INTO `job_log` VALUES (9697, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 10:50:53');
INSERT INTO `job_log` VALUES (9698, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 10:50:53');
INSERT INTO `job_log` VALUES (9699, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 10:50:54');
INSERT INTO `job_log` VALUES (9700, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 10:50:54');
INSERT INTO `job_log` VALUES (9701, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 10:50:54');
INSERT INTO `job_log` VALUES (9702, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 10:50:54');
INSERT INTO `job_log` VALUES (9703, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 11:07:44');
INSERT INTO `job_log` VALUES (9704, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 11:07:44');
INSERT INTO `job_log` VALUES (9705, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 11:08:10');
INSERT INTO `job_log` VALUES (9706, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 11:08:10');
INSERT INTO `job_log` VALUES (9707, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 11:32:30');
INSERT INTO `job_log` VALUES (9708, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 11:32:30');
INSERT INTO `job_log` VALUES (9709, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 11:32:59');
INSERT INTO `job_log` VALUES (9710, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 11:32:59');
INSERT INTO `job_log` VALUES (9711, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 12:08:53');
INSERT INTO `job_log` VALUES (9712, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 12:08:53');
INSERT INTO `job_log` VALUES (9713, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 12:09:22');
INSERT INTO `job_log` VALUES (9714, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 12:09:22');
INSERT INTO `job_log` VALUES (9715, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 12:30:04');
INSERT INTO `job_log` VALUES (9716, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 12:30:33');
INSERT INTO `job_log` VALUES (9717, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 12:33:31');
INSERT INTO `job_log` VALUES (9718, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 12:33:31');
INSERT INTO `job_log` VALUES (9719, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 13:13:32');
INSERT INTO `job_log` VALUES (9720, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 13:13:32');
INSERT INTO `job_log` VALUES (9721, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 13:13:32');
INSERT INTO `job_log` VALUES (9722, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 13:13:32');
INSERT INTO `job_log` VALUES (9723, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 13:30:42');
INSERT INTO `job_log` VALUES (9724, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-14 13:30:42');
INSERT INTO `job_log` VALUES (9725, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 13:31:50');
INSERT INTO `job_log` VALUES (9726, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-14 13:31:50');
INSERT INTO `job_log` VALUES (9727, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-15 07:44:02');
INSERT INTO `job_log` VALUES (9728, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-15 07:44:02');
INSERT INTO `job_log` VALUES (9729, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-15 07:44:02');
INSERT INTO `job_log` VALUES (9730, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-15 07:46:23');
INSERT INTO `job_log` VALUES (9731, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-15 07:46:23');
INSERT INTO `job_log` VALUES (9732, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-15 07:46:23');
INSERT INTO `job_log` VALUES (9733, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-15 08:00:00');
INSERT INTO `job_log` VALUES (9734, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-15 08:01:00');
INSERT INTO `job_log` VALUES (9735, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-15 08:30:00');
INSERT INTO `job_log` VALUES (9736, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-15 08:31:00');
INSERT INTO `job_log` VALUES (9737, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-15 09:00:00');
INSERT INTO `job_log` VALUES (9738, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-15 09:01:00');
INSERT INTO `job_log` VALUES (9739, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-15 09:30:00');
INSERT INTO `job_log` VALUES (9740, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-15 09:32:17');
INSERT INTO `job_log` VALUES (9741, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-15 10:22:41');
INSERT INTO `job_log` VALUES (9742, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-15 10:22:41');
INSERT INTO `job_log` VALUES (9743, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-15 10:39:04');
INSERT INTO `job_log` VALUES (9744, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-15 10:39:04');
INSERT INTO `job_log` VALUES (9745, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-15 11:16:07');
INSERT INTO `job_log` VALUES (9746, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-15 11:16:07');
INSERT INTO `job_log` VALUES (9747, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-15 11:33:45');
INSERT INTO `job_log` VALUES (9748, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-15 11:33:45');
INSERT INTO `job_log` VALUES (9749, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-17 02:52:52');
INSERT INTO `job_log` VALUES (9750, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-17 02:52:52');
INSERT INTO `job_log` VALUES (9751, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-17 02:52:52');
INSERT INTO `job_log` VALUES (9752, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-17 02:56:55');
INSERT INTO `job_log` VALUES (9753, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-17 02:56:55');
INSERT INTO `job_log` VALUES (9754, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-17 02:56:55');
INSERT INTO `job_log` VALUES (9755, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-17 03:00:00');
INSERT INTO `job_log` VALUES (9756, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-17 03:01:00');
INSERT INTO `job_log` VALUES (9757, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-17 03:02:53');
INSERT INTO `job_log` VALUES (9758, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-17 03:02:53');
INSERT INTO `job_log` VALUES (9759, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-17 03:02:53');
INSERT INTO `job_log` VALUES (9760, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-17 03:05:56');
INSERT INTO `job_log` VALUES (9761, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-17 03:05:56');
INSERT INTO `job_log` VALUES (9762, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-17 03:05:56');
INSERT INTO `job_log` VALUES (9763, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-17 03:33:14');
INSERT INTO `job_log` VALUES (9764, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-17 03:33:14');
INSERT INTO `job_log` VALUES (9765, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-17 03:33:14');
INSERT INTO `job_log` VALUES (9766, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-17 03:34:01');
INSERT INTO `job_log` VALUES (9767, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-17 03:34:01');
INSERT INTO `job_log` VALUES (9768, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-17 03:34:01');
INSERT INTO `job_log` VALUES (9769, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-17 03:35:54');
INSERT INTO `job_log` VALUES (9770, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-17 03:35:54');
INSERT INTO `job_log` VALUES (9771, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-17 03:35:54');
INSERT INTO `job_log` VALUES (9772, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-17 04:00:00');
INSERT INTO `job_log` VALUES (9773, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-17 04:01:00');
INSERT INTO `job_log` VALUES (9774, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-17 04:30:00');
INSERT INTO `job_log` VALUES (9775, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-17 04:31:00');
INSERT INTO `job_log` VALUES (9776, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-17 05:04:10');
INSERT INTO `job_log` VALUES (9777, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-17 05:04:10');
INSERT INTO `job_log` VALUES (9778, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-17 05:30:19');
INSERT INTO `job_log` VALUES (9779, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-17 05:31:00');
INSERT INTO `job_log` VALUES (9780, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-17 06:00:00');
INSERT INTO `job_log` VALUES (9781, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-21 14:34:06');
INSERT INTO `job_log` VALUES (9782, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-21 14:34:06');
INSERT INTO `job_log` VALUES (9783, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-21 14:34:06');
INSERT INTO `job_log` VALUES (9784, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-21 14:34:55');
INSERT INTO `job_log` VALUES (9785, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-21 14:34:55');
INSERT INTO `job_log` VALUES (9786, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-21 14:34:55');
INSERT INTO `job_log` VALUES (9787, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-21 14:35:21');
INSERT INTO `job_log` VALUES (9788, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-21 14:35:21');
INSERT INTO `job_log` VALUES (9789, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-21 14:35:21');
INSERT INTO `job_log` VALUES (9790, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-21 14:54:43');
INSERT INTO `job_log` VALUES (9791, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-21 14:54:43');
INSERT INTO `job_log` VALUES (9792, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-21 14:54:43');
INSERT INTO `job_log` VALUES (9793, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-21 14:55:36');
INSERT INTO `job_log` VALUES (9794, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-21 14:55:36');
INSERT INTO `job_log` VALUES (9795, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-21 14:55:36');
INSERT INTO `job_log` VALUES (9796, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 15:00:00');
INSERT INTO `job_log` VALUES (9797, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 15:01:00');
INSERT INTO `job_log` VALUES (9798, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 15:33:53');
INSERT INTO `job_log` VALUES (9799, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 15:33:53');
INSERT INTO `job_log` VALUES (9800, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 16:08:34');
INSERT INTO `job_log` VALUES (9801, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-10-21 16:08:34');
INSERT INTO `job_log` VALUES (9802, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 16:08:34');
INSERT INTO `job_log` VALUES (9803, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 16:31:15');
INSERT INTO `job_log` VALUES (9804, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 16:31:15');
INSERT INTO `job_log` VALUES (9805, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 17:04:04');
INSERT INTO `job_log` VALUES (9806, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 17:04:04');
INSERT INTO `job_log` VALUES (9807, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 17:34:57');
INSERT INTO `job_log` VALUES (9808, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 17:34:57');
INSERT INTO `job_log` VALUES (9809, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 18:13:54');
INSERT INTO `job_log` VALUES (9810, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 18:13:54');
INSERT INTO `job_log` VALUES (9811, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 18:39:10');
INSERT INTO `job_log` VALUES (9812, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 18:39:10');
INSERT INTO `job_log` VALUES (9813, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 19:14:29');
INSERT INTO `job_log` VALUES (9814, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 19:14:29');
INSERT INTO `job_log` VALUES (9815, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 19:37:30');
INSERT INTO `job_log` VALUES (9816, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 19:37:30');
INSERT INTO `job_log` VALUES (9817, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 20:14:49');
INSERT INTO `job_log` VALUES (9818, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 20:14:49');
INSERT INTO `job_log` VALUES (9819, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 20:40:33');
INSERT INTO `job_log` VALUES (9820, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 20:40:33');
INSERT INTO `job_log` VALUES (9821, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 21:14:40');
INSERT INTO `job_log` VALUES (9822, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 21:14:40');
INSERT INTO `job_log` VALUES (9823, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 21:38:47');
INSERT INTO `job_log` VALUES (9824, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 21:38:47');
INSERT INTO `job_log` VALUES (9825, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 22:15:08');
INSERT INTO `job_log` VALUES (9826, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 22:15:08');
INSERT INTO `job_log` VALUES (9827, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 22:38:47');
INSERT INTO `job_log` VALUES (9828, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 22:38:47');
INSERT INTO `job_log` VALUES (9829, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 23:01:18');
INSERT INTO `job_log` VALUES (9830, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 23:01:18');
INSERT INTO `job_log` VALUES (9831, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-21 23:42:10');
INSERT INTO `job_log` VALUES (9832, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-21 23:42:10');
INSERT INTO `job_log` VALUES (9833, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-22 00:00:39');
INSERT INTO `job_log` VALUES (9834, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-22 00:16:01');
INSERT INTO `job_log` VALUES (9835, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-22 01:05:21');
INSERT INTO `job_log` VALUES (9836, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-22 01:05:21');
INSERT INTO `job_log` VALUES (9837, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-22 01:05:21');
INSERT INTO `job_log` VALUES (9838, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-22 01:05:21');
INSERT INTO `job_log` VALUES (9839, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 06:36:23');
INSERT INTO `job_log` VALUES (9840, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 06:36:23');
INSERT INTO `job_log` VALUES (9841, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 06:36:23');
INSERT INTO `job_log` VALUES (9842, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 06:37:04');
INSERT INTO `job_log` VALUES (9843, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 06:37:04');
INSERT INTO `job_log` VALUES (9844, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 06:37:04');
INSERT INTO `job_log` VALUES (9845, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 06:38:44');
INSERT INTO `job_log` VALUES (9846, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 06:38:44');
INSERT INTO `job_log` VALUES (9847, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 06:38:44');
INSERT INTO `job_log` VALUES (9848, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 07:15:43');
INSERT INTO `job_log` VALUES (9849, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 07:15:43');
INSERT INTO `job_log` VALUES (9850, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 07:15:43');
INSERT INTO `job_log` VALUES (9851, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 07:18:37');
INSERT INTO `job_log` VALUES (9852, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 07:18:37');
INSERT INTO `job_log` VALUES (9853, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 07:18:37');
INSERT INTO `job_log` VALUES (9854, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 07:31:14');
INSERT INTO `job_log` VALUES (9855, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 07:31:14');
INSERT INTO `job_log` VALUES (9856, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 07:31:14');
INSERT INTO `job_log` VALUES (9857, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 07:32:08');
INSERT INTO `job_log` VALUES (9858, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 07:32:08');
INSERT INTO `job_log` VALUES (9859, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 07:32:08');
INSERT INTO `job_log` VALUES (9860, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 07:40:30');
INSERT INTO `job_log` VALUES (9861, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 07:40:30');
INSERT INTO `job_log` VALUES (9862, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 07:40:30');
INSERT INTO `job_log` VALUES (9863, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 08:10:25');
INSERT INTO `job_log` VALUES (9864, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 08:10:25');
INSERT INTO `job_log` VALUES (9865, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 08:10:25');
INSERT INTO `job_log` VALUES (9866, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:22:33');
INSERT INTO `job_log` VALUES (9867, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:22:33');
INSERT INTO `job_log` VALUES (9868, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:22:33');
INSERT INTO `job_log` VALUES (9869, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-22 12:30:00');
INSERT INTO `job_log` VALUES (9870, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-22 12:31:00');
INSERT INTO `job_log` VALUES (9871, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:39:09');
INSERT INTO `job_log` VALUES (9872, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:39:09');
INSERT INTO `job_log` VALUES (9873, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:39:09');
INSERT INTO `job_log` VALUES (9874, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:39:22');
INSERT INTO `job_log` VALUES (9875, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:39:22');
INSERT INTO `job_log` VALUES (9876, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:39:22');
INSERT INTO `job_log` VALUES (9877, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:41:26');
INSERT INTO `job_log` VALUES (9878, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:41:26');
INSERT INTO `job_log` VALUES (9879, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:41:26');
INSERT INTO `job_log` VALUES (9880, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:41:31');
INSERT INTO `job_log` VALUES (9881, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:41:31');
INSERT INTO `job_log` VALUES (9882, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:41:31');
INSERT INTO `job_log` VALUES (9883, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:41:41');
INSERT INTO `job_log` VALUES (9884, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:41:41');
INSERT INTO `job_log` VALUES (9885, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:41:41');
INSERT INTO `job_log` VALUES (9886, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:42:09');
INSERT INTO `job_log` VALUES (9887, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:42:09');
INSERT INTO `job_log` VALUES (9888, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:42:09');
INSERT INTO `job_log` VALUES (9889, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:42:46');
INSERT INTO `job_log` VALUES (9890, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:42:46');
INSERT INTO `job_log` VALUES (9891, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:42:46');
INSERT INTO `job_log` VALUES (9892, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:43:52');
INSERT INTO `job_log` VALUES (9893, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:43:52');
INSERT INTO `job_log` VALUES (9894, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:43:52');
INSERT INTO `job_log` VALUES (9895, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:44:01');
INSERT INTO `job_log` VALUES (9896, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:44:01');
INSERT INTO `job_log` VALUES (9897, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:44:01');
INSERT INTO `job_log` VALUES (9898, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:44:07');
INSERT INTO `job_log` VALUES (9899, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:44:07');
INSERT INTO `job_log` VALUES (9900, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:44:07');
INSERT INTO `job_log` VALUES (9901, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:44:17');
INSERT INTO `job_log` VALUES (9902, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:44:17');
INSERT INTO `job_log` VALUES (9903, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:44:17');
INSERT INTO `job_log` VALUES (9904, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:44:47');
INSERT INTO `job_log` VALUES (9905, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:44:47');
INSERT INTO `job_log` VALUES (9906, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:44:47');
INSERT INTO `job_log` VALUES (9907, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:46:17');
INSERT INTO `job_log` VALUES (9908, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:46:17');
INSERT INTO `job_log` VALUES (9909, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:46:17');
INSERT INTO `job_log` VALUES (9910, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:47:18');
INSERT INTO `job_log` VALUES (9911, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:47:18');
INSERT INTO `job_log` VALUES (9912, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:47:18');
INSERT INTO `job_log` VALUES (9913, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-22 12:47:20');
INSERT INTO `job_log` VALUES (9914, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-22 12:47:20');
INSERT INTO `job_log` VALUES (9915, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-22 12:47:20');
INSERT INTO `job_log` VALUES (9916, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-22 13:00:00');
INSERT INTO `job_log` VALUES (9917, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-22 13:01:00');
INSERT INTO `job_log` VALUES (9918, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-27 07:13:45');
INSERT INTO `job_log` VALUES (9919, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-27 07:13:45');
INSERT INTO `job_log` VALUES (9920, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-27 07:13:45');
INSERT INTO `job_log` VALUES (9921, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 07:30:00');
INSERT INTO `job_log` VALUES (9922, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 07:31:00');
INSERT INTO `job_log` VALUES (9923, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 08:00:00');
INSERT INTO `job_log` VALUES (9924, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 08:01:00');
INSERT INTO `job_log` VALUES (9925, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 08:30:00');
INSERT INTO `job_log` VALUES (9926, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 08:31:00');
INSERT INTO `job_log` VALUES (9927, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 09:00:00');
INSERT INTO `job_log` VALUES (9928, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 09:01:00');
INSERT INTO `job_log` VALUES (9929, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 09:30:00');
INSERT INTO `job_log` VALUES (9930, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 09:31:00');
INSERT INTO `job_log` VALUES (9931, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 10:43:18');
INSERT INTO `job_log` VALUES (9932, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 10:43:18');
INSERT INTO `job_log` VALUES (9933, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 10:43:18');
INSERT INTO `job_log` VALUES (9934, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 10:43:18');
INSERT INTO `job_log` VALUES (9935, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 11:00:28');
INSERT INTO `job_log` VALUES (9936, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 11:17:31');
INSERT INTO `job_log` VALUES (9937, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 11:32:26');
INSERT INTO `job_log` VALUES (9938, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 11:32:26');
INSERT INTO `job_log` VALUES (9939, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 12:29:24');
INSERT INTO `job_log` VALUES (9940, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 12:29:24');
INSERT INTO `job_log` VALUES (9941, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 12:31:34');
INSERT INTO `job_log` VALUES (9942, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 12:31:34');
INSERT INTO `job_log` VALUES (9943, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 13:09:48');
INSERT INTO `job_log` VALUES (9944, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 13:09:48');
INSERT INTO `job_log` VALUES (9945, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 13:31:18');
INSERT INTO `job_log` VALUES (9946, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 13:31:18');
INSERT INTO `job_log` VALUES (9947, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 14:12:34');
INSERT INTO `job_log` VALUES (9948, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 14:12:34');
INSERT INTO `job_log` VALUES (9949, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 14:33:15');
INSERT INTO `job_log` VALUES (9950, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 14:33:15');
INSERT INTO `job_log` VALUES (9951, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 15:09:41');
INSERT INTO `job_log` VALUES (9952, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 15:09:41');
INSERT INTO `job_log` VALUES (9953, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 15:37:05');
INSERT INTO `job_log` VALUES (9954, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 15:37:05');
INSERT INTO `job_log` VALUES (9955, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 16:12:17');
INSERT INTO `job_log` VALUES (9956, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-10-27 16:12:17');
INSERT INTO `job_log` VALUES (9957, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 16:12:17');
INSERT INTO `job_log` VALUES (9958, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 16:30:00');
INSERT INTO `job_log` VALUES (9959, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 16:48:32');
INSERT INTO `job_log` VALUES (9960, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 17:07:06');
INSERT INTO `job_log` VALUES (9961, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 17:07:06');
INSERT INTO `job_log` VALUES (9962, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 17:48:52');
INSERT INTO `job_log` VALUES (9963, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 17:48:52');
INSERT INTO `job_log` VALUES (9964, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 18:06:23');
INSERT INTO `job_log` VALUES (9965, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 18:06:24');
INSERT INTO `job_log` VALUES (9966, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 18:44:44');
INSERT INTO `job_log` VALUES (9967, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 18:44:44');
INSERT INTO `job_log` VALUES (9968, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 19:17:16');
INSERT INTO `job_log` VALUES (9969, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 19:17:16');
INSERT INTO `job_log` VALUES (9970, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 19:45:46');
INSERT INTO `job_log` VALUES (9971, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 19:45:46');
INSERT INTO `job_log` VALUES (9972, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 20:02:06');
INSERT INTO `job_log` VALUES (9973, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 20:02:06');
INSERT INTO `job_log` VALUES (9974, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 20:35:02');
INSERT INTO `job_log` VALUES (9975, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 20:35:02');
INSERT INTO `job_log` VALUES (9976, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 21:27:04');
INSERT INTO `job_log` VALUES (9977, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 21:27:04');
INSERT INTO `job_log` VALUES (9978, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 21:45:35');
INSERT INTO `job_log` VALUES (9979, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 21:45:35');
INSERT INTO `job_log` VALUES (9980, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 22:05:12');
INSERT INTO `job_log` VALUES (9981, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 22:05:12');
INSERT INTO `job_log` VALUES (9982, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 22:43:27');
INSERT INTO `job_log` VALUES (9983, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 22:43:27');
INSERT INTO `job_log` VALUES (9984, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 23:01:15');
INSERT INTO `job_log` VALUES (9985, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 23:01:15');
INSERT INTO `job_log` VALUES (9986, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-27 23:46:14');
INSERT INTO `job_log` VALUES (9987, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-27 23:46:14');
INSERT INTO `job_log` VALUES (9988, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 00:03:23');
INSERT INTO `job_log` VALUES (9989, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 00:03:23');
INSERT INTO `job_log` VALUES (9990, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 00:45:34');
INSERT INTO `job_log` VALUES (9991, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 00:45:34');
INSERT INTO `job_log` VALUES (9992, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 01:23:30');
INSERT INTO `job_log` VALUES (9993, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 01:23:30');
INSERT INTO `job_log` VALUES (9994, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 01:30:00');
INSERT INTO `job_log` VALUES (9995, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 01:31:00');
INSERT INTO `job_log` VALUES (9996, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 02:00:00');
INSERT INTO `job_log` VALUES (9997, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 02:01:00');
INSERT INTO `job_log` VALUES (9998, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 02:30:00');
INSERT INTO `job_log` VALUES (9999, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 02:31:00');
INSERT INTO `job_log` VALUES (10000, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 03:00:00');
INSERT INTO `job_log` VALUES (10001, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 03:01:00');
INSERT INTO `job_log` VALUES (10002, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 03:30:00');
INSERT INTO `job_log` VALUES (10003, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 03:31:00');
INSERT INTO `job_log` VALUES (10004, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 04:00:00');
INSERT INTO `job_log` VALUES (10005, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 04:01:00');
INSERT INTO `job_log` VALUES (10006, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 04:36:16');
INSERT INTO `job_log` VALUES (10007, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 04:36:16');
INSERT INTO `job_log` VALUES (10008, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 05:09:35');
INSERT INTO `job_log` VALUES (10009, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 05:09:35');
INSERT INTO `job_log` VALUES (10010, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 05:41:55');
INSERT INTO `job_log` VALUES (10011, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 05:41:55');
INSERT INTO `job_log` VALUES (10012, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-28 14:37:14');
INSERT INTO `job_log` VALUES (10013, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-28 14:37:14');
INSERT INTO `job_log` VALUES (10014, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-28 14:37:14');
INSERT INTO `job_log` VALUES (10015, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 15:00:00');
INSERT INTO `job_log` VALUES (10016, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 15:01:00');
INSERT INTO `job_log` VALUES (10017, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 15:36:23');
INSERT INTO `job_log` VALUES (10018, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 15:36:23');
INSERT INTO `job_log` VALUES (10019, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-28 15:43:02');
INSERT INTO `job_log` VALUES (10020, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-28 15:43:02');
INSERT INTO `job_log` VALUES (10021, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-28 15:43:02');
INSERT INTO `job_log` VALUES (10022, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-10-28 16:00:27');
INSERT INTO `job_log` VALUES (10023, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 16:00:27');
INSERT INTO `job_log` VALUES (10024, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 16:01:01');
INSERT INTO `job_log` VALUES (10025, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 16:38:45');
INSERT INTO `job_log` VALUES (10026, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 16:38:45');
INSERT INTO `job_log` VALUES (10027, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 17:13:01');
INSERT INTO `job_log` VALUES (10028, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 17:13:01');
INSERT INTO `job_log` VALUES (10029, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 17:31:36');
INSERT INTO `job_log` VALUES (10030, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 17:31:36');
INSERT INTO `job_log` VALUES (10031, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 18:06:10');
INSERT INTO `job_log` VALUES (10032, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 18:06:10');
INSERT INTO `job_log` VALUES (10033, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 18:41:25');
INSERT INTO `job_log` VALUES (10034, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 18:41:25');
INSERT INTO `job_log` VALUES (10035, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 19:03:19');
INSERT INTO `job_log` VALUES (10036, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 19:03:19');
INSERT INTO `job_log` VALUES (10037, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 19:42:08');
INSERT INTO `job_log` VALUES (10038, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 19:42:08');
INSERT INTO `job_log` VALUES (10039, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 20:04:25');
INSERT INTO `job_log` VALUES (10040, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 20:04:25');
INSERT INTO `job_log` VALUES (10041, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 20:46:37');
INSERT INTO `job_log` VALUES (10042, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 20:46:37');
INSERT INTO `job_log` VALUES (10043, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 21:06:18');
INSERT INTO `job_log` VALUES (10044, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 21:06:18');
INSERT INTO `job_log` VALUES (10045, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 21:42:41');
INSERT INTO `job_log` VALUES (10046, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 21:42:41');
INSERT INTO `job_log` VALUES (10047, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 22:07:08');
INSERT INTO `job_log` VALUES (10048, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 22:07:08');
INSERT INTO `job_log` VALUES (10049, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 22:43:23');
INSERT INTO `job_log` VALUES (10050, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 22:43:23');
INSERT INTO `job_log` VALUES (10051, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 23:11:52');
INSERT INTO `job_log` VALUES (10052, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 23:11:52');
INSERT INTO `job_log` VALUES (10053, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-28 23:47:12');
INSERT INTO `job_log` VALUES (10054, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-28 23:47:12');
INSERT INTO `job_log` VALUES (10055, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-29 00:09:22');
INSERT INTO `job_log` VALUES (10056, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 00:09:22');
INSERT INTO `job_log` VALUES (10057, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-29 01:00:07');
INSERT INTO `job_log` VALUES (10058, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 01:00:07');
INSERT INTO `job_log` VALUES (10059, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-29 01:00:07');
INSERT INTO `job_log` VALUES (10060, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 01:15:19');
INSERT INTO `job_log` VALUES (10061, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:17:29');
INSERT INTO `job_log` VALUES (10062, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:17:29');
INSERT INTO `job_log` VALUES (10063, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:17:29');
INSERT INTO `job_log` VALUES (10064, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:17:44');
INSERT INTO `job_log` VALUES (10065, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:17:44');
INSERT INTO `job_log` VALUES (10066, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:17:44');
INSERT INTO `job_log` VALUES (10067, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:18:38');
INSERT INTO `job_log` VALUES (10068, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:18:38');
INSERT INTO `job_log` VALUES (10069, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:18:38');
INSERT INTO `job_log` VALUES (10070, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:18:54');
INSERT INTO `job_log` VALUES (10071, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:18:54');
INSERT INTO `job_log` VALUES (10072, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:18:54');
INSERT INTO `job_log` VALUES (10073, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:18:59');
INSERT INTO `job_log` VALUES (10074, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:18:59');
INSERT INTO `job_log` VALUES (10075, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:18:59');
INSERT INTO `job_log` VALUES (10076, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:19:17');
INSERT INTO `job_log` VALUES (10077, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:19:17');
INSERT INTO `job_log` VALUES (10078, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:19:17');
INSERT INTO `job_log` VALUES (10079, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:19:31');
INSERT INTO `job_log` VALUES (10080, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:19:31');
INSERT INTO `job_log` VALUES (10081, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:19:31');
INSERT INTO `job_log` VALUES (10082, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:20:29');
INSERT INTO `job_log` VALUES (10083, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:20:29');
INSERT INTO `job_log` VALUES (10084, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:20:29');
INSERT INTO `job_log` VALUES (10085, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:23:54');
INSERT INTO `job_log` VALUES (10086, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:23:54');
INSERT INTO `job_log` VALUES (10087, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:23:54');
INSERT INTO `job_log` VALUES (10088, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:24:24');
INSERT INTO `job_log` VALUES (10089, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:24:24');
INSERT INTO `job_log` VALUES (10090, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:24:24');
INSERT INTO `job_log` VALUES (10091, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:25:27');
INSERT INTO `job_log` VALUES (10092, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:25:27');
INSERT INTO `job_log` VALUES (10093, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:25:27');
INSERT INTO `job_log` VALUES (10094, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:26:13');
INSERT INTO `job_log` VALUES (10095, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:26:13');
INSERT INTO `job_log` VALUES (10096, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:26:13');
INSERT INTO `job_log` VALUES (10097, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:27:01');
INSERT INTO `job_log` VALUES (10098, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:27:01');
INSERT INTO `job_log` VALUES (10099, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:27:01');
INSERT INTO `job_log` VALUES (10100, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:27:43');
INSERT INTO `job_log` VALUES (10101, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:27:43');
INSERT INTO `job_log` VALUES (10102, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:27:43');
INSERT INTO `job_log` VALUES (10103, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:27:48');
INSERT INTO `job_log` VALUES (10104, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:27:48');
INSERT INTO `job_log` VALUES (10105, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:27:48');
INSERT INTO `job_log` VALUES (10106, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:29:24');
INSERT INTO `job_log` VALUES (10107, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:29:24');
INSERT INTO `job_log` VALUES (10108, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:29:24');
INSERT INTO `job_log` VALUES (10109, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-29 01:30:00');
INSERT INTO `job_log` VALUES (10110, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 01:31:00');
INSERT INTO `job_log` VALUES (10111, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:36:08');
INSERT INTO `job_log` VALUES (10112, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:36:08');
INSERT INTO `job_log` VALUES (10113, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:36:08');
INSERT INTO `job_log` VALUES (10114, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:37:05');
INSERT INTO `job_log` VALUES (10115, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:37:05');
INSERT INTO `job_log` VALUES (10116, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:37:05');
INSERT INTO `job_log` VALUES (10117, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:37:13');
INSERT INTO `job_log` VALUES (10118, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:37:13');
INSERT INTO `job_log` VALUES (10119, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:37:13');
INSERT INTO `job_log` VALUES (10120, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:37:34');
INSERT INTO `job_log` VALUES (10121, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:37:34');
INSERT INTO `job_log` VALUES (10122, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:37:34');
INSERT INTO `job_log` VALUES (10123, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:38:16');
INSERT INTO `job_log` VALUES (10124, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:38:16');
INSERT INTO `job_log` VALUES (10125, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:38:16');
INSERT INTO `job_log` VALUES (10126, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:38:38');
INSERT INTO `job_log` VALUES (10127, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:38:38');
INSERT INTO `job_log` VALUES (10128, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:38:38');
INSERT INTO `job_log` VALUES (10129, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:39:45');
INSERT INTO `job_log` VALUES (10130, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:39:45');
INSERT INTO `job_log` VALUES (10131, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:39:45');
INSERT INTO `job_log` VALUES (10132, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:40:45');
INSERT INTO `job_log` VALUES (10133, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:40:45');
INSERT INTO `job_log` VALUES (10134, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:40:45');
INSERT INTO `job_log` VALUES (10135, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:41:42');
INSERT INTO `job_log` VALUES (10136, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:41:42');
INSERT INTO `job_log` VALUES (10137, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:41:42');
INSERT INTO `job_log` VALUES (10138, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:42:08');
INSERT INTO `job_log` VALUES (10139, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:42:08');
INSERT INTO `job_log` VALUES (10140, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:42:08');
INSERT INTO `job_log` VALUES (10141, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:43:26');
INSERT INTO `job_log` VALUES (10142, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:43:26');
INSERT INTO `job_log` VALUES (10143, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:43:26');
INSERT INTO `job_log` VALUES (10144, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:47:22');
INSERT INTO `job_log` VALUES (10145, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:47:22');
INSERT INTO `job_log` VALUES (10146, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:47:22');
INSERT INTO `job_log` VALUES (10147, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:49:13');
INSERT INTO `job_log` VALUES (10148, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:49:13');
INSERT INTO `job_log` VALUES (10149, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:49:13');
INSERT INTO `job_log` VALUES (10150, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:51:24');
INSERT INTO `job_log` VALUES (10151, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:51:24');
INSERT INTO `job_log` VALUES (10152, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:51:24');
INSERT INTO `job_log` VALUES (10153, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:52:05');
INSERT INTO `job_log` VALUES (10154, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:52:05');
INSERT INTO `job_log` VALUES (10155, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:52:05');
INSERT INTO `job_log` VALUES (10156, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:56:23');
INSERT INTO `job_log` VALUES (10157, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:56:23');
INSERT INTO `job_log` VALUES (10158, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:56:23');
INSERT INTO `job_log` VALUES (10159, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:57:03');
INSERT INTO `job_log` VALUES (10160, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:57:03');
INSERT INTO `job_log` VALUES (10161, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:57:03');
INSERT INTO `job_log` VALUES (10162, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:57:53');
INSERT INTO `job_log` VALUES (10163, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:57:53');
INSERT INTO `job_log` VALUES (10164, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:57:53');
INSERT INTO `job_log` VALUES (10165, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:58:43');
INSERT INTO `job_log` VALUES (10166, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:58:43');
INSERT INTO `job_log` VALUES (10167, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:58:43');
INSERT INTO `job_log` VALUES (10168, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 01:58:50');
INSERT INTO `job_log` VALUES (10169, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 01:58:50');
INSERT INTO `job_log` VALUES (10170, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 01:58:50');
INSERT INTO `job_log` VALUES (10171, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:00:21');
INSERT INTO `job_log` VALUES (10172, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:00:21');
INSERT INTO `job_log` VALUES (10173, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:00:21');
INSERT INTO `job_log` VALUES (10174, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 02:01:00');
INSERT INTO `job_log` VALUES (10175, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:01:59');
INSERT INTO `job_log` VALUES (10176, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:01:59');
INSERT INTO `job_log` VALUES (10177, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:01:59');
INSERT INTO `job_log` VALUES (10178, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:03:05');
INSERT INTO `job_log` VALUES (10179, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:03:05');
INSERT INTO `job_log` VALUES (10180, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:03:05');
INSERT INTO `job_log` VALUES (10181, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:05:19');
INSERT INTO `job_log` VALUES (10182, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:05:19');
INSERT INTO `job_log` VALUES (10183, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:05:19');
INSERT INTO `job_log` VALUES (10184, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:09:20');
INSERT INTO `job_log` VALUES (10185, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:09:20');
INSERT INTO `job_log` VALUES (10186, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:09:20');
INSERT INTO `job_log` VALUES (10187, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:09:29');
INSERT INTO `job_log` VALUES (10188, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:09:29');
INSERT INTO `job_log` VALUES (10189, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:09:29');
INSERT INTO `job_log` VALUES (10190, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:11:23');
INSERT INTO `job_log` VALUES (10191, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:11:23');
INSERT INTO `job_log` VALUES (10192, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:11:23');
INSERT INTO `job_log` VALUES (10193, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:13:44');
INSERT INTO `job_log` VALUES (10194, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:13:44');
INSERT INTO `job_log` VALUES (10195, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:13:44');
INSERT INTO `job_log` VALUES (10196, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:28:29');
INSERT INTO `job_log` VALUES (10197, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:28:29');
INSERT INTO `job_log` VALUES (10198, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:28:29');
INSERT INTO `job_log` VALUES (10199, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:29:05');
INSERT INTO `job_log` VALUES (10200, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:29:05');
INSERT INTO `job_log` VALUES (10201, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:29:05');
INSERT INTO `job_log` VALUES (10202, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:30:18');
INSERT INTO `job_log` VALUES (10203, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:30:19');
INSERT INTO `job_log` VALUES (10204, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:30:19');
INSERT INTO `job_log` VALUES (10205, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 02:31:00');
INSERT INTO `job_log` VALUES (10206, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:31:37');
INSERT INTO `job_log` VALUES (10207, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:31:37');
INSERT INTO `job_log` VALUES (10208, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:31:37');
INSERT INTO `job_log` VALUES (10209, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:32:06');
INSERT INTO `job_log` VALUES (10210, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:32:06');
INSERT INTO `job_log` VALUES (10211, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:32:06');
INSERT INTO `job_log` VALUES (10212, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:34:12');
INSERT INTO `job_log` VALUES (10213, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:34:12');
INSERT INTO `job_log` VALUES (10214, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:34:12');
INSERT INTO `job_log` VALUES (10215, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:34:27');
INSERT INTO `job_log` VALUES (10216, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:34:27');
INSERT INTO `job_log` VALUES (10217, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:34:27');
INSERT INTO `job_log` VALUES (10218, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:34:59');
INSERT INTO `job_log` VALUES (10219, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:34:59');
INSERT INTO `job_log` VALUES (10220, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:34:59');
INSERT INTO `job_log` VALUES (10221, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:37:19');
INSERT INTO `job_log` VALUES (10222, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:37:19');
INSERT INTO `job_log` VALUES (10223, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:37:19');
INSERT INTO `job_log` VALUES (10224, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 02:39:49');
INSERT INTO `job_log` VALUES (10225, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 02:39:49');
INSERT INTO `job_log` VALUES (10226, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 02:39:49');
INSERT INTO `job_log` VALUES (10227, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-29 03:00:00');
INSERT INTO `job_log` VALUES (10228, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 03:01:00');
INSERT INTO `job_log` VALUES (10229, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 03:19:51');
INSERT INTO `job_log` VALUES (10230, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 03:19:51');
INSERT INTO `job_log` VALUES (10231, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 03:19:51');
INSERT INTO `job_log` VALUES (10232, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 03:20:35');
INSERT INTO `job_log` VALUES (10233, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 03:20:35');
INSERT INTO `job_log` VALUES (10234, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 03:20:35');
INSERT INTO `job_log` VALUES (10235, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 03:23:03');
INSERT INTO `job_log` VALUES (10236, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 03:23:03');
INSERT INTO `job_log` VALUES (10237, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 03:23:03');
INSERT INTO `job_log` VALUES (10238, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 03:24:16');
INSERT INTO `job_log` VALUES (10239, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 03:24:16');
INSERT INTO `job_log` VALUES (10240, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 03:24:16');
INSERT INTO `job_log` VALUES (10241, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 03:27:37');
INSERT INTO `job_log` VALUES (10242, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 03:27:37');
INSERT INTO `job_log` VALUES (10243, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 03:27:37');
INSERT INTO `job_log` VALUES (10244, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 03:29:37');
INSERT INTO `job_log` VALUES (10245, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 03:29:37');
INSERT INTO `job_log` VALUES (10246, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 03:29:37');
INSERT INTO `job_log` VALUES (10247, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-29 03:30:00');
INSERT INTO `job_log` VALUES (10248, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 03:31:00');
INSERT INTO `job_log` VALUES (10249, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 03:43:48');
INSERT INTO `job_log` VALUES (10250, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 03:43:48');
INSERT INTO `job_log` VALUES (10251, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 03:43:48');
INSERT INTO `job_log` VALUES (10252, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 03:44:21');
INSERT INTO `job_log` VALUES (10253, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 03:44:21');
INSERT INTO `job_log` VALUES (10254, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 03:44:21');
INSERT INTO `job_log` VALUES (10255, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 03:45:04');
INSERT INTO `job_log` VALUES (10256, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 03:45:04');
INSERT INTO `job_log` VALUES (10257, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 03:45:04');
INSERT INTO `job_log` VALUES (10258, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 03:46:10');
INSERT INTO `job_log` VALUES (10259, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 03:46:10');
INSERT INTO `job_log` VALUES (10260, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 03:46:10');
INSERT INTO `job_log` VALUES (10261, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 03:47:52');
INSERT INTO `job_log` VALUES (10262, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 03:47:52');
INSERT INTO `job_log` VALUES (10263, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 03:47:52');
INSERT INTO `job_log` VALUES (10264, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 03:50:16');
INSERT INTO `job_log` VALUES (10265, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 03:50:16');
INSERT INTO `job_log` VALUES (10266, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 03:50:16');
INSERT INTO `job_log` VALUES (10267, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-29 04:10:38');
INSERT INTO `job_log` VALUES (10268, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 04:10:38');
INSERT INTO `job_log` VALUES (10269, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-29 04:30:00');
INSERT INTO `job_log` VALUES (10270, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 04:31:00');
INSERT INTO `job_log` VALUES (10271, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-29 05:00:59');
INSERT INTO `job_log` VALUES (10272, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 05:01:00');
INSERT INTO `job_log` VALUES (10273, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-29 05:34:29');
INSERT INTO `job_log` VALUES (10274, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 05:34:29');
INSERT INTO `job_log` VALUES (10275, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 05:51:18');
INSERT INTO `job_log` VALUES (10276, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 05:51:18');
INSERT INTO `job_log` VALUES (10277, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 05:51:18');
INSERT INTO `job_log` VALUES (10278, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 05:58:25');
INSERT INTO `job_log` VALUES (10279, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 05:58:25');
INSERT INTO `job_log` VALUES (10280, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 05:58:25');
INSERT INTO `job_log` VALUES (10281, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 06:00:23');
INSERT INTO `job_log` VALUES (10282, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 06:00:23');
INSERT INTO `job_log` VALUES (10283, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 06:00:23');
INSERT INTO `job_log` VALUES (10284, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-29 06:01:00');
INSERT INTO `job_log` VALUES (10285, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 06:08:54');
INSERT INTO `job_log` VALUES (10286, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 06:08:54');
INSERT INTO `job_log` VALUES (10287, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 06:08:54');
INSERT INTO `job_log` VALUES (10288, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-29 06:12:25');
INSERT INTO `job_log` VALUES (10289, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-29 06:12:25');
INSERT INTO `job_log` VALUES (10290, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-29 06:12:25');
INSERT INTO `job_log` VALUES (10291, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-31 08:50:41');
INSERT INTO `job_log` VALUES (10292, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-31 08:50:41');
INSERT INTO `job_log` VALUES (10293, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-31 08:50:41');
INSERT INTO `job_log` VALUES (10294, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-31 09:00:00');
INSERT INTO `job_log` VALUES (10295, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-31 09:01:00');
INSERT INTO `job_log` VALUES (10296, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-31 09:09:05');
INSERT INTO `job_log` VALUES (10297, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-31 09:09:05');
INSERT INTO `job_log` VALUES (10298, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-31 09:09:05');
INSERT INTO `job_log` VALUES (10299, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-31 09:10:42');
INSERT INTO `job_log` VALUES (10300, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-31 09:10:42');
INSERT INTO `job_log` VALUES (10301, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-31 09:10:42');
INSERT INTO `job_log` VALUES (10302, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-31 09:20:08');
INSERT INTO `job_log` VALUES (10303, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-31 09:20:08');
INSERT INTO `job_log` VALUES (10304, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-31 09:20:08');
INSERT INTO `job_log` VALUES (10305, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-31 09:20:48');
INSERT INTO `job_log` VALUES (10306, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-31 09:20:48');
INSERT INTO `job_log` VALUES (10307, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-31 09:20:48');
INSERT INTO `job_log` VALUES (10308, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-31 09:21:21');
INSERT INTO `job_log` VALUES (10309, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-31 09:21:21');
INSERT INTO `job_log` VALUES (10310, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-31 09:21:21');
INSERT INTO `job_log` VALUES (10311, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-31 09:27:07');
INSERT INTO `job_log` VALUES (10312, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-31 09:27:07');
INSERT INTO `job_log` VALUES (10313, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-31 09:27:07');
INSERT INTO `job_log` VALUES (10314, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-31 09:30:28');
INSERT INTO `job_log` VALUES (10315, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-31 09:30:28');
INSERT INTO `job_log` VALUES (10316, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-31 09:30:28');
INSERT INTO `job_log` VALUES (10317, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-31 09:31:00');
INSERT INTO `job_log` VALUES (10318, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-31 09:33:12');
INSERT INTO `job_log` VALUES (10319, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-31 09:33:12');
INSERT INTO `job_log` VALUES (10320, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-31 09:33:12');
INSERT INTO `job_log` VALUES (10321, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-31 09:33:53');
INSERT INTO `job_log` VALUES (10322, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-31 09:33:53');
INSERT INTO `job_log` VALUES (10323, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-31 09:33:53');
INSERT INTO `job_log` VALUES (10324, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-10-31 11:22:12');
INSERT INTO `job_log` VALUES (10325, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-10-31 11:22:12');
INSERT INTO `job_log` VALUES (10326, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-10-31 11:22:12');
INSERT INTO `job_log` VALUES (10327, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-31 11:41:32');
INSERT INTO `job_log` VALUES (10328, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-31 11:41:32');
INSERT INTO `job_log` VALUES (10329, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-31 12:00:49');
INSERT INTO `job_log` VALUES (10330, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-31 12:16:32');
INSERT INTO `job_log` VALUES (10331, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-31 12:37:35');
INSERT INTO `job_log` VALUES (10332, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-31 12:37:35');
INSERT INTO `job_log` VALUES (10333, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-31 13:13:46');
INSERT INTO `job_log` VALUES (10334, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-31 13:13:46');
INSERT INTO `job_log` VALUES (10335, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-31 13:45:35');
INSERT INTO `job_log` VALUES (10336, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-31 13:45:35');
INSERT INTO `job_log` VALUES (10337, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-10-31 14:03:02');
INSERT INTO `job_log` VALUES (10338, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-10-31 14:03:02');
INSERT INTO `job_log` VALUES (10339, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-01 02:11:37');
INSERT INTO `job_log` VALUES (10340, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-01 02:11:37');
INSERT INTO `job_log` VALUES (10341, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-01 02:11:37');
INSERT INTO `job_log` VALUES (10342, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-03 01:42:16');
INSERT INTO `job_log` VALUES (10343, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-03 01:42:17');
INSERT INTO `job_log` VALUES (10344, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-03 01:42:17');
INSERT INTO `job_log` VALUES (10345, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-03 02:00:00');
INSERT INTO `job_log` VALUES (10346, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-03 02:01:00');
INSERT INTO `job_log` VALUES (10347, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-03 02:30:00');
INSERT INTO `job_log` VALUES (10348, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-03 02:31:00');
INSERT INTO `job_log` VALUES (10349, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-05 13:40:37');
INSERT INTO `job_log` VALUES (10350, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-05 13:40:37');
INSERT INTO `job_log` VALUES (10351, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-05 13:40:37');
INSERT INTO `job_log` VALUES (10352, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-05 13:42:54');
INSERT INTO `job_log` VALUES (10353, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-05 13:42:54');
INSERT INTO `job_log` VALUES (10354, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-05 13:42:54');
INSERT INTO `job_log` VALUES (10355, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-05 13:44:49');
INSERT INTO `job_log` VALUES (10356, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-05 13:44:49');
INSERT INTO `job_log` VALUES (10357, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-05 13:44:49');
INSERT INTO `job_log` VALUES (10358, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-05 13:47:02');
INSERT INTO `job_log` VALUES (10359, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-05 13:47:02');
INSERT INTO `job_log` VALUES (10360, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-05 13:47:02');
INSERT INTO `job_log` VALUES (10361, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-05 13:51:58');
INSERT INTO `job_log` VALUES (10362, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-05 13:51:58');
INSERT INTO `job_log` VALUES (10363, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-05 13:51:58');
INSERT INTO `job_log` VALUES (10364, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-05 13:52:02');
INSERT INTO `job_log` VALUES (10365, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-05 13:52:02');
INSERT INTO `job_log` VALUES (10366, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-05 13:52:02');
INSERT INTO `job_log` VALUES (10367, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-05 14:00:00');
INSERT INTO `job_log` VALUES (10368, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-05 14:01:00');
INSERT INTO `job_log` VALUES (10369, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-11 02:50:20');
INSERT INTO `job_log` VALUES (10370, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-11 02:50:20');
INSERT INTO `job_log` VALUES (10371, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-11 02:50:20');
INSERT INTO `job_log` VALUES (10372, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-11 03:00:00');
INSERT INTO `job_log` VALUES (10373, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-11 03:01:00');
INSERT INTO `job_log` VALUES (10374, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-11 03:30:00');
INSERT INTO `job_log` VALUES (10375, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-11 03:31:00');
INSERT INTO `job_log` VALUES (10376, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-11 04:09:45');
INSERT INTO `job_log` VALUES (10377, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-11 04:09:45');
INSERT INTO `job_log` VALUES (10378, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-11 04:43:04');
INSERT INTO `job_log` VALUES (10379, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-11 04:43:04');
INSERT INTO `job_log` VALUES (10380, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-11 05:00:00');
INSERT INTO `job_log` VALUES (10381, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-11 05:16:24');
INSERT INTO `job_log` VALUES (10382, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-11 05:30:00');
INSERT INTO `job_log` VALUES (10383, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-11 05:31:00');
INSERT INTO `job_log` VALUES (10384, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-11 06:00:00');
INSERT INTO `job_log` VALUES (10385, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-11 06:01:00');
INSERT INTO `job_log` VALUES (10386, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 05:58:54');
INSERT INTO `job_log` VALUES (10387, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 05:58:54');
INSERT INTO `job_log` VALUES (10388, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 05:58:54');
INSERT INTO `job_log` VALUES (10389, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-19 06:00:00');
INSERT INTO `job_log` VALUES (10390, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-19 06:01:00');
INSERT INTO `job_log` VALUES (10391, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:04:02');
INSERT INTO `job_log` VALUES (10392, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:04:02');
INSERT INTO `job_log` VALUES (10393, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:04:02');
INSERT INTO `job_log` VALUES (10394, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:09:47');
INSERT INTO `job_log` VALUES (10395, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:09:47');
INSERT INTO `job_log` VALUES (10396, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:09:47');
INSERT INTO `job_log` VALUES (10397, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:14:56');
INSERT INTO `job_log` VALUES (10398, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:14:56');
INSERT INTO `job_log` VALUES (10399, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:14:56');
INSERT INTO `job_log` VALUES (10400, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:15:29');
INSERT INTO `job_log` VALUES (10401, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:15:29');
INSERT INTO `job_log` VALUES (10402, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:15:29');
INSERT INTO `job_log` VALUES (10403, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:15:46');
INSERT INTO `job_log` VALUES (10404, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:15:46');
INSERT INTO `job_log` VALUES (10405, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:15:46');
INSERT INTO `job_log` VALUES (10406, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:17:56');
INSERT INTO `job_log` VALUES (10407, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:17:56');
INSERT INTO `job_log` VALUES (10408, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:17:56');
INSERT INTO `job_log` VALUES (10409, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:18:22');
INSERT INTO `job_log` VALUES (10410, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:18:22');
INSERT INTO `job_log` VALUES (10411, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:18:22');
INSERT INTO `job_log` VALUES (10412, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:19:12');
INSERT INTO `job_log` VALUES (10413, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:19:12');
INSERT INTO `job_log` VALUES (10414, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:19:12');
INSERT INTO `job_log` VALUES (10415, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:19:25');
INSERT INTO `job_log` VALUES (10416, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:19:25');
INSERT INTO `job_log` VALUES (10417, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:19:25');
INSERT INTO `job_log` VALUES (10418, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:20:27');
INSERT INTO `job_log` VALUES (10419, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:20:27');
INSERT INTO `job_log` VALUES (10420, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:20:27');
INSERT INTO `job_log` VALUES (10421, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:22:55');
INSERT INTO `job_log` VALUES (10422, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:22:55');
INSERT INTO `job_log` VALUES (10423, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:22:55');
INSERT INTO `job_log` VALUES (10424, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:28:04');
INSERT INTO `job_log` VALUES (10425, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:28:04');
INSERT INTO `job_log` VALUES (10426, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:28:04');
INSERT INTO `job_log` VALUES (10427, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-19 06:30:00');
INSERT INTO `job_log` VALUES (10428, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-19 06:31:00');
INSERT INTO `job_log` VALUES (10429, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:46:28');
INSERT INTO `job_log` VALUES (10430, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:46:28');
INSERT INTO `job_log` VALUES (10431, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:46:28');
INSERT INTO `job_log` VALUES (10432, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 06:49:16');
INSERT INTO `job_log` VALUES (10433, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 06:49:16');
INSERT INTO `job_log` VALUES (10434, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 06:49:16');
INSERT INTO `job_log` VALUES (10435, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-19 07:00:00');
INSERT INTO `job_log` VALUES (10436, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-19 07:01:00');
INSERT INTO `job_log` VALUES (10437, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 07:10:57');
INSERT INTO `job_log` VALUES (10438, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 07:10:57');
INSERT INTO `job_log` VALUES (10439, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 07:10:57');
INSERT INTO `job_log` VALUES (10440, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 07:11:03');
INSERT INTO `job_log` VALUES (10441, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 07:11:03');
INSERT INTO `job_log` VALUES (10442, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 07:11:03');
INSERT INTO `job_log` VALUES (10443, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 07:15:23');
INSERT INTO `job_log` VALUES (10444, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 07:15:23');
INSERT INTO `job_log` VALUES (10445, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 07:15:23');
INSERT INTO `job_log` VALUES (10446, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 07:16:19');
INSERT INTO `job_log` VALUES (10447, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 07:16:19');
INSERT INTO `job_log` VALUES (10448, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 07:16:19');
INSERT INTO `job_log` VALUES (10449, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 07:16:27');
INSERT INTO `job_log` VALUES (10450, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 07:16:27');
INSERT INTO `job_log` VALUES (10451, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 07:16:27');
INSERT INTO `job_log` VALUES (10452, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 07:17:08');
INSERT INTO `job_log` VALUES (10453, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 07:17:08');
INSERT INTO `job_log` VALUES (10454, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 07:17:08');
INSERT INTO `job_log` VALUES (10455, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 07:17:21');
INSERT INTO `job_log` VALUES (10456, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 07:17:21');
INSERT INTO `job_log` VALUES (10457, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 07:17:21');
INSERT INTO `job_log` VALUES (10458, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 07:18:24');
INSERT INTO `job_log` VALUES (10459, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 07:18:24');
INSERT INTO `job_log` VALUES (10460, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 07:18:24');
INSERT INTO `job_log` VALUES (10461, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 07:18:40');
INSERT INTO `job_log` VALUES (10462, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 07:18:40');
INSERT INTO `job_log` VALUES (10463, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 07:18:40');
INSERT INTO `job_log` VALUES (10464, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-19 07:30:00');
INSERT INTO `job_log` VALUES (10465, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-19 07:31:00');
INSERT INTO `job_log` VALUES (10466, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 07:32:34');
INSERT INTO `job_log` VALUES (10467, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 07:32:34');
INSERT INTO `job_log` VALUES (10468, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 07:32:34');
INSERT INTO `job_log` VALUES (10469, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 07:33:09');
INSERT INTO `job_log` VALUES (10470, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 07:33:09');
INSERT INTO `job_log` VALUES (10471, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 07:33:09');
INSERT INTO `job_log` VALUES (10472, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 07:43:53');
INSERT INTO `job_log` VALUES (10473, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 07:43:53');
INSERT INTO `job_log` VALUES (10474, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 07:43:53');
INSERT INTO `job_log` VALUES (10475, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-19 08:00:00');
INSERT INTO `job_log` VALUES (10476, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-19 08:01:00');
INSERT INTO `job_log` VALUES (10477, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:15:14');
INSERT INTO `job_log` VALUES (10478, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:15:14');
INSERT INTO `job_log` VALUES (10479, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:15:14');
INSERT INTO `job_log` VALUES (10480, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:16:27');
INSERT INTO `job_log` VALUES (10481, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:16:27');
INSERT INTO `job_log` VALUES (10482, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:16:27');
INSERT INTO `job_log` VALUES (10483, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:16:34');
INSERT INTO `job_log` VALUES (10484, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:16:34');
INSERT INTO `job_log` VALUES (10485, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:16:34');
INSERT INTO `job_log` VALUES (10486, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:17:40');
INSERT INTO `job_log` VALUES (10487, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:17:40');
INSERT INTO `job_log` VALUES (10488, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:17:40');
INSERT INTO `job_log` VALUES (10489, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-19 08:30:00');
INSERT INTO `job_log` VALUES (10490, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-19 08:31:00');
INSERT INTO `job_log` VALUES (10491, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:31:47');
INSERT INTO `job_log` VALUES (10492, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:31:47');
INSERT INTO `job_log` VALUES (10493, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:31:47');
INSERT INTO `job_log` VALUES (10494, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:33:11');
INSERT INTO `job_log` VALUES (10495, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:33:12');
INSERT INTO `job_log` VALUES (10496, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:33:12');
INSERT INTO `job_log` VALUES (10497, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:40:21');
INSERT INTO `job_log` VALUES (10498, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:40:21');
INSERT INTO `job_log` VALUES (10499, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:40:21');
INSERT INTO `job_log` VALUES (10500, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:44:45');
INSERT INTO `job_log` VALUES (10501, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:44:45');
INSERT INTO `job_log` VALUES (10502, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:44:46');
INSERT INTO `job_log` VALUES (10503, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:45:22');
INSERT INTO `job_log` VALUES (10504, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:45:22');
INSERT INTO `job_log` VALUES (10505, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:45:22');
INSERT INTO `job_log` VALUES (10506, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:46:03');
INSERT INTO `job_log` VALUES (10507, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:46:03');
INSERT INTO `job_log` VALUES (10508, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:46:03');
INSERT INTO `job_log` VALUES (10509, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:46:16');
INSERT INTO `job_log` VALUES (10510, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:46:16');
INSERT INTO `job_log` VALUES (10511, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:46:16');
INSERT INTO `job_log` VALUES (10512, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:46:45');
INSERT INTO `job_log` VALUES (10513, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:46:45');
INSERT INTO `job_log` VALUES (10514, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:46:45');
INSERT INTO `job_log` VALUES (10515, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:47:26');
INSERT INTO `job_log` VALUES (10516, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:47:26');
INSERT INTO `job_log` VALUES (10517, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:47:26');
INSERT INTO `job_log` VALUES (10518, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:48:39');
INSERT INTO `job_log` VALUES (10519, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:48:39');
INSERT INTO `job_log` VALUES (10520, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:48:39');
INSERT INTO `job_log` VALUES (10521, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:49:03');
INSERT INTO `job_log` VALUES (10522, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:49:03');
INSERT INTO `job_log` VALUES (10523, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:49:03');
INSERT INTO `job_log` VALUES (10524, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:49:29');
INSERT INTO `job_log` VALUES (10525, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:49:29');
INSERT INTO `job_log` VALUES (10526, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:49:29');
INSERT INTO `job_log` VALUES (10527, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:49:38');
INSERT INTO `job_log` VALUES (10528, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:49:38');
INSERT INTO `job_log` VALUES (10529, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:49:38');
INSERT INTO `job_log` VALUES (10530, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:55:31');
INSERT INTO `job_log` VALUES (10531, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:55:31');
INSERT INTO `job_log` VALUES (10532, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:55:31');
INSERT INTO `job_log` VALUES (10533, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:57:10');
INSERT INTO `job_log` VALUES (10534, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:57:10');
INSERT INTO `job_log` VALUES (10535, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:57:10');
INSERT INTO `job_log` VALUES (10536, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:57:18');
INSERT INTO `job_log` VALUES (10537, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:57:18');
INSERT INTO `job_log` VALUES (10538, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:57:18');
INSERT INTO `job_log` VALUES (10539, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:57:19');
INSERT INTO `job_log` VALUES (10540, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:57:19');
INSERT INTO `job_log` VALUES (10541, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:57:19');
INSERT INTO `job_log` VALUES (10542, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:58:23');
INSERT INTO `job_log` VALUES (10543, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:58:23');
INSERT INTO `job_log` VALUES (10544, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:58:23');
INSERT INTO `job_log` VALUES (10545, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:58:49');
INSERT INTO `job_log` VALUES (10546, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:58:49');
INSERT INTO `job_log` VALUES (10547, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:58:49');
INSERT INTO `job_log` VALUES (10548, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 08:59:28');
INSERT INTO `job_log` VALUES (10549, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 08:59:28');
INSERT INTO `job_log` VALUES (10550, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 08:59:28');
INSERT INTO `job_log` VALUES (10551, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-19 09:00:00');
INSERT INTO `job_log` VALUES (10552, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 09:00:43');
INSERT INTO `job_log` VALUES (10553, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 09:00:43');
INSERT INTO `job_log` VALUES (10554, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 09:00:43');
INSERT INTO `job_log` VALUES (10555, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-19 09:01:00');
INSERT INTO `job_log` VALUES (10556, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 09:03:27');
INSERT INTO `job_log` VALUES (10557, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 09:03:27');
INSERT INTO `job_log` VALUES (10558, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 09:03:27');
INSERT INTO `job_log` VALUES (10559, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 09:03:58');
INSERT INTO `job_log` VALUES (10560, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 09:03:58');
INSERT INTO `job_log` VALUES (10561, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 09:03:59');
INSERT INTO `job_log` VALUES (10562, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 09:06:57');
INSERT INTO `job_log` VALUES (10563, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 09:06:57');
INSERT INTO `job_log` VALUES (10564, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 09:06:57');
INSERT INTO `job_log` VALUES (10565, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 09:07:14');
INSERT INTO `job_log` VALUES (10566, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 09:07:14');
INSERT INTO `job_log` VALUES (10567, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 09:07:14');
INSERT INTO `job_log` VALUES (10568, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-19 09:10:41');
INSERT INTO `job_log` VALUES (10569, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-19 09:10:41');
INSERT INTO `job_log` VALUES (10570, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-19 09:10:41');
INSERT INTO `job_log` VALUES (10571, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-20 01:47:27');
INSERT INTO `job_log` VALUES (10572, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-20 01:47:27');
INSERT INTO `job_log` VALUES (10573, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-20 01:47:27');
INSERT INTO `job_log` VALUES (10574, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 02:00:00');
INSERT INTO `job_log` VALUES (10575, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 02:01:00');
INSERT INTO `job_log` VALUES (10576, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 02:30:00');
INSERT INTO `job_log` VALUES (10577, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 02:31:00');
INSERT INTO `job_log` VALUES (10578, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 03:00:00');
INSERT INTO `job_log` VALUES (10579, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 03:01:00');
INSERT INTO `job_log` VALUES (10580, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 03:30:00');
INSERT INTO `job_log` VALUES (10581, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 03:31:00');
INSERT INTO `job_log` VALUES (10582, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 04:11:17');
INSERT INTO `job_log` VALUES (10583, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 04:11:17');
INSERT INTO `job_log` VALUES (10584, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 04:31:26');
INSERT INTO `job_log` VALUES (10585, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 04:31:26');
INSERT INTO `job_log` VALUES (10586, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 05:03:46');
INSERT INTO `job_log` VALUES (10587, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 05:03:46');
INSERT INTO `job_log` VALUES (10588, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 05:33:38');
INSERT INTO `job_log` VALUES (10589, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 05:33:38');
INSERT INTO `job_log` VALUES (10590, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 06:00:00');
INSERT INTO `job_log` VALUES (10591, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 06:01:00');
INSERT INTO `job_log` VALUES (10592, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 06:30:00');
INSERT INTO `job_log` VALUES (10593, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 06:31:00');
INSERT INTO `job_log` VALUES (10594, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 07:00:00');
INSERT INTO `job_log` VALUES (10595, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 07:01:00');
INSERT INTO `job_log` VALUES (10596, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 07:30:00');
INSERT INTO `job_log` VALUES (10597, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 07:31:00');
INSERT INTO `job_log` VALUES (10598, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 08:00:00');
INSERT INTO `job_log` VALUES (10599, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 08:01:00');
INSERT INTO `job_log` VALUES (10600, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-20 08:14:47');
INSERT INTO `job_log` VALUES (10601, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-20 08:14:47');
INSERT INTO `job_log` VALUES (10602, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-20 08:14:47');
INSERT INTO `job_log` VALUES (10603, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-20 08:15:02');
INSERT INTO `job_log` VALUES (10604, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-20 08:15:02');
INSERT INTO `job_log` VALUES (10605, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-20 08:15:02');
INSERT INTO `job_log` VALUES (10606, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-20 08:15:39');
INSERT INTO `job_log` VALUES (10607, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-20 08:15:39');
INSERT INTO `job_log` VALUES (10608, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-20 08:15:39');
INSERT INTO `job_log` VALUES (10609, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-20 08:27:47');
INSERT INTO `job_log` VALUES (10610, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-20 08:27:47');
INSERT INTO `job_log` VALUES (10611, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-20 08:27:47');
INSERT INTO `job_log` VALUES (10612, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 08:30:00');
INSERT INTO `job_log` VALUES (10613, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 08:31:00');
INSERT INTO `job_log` VALUES (10614, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-20 08:33:28');
INSERT INTO `job_log` VALUES (10615, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-20 08:33:28');
INSERT INTO `job_log` VALUES (10616, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-20 08:33:28');
INSERT INTO `job_log` VALUES (10617, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-20 08:36:34');
INSERT INTO `job_log` VALUES (10618, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-20 08:36:34');
INSERT INTO `job_log` VALUES (10619, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-20 08:36:34');
INSERT INTO `job_log` VALUES (10620, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 09:00:00');
INSERT INTO `job_log` VALUES (10621, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 09:01:00');
INSERT INTO `job_log` VALUES (10622, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 09:30:00');
INSERT INTO `job_log` VALUES (10623, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 09:31:00');
INSERT INTO `job_log` VALUES (10624, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 10:34:58');
INSERT INTO `job_log` VALUES (10625, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 10:34:58');
INSERT INTO `job_log` VALUES (10626, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 10:34:58');
INSERT INTO `job_log` VALUES (10627, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 10:34:58');
INSERT INTO `job_log` VALUES (10628, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 11:03:33');
INSERT INTO `job_log` VALUES (10629, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 11:03:33');
INSERT INTO `job_log` VALUES (10630, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 11:41:53');
INSERT INTO `job_log` VALUES (10631, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 11:41:53');
INSERT INTO `job_log` VALUES (10632, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 12:11:39');
INSERT INTO `job_log` VALUES (10633, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 12:11:39');
INSERT INTO `job_log` VALUES (10634, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 12:30:00');
INSERT INTO `job_log` VALUES (10635, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 12:31:00');
INSERT INTO `job_log` VALUES (10636, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 13:00:00');
INSERT INTO `job_log` VALUES (10637, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 13:01:00');
INSERT INTO `job_log` VALUES (10638, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 13:33:53');
INSERT INTO `job_log` VALUES (10639, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 13:33:53');
INSERT INTO `job_log` VALUES (10640, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 14:00:00');
INSERT INTO `job_log` VALUES (10641, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 14:01:00');
INSERT INTO `job_log` VALUES (10642, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 14:43:11');
INSERT INTO `job_log` VALUES (10643, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 14:43:11');
INSERT INTO `job_log` VALUES (10644, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 15:03:00');
INSERT INTO `job_log` VALUES (10645, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 15:03:00');
INSERT INTO `job_log` VALUES (10646, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 15:41:49');
INSERT INTO `job_log` VALUES (10647, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 15:41:49');
INSERT INTO `job_log` VALUES (10648, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 16:02:34');
INSERT INTO `job_log` VALUES (10649, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-11-20 16:02:34');
INSERT INTO `job_log` VALUES (10650, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 16:02:34');
INSERT INTO `job_log` VALUES (10651, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 16:49:02');
INSERT INTO `job_log` VALUES (10652, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 16:49:02');
INSERT INTO `job_log` VALUES (10653, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 17:08:00');
INSERT INTO `job_log` VALUES (10654, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 17:08:00');
INSERT INTO `job_log` VALUES (10655, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 17:46:32');
INSERT INTO `job_log` VALUES (10656, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 17:46:32');
INSERT INTO `job_log` VALUES (10657, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 18:06:21');
INSERT INTO `job_log` VALUES (10658, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 18:06:21');
INSERT INTO `job_log` VALUES (10659, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 18:46:29');
INSERT INTO `job_log` VALUES (10660, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 18:46:29');
INSERT INTO `job_log` VALUES (10661, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 19:04:33');
INSERT INTO `job_log` VALUES (10662, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 19:04:34');
INSERT INTO `job_log` VALUES (10663, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 19:40:36');
INSERT INTO `job_log` VALUES (10664, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 19:40:36');
INSERT INTO `job_log` VALUES (10665, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 20:00:00');
INSERT INTO `job_log` VALUES (10666, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 20:21:00');
INSERT INTO `job_log` VALUES (10667, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 20:42:46');
INSERT INTO `job_log` VALUES (10668, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 20:42:46');
INSERT INTO `job_log` VALUES (10669, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 21:00:25');
INSERT INTO `job_log` VALUES (10670, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 21:17:11');
INSERT INTO `job_log` VALUES (10671, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 21:37:06');
INSERT INTO `job_log` VALUES (10672, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 21:37:06');
INSERT INTO `job_log` VALUES (10673, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 22:21:59');
INSERT INTO `job_log` VALUES (10674, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 22:21:59');
INSERT INTO `job_log` VALUES (10675, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 22:41:28');
INSERT INTO `job_log` VALUES (10676, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 22:41:28');
INSERT INTO `job_log` VALUES (10677, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 23:08:27');
INSERT INTO `job_log` VALUES (10678, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 23:08:27');
INSERT INTO `job_log` VALUES (10679, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-20 23:44:27');
INSERT INTO `job_log` VALUES (10680, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-20 23:44:27');
INSERT INTO `job_log` VALUES (10681, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-21 00:01:37');
INSERT INTO `job_log` VALUES (10682, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-21 00:01:37');
INSERT INTO `job_log` VALUES (10683, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-21 01:08:27');
INSERT INTO `job_log` VALUES (10684, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-21 01:08:27');
INSERT INTO `job_log` VALUES (10685, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-21 01:08:27');
INSERT INTO `job_log` VALUES (10686, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-21 01:08:27');
INSERT INTO `job_log` VALUES (10687, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-21 01:30:00');
INSERT INTO `job_log` VALUES (10688, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-21 01:31:00');
INSERT INTO `job_log` VALUES (10689, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-21 01:53:00');
INSERT INTO `job_log` VALUES (10690, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-21 01:53:00');
INSERT INTO `job_log` VALUES (10691, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-21 01:53:00');
INSERT INTO `job_log` VALUES (10692, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-21 02:00:06');
INSERT INTO `job_log` VALUES (10693, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-21 02:00:06');
INSERT INTO `job_log` VALUES (10694, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-21 02:00:06');
INSERT INTO `job_log` VALUES (10695, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-21 02:01:00');
INSERT INTO `job_log` VALUES (10696, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-21 02:30:00');
INSERT INTO `job_log` VALUES (10697, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-21 02:31:00');
INSERT INTO `job_log` VALUES (10698, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-21 03:00:00');
INSERT INTO `job_log` VALUES (10699, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-21 03:01:00');
INSERT INTO `job_log` VALUES (10700, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-21 06:22:57');
INSERT INTO `job_log` VALUES (10701, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-21 06:22:57');
INSERT INTO `job_log` VALUES (10702, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-21 06:22:57');
INSERT INTO `job_log` VALUES (10703, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-21 06:30:00');
INSERT INTO `job_log` VALUES (10704, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-21 06:31:00');
INSERT INTO `job_log` VALUES (10705, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-21 07:00:00');
INSERT INTO `job_log` VALUES (10706, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-21 07:01:00');
INSERT INTO `job_log` VALUES (10707, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-21 07:30:00');
INSERT INTO `job_log` VALUES (10708, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-23 06:12:43');
INSERT INTO `job_log` VALUES (10709, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-23 06:12:43');
INSERT INTO `job_log` VALUES (10710, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-23 06:12:43');
INSERT INTO `job_log` VALUES (10711, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-23 06:12:57');
INSERT INTO `job_log` VALUES (10712, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-23 06:12:57');
INSERT INTO `job_log` VALUES (10713, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-23 06:12:57');
INSERT INTO `job_log` VALUES (10714, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-23 06:20:33');
INSERT INTO `job_log` VALUES (10715, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-23 06:20:33');
INSERT INTO `job_log` VALUES (10716, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-23 06:20:33');
INSERT INTO `job_log` VALUES (10717, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-23 06:27:47');
INSERT INTO `job_log` VALUES (10718, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-23 06:27:47');
INSERT INTO `job_log` VALUES (10719, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-23 06:27:47');
INSERT INTO `job_log` VALUES (10720, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-23 06:28:45');
INSERT INTO `job_log` VALUES (10721, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-23 06:28:45');
INSERT INTO `job_log` VALUES (10722, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-23 06:28:45');
INSERT INTO `job_log` VALUES (10723, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-23 06:30:42');
INSERT INTO `job_log` VALUES (10724, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-23 06:30:42');
INSERT INTO `job_log` VALUES (10725, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-23 06:30:42');
INSERT INTO `job_log` VALUES (10726, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-23 06:31:00');
INSERT INTO `job_log` VALUES (10727, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-23 06:34:16');
INSERT INTO `job_log` VALUES (10728, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-23 06:34:16');
INSERT INTO `job_log` VALUES (10729, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-23 06:34:16');
INSERT INTO `job_log` VALUES (10730, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-23 06:34:35');
INSERT INTO `job_log` VALUES (10731, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-23 06:34:35');
INSERT INTO `job_log` VALUES (10732, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-23 06:34:35');
INSERT INTO `job_log` VALUES (10733, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-23 06:36:00');
INSERT INTO `job_log` VALUES (10734, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-23 06:36:00');
INSERT INTO `job_log` VALUES (10735, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-23 06:36:00');
INSERT INTO `job_log` VALUES (10736, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 07:11:37');
INSERT INTO `job_log` VALUES (10737, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 07:11:37');
INSERT INTO `job_log` VALUES (10738, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 07:11:37');
INSERT INTO `job_log` VALUES (10739, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 07:30:00');
INSERT INTO `job_log` VALUES (10740, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 07:31:00');
INSERT INTO `job_log` VALUES (10741, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 07:45:37');
INSERT INTO `job_log` VALUES (10742, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 07:45:37');
INSERT INTO `job_log` VALUES (10743, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 07:45:37');
INSERT INTO `job_log` VALUES (10744, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 07:45:39');
INSERT INTO `job_log` VALUES (10745, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 07:45:39');
INSERT INTO `job_log` VALUES (10746, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 07:45:39');
INSERT INTO `job_log` VALUES (10747, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 07:46:14');
INSERT INTO `job_log` VALUES (10748, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 07:46:14');
INSERT INTO `job_log` VALUES (10749, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 07:46:14');
INSERT INTO `job_log` VALUES (10750, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 07:46:24');
INSERT INTO `job_log` VALUES (10751, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 07:46:24');
INSERT INTO `job_log` VALUES (10752, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 07:46:24');
INSERT INTO `job_log` VALUES (10753, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 07:46:31');
INSERT INTO `job_log` VALUES (10754, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 07:46:31');
INSERT INTO `job_log` VALUES (10755, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 07:46:31');
INSERT INTO `job_log` VALUES (10756, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 07:47:23');
INSERT INTO `job_log` VALUES (10757, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 07:47:23');
INSERT INTO `job_log` VALUES (10758, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 07:47:23');
INSERT INTO `job_log` VALUES (10759, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 07:55:50');
INSERT INTO `job_log` VALUES (10760, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 07:55:50');
INSERT INTO `job_log` VALUES (10761, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 07:55:50');
INSERT INTO `job_log` VALUES (10762, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 08:00:00');
INSERT INTO `job_log` VALUES (10763, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 08:01:00');
INSERT INTO `job_log` VALUES (10764, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:04:49');
INSERT INTO `job_log` VALUES (10765, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:04:49');
INSERT INTO `job_log` VALUES (10766, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:04:49');
INSERT INTO `job_log` VALUES (10767, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:11:24');
INSERT INTO `job_log` VALUES (10768, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:11:24');
INSERT INTO `job_log` VALUES (10769, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:11:24');
INSERT INTO `job_log` VALUES (10770, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:20:14');
INSERT INTO `job_log` VALUES (10771, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:20:14');
INSERT INTO `job_log` VALUES (10772, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:20:14');
INSERT INTO `job_log` VALUES (10773, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:20:22');
INSERT INTO `job_log` VALUES (10774, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:20:22');
INSERT INTO `job_log` VALUES (10775, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:20:22');
INSERT INTO `job_log` VALUES (10776, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:23:10');
INSERT INTO `job_log` VALUES (10777, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:23:10');
INSERT INTO `job_log` VALUES (10778, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:23:10');
INSERT INTO `job_log` VALUES (10779, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:27:56');
INSERT INTO `job_log` VALUES (10780, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:27:56');
INSERT INTO `job_log` VALUES (10781, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:27:56');
INSERT INTO `job_log` VALUES (10782, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:28:06');
INSERT INTO `job_log` VALUES (10783, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:28:06');
INSERT INTO `job_log` VALUES (10784, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:28:06');
INSERT INTO `job_log` VALUES (10785, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:28:17');
INSERT INTO `job_log` VALUES (10786, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:28:17');
INSERT INTO `job_log` VALUES (10787, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:28:17');
INSERT INTO `job_log` VALUES (10788, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:28:43');
INSERT INTO `job_log` VALUES (10789, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:28:43');
INSERT INTO `job_log` VALUES (10790, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:28:43');
INSERT INTO `job_log` VALUES (10791, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:29:02');
INSERT INTO `job_log` VALUES (10792, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:29:02');
INSERT INTO `job_log` VALUES (10793, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:29:02');
INSERT INTO `job_log` VALUES (10794, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 08:30:00');
INSERT INTO `job_log` VALUES (10795, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 08:31:00');
INSERT INTO `job_log` VALUES (10796, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:31:04');
INSERT INTO `job_log` VALUES (10797, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:31:04');
INSERT INTO `job_log` VALUES (10798, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:31:04');
INSERT INTO `job_log` VALUES (10799, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:31:10');
INSERT INTO `job_log` VALUES (10800, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:31:10');
INSERT INTO `job_log` VALUES (10801, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:31:10');
INSERT INTO `job_log` VALUES (10802, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:32:06');
INSERT INTO `job_log` VALUES (10803, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:32:06');
INSERT INTO `job_log` VALUES (10804, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:32:06');
INSERT INTO `job_log` VALUES (10805, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:32:36');
INSERT INTO `job_log` VALUES (10806, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:32:36');
INSERT INTO `job_log` VALUES (10807, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:32:36');
INSERT INTO `job_log` VALUES (10808, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:34:19');
INSERT INTO `job_log` VALUES (10809, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:34:19');
INSERT INTO `job_log` VALUES (10810, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:34:19');
INSERT INTO `job_log` VALUES (10811, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:34:38');
INSERT INTO `job_log` VALUES (10812, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:34:38');
INSERT INTO `job_log` VALUES (10813, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:34:38');
INSERT INTO `job_log` VALUES (10814, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:34:42');
INSERT INTO `job_log` VALUES (10815, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:34:42');
INSERT INTO `job_log` VALUES (10816, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:34:42');
INSERT INTO `job_log` VALUES (10817, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:34:47');
INSERT INTO `job_log` VALUES (10818, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:34:47');
INSERT INTO `job_log` VALUES (10819, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:34:47');
INSERT INTO `job_log` VALUES (10820, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:35:01');
INSERT INTO `job_log` VALUES (10821, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:35:01');
INSERT INTO `job_log` VALUES (10822, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:35:01');
INSERT INTO `job_log` VALUES (10823, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:35:30');
INSERT INTO `job_log` VALUES (10824, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:35:31');
INSERT INTO `job_log` VALUES (10825, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:35:31');
INSERT INTO `job_log` VALUES (10826, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:35:39');
INSERT INTO `job_log` VALUES (10827, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:35:39');
INSERT INTO `job_log` VALUES (10828, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:35:39');
INSERT INTO `job_log` VALUES (10829, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:36:18');
INSERT INTO `job_log` VALUES (10830, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:36:18');
INSERT INTO `job_log` VALUES (10831, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:36:18');
INSERT INTO `job_log` VALUES (10832, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:36:46');
INSERT INTO `job_log` VALUES (10833, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:36:46');
INSERT INTO `job_log` VALUES (10834, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:36:46');
INSERT INTO `job_log` VALUES (10835, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:50:32');
INSERT INTO `job_log` VALUES (10836, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:50:32');
INSERT INTO `job_log` VALUES (10837, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:50:32');
INSERT INTO `job_log` VALUES (10838, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:51:31');
INSERT INTO `job_log` VALUES (10839, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:51:31');
INSERT INTO `job_log` VALUES (10840, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:51:31');
INSERT INTO `job_log` VALUES (10841, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:53:36');
INSERT INTO `job_log` VALUES (10842, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:53:36');
INSERT INTO `job_log` VALUES (10843, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:53:36');
INSERT INTO `job_log` VALUES (10844, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:55:30');
INSERT INTO `job_log` VALUES (10845, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:55:30');
INSERT INTO `job_log` VALUES (10846, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:55:30');
INSERT INTO `job_log` VALUES (10847, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:56:03');
INSERT INTO `job_log` VALUES (10848, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:56:03');
INSERT INTO `job_log` VALUES (10849, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:56:03');
INSERT INTO `job_log` VALUES (10850, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:56:17');
INSERT INTO `job_log` VALUES (10851, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:56:17');
INSERT INTO `job_log` VALUES (10852, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:56:17');
INSERT INTO `job_log` VALUES (10853, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:57:04');
INSERT INTO `job_log` VALUES (10854, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:57:04');
INSERT INTO `job_log` VALUES (10855, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:57:04');
INSERT INTO `job_log` VALUES (10856, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:57:11');
INSERT INTO `job_log` VALUES (10857, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:57:11');
INSERT INTO `job_log` VALUES (10858, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:57:11');
INSERT INTO `job_log` VALUES (10859, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 08:58:01');
INSERT INTO `job_log` VALUES (10860, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 08:58:01');
INSERT INTO `job_log` VALUES (10861, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 08:58:01');
INSERT INTO `job_log` VALUES (10862, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 09:00:00');
INSERT INTO `job_log` VALUES (10863, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 09:01:00');
INSERT INTO `job_log` VALUES (10864, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:02:47');
INSERT INTO `job_log` VALUES (10865, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:02:47');
INSERT INTO `job_log` VALUES (10866, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:02:47');
INSERT INTO `job_log` VALUES (10867, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:02:49');
INSERT INTO `job_log` VALUES (10868, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:02:49');
INSERT INTO `job_log` VALUES (10869, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:02:49');
INSERT INTO `job_log` VALUES (10870, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:06:11');
INSERT INTO `job_log` VALUES (10871, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:06:11');
INSERT INTO `job_log` VALUES (10872, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:06:11');
INSERT INTO `job_log` VALUES (10873, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:06:42');
INSERT INTO `job_log` VALUES (10874, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:06:42');
INSERT INTO `job_log` VALUES (10875, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:06:42');
INSERT INTO `job_log` VALUES (10876, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:06:57');
INSERT INTO `job_log` VALUES (10877, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:06:57');
INSERT INTO `job_log` VALUES (10878, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:06:57');
INSERT INTO `job_log` VALUES (10879, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:07:21');
INSERT INTO `job_log` VALUES (10880, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:07:21');
INSERT INTO `job_log` VALUES (10881, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:07:21');
INSERT INTO `job_log` VALUES (10882, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:07:39');
INSERT INTO `job_log` VALUES (10883, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:07:39');
INSERT INTO `job_log` VALUES (10884, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:07:39');
INSERT INTO `job_log` VALUES (10885, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:16:51');
INSERT INTO `job_log` VALUES (10886, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:16:51');
INSERT INTO `job_log` VALUES (10887, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:16:51');
INSERT INTO `job_log` VALUES (10888, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:16:55');
INSERT INTO `job_log` VALUES (10889, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:16:55');
INSERT INTO `job_log` VALUES (10890, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:16:55');
INSERT INTO `job_log` VALUES (10891, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:17:00');
INSERT INTO `job_log` VALUES (10892, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:17:00');
INSERT INTO `job_log` VALUES (10893, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:17:00');
INSERT INTO `job_log` VALUES (10894, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:17:09');
INSERT INTO `job_log` VALUES (10895, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:17:09');
INSERT INTO `job_log` VALUES (10896, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:17:09');
INSERT INTO `job_log` VALUES (10897, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:18:14');
INSERT INTO `job_log` VALUES (10898, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:18:14');
INSERT INTO `job_log` VALUES (10899, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:18:14');
INSERT INTO `job_log` VALUES (10900, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 09:21:41');
INSERT INTO `job_log` VALUES (10901, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 09:21:41');
INSERT INTO `job_log` VALUES (10902, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 09:21:41');
INSERT INTO `job_log` VALUES (10903, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 09:30:00');
INSERT INTO `job_log` VALUES (10904, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 09:31:00');
INSERT INTO `job_log` VALUES (10905, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 10:50:20');
INSERT INTO `job_log` VALUES (10906, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 10:50:20');
INSERT INTO `job_log` VALUES (10907, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 10:50:20');
INSERT INTO `job_log` VALUES (10908, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 10:50:20');
INSERT INTO `job_log` VALUES (10909, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 11:10:18');
INSERT INTO `job_log` VALUES (10910, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 11:10:18');
INSERT INTO `job_log` VALUES (10911, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 11:35:30');
INSERT INTO `job_log` VALUES (10912, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 11:35:30');
INSERT INTO `job_log` VALUES (10913, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 12:11:47');
INSERT INTO `job_log` VALUES (10914, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 12:11:47');
INSERT INTO `job_log` VALUES (10915, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 12:30:00');
INSERT INTO `job_log` VALUES (10916, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 12:31:00');
INSERT INTO `job_log` VALUES (10917, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 13:00:00');
INSERT INTO `job_log` VALUES (10918, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 13:01:00');
INSERT INTO `job_log` VALUES (10919, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 13:30:00');
INSERT INTO `job_log` VALUES (10920, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 13:31:00');
INSERT INTO `job_log` VALUES (10921, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 14:00:00');
INSERT INTO `job_log` VALUES (10922, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 14:01:00');
INSERT INTO `job_log` VALUES (10923, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 14:18:24');
INSERT INTO `job_log` VALUES (10924, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 14:18:24');
INSERT INTO `job_log` VALUES (10925, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 14:18:24');
INSERT INTO `job_log` VALUES (10926, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 14:18:25');
INSERT INTO `job_log` VALUES (10927, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 14:18:25');
INSERT INTO `job_log` VALUES (10928, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 14:18:25');
INSERT INTO `job_log` VALUES (10929, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 14:25:32');
INSERT INTO `job_log` VALUES (10930, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 14:25:32');
INSERT INTO `job_log` VALUES (10931, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 14:25:32');
INSERT INTO `job_log` VALUES (10932, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-25 14:26:35');
INSERT INTO `job_log` VALUES (10933, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-25 14:26:35');
INSERT INTO `job_log` VALUES (10934, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-25 14:26:35');
INSERT INTO `job_log` VALUES (10935, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 14:30:00');
INSERT INTO `job_log` VALUES (10936, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 14:31:00');
INSERT INTO `job_log` VALUES (10937, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 15:00:00');
INSERT INTO `job_log` VALUES (10938, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 15:15:55');
INSERT INTO `job_log` VALUES (10939, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 15:35:51');
INSERT INTO `job_log` VALUES (10940, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 15:35:51');
INSERT INTO `job_log` VALUES (10941, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 16:12:47');
INSERT INTO `job_log` VALUES (10942, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-11-25 16:12:47');
INSERT INTO `job_log` VALUES (10943, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 16:12:47');
INSERT INTO `job_log` VALUES (10944, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 16:31:16');
INSERT INTO `job_log` VALUES (10945, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 16:31:16');
INSERT INTO `job_log` VALUES (10946, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 17:19:19');
INSERT INTO `job_log` VALUES (10947, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 17:19:19');
INSERT INTO `job_log` VALUES (10948, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 17:35:14');
INSERT INTO `job_log` VALUES (10949, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 17:35:14');
INSERT INTO `job_log` VALUES (10950, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 18:09:51');
INSERT INTO `job_log` VALUES (10951, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 18:09:51');
INSERT INTO `job_log` VALUES (10952, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 18:42:33');
INSERT INTO `job_log` VALUES (10953, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 18:42:33');
INSERT INTO `job_log` VALUES (10954, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 19:04:20');
INSERT INTO `job_log` VALUES (10955, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 19:04:20');
INSERT INTO `job_log` VALUES (10956, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 19:43:30');
INSERT INTO `job_log` VALUES (10957, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 19:43:30');
INSERT INTO `job_log` VALUES (10958, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 20:03:35');
INSERT INTO `job_log` VALUES (10959, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 20:03:35');
INSERT INTO `job_log` VALUES (10960, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 20:41:02');
INSERT INTO `job_log` VALUES (10961, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 20:41:02');
INSERT INTO `job_log` VALUES (10962, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 21:15:49');
INSERT INTO `job_log` VALUES (10963, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 21:15:49');
INSERT INTO `job_log` VALUES (10964, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 21:36:43');
INSERT INTO `job_log` VALUES (10965, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 21:36:43');
INSERT INTO `job_log` VALUES (10966, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 22:14:53');
INSERT INTO `job_log` VALUES (10967, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 22:14:53');
INSERT INTO `job_log` VALUES (10968, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 22:32:03');
INSERT INTO `job_log` VALUES (10969, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 22:32:03');
INSERT INTO `job_log` VALUES (10970, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 23:39:17');
INSERT INTO `job_log` VALUES (10971, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 23:39:17');
INSERT INTO `job_log` VALUES (10972, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-25 23:39:17');
INSERT INTO `job_log` VALUES (10973, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-25 23:39:17');
INSERT INTO `job_log` VALUES (10974, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-26 00:13:31');
INSERT INTO `job_log` VALUES (10975, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-26 00:13:31');
INSERT INTO `job_log` VALUES (10976, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-26 01:06:00');
INSERT INTO `job_log` VALUES (10977, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-26 01:06:00');
INSERT INTO `job_log` VALUES (10978, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-26 01:06:00');
INSERT INTO `job_log` VALUES (10979, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-26 01:06:00');
INSERT INTO `job_log` VALUES (10980, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-26 01:30:00');
INSERT INTO `job_log` VALUES (10981, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-26 01:31:00');
INSERT INTO `job_log` VALUES (10982, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-26 02:00:00');
INSERT INTO `job_log` VALUES (10983, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-26 02:01:00');
INSERT INTO `job_log` VALUES (10984, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-26 02:30:00');
INSERT INTO `job_log` VALUES (10985, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-26 02:31:00');
INSERT INTO `job_log` VALUES (10986, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-26 02:45:22');
INSERT INTO `job_log` VALUES (10987, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-26 02:45:22');
INSERT INTO `job_log` VALUES (10988, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-26 02:45:22');
INSERT INTO `job_log` VALUES (10989, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-26 02:59:55');
INSERT INTO `job_log` VALUES (10990, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-26 02:59:55');
INSERT INTO `job_log` VALUES (10991, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-26 02:59:55');
INSERT INTO `job_log` VALUES (10992, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-26 02:59:58');
INSERT INTO `job_log` VALUES (10993, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-26 02:59:58');
INSERT INTO `job_log` VALUES (10994, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-26 02:59:58');
INSERT INTO `job_log` VALUES (10995, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-26 03:00:00');
INSERT INTO `job_log` VALUES (10996, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-27 08:22:41');
INSERT INTO `job_log` VALUES (10997, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-27 08:22:41');
INSERT INTO `job_log` VALUES (10998, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-27 08:22:41');
INSERT INTO `job_log` VALUES (10999, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-27 08:30:00');
INSERT INTO `job_log` VALUES (11000, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-27 08:31:00');
INSERT INTO `job_log` VALUES (11001, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-27 09:00:00');
INSERT INTO `job_log` VALUES (11002, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-27 09:01:01');
INSERT INTO `job_log` VALUES (11003, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-27 09:01:01');
INSERT INTO `job_log` VALUES (11004, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-27 09:01:01');
INSERT INTO `job_log` VALUES (11005, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-27 09:28:27');
INSERT INTO `job_log` VALUES (11006, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-27 09:28:27');
INSERT INTO `job_log` VALUES (11007, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-27 09:28:27');
INSERT INTO `job_log` VALUES (11008, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-27 09:28:30');
INSERT INTO `job_log` VALUES (11009, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-27 09:28:30');
INSERT INTO `job_log` VALUES (11010, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-27 09:28:30');
INSERT INTO `job_log` VALUES (11011, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-11-28 06:08:49');
INSERT INTO `job_log` VALUES (11012, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-11-28 06:08:49');
INSERT INTO `job_log` VALUES (11013, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-11-28 06:08:49');
INSERT INTO `job_log` VALUES (11014, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 06:30:00');
INSERT INTO `job_log` VALUES (11015, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 06:31:00');
INSERT INTO `job_log` VALUES (11016, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 07:00:00');
INSERT INTO `job_log` VALUES (11017, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 07:01:00');
INSERT INTO `job_log` VALUES (11018, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 07:30:00');
INSERT INTO `job_log` VALUES (11019, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 07:31:00');
INSERT INTO `job_log` VALUES (11020, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 08:00:00');
INSERT INTO `job_log` VALUES (11021, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 08:01:00');
INSERT INTO `job_log` VALUES (11022, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 08:30:00');
INSERT INTO `job_log` VALUES (11023, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 08:31:00');
INSERT INTO `job_log` VALUES (11024, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 09:00:00');
INSERT INTO `job_log` VALUES (11025, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 09:01:00');
INSERT INTO `job_log` VALUES (11026, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 09:30:00');
INSERT INTO `job_log` VALUES (11027, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 09:31:00');
INSERT INTO `job_log` VALUES (11028, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 10:27:51');
INSERT INTO `job_log` VALUES (11029, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 10:27:51');
INSERT INTO `job_log` VALUES (11030, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 10:44:36');
INSERT INTO `job_log` VALUES (11031, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 10:44:36');
INSERT INTO `job_log` VALUES (11032, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 11:02:02');
INSERT INTO `job_log` VALUES (11033, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 11:02:02');
INSERT INTO `job_log` VALUES (11034, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 11:48:23');
INSERT INTO `job_log` VALUES (11035, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 11:48:23');
INSERT INTO `job_log` VALUES (11036, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 12:05:43');
INSERT INTO `job_log` VALUES (11037, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 12:05:43');
INSERT INTO `job_log` VALUES (11038, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 12:33:11');
INSERT INTO `job_log` VALUES (11039, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 12:33:11');
INSERT INTO `job_log` VALUES (11040, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 13:11:09');
INSERT INTO `job_log` VALUES (11041, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 13:11:09');
INSERT INTO `job_log` VALUES (11042, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 13:31:35');
INSERT INTO `job_log` VALUES (11043, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 13:31:35');
INSERT INTO `job_log` VALUES (11044, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 14:09:11');
INSERT INTO `job_log` VALUES (11045, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 14:09:11');
INSERT INTO `job_log` VALUES (11046, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 14:30:56');
INSERT INTO `job_log` VALUES (11047, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 14:31:00');
INSERT INTO `job_log` VALUES (11048, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 15:10:59');
INSERT INTO `job_log` VALUES (11049, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 15:10:59');
INSERT INTO `job_log` VALUES (11050, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 15:30:22');
INSERT INTO `job_log` VALUES (11051, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 15:35:12');
INSERT INTO `job_log` VALUES (11052, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 16:14:10');
INSERT INTO `job_log` VALUES (11053, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-11-28 16:14:10');
INSERT INTO `job_log` VALUES (11054, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 16:14:10');
INSERT INTO `job_log` VALUES (11055, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 16:32:15');
INSERT INTO `job_log` VALUES (11056, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 16:32:15');
INSERT INTO `job_log` VALUES (11057, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 17:12:00');
INSERT INTO `job_log` VALUES (11058, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 17:12:00');
INSERT INTO `job_log` VALUES (11059, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 17:39:01');
INSERT INTO `job_log` VALUES (11060, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 17:39:01');
INSERT INTO `job_log` VALUES (11061, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 18:30:32');
INSERT INTO `job_log` VALUES (11062, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 18:30:32');
INSERT INTO `job_log` VALUES (11063, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 18:30:32');
INSERT INTO `job_log` VALUES (11064, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 18:32:15');
INSERT INTO `job_log` VALUES (11065, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 19:12:23');
INSERT INTO `job_log` VALUES (11066, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 19:12:23');
INSERT INTO `job_log` VALUES (11067, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 19:45:58');
INSERT INTO `job_log` VALUES (11068, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 19:45:58');
INSERT INTO `job_log` VALUES (11069, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 20:06:34');
INSERT INTO `job_log` VALUES (11070, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 20:06:34');
INSERT INTO `job_log` VALUES (11071, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 20:45:19');
INSERT INTO `job_log` VALUES (11072, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 20:45:19');
INSERT INTO `job_log` VALUES (11073, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 21:05:48');
INSERT INTO `job_log` VALUES (11074, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 21:05:48');
INSERT INTO `job_log` VALUES (11075, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 21:45:37');
INSERT INTO `job_log` VALUES (11076, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 21:45:37');
INSERT INTO `job_log` VALUES (11077, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 22:07:28');
INSERT INTO `job_log` VALUES (11078, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 22:07:28');
INSERT INTO `job_log` VALUES (11079, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 22:48:30');
INSERT INTO `job_log` VALUES (11080, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 22:48:30');
INSERT INTO `job_log` VALUES (11081, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 23:10:15');
INSERT INTO `job_log` VALUES (11082, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 23:10:15');
INSERT INTO `job_log` VALUES (11083, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-28 23:30:37');
INSERT INTO `job_log` VALUES (11084, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-28 23:47:53');
INSERT INTO `job_log` VALUES (11085, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 00:05:03');
INSERT INTO `job_log` VALUES (11086, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 00:05:03');
INSERT INTO `job_log` VALUES (11087, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 00:49:20');
INSERT INTO `job_log` VALUES (11088, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 00:49:20');
INSERT INTO `job_log` VALUES (11089, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 01:07:50');
INSERT INTO `job_log` VALUES (11090, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 01:07:50');
INSERT INTO `job_log` VALUES (11091, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 01:33:09');
INSERT INTO `job_log` VALUES (11092, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 01:33:09');
INSERT INTO `job_log` VALUES (11093, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 02:07:45');
INSERT INTO `job_log` VALUES (11094, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 02:07:45');
INSERT INTO `job_log` VALUES (11095, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 02:33:00');
INSERT INTO `job_log` VALUES (11096, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 02:33:00');
INSERT INTO `job_log` VALUES (11097, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 03:10:14');
INSERT INTO `job_log` VALUES (11098, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 03:10:14');
INSERT INTO `job_log` VALUES (11099, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 03:30:50');
INSERT INTO `job_log` VALUES (11100, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 03:34:03');
INSERT INTO `job_log` VALUES (11101, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 04:06:50');
INSERT INTO `job_log` VALUES (11102, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 04:06:50');
INSERT INTO `job_log` VALUES (11103, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 04:35:35');
INSERT INTO `job_log` VALUES (11104, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 04:35:35');
INSERT INTO `job_log` VALUES (11105, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 05:14:00');
INSERT INTO `job_log` VALUES (11106, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 05:14:00');
INSERT INTO `job_log` VALUES (11107, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 05:33:19');
INSERT INTO `job_log` VALUES (11108, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 05:33:19');
INSERT INTO `job_log` VALUES (11109, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 06:13:12');
INSERT INTO `job_log` VALUES (11110, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 06:13:12');
INSERT INTO `job_log` VALUES (11111, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 06:31:38');
INSERT INTO `job_log` VALUES (11112, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 06:31:38');
INSERT INTO `job_log` VALUES (11113, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 07:14:03');
INSERT INTO `job_log` VALUES (11114, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 07:14:03');
INSERT INTO `job_log` VALUES (11115, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 07:35:50');
INSERT INTO `job_log` VALUES (11116, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 07:35:50');
INSERT INTO `job_log` VALUES (11117, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 08:14:44');
INSERT INTO `job_log` VALUES (11118, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 08:14:44');
INSERT INTO `job_log` VALUES (11119, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 08:36:31');
INSERT INTO `job_log` VALUES (11120, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 08:36:31');
INSERT INTO `job_log` VALUES (11121, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 09:15:21');
INSERT INTO `job_log` VALUES (11122, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 09:15:21');
INSERT INTO `job_log` VALUES (11123, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 09:31:00');
INSERT INTO `job_log` VALUES (11124, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 09:31:00');
INSERT INTO `job_log` VALUES (11125, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 10:01:51');
INSERT INTO `job_log` VALUES (11126, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 10:01:51');
INSERT INTO `job_log` VALUES (11127, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 10:40:39');
INSERT INTO `job_log` VALUES (11128, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 10:40:39');
INSERT INTO `job_log` VALUES (11129, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 11:01:42');
INSERT INTO `job_log` VALUES (11130, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 11:01:42');
INSERT INTO `job_log` VALUES (11131, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 11:40:06');
INSERT INTO `job_log` VALUES (11132, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 11:40:06');
INSERT INTO `job_log` VALUES (11133, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 12:15:59');
INSERT INTO `job_log` VALUES (11134, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 12:15:59');
INSERT INTO `job_log` VALUES (11135, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 12:35:19');
INSERT INTO `job_log` VALUES (11136, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 12:35:19');
INSERT INTO `job_log` VALUES (11137, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 13:17:02');
INSERT INTO `job_log` VALUES (11138, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 13:17:02');
INSERT INTO `job_log` VALUES (11139, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 13:38:09');
INSERT INTO `job_log` VALUES (11140, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 13:38:09');
INSERT INTO `job_log` VALUES (11141, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 14:00:00');
INSERT INTO `job_log` VALUES (11142, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 14:01:00');
INSERT INTO `job_log` VALUES (11143, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 14:30:00');
INSERT INTO `job_log` VALUES (11144, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 14:32:12');
INSERT INTO `job_log` VALUES (11145, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 15:09:49');
INSERT INTO `job_log` VALUES (11146, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 15:09:49');
INSERT INTO `job_log` VALUES (11147, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 15:30:25');
INSERT INTO `job_log` VALUES (11148, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 15:47:54');
INSERT INTO `job_log` VALUES (11149, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 16:05:33');
INSERT INTO `job_log` VALUES (11150, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-11-29 16:05:33');
INSERT INTO `job_log` VALUES (11151, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 16:05:33');
INSERT INTO `job_log` VALUES (11152, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 16:49:18');
INSERT INTO `job_log` VALUES (11153, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 16:49:18');
INSERT INTO `job_log` VALUES (11154, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 17:08:21');
INSERT INTO `job_log` VALUES (11155, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 17:08:21');
INSERT INTO `job_log` VALUES (11156, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 17:44:10');
INSERT INTO `job_log` VALUES (11157, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 17:44:10');
INSERT INTO `job_log` VALUES (11158, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 18:00:36');
INSERT INTO `job_log` VALUES (11159, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 18:02:15');
INSERT INTO `job_log` VALUES (11160, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 18:37:15');
INSERT INTO `job_log` VALUES (11161, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 18:37:15');
INSERT INTO `job_log` VALUES (11162, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 19:11:37');
INSERT INTO `job_log` VALUES (11163, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 19:11:37');
INSERT INTO `job_log` VALUES (11164, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 19:47:55');
INSERT INTO `job_log` VALUES (11165, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 19:47:55');
INSERT INTO `job_log` VALUES (11166, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 20:04:14');
INSERT INTO `job_log` VALUES (11167, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 20:04:14');
INSERT INTO `job_log` VALUES (11168, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 20:40:19');
INSERT INTO `job_log` VALUES (11169, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 20:40:19');
INSERT INTO `job_log` VALUES (11170, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 21:01:05');
INSERT INTO `job_log` VALUES (11171, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 21:01:05');
INSERT INTO `job_log` VALUES (11172, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 21:37:13');
INSERT INTO `job_log` VALUES (11173, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 21:37:13');
INSERT INTO `job_log` VALUES (11174, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 22:16:02');
INSERT INTO `job_log` VALUES (11175, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 22:16:02');
INSERT INTO `job_log` VALUES (11176, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 22:41:14');
INSERT INTO `job_log` VALUES (11177, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 22:41:14');
INSERT INTO `job_log` VALUES (11178, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 23:17:43');
INSERT INTO `job_log` VALUES (11179, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 23:17:43');
INSERT INTO `job_log` VALUES (11180, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-29 23:42:43');
INSERT INTO `job_log` VALUES (11181, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-29 23:42:43');
INSERT INTO `job_log` VALUES (11182, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 00:00:00');
INSERT INTO `job_log` VALUES (11183, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 00:02:08');
INSERT INTO `job_log` VALUES (11184, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 00:45:59');
INSERT INTO `job_log` VALUES (11185, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 00:45:59');
INSERT INTO `job_log` VALUES (11186, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 01:05:26');
INSERT INTO `job_log` VALUES (11187, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 01:05:26');
INSERT INTO `job_log` VALUES (11188, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 01:55:16');
INSERT INTO `job_log` VALUES (11189, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 01:55:16');
INSERT INTO `job_log` VALUES (11190, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 02:17:08');
INSERT INTO `job_log` VALUES (11191, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 02:17:08');
INSERT INTO `job_log` VALUES (11192, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 02:44:45');
INSERT INTO `job_log` VALUES (11193, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 02:44:45');
INSERT INTO `job_log` VALUES (11194, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 03:02:57');
INSERT INTO `job_log` VALUES (11195, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 03:02:57');
INSERT INTO `job_log` VALUES (11196, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 03:45:24');
INSERT INTO `job_log` VALUES (11197, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 03:45:24');
INSERT INTO `job_log` VALUES (11198, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 04:02:15');
INSERT INTO `job_log` VALUES (11199, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 04:02:15');
INSERT INTO `job_log` VALUES (11200, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 04:30:20');
INSERT INTO `job_log` VALUES (11201, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 05:03:23');
INSERT INTO `job_log` VALUES (11202, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 05:03:23');
INSERT INTO `job_log` VALUES (11203, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 05:03:23');
INSERT INTO `job_log` VALUES (11204, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 05:30:33');
INSERT INTO `job_log` VALUES (11205, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 05:49:30');
INSERT INTO `job_log` VALUES (11206, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 06:05:50');
INSERT INTO `job_log` VALUES (11207, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 06:05:50');
INSERT INTO `job_log` VALUES (11208, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 06:31:12');
INSERT INTO `job_log` VALUES (11209, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 06:31:12');
INSERT INTO `job_log` VALUES (11210, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 07:11:14');
INSERT INTO `job_log` VALUES (11211, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 07:11:14');
INSERT INTO `job_log` VALUES (11212, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 07:31:08');
INSERT INTO `job_log` VALUES (11213, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 07:31:08');
INSERT INTO `job_log` VALUES (11214, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 08:09:15');
INSERT INTO `job_log` VALUES (11215, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 08:09:15');
INSERT INTO `job_log` VALUES (11216, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 08:47:45');
INSERT INTO `job_log` VALUES (11217, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 08:47:45');
INSERT INTO `job_log` VALUES (11218, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 09:07:37');
INSERT INTO `job_log` VALUES (11219, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 09:07:37');
INSERT INTO `job_log` VALUES (11220, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 09:50:29');
INSERT INTO `job_log` VALUES (11221, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 09:50:29');
INSERT INTO `job_log` VALUES (11222, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 10:12:20');
INSERT INTO `job_log` VALUES (11223, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 10:12:20');
INSERT INTO `job_log` VALUES (11224, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 10:31:21');
INSERT INTO `job_log` VALUES (11225, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 10:31:21');
INSERT INTO `job_log` VALUES (11226, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 11:13:04');
INSERT INTO `job_log` VALUES (11227, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 11:13:04');
INSERT INTO `job_log` VALUES (11228, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 11:30:14');
INSERT INTO `job_log` VALUES (11229, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 11:31:59');
INSERT INTO `job_log` VALUES (11230, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 12:10:52');
INSERT INTO `job_log` VALUES (11231, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 12:10:52');
INSERT INTO `job_log` VALUES (11232, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 12:30:00');
INSERT INTO `job_log` VALUES (11233, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 12:31:00');
INSERT INTO `job_log` VALUES (11234, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 13:00:00');
INSERT INTO `job_log` VALUES (11235, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 13:01:00');
INSERT INTO `job_log` VALUES (11236, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 13:30:00');
INSERT INTO `job_log` VALUES (11237, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 13:31:00');
INSERT INTO `job_log` VALUES (11238, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 14:00:00');
INSERT INTO `job_log` VALUES (11239, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 14:01:00');
INSERT INTO `job_log` VALUES (11240, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 14:30:04');
INSERT INTO `job_log` VALUES (11241, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 14:31:00');
INSERT INTO `job_log` VALUES (11242, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 15:12:23');
INSERT INTO `job_log` VALUES (11243, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 15:12:23');
INSERT INTO `job_log` VALUES (11244, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 15:30:52');
INSERT INTO `job_log` VALUES (11245, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 15:47:19');
INSERT INTO `job_log` VALUES (11246, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 16:04:31');
INSERT INTO `job_log` VALUES (11247, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-11-30 16:04:31');
INSERT INTO `job_log` VALUES (11248, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 16:04:31');
INSERT INTO `job_log` VALUES (11249, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 16:42:10');
INSERT INTO `job_log` VALUES (11250, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 16:42:10');
INSERT INTO `job_log` VALUES (11251, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 17:13:01');
INSERT INTO `job_log` VALUES (11252, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 17:13:01');
INSERT INTO `job_log` VALUES (11253, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 17:30:20');
INSERT INTO `job_log` VALUES (11254, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 17:47:21');
INSERT INTO `job_log` VALUES (11255, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 18:06:46');
INSERT INTO `job_log` VALUES (11256, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 18:06:46');
INSERT INTO `job_log` VALUES (11257, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 18:44:49');
INSERT INTO `job_log` VALUES (11258, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 18:44:49');
INSERT INTO `job_log` VALUES (11259, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 19:01:59');
INSERT INTO `job_log` VALUES (11260, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 19:01:59');
INSERT INTO `job_log` VALUES (11261, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 19:37:45');
INSERT INTO `job_log` VALUES (11262, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 19:37:45');
INSERT INTO `job_log` VALUES (11263, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 20:09:58');
INSERT INTO `job_log` VALUES (11264, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 20:09:58');
INSERT INTO `job_log` VALUES (11265, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 20:49:31');
INSERT INTO `job_log` VALUES (11266, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 20:49:31');
INSERT INTO `job_log` VALUES (11267, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 22:14:12');
INSERT INTO `job_log` VALUES (11268, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 22:14:12');
INSERT INTO `job_log` VALUES (11269, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 22:14:12');
INSERT INTO `job_log` VALUES (11270, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 22:14:12');
INSERT INTO `job_log` VALUES (11271, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 22:14:12');
INSERT INTO `job_log` VALUES (11272, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 22:14:12');
INSERT INTO `job_log` VALUES (11273, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 23:23:11');
INSERT INTO `job_log` VALUES (11274, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 23:23:11');
INSERT INTO `job_log` VALUES (11275, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-11-30 23:23:11');
INSERT INTO `job_log` VALUES (11276, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-11-30 23:23:11');
INSERT INTO `job_log` VALUES (11277, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 00:14:08');
INSERT INTO `job_log` VALUES (11278, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 00:14:08');
INSERT INTO `job_log` VALUES (11279, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 00:14:08');
INSERT INTO `job_log` VALUES (11280, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 00:14:08');
INSERT INTO `job_log` VALUES (11281, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 00:52:17');
INSERT INTO `job_log` VALUES (11282, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 00:52:17');
INSERT INTO `job_log` VALUES (11283, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 01:14:11');
INSERT INTO `job_log` VALUES (11284, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 01:14:11');
INSERT INTO `job_log` VALUES (11285, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 01:30:00');
INSERT INTO `job_log` VALUES (11286, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 01:31:00');
INSERT INTO `job_log` VALUES (11287, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 02:00:00');
INSERT INTO `job_log` VALUES (11288, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 02:01:00');
INSERT INTO `job_log` VALUES (11289, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 02:30:00');
INSERT INTO `job_log` VALUES (11290, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 02:31:00');
INSERT INTO `job_log` VALUES (11291, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 03:00:00');
INSERT INTO `job_log` VALUES (11292, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 03:01:00');
INSERT INTO `job_log` VALUES (11293, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 03:30:00');
INSERT INTO `job_log` VALUES (11294, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 03:31:00');
INSERT INTO `job_log` VALUES (11295, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 04:00:00');
INSERT INTO `job_log` VALUES (11296, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 04:01:00');
INSERT INTO `job_log` VALUES (11297, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 04:30:00');
INSERT INTO `job_log` VALUES (11298, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 04:31:00');
INSERT INTO `job_log` VALUES (11299, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 05:11:50');
INSERT INTO `job_log` VALUES (11300, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 05:11:50');
INSERT INTO `job_log` VALUES (11301, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 05:30:00');
INSERT INTO `job_log` VALUES (11302, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 05:31:00');
INSERT INTO `job_log` VALUES (11303, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 06:00:00');
INSERT INTO `job_log` VALUES (11304, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 06:01:00');
INSERT INTO `job_log` VALUES (11305, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 06:30:00');
INSERT INTO `job_log` VALUES (11306, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 06:31:00');
INSERT INTO `job_log` VALUES (11307, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 07:00:00');
INSERT INTO `job_log` VALUES (11308, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 07:01:00');
INSERT INTO `job_log` VALUES (11309, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 07:30:00');
INSERT INTO `job_log` VALUES (11310, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 07:31:00');
INSERT INTO `job_log` VALUES (11311, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 08:00:00');
INSERT INTO `job_log` VALUES (11312, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 08:01:00');
INSERT INTO `job_log` VALUES (11313, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 08:30:00');
INSERT INTO `job_log` VALUES (11314, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 08:31:00');
INSERT INTO `job_log` VALUES (11315, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 09:00:00');
INSERT INTO `job_log` VALUES (11316, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 09:01:00');
INSERT INTO `job_log` VALUES (11317, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 09:30:00');
INSERT INTO `job_log` VALUES (11318, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 09:31:00');
INSERT INTO `job_log` VALUES (11319, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 10:13:14');
INSERT INTO `job_log` VALUES (11320, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 10:13:14');
INSERT INTO `job_log` VALUES (11321, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 10:55:47');
INSERT INTO `job_log` VALUES (11322, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 10:55:47');
INSERT INTO `job_log` VALUES (11323, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 11:16:24');
INSERT INTO `job_log` VALUES (11324, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 11:16:24');
INSERT INTO `job_log` VALUES (11325, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 11:33:09');
INSERT INTO `job_log` VALUES (11326, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 11:33:09');
INSERT INTO `job_log` VALUES (11327, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 12:06:39');
INSERT INTO `job_log` VALUES (11328, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 12:06:39');
INSERT INTO `job_log` VALUES (11329, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 12:30:00');
INSERT INTO `job_log` VALUES (11330, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 12:31:00');
INSERT INTO `job_log` VALUES (11331, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 13:00:00');
INSERT INTO `job_log` VALUES (11332, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 13:01:00');
INSERT INTO `job_log` VALUES (11333, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 13:30:00');
INSERT INTO `job_log` VALUES (11334, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 13:31:00');
INSERT INTO `job_log` VALUES (11335, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 14:00:00');
INSERT INTO `job_log` VALUES (11336, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 14:01:00');
INSERT INTO `job_log` VALUES (11337, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 14:42:19');
INSERT INTO `job_log` VALUES (11338, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 14:42:19');
INSERT INTO `job_log` VALUES (11339, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 15:00:37');
INSERT INTO `job_log` VALUES (11340, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 15:01:25');
INSERT INTO `job_log` VALUES (11341, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 15:37:43');
INSERT INTO `job_log` VALUES (11342, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 15:37:43');
INSERT INTO `job_log` VALUES (11343, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 16:17:53');
INSERT INTO `job_log` VALUES (11344, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '执行任务成功', '0', '', '2025-12-01 16:17:53');
INSERT INTO `job_log` VALUES (11345, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 16:17:53');
INSERT INTO `job_log` VALUES (11346, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 16:56:36');
INSERT INTO `job_log` VALUES (11347, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 16:56:36');
INSERT INTO `job_log` VALUES (11348, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 17:13:48');
INSERT INTO `job_log` VALUES (11349, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 17:13:48');
INSERT INTO `job_log` VALUES (11350, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 17:31:56');
INSERT INTO `job_log` VALUES (11351, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 17:31:56');
INSERT INTO `job_log` VALUES (11352, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 18:03:23');
INSERT INTO `job_log` VALUES (11353, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 18:03:23');
INSERT INTO `job_log` VALUES (11354, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 18:40:55');
INSERT INTO `job_log` VALUES (11355, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 18:40:55');
INSERT INTO `job_log` VALUES (11356, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 19:00:08');
INSERT INTO `job_log` VALUES (11357, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 19:01:53');
INSERT INTO `job_log` VALUES (11358, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 19:37:46');
INSERT INTO `job_log` VALUES (11359, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 19:37:46');
INSERT INTO `job_log` VALUES (11360, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 20:15:22');
INSERT INTO `job_log` VALUES (11361, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 20:15:22');
INSERT INTO `job_log` VALUES (11362, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 20:38:04');
INSERT INTO `job_log` VALUES (11363, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 20:38:04');
INSERT INTO `job_log` VALUES (11364, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 21:13:29');
INSERT INTO `job_log` VALUES (11365, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 21:13:29');
INSERT INTO `job_log` VALUES (11366, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 21:32:18');
INSERT INTO `job_log` VALUES (11367, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 21:32:18');
INSERT INTO `job_log` VALUES (11368, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 22:07:06');
INSERT INTO `job_log` VALUES (11369, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 22:07:06');
INSERT INTO `job_log` VALUES (11370, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 22:44:39');
INSERT INTO `job_log` VALUES (11371, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 22:44:39');
INSERT INTO `job_log` VALUES (11372, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 23:06:15');
INSERT INTO `job_log` VALUES (11373, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 23:06:15');
INSERT INTO `job_log` VALUES (11374, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-01 23:55:24');
INSERT INTO `job_log` VALUES (11375, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-01 23:55:24');
INSERT INTO `job_log` VALUES (11376, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 00:13:29');
INSERT INTO `job_log` VALUES (11377, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 00:13:29');
INSERT INTO `job_log` VALUES (11378, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 01:12:46');
INSERT INTO `job_log` VALUES (11379, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 01:12:46');
INSERT INTO `job_log` VALUES (11380, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 01:12:46');
INSERT INTO `job_log` VALUES (11381, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 01:12:46');
INSERT INTO `job_log` VALUES (11382, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 01:30:00');
INSERT INTO `job_log` VALUES (11383, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 01:31:00');
INSERT INTO `job_log` VALUES (11384, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 02:00:00');
INSERT INTO `job_log` VALUES (11385, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 02:01:00');
INSERT INTO `job_log` VALUES (11386, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 02:30:00');
INSERT INTO `job_log` VALUES (11387, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 02:31:00');
INSERT INTO `job_log` VALUES (11388, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 03:00:00');
INSERT INTO `job_log` VALUES (11389, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 03:01:00');
INSERT INTO `job_log` VALUES (11390, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 03:30:00');
INSERT INTO `job_log` VALUES (11391, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 03:31:00');
INSERT INTO `job_log` VALUES (11392, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 04:08:07');
INSERT INTO `job_log` VALUES (11393, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 04:08:07');
INSERT INTO `job_log` VALUES (11394, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 04:40:36');
INSERT INTO `job_log` VALUES (11395, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 04:40:36');
INSERT INTO `job_log` VALUES (11396, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 05:12:59');
INSERT INTO `job_log` VALUES (11397, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 05:12:59');
INSERT INTO `job_log` VALUES (11398, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 05:30:00');
INSERT INTO `job_log` VALUES (11399, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 05:45:49');
INSERT INTO `job_log` VALUES (11400, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 06:00:00');
INSERT INTO `job_log` VALUES (11401, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:00:11');
INSERT INTO `job_log` VALUES (11402, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:00:11');
INSERT INTO `job_log` VALUES (11403, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:00:11');
INSERT INTO `job_log` VALUES (11404, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 06:01:00');
INSERT INTO `job_log` VALUES (11405, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:16:58');
INSERT INTO `job_log` VALUES (11406, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:16:58');
INSERT INTO `job_log` VALUES (11407, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:16:58');
INSERT INTO `job_log` VALUES (11408, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 06:30:00');
INSERT INTO `job_log` VALUES (11409, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 06:31:00');
INSERT INTO `job_log` VALUES (11410, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:40:15');
INSERT INTO `job_log` VALUES (11411, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:40:15');
INSERT INTO `job_log` VALUES (11412, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:40:15');
INSERT INTO `job_log` VALUES (11413, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:41:39');
INSERT INTO `job_log` VALUES (11414, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:41:39');
INSERT INTO `job_log` VALUES (11415, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:41:39');
INSERT INTO `job_log` VALUES (11416, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:41:55');
INSERT INTO `job_log` VALUES (11417, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:41:55');
INSERT INTO `job_log` VALUES (11418, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:41:55');
INSERT INTO `job_log` VALUES (11419, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:42:02');
INSERT INTO `job_log` VALUES (11420, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:42:02');
INSERT INTO `job_log` VALUES (11421, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:42:02');
INSERT INTO `job_log` VALUES (11422, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:42:03');
INSERT INTO `job_log` VALUES (11423, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:42:03');
INSERT INTO `job_log` VALUES (11424, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:42:03');
INSERT INTO `job_log` VALUES (11425, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:44:14');
INSERT INTO `job_log` VALUES (11426, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:44:14');
INSERT INTO `job_log` VALUES (11427, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:44:14');
INSERT INTO `job_log` VALUES (11428, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:44:53');
INSERT INTO `job_log` VALUES (11429, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:44:53');
INSERT INTO `job_log` VALUES (11430, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:44:53');
INSERT INTO `job_log` VALUES (11431, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:44:57');
INSERT INTO `job_log` VALUES (11432, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:44:57');
INSERT INTO `job_log` VALUES (11433, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:44:57');
INSERT INTO `job_log` VALUES (11434, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:44:58');
INSERT INTO `job_log` VALUES (11435, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:44:58');
INSERT INTO `job_log` VALUES (11436, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:44:58');
INSERT INTO `job_log` VALUES (11437, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:45:04');
INSERT INTO `job_log` VALUES (11438, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:45:04');
INSERT INTO `job_log` VALUES (11439, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:45:04');
INSERT INTO `job_log` VALUES (11440, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:45:05');
INSERT INTO `job_log` VALUES (11441, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:45:05');
INSERT INTO `job_log` VALUES (11442, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:45:05');
INSERT INTO `job_log` VALUES (11443, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:45:22');
INSERT INTO `job_log` VALUES (11444, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:45:22');
INSERT INTO `job_log` VALUES (11445, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:45:22');
INSERT INTO `job_log` VALUES (11446, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:47:54');
INSERT INTO `job_log` VALUES (11447, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:47:54');
INSERT INTO `job_log` VALUES (11448, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:47:54');
INSERT INTO `job_log` VALUES (11449, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:52:15');
INSERT INTO `job_log` VALUES (11450, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:52:15');
INSERT INTO `job_log` VALUES (11451, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:52:15');
INSERT INTO `job_log` VALUES (11452, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:55:31');
INSERT INTO `job_log` VALUES (11453, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:55:31');
INSERT INTO `job_log` VALUES (11454, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:55:31');
INSERT INTO `job_log` VALUES (11455, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 06:55:51');
INSERT INTO `job_log` VALUES (11456, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 06:55:51');
INSERT INTO `job_log` VALUES (11457, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 06:55:51');
INSERT INTO `job_log` VALUES (11458, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 07:00:00');
INSERT INTO `job_log` VALUES (11459, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:00:51');
INSERT INTO `job_log` VALUES (11460, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:00:51');
INSERT INTO `job_log` VALUES (11461, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:00:51');
INSERT INTO `job_log` VALUES (11462, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 07:01:00');
INSERT INTO `job_log` VALUES (11463, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:01:36');
INSERT INTO `job_log` VALUES (11464, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:01:36');
INSERT INTO `job_log` VALUES (11465, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:01:36');
INSERT INTO `job_log` VALUES (11466, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:01:38');
INSERT INTO `job_log` VALUES (11467, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:01:38');
INSERT INTO `job_log` VALUES (11468, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:01:38');
INSERT INTO `job_log` VALUES (11469, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:01:42');
INSERT INTO `job_log` VALUES (11470, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:01:42');
INSERT INTO `job_log` VALUES (11471, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:01:42');
INSERT INTO `job_log` VALUES (11472, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:01:55');
INSERT INTO `job_log` VALUES (11473, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:01:55');
INSERT INTO `job_log` VALUES (11474, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:01:55');
INSERT INTO `job_log` VALUES (11475, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:05:05');
INSERT INTO `job_log` VALUES (11476, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:05:05');
INSERT INTO `job_log` VALUES (11477, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:05:05');
INSERT INTO `job_log` VALUES (11478, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:24:22');
INSERT INTO `job_log` VALUES (11479, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:24:22');
INSERT INTO `job_log` VALUES (11480, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:24:22');
INSERT INTO `job_log` VALUES (11481, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:24:25');
INSERT INTO `job_log` VALUES (11482, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:24:25');
INSERT INTO `job_log` VALUES (11483, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:24:25');
INSERT INTO `job_log` VALUES (11484, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:25:15');
INSERT INTO `job_log` VALUES (11485, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:25:15');
INSERT INTO `job_log` VALUES (11486, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:25:15');
INSERT INTO `job_log` VALUES (11487, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:25:59');
INSERT INTO `job_log` VALUES (11488, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:25:59');
INSERT INTO `job_log` VALUES (11489, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:25:59');
INSERT INTO `job_log` VALUES (11490, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 07:30:00');
INSERT INTO `job_log` VALUES (11491, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 07:31:00');
INSERT INTO `job_log` VALUES (11492, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:33:23');
INSERT INTO `job_log` VALUES (11493, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:33:23');
INSERT INTO `job_log` VALUES (11494, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:33:23');
INSERT INTO `job_log` VALUES (11495, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:33:32');
INSERT INTO `job_log` VALUES (11496, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:33:32');
INSERT INTO `job_log` VALUES (11497, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:33:32');
INSERT INTO `job_log` VALUES (11498, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:35:03');
INSERT INTO `job_log` VALUES (11499, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:35:03');
INSERT INTO `job_log` VALUES (11500, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:35:03');
INSERT INTO `job_log` VALUES (11501, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:35:39');
INSERT INTO `job_log` VALUES (11502, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:35:39');
INSERT INTO `job_log` VALUES (11503, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:35:39');
INSERT INTO `job_log` VALUES (11504, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:37:38');
INSERT INTO `job_log` VALUES (11505, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:37:38');
INSERT INTO `job_log` VALUES (11506, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:37:38');
INSERT INTO `job_log` VALUES (11507, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:38:07');
INSERT INTO `job_log` VALUES (11508, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:38:07');
INSERT INTO `job_log` VALUES (11509, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:38:07');
INSERT INTO `job_log` VALUES (11510, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 07:39:05');
INSERT INTO `job_log` VALUES (11511, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 07:39:05');
INSERT INTO `job_log` VALUES (11512, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 07:39:05');
INSERT INTO `job_log` VALUES (11513, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 08:00:00');
INSERT INTO `job_log` VALUES (11514, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 08:01:00');
INSERT INTO `job_log` VALUES (11515, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:08:07');
INSERT INTO `job_log` VALUES (11516, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:08:07');
INSERT INTO `job_log` VALUES (11517, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:08:07');
INSERT INTO `job_log` VALUES (11518, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:08:11');
INSERT INTO `job_log` VALUES (11519, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:08:11');
INSERT INTO `job_log` VALUES (11520, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:08:11');
INSERT INTO `job_log` VALUES (11521, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:08:15');
INSERT INTO `job_log` VALUES (11522, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:08:15');
INSERT INTO `job_log` VALUES (11523, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:08:15');
INSERT INTO `job_log` VALUES (11524, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:08:19');
INSERT INTO `job_log` VALUES (11525, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:08:19');
INSERT INTO `job_log` VALUES (11526, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:08:19');
INSERT INTO `job_log` VALUES (11527, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:11:35');
INSERT INTO `job_log` VALUES (11528, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:11:35');
INSERT INTO `job_log` VALUES (11529, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:11:35');
INSERT INTO `job_log` VALUES (11530, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:11:44');
INSERT INTO `job_log` VALUES (11531, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:11:44');
INSERT INTO `job_log` VALUES (11532, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:11:44');
INSERT INTO `job_log` VALUES (11533, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:11:56');
INSERT INTO `job_log` VALUES (11534, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:11:56');
INSERT INTO `job_log` VALUES (11535, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:11:56');
INSERT INTO `job_log` VALUES (11536, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:12:10');
INSERT INTO `job_log` VALUES (11537, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:12:10');
INSERT INTO `job_log` VALUES (11538, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:12:10');
INSERT INTO `job_log` VALUES (11539, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:12:18');
INSERT INTO `job_log` VALUES (11540, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:12:18');
INSERT INTO `job_log` VALUES (11541, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:12:18');
INSERT INTO `job_log` VALUES (11542, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:13:02');
INSERT INTO `job_log` VALUES (11543, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:13:02');
INSERT INTO `job_log` VALUES (11544, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:13:02');
INSERT INTO `job_log` VALUES (11545, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:14:24');
INSERT INTO `job_log` VALUES (11546, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:14:25');
INSERT INTO `job_log` VALUES (11547, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:14:25');
INSERT INTO `job_log` VALUES (11548, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:14:29');
INSERT INTO `job_log` VALUES (11549, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:14:29');
INSERT INTO `job_log` VALUES (11550, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:14:29');
INSERT INTO `job_log` VALUES (11551, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:16:39');
INSERT INTO `job_log` VALUES (11552, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:16:39');
INSERT INTO `job_log` VALUES (11553, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:16:39');
INSERT INTO `job_log` VALUES (11554, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:16:46');
INSERT INTO `job_log` VALUES (11555, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:16:46');
INSERT INTO `job_log` VALUES (11556, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:16:46');
INSERT INTO `job_log` VALUES (11557, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:19:12');
INSERT INTO `job_log` VALUES (11558, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:19:12');
INSERT INTO `job_log` VALUES (11559, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:19:12');
INSERT INTO `job_log` VALUES (11560, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:28:42');
INSERT INTO `job_log` VALUES (11561, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:28:42');
INSERT INTO `job_log` VALUES (11562, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:28:42');
INSERT INTO `job_log` VALUES (11563, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:29:36');
INSERT INTO `job_log` VALUES (11564, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:29:36');
INSERT INTO `job_log` VALUES (11565, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:29:36');
INSERT INTO `job_log` VALUES (11566, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 08:30:00');
INSERT INTO `job_log` VALUES (11567, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:30:39');
INSERT INTO `job_log` VALUES (11568, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:30:39');
INSERT INTO `job_log` VALUES (11569, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:30:39');
INSERT INTO `job_log` VALUES (11570, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 08:31:00');
INSERT INTO `job_log` VALUES (11571, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:32:16');
INSERT INTO `job_log` VALUES (11572, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:32:17');
INSERT INTO `job_log` VALUES (11573, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:32:17');
INSERT INTO `job_log` VALUES (11574, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:20');
INSERT INTO `job_log` VALUES (11575, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:20');
INSERT INTO `job_log` VALUES (11576, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:20');
INSERT INTO `job_log` VALUES (11577, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:28');
INSERT INTO `job_log` VALUES (11578, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:28');
INSERT INTO `job_log` VALUES (11579, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:28');
INSERT INTO `job_log` VALUES (11580, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:29');
INSERT INTO `job_log` VALUES (11581, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:29');
INSERT INTO `job_log` VALUES (11582, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:29');
INSERT INTO `job_log` VALUES (11583, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:36');
INSERT INTO `job_log` VALUES (11584, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:36');
INSERT INTO `job_log` VALUES (11585, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:36');
INSERT INTO `job_log` VALUES (11586, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:53');
INSERT INTO `job_log` VALUES (11587, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:53');
INSERT INTO `job_log` VALUES (11588, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:34:53');
INSERT INTO `job_log` VALUES (11589, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:35:14');
INSERT INTO `job_log` VALUES (11590, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:35:14');
INSERT INTO `job_log` VALUES (11591, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:35:14');
INSERT INTO `job_log` VALUES (11592, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:42:51');
INSERT INTO `job_log` VALUES (11593, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:42:51');
INSERT INTO `job_log` VALUES (11594, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:42:51');
INSERT INTO `job_log` VALUES (11595, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:03');
INSERT INTO `job_log` VALUES (11596, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:03');
INSERT INTO `job_log` VALUES (11597, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:03');
INSERT INTO `job_log` VALUES (11598, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:07');
INSERT INTO `job_log` VALUES (11599, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:07');
INSERT INTO `job_log` VALUES (11600, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:07');
INSERT INTO `job_log` VALUES (11601, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:15');
INSERT INTO `job_log` VALUES (11602, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:15');
INSERT INTO `job_log` VALUES (11603, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:15');
INSERT INTO `job_log` VALUES (11604, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:22');
INSERT INTO `job_log` VALUES (11605, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:22');
INSERT INTO `job_log` VALUES (11606, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:22');
INSERT INTO `job_log` VALUES (11607, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:26');
INSERT INTO `job_log` VALUES (11608, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:26');
INSERT INTO `job_log` VALUES (11609, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:26');
INSERT INTO `job_log` VALUES (11610, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:27');
INSERT INTO `job_log` VALUES (11611, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:27');
INSERT INTO `job_log` VALUES (11612, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:27');
INSERT INTO `job_log` VALUES (11613, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:47');
INSERT INTO `job_log` VALUES (11614, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:47');
INSERT INTO `job_log` VALUES (11615, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:47');
INSERT INTO `job_log` VALUES (11616, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:52');
INSERT INTO `job_log` VALUES (11617, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:52');
INSERT INTO `job_log` VALUES (11618, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:52');
INSERT INTO `job_log` VALUES (11619, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:53');
INSERT INTO `job_log` VALUES (11620, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:53');
INSERT INTO `job_log` VALUES (11621, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:43:53');
INSERT INTO `job_log` VALUES (11622, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:45:28');
INSERT INTO `job_log` VALUES (11623, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:45:28');
INSERT INTO `job_log` VALUES (11624, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:45:28');
INSERT INTO `job_log` VALUES (11625, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:45:53');
INSERT INTO `job_log` VALUES (11626, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:45:53');
INSERT INTO `job_log` VALUES (11627, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:45:53');
INSERT INTO `job_log` VALUES (11628, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:45:59');
INSERT INTO `job_log` VALUES (11629, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:45:59');
INSERT INTO `job_log` VALUES (11630, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:45:59');
INSERT INTO `job_log` VALUES (11631, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:46:10');
INSERT INTO `job_log` VALUES (11632, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:46:10');
INSERT INTO `job_log` VALUES (11633, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:46:10');
INSERT INTO `job_log` VALUES (11634, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:47:05');
INSERT INTO `job_log` VALUES (11635, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:47:05');
INSERT INTO `job_log` VALUES (11636, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:47:05');
INSERT INTO `job_log` VALUES (11637, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:47:24');
INSERT INTO `job_log` VALUES (11638, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:47:24');
INSERT INTO `job_log` VALUES (11639, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:47:24');
INSERT INTO `job_log` VALUES (11640, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:50:34');
INSERT INTO `job_log` VALUES (11641, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:50:34');
INSERT INTO `job_log` VALUES (11642, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:50:34');
INSERT INTO `job_log` VALUES (11643, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:50:48');
INSERT INTO `job_log` VALUES (11644, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:50:48');
INSERT INTO `job_log` VALUES (11645, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:50:48');
INSERT INTO `job_log` VALUES (11646, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:53:27');
INSERT INTO `job_log` VALUES (11647, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:53:27');
INSERT INTO `job_log` VALUES (11648, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:53:27');
INSERT INTO `job_log` VALUES (11649, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:54:00');
INSERT INTO `job_log` VALUES (11650, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:54:00');
INSERT INTO `job_log` VALUES (11651, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:54:00');
INSERT INTO `job_log` VALUES (11652, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:54:26');
INSERT INTO `job_log` VALUES (11653, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:54:26');
INSERT INTO `job_log` VALUES (11654, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:54:26');
INSERT INTO `job_log` VALUES (11655, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:54:58');
INSERT INTO `job_log` VALUES (11656, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:54:58');
INSERT INTO `job_log` VALUES (11657, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:54:58');
INSERT INTO `job_log` VALUES (11658, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:55:12');
INSERT INTO `job_log` VALUES (11659, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:55:12');
INSERT INTO `job_log` VALUES (11660, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:55:12');
INSERT INTO `job_log` VALUES (11661, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:55:33');
INSERT INTO `job_log` VALUES (11662, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:55:33');
INSERT INTO `job_log` VALUES (11663, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:55:33');
INSERT INTO `job_log` VALUES (11664, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:55:58');
INSERT INTO `job_log` VALUES (11665, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:55:58');
INSERT INTO `job_log` VALUES (11666, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:55:58');
INSERT INTO `job_log` VALUES (11667, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:56:01');
INSERT INTO `job_log` VALUES (11668, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:56:01');
INSERT INTO `job_log` VALUES (11669, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:56:01');
INSERT INTO `job_log` VALUES (11670, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:56:02');
INSERT INTO `job_log` VALUES (11671, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:56:02');
INSERT INTO `job_log` VALUES (11672, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:56:02');
INSERT INTO `job_log` VALUES (11673, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:56:06');
INSERT INTO `job_log` VALUES (11674, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:56:06');
INSERT INTO `job_log` VALUES (11675, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:56:06');
INSERT INTO `job_log` VALUES (11676, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:56:38');
INSERT INTO `job_log` VALUES (11677, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:56:38');
INSERT INTO `job_log` VALUES (11678, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:56:38');
INSERT INTO `job_log` VALUES (11679, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:58:04');
INSERT INTO `job_log` VALUES (11680, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:58:05');
INSERT INTO `job_log` VALUES (11681, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:58:05');
INSERT INTO `job_log` VALUES (11682, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 08:58:20');
INSERT INTO `job_log` VALUES (11683, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 08:58:20');
INSERT INTO `job_log` VALUES (11684, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 08:58:20');
INSERT INTO `job_log` VALUES (11685, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 09:00:00');
INSERT INTO `job_log` VALUES (11686, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 09:01:00');
INSERT INTO `job_log` VALUES (11687, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 09:01:07');
INSERT INTO `job_log` VALUES (11688, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 09:01:07');
INSERT INTO `job_log` VALUES (11689, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 09:01:07');
INSERT INTO `job_log` VALUES (11690, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 09:01:32');
INSERT INTO `job_log` VALUES (11691, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 09:01:32');
INSERT INTO `job_log` VALUES (11692, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 09:01:32');
INSERT INTO `job_log` VALUES (11693, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 09:01:43');
INSERT INTO `job_log` VALUES (11694, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 09:01:43');
INSERT INTO `job_log` VALUES (11695, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 09:01:43');
INSERT INTO `job_log` VALUES (11696, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 09:30:00');
INSERT INTO `job_log` VALUES (11697, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 09:31:00');
INSERT INTO `job_log` VALUES (11698, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 09:31:54');
INSERT INTO `job_log` VALUES (11699, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 09:31:54');
INSERT INTO `job_log` VALUES (11700, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 09:31:54');
INSERT INTO `job_log` VALUES (11701, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:29:44');
INSERT INTO `job_log` VALUES (11702, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:29:44');
INSERT INTO `job_log` VALUES (11703, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:29:44');
INSERT INTO `job_log` VALUES (11704, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 11:30:00');
INSERT INTO `job_log` VALUES (11705, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 11:31:00');
INSERT INTO `job_log` VALUES (11706, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:31:08');
INSERT INTO `job_log` VALUES (11707, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:31:08');
INSERT INTO `job_log` VALUES (11708, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:31:08');
INSERT INTO `job_log` VALUES (11709, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:31:23');
INSERT INTO `job_log` VALUES (11710, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:31:23');
INSERT INTO `job_log` VALUES (11711, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:31:23');
INSERT INTO `job_log` VALUES (11712, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:31:25');
INSERT INTO `job_log` VALUES (11713, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:31:25');
INSERT INTO `job_log` VALUES (11714, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:31:25');
INSERT INTO `job_log` VALUES (11715, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:37:47');
INSERT INTO `job_log` VALUES (11716, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:37:47');
INSERT INTO `job_log` VALUES (11717, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:37:47');
INSERT INTO `job_log` VALUES (11718, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:46:33');
INSERT INTO `job_log` VALUES (11719, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:46:33');
INSERT INTO `job_log` VALUES (11720, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:46:33');
INSERT INTO `job_log` VALUES (11721, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:46:37');
INSERT INTO `job_log` VALUES (11722, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:46:38');
INSERT INTO `job_log` VALUES (11723, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:46:38');
INSERT INTO `job_log` VALUES (11724, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:46:42');
INSERT INTO `job_log` VALUES (11725, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:46:42');
INSERT INTO `job_log` VALUES (11726, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:46:42');
INSERT INTO `job_log` VALUES (11727, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:46:49');
INSERT INTO `job_log` VALUES (11728, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:46:49');
INSERT INTO `job_log` VALUES (11729, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:46:49');
INSERT INTO `job_log` VALUES (11730, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:05');
INSERT INTO `job_log` VALUES (11731, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:05');
INSERT INTO `job_log` VALUES (11732, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:05');
INSERT INTO `job_log` VALUES (11733, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:08');
INSERT INTO `job_log` VALUES (11734, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:08');
INSERT INTO `job_log` VALUES (11735, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:08');
INSERT INTO `job_log` VALUES (11736, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:11');
INSERT INTO `job_log` VALUES (11737, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:11');
INSERT INTO `job_log` VALUES (11738, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:11');
INSERT INTO `job_log` VALUES (11739, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:22');
INSERT INTO `job_log` VALUES (11740, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:22');
INSERT INTO `job_log` VALUES (11741, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:22');
INSERT INTO `job_log` VALUES (11742, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:28');
INSERT INTO `job_log` VALUES (11743, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:28');
INSERT INTO `job_log` VALUES (11744, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:28');
INSERT INTO `job_log` VALUES (11745, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:30');
INSERT INTO `job_log` VALUES (11746, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:30');
INSERT INTO `job_log` VALUES (11747, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:47:30');
INSERT INTO `job_log` VALUES (11748, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:48:22');
INSERT INTO `job_log` VALUES (11749, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:48:22');
INSERT INTO `job_log` VALUES (11750, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:48:22');
INSERT INTO `job_log` VALUES (11751, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:48:23');
INSERT INTO `job_log` VALUES (11752, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:48:23');
INSERT INTO `job_log` VALUES (11753, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:48:23');
INSERT INTO `job_log` VALUES (11754, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:48:24');
INSERT INTO `job_log` VALUES (11755, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:48:24');
INSERT INTO `job_log` VALUES (11756, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:48:24');
INSERT INTO `job_log` VALUES (11757, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:49:18');
INSERT INTO `job_log` VALUES (11758, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:49:18');
INSERT INTO `job_log` VALUES (11759, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:49:18');
INSERT INTO `job_log` VALUES (11760, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:49:21');
INSERT INTO `job_log` VALUES (11761, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:49:21');
INSERT INTO `job_log` VALUES (11762, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:49:21');
INSERT INTO `job_log` VALUES (11763, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:49:21');
INSERT INTO `job_log` VALUES (11764, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:49:21');
INSERT INTO `job_log` VALUES (11765, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:49:21');
INSERT INTO `job_log` VALUES (11766, '兑换券状态定时变更', NULL, 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-02 11:58:12');
INSERT INTO `job_log` VALUES (11767, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '执行任务成功', '0', '', '2025-12-02 11:58:18');
INSERT INTO `job_log` VALUES (11768, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 11:58:45');
INSERT INTO `job_log` VALUES (11769, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 11:58:45');
INSERT INTO `job_log` VALUES (11770, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 11:58:45');
INSERT INTO `job_log` VALUES (11771, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-02 11:58:45');
INSERT INTO `job_log` VALUES (11772, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 12:00:00');
INSERT INTO `job_log` VALUES (11773, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 12:01:00');
INSERT INTO `job_log` VALUES (11774, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 12:23:47');
INSERT INTO `job_log` VALUES (11775, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 12:23:47');
INSERT INTO `job_log` VALUES (11776, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 12:23:47');
INSERT INTO `job_log` VALUES (11777, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-02 12:23:47');
INSERT INTO `job_log` VALUES (11778, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 12:24:41');
INSERT INTO `job_log` VALUES (11779, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 12:24:41');
INSERT INTO `job_log` VALUES (11780, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 12:24:41');
INSERT INTO `job_log` VALUES (11781, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-02 12:24:41');
INSERT INTO `job_log` VALUES (11782, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 12:30:00');
INSERT INTO `job_log` VALUES (11783, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 12:31:00');
INSERT INTO `job_log` VALUES (11784, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 13:00:00');
INSERT INTO `job_log` VALUES (11785, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 13:01:00');
INSERT INTO `job_log` VALUES (11786, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 13:30:00');
INSERT INTO `job_log` VALUES (11787, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 13:31:00');
INSERT INTO `job_log` VALUES (11788, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 14:00:00');
INSERT INTO `job_log` VALUES (11789, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 14:01:00');
INSERT INTO `job_log` VALUES (11790, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 14:09:09');
INSERT INTO `job_log` VALUES (11791, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 14:09:09');
INSERT INTO `job_log` VALUES (11792, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 14:09:09');
INSERT INTO `job_log` VALUES (11793, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-02 14:09:09');
INSERT INTO `job_log` VALUES (11794, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 14:13:46');
INSERT INTO `job_log` VALUES (11795, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 14:13:46');
INSERT INTO `job_log` VALUES (11796, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 14:13:46');
INSERT INTO `job_log` VALUES (11797, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-02 14:13:46');
INSERT INTO `job_log` VALUES (11798, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-02 14:30:00');
INSERT INTO `job_log` VALUES (11799, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-02 14:31:00');
INSERT INTO `job_log` VALUES (11800, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-02 14:31:44');
INSERT INTO `job_log` VALUES (11801, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-02 14:31:44');
INSERT INTO `job_log` VALUES (11802, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-02 14:31:44');
INSERT INTO `job_log` VALUES (11803, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-02 14:31:44');
INSERT INTO `job_log` VALUES (11804, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-03 02:51:20');
INSERT INTO `job_log` VALUES (11805, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-03 02:51:20');
INSERT INTO `job_log` VALUES (11806, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-03 02:51:20');
INSERT INTO `job_log` VALUES (11807, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-03 02:51:20');
INSERT INTO `job_log` VALUES (11808, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-03 03:00:00');
INSERT INTO `job_log` VALUES (11809, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-03 03:01:00');
INSERT INTO `job_log` VALUES (11810, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:09:43');
INSERT INTO `job_log` VALUES (11811, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:09:43');
INSERT INTO `job_log` VALUES (11812, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:09:43');
INSERT INTO `job_log` VALUES (11813, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:09:43');
INSERT INTO `job_log` VALUES (11814, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:09:44');
INSERT INTO `job_log` VALUES (11815, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:09:44');
INSERT INTO `job_log` VALUES (11816, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:09:44');
INSERT INTO `job_log` VALUES (11817, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:09:44');
INSERT INTO `job_log` VALUES (11818, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:09:51');
INSERT INTO `job_log` VALUES (11819, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:09:51');
INSERT INTO `job_log` VALUES (11820, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:09:51');
INSERT INTO `job_log` VALUES (11821, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:09:51');
INSERT INTO `job_log` VALUES (11822, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:09:56');
INSERT INTO `job_log` VALUES (11823, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:09:56');
INSERT INTO `job_log` VALUES (11824, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:09:56');
INSERT INTO `job_log` VALUES (11825, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:09:56');
INSERT INTO `job_log` VALUES (11826, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:10:05');
INSERT INTO `job_log` VALUES (11827, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:10:05');
INSERT INTO `job_log` VALUES (11828, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:10:05');
INSERT INTO `job_log` VALUES (11829, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:10:05');
INSERT INTO `job_log` VALUES (11830, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:10:10');
INSERT INTO `job_log` VALUES (11831, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:10:10');
INSERT INTO `job_log` VALUES (11832, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:10:10');
INSERT INTO `job_log` VALUES (11833, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:10:10');
INSERT INTO `job_log` VALUES (11834, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:13:51');
INSERT INTO `job_log` VALUES (11835, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:13:51');
INSERT INTO `job_log` VALUES (11836, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:13:51');
INSERT INTO `job_log` VALUES (11837, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:13:51');
INSERT INTO `job_log` VALUES (11838, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:14:20');
INSERT INTO `job_log` VALUES (11839, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:14:20');
INSERT INTO `job_log` VALUES (11840, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:14:20');
INSERT INTO `job_log` VALUES (11841, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:14:20');
INSERT INTO `job_log` VALUES (11842, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:14:44');
INSERT INTO `job_log` VALUES (11843, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:14:44');
INSERT INTO `job_log` VALUES (11844, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:14:44');
INSERT INTO `job_log` VALUES (11845, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:14:44');
INSERT INTO `job_log` VALUES (11846, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:15:01');
INSERT INTO `job_log` VALUES (11847, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:15:01');
INSERT INTO `job_log` VALUES (11848, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:15:01');
INSERT INTO `job_log` VALUES (11849, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:15:01');
INSERT INTO `job_log` VALUES (11850, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:15:02');
INSERT INTO `job_log` VALUES (11851, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:15:02');
INSERT INTO `job_log` VALUES (11852, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:15:02');
INSERT INTO `job_log` VALUES (11853, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:15:02');
INSERT INTO `job_log` VALUES (11854, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:15:04');
INSERT INTO `job_log` VALUES (11855, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:15:04');
INSERT INTO `job_log` VALUES (11856, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:15:04');
INSERT INTO `job_log` VALUES (11857, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:15:04');
INSERT INTO `job_log` VALUES (11858, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:16:10');
INSERT INTO `job_log` VALUES (11859, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:16:10');
INSERT INTO `job_log` VALUES (11860, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:16:10');
INSERT INTO `job_log` VALUES (11861, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:16:10');
INSERT INTO `job_log` VALUES (11862, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:16:21');
INSERT INTO `job_log` VALUES (11863, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:16:21');
INSERT INTO `job_log` VALUES (11864, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:16:21');
INSERT INTO `job_log` VALUES (11865, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:16:21');
INSERT INTO `job_log` VALUES (11866, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:16:47');
INSERT INTO `job_log` VALUES (11867, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:16:47');
INSERT INTO `job_log` VALUES (11868, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:16:47');
INSERT INTO `job_log` VALUES (11869, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:16:47');
INSERT INTO `job_log` VALUES (11870, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:17:11');
INSERT INTO `job_log` VALUES (11871, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:17:11');
INSERT INTO `job_log` VALUES (11872, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:17:11');
INSERT INTO `job_log` VALUES (11873, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:17:11');
INSERT INTO `job_log` VALUES (11874, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:17:49');
INSERT INTO `job_log` VALUES (11875, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:17:49');
INSERT INTO `job_log` VALUES (11876, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:17:49');
INSERT INTO `job_log` VALUES (11877, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:17:49');
INSERT INTO `job_log` VALUES (11878, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:18:06');
INSERT INTO `job_log` VALUES (11879, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:18:06');
INSERT INTO `job_log` VALUES (11880, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:18:06');
INSERT INTO `job_log` VALUES (11881, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:18:06');
INSERT INTO `job_log` VALUES (11882, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:18:06');
INSERT INTO `job_log` VALUES (11883, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:18:06');
INSERT INTO `job_log` VALUES (11884, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:18:06');
INSERT INTO `job_log` VALUES (11885, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:18:06');
INSERT INTO `job_log` VALUES (11886, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:18:53');
INSERT INTO `job_log` VALUES (11887, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:18:53');
INSERT INTO `job_log` VALUES (11888, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:18:53');
INSERT INTO `job_log` VALUES (11889, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:18:53');
INSERT INTO `job_log` VALUES (11890, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:19:16');
INSERT INTO `job_log` VALUES (11891, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:19:16');
INSERT INTO `job_log` VALUES (11892, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:19:16');
INSERT INTO `job_log` VALUES (11893, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:19:16');
INSERT INTO `job_log` VALUES (11894, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:19:57');
INSERT INTO `job_log` VALUES (11895, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:19:57');
INSERT INTO `job_log` VALUES (11896, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:19:57');
INSERT INTO `job_log` VALUES (11897, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:19:57');
INSERT INTO `job_log` VALUES (11898, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:07');
INSERT INTO `job_log` VALUES (11899, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:07');
INSERT INTO `job_log` VALUES (11900, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:07');
INSERT INTO `job_log` VALUES (11901, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:20:07');
INSERT INTO `job_log` VALUES (11902, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:12');
INSERT INTO `job_log` VALUES (11903, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:12');
INSERT INTO `job_log` VALUES (11904, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:12');
INSERT INTO `job_log` VALUES (11905, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:20:12');
INSERT INTO `job_log` VALUES (11906, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:13');
INSERT INTO `job_log` VALUES (11907, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:13');
INSERT INTO `job_log` VALUES (11908, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:13');
INSERT INTO `job_log` VALUES (11909, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:20:13');
INSERT INTO `job_log` VALUES (11910, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:16');
INSERT INTO `job_log` VALUES (11911, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:16');
INSERT INTO `job_log` VALUES (11912, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:16');
INSERT INTO `job_log` VALUES (11913, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:20:16');
INSERT INTO `job_log` VALUES (11914, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:18');
INSERT INTO `job_log` VALUES (11915, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:18');
INSERT INTO `job_log` VALUES (11916, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:18');
INSERT INTO `job_log` VALUES (11917, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:20:18');
INSERT INTO `job_log` VALUES (11918, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:33');
INSERT INTO `job_log` VALUES (11919, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:33');
INSERT INTO `job_log` VALUES (11920, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:33');
INSERT INTO `job_log` VALUES (11921, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:20:33');
INSERT INTO `job_log` VALUES (11922, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:34');
INSERT INTO `job_log` VALUES (11923, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:34');
INSERT INTO `job_log` VALUES (11924, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:34');
INSERT INTO `job_log` VALUES (11925, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:20:34');
INSERT INTO `job_log` VALUES (11926, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:38');
INSERT INTO `job_log` VALUES (11927, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:38');
INSERT INTO `job_log` VALUES (11928, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:38');
INSERT INTO `job_log` VALUES (11929, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:20:38');
INSERT INTO `job_log` VALUES (11930, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:39');
INSERT INTO `job_log` VALUES (11931, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:40');
INSERT INTO `job_log` VALUES (11932, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:20:40');
INSERT INTO `job_log` VALUES (11933, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:20:40');
INSERT INTO `job_log` VALUES (11934, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:23:30');
INSERT INTO `job_log` VALUES (11935, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:23:30');
INSERT INTO `job_log` VALUES (11936, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:23:30');
INSERT INTO `job_log` VALUES (11937, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:23:30');
INSERT INTO `job_log` VALUES (11938, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:28:21');
INSERT INTO `job_log` VALUES (11939, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:28:21');
INSERT INTO `job_log` VALUES (11940, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:28:21');
INSERT INTO `job_log` VALUES (11941, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:28:21');
INSERT INTO `job_log` VALUES (11942, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 09:28:21');
INSERT INTO `job_log` VALUES (11943, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-05 09:30:00');
INSERT INTO `job_log` VALUES (11944, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:30:12');
INSERT INTO `job_log` VALUES (11945, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:30:12');
INSERT INTO `job_log` VALUES (11946, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:30:12');
INSERT INTO `job_log` VALUES (11947, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:30:12');
INSERT INTO `job_log` VALUES (11948, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 09:30:12');
INSERT INTO `job_log` VALUES (11949, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:30:54');
INSERT INTO `job_log` VALUES (11950, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:30:54');
INSERT INTO `job_log` VALUES (11951, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:30:54');
INSERT INTO `job_log` VALUES (11952, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:30:54');
INSERT INTO `job_log` VALUES (11953, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 09:30:54');
INSERT INTO `job_log` VALUES (11954, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-05 09:31:00');
INSERT INTO `job_log` VALUES (11955, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:31:09');
INSERT INTO `job_log` VALUES (11956, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:31:09');
INSERT INTO `job_log` VALUES (11957, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:31:09');
INSERT INTO `job_log` VALUES (11958, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:31:09');
INSERT INTO `job_log` VALUES (11959, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 09:31:09');
INSERT INTO `job_log` VALUES (11960, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:32:01');
INSERT INTO `job_log` VALUES (11961, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:32:01');
INSERT INTO `job_log` VALUES (11962, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:32:01');
INSERT INTO `job_log` VALUES (11963, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:32:01');
INSERT INTO `job_log` VALUES (11964, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 09:32:01');
INSERT INTO `job_log` VALUES (11965, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '执行任务成功', '0', '', '2025-12-05 09:41:36');
INSERT INTO `job_log` VALUES (11966, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:42:45');
INSERT INTO `job_log` VALUES (11967, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:42:45');
INSERT INTO `job_log` VALUES (11968, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:42:45');
INSERT INTO `job_log` VALUES (11969, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:42:45');
INSERT INTO `job_log` VALUES (11970, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 09:42:45');
INSERT INTO `job_log` VALUES (11971, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:43:16');
INSERT INTO `job_log` VALUES (11972, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:43:16');
INSERT INTO `job_log` VALUES (11973, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:43:16');
INSERT INTO `job_log` VALUES (11974, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:43:16');
INSERT INTO `job_log` VALUES (11975, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 09:43:16');
INSERT INTO `job_log` VALUES (11976, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:43:50');
INSERT INTO `job_log` VALUES (11977, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:43:50');
INSERT INTO `job_log` VALUES (11978, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:43:50');
INSERT INTO `job_log` VALUES (11979, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:43:50');
INSERT INTO `job_log` VALUES (11980, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 09:43:50');
INSERT INTO `job_log` VALUES (11981, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '执行任务成功', '0', '', '2025-12-05 09:43:54');
INSERT INTO `job_log` VALUES (11982, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:49:44');
INSERT INTO `job_log` VALUES (11983, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:49:44');
INSERT INTO `job_log` VALUES (11984, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:49:44');
INSERT INTO `job_log` VALUES (11985, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:49:44');
INSERT INTO `job_log` VALUES (11986, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 09:49:44');
INSERT INTO `job_log` VALUES (11987, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 09:49:46');
INSERT INTO `job_log` VALUES (11988, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 09:49:46');
INSERT INTO `job_log` VALUES (11989, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 09:49:46');
INSERT INTO `job_log` VALUES (11990, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 09:49:46');
INSERT INTO `job_log` VALUES (11991, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 09:49:46');
INSERT INTO `job_log` VALUES (11992, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-05 10:26:56');
INSERT INTO `job_log` VALUES (11993, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-05 10:26:56');
INSERT INTO `job_log` VALUES (11994, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-05 11:03:16');
INSERT INTO `job_log` VALUES (11995, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-05 11:03:16');
INSERT INTO `job_log` VALUES (11996, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-05 11:03:16');
INSERT INTO `job_log` VALUES (11997, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-05 11:03:16');
INSERT INTO `job_log` VALUES (11998, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-05 11:36:01');
INSERT INTO `job_log` VALUES (11999, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-05 11:36:01');
INSERT INTO `job_log` VALUES (12000, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:38:25');
INSERT INTO `job_log` VALUES (12001, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:38:25');
INSERT INTO `job_log` VALUES (12002, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:38:25');
INSERT INTO `job_log` VALUES (12003, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:38:25');
INSERT INTO `job_log` VALUES (12004, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:38:25');
INSERT INTO `job_log` VALUES (12005, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:44:04');
INSERT INTO `job_log` VALUES (12006, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:44:04');
INSERT INTO `job_log` VALUES (12007, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:44:04');
INSERT INTO `job_log` VALUES (12008, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:44:04');
INSERT INTO `job_log` VALUES (12009, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:44:04');
INSERT INTO `job_log` VALUES (12010, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:47:21');
INSERT INTO `job_log` VALUES (12011, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:47:21');
INSERT INTO `job_log` VALUES (12012, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:47:21');
INSERT INTO `job_log` VALUES (12013, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:47:21');
INSERT INTO `job_log` VALUES (12014, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:47:21');
INSERT INTO `job_log` VALUES (12015, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:47:24');
INSERT INTO `job_log` VALUES (12016, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:47:24');
INSERT INTO `job_log` VALUES (12017, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:47:24');
INSERT INTO `job_log` VALUES (12018, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:47:24');
INSERT INTO `job_log` VALUES (12019, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:47:24');
INSERT INTO `job_log` VALUES (12020, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:47:54');
INSERT INTO `job_log` VALUES (12021, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:47:54');
INSERT INTO `job_log` VALUES (12022, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:47:54');
INSERT INTO `job_log` VALUES (12023, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:47:54');
INSERT INTO `job_log` VALUES (12024, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:47:54');
INSERT INTO `job_log` VALUES (12025, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '执行任务成功', '0', '', '2025-12-05 11:48:21');
INSERT INTO `job_log` VALUES (12026, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:52:12');
INSERT INTO `job_log` VALUES (12027, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:52:13');
INSERT INTO `job_log` VALUES (12028, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:52:13');
INSERT INTO `job_log` VALUES (12029, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:52:13');
INSERT INTO `job_log` VALUES (12030, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:52:13');
INSERT INTO `job_log` VALUES (12031, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:52:43');
INSERT INTO `job_log` VALUES (12032, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:52:43');
INSERT INTO `job_log` VALUES (12033, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:52:43');
INSERT INTO `job_log` VALUES (12034, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:52:43');
INSERT INTO `job_log` VALUES (12035, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:52:43');
INSERT INTO `job_log` VALUES (12036, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:52:50');
INSERT INTO `job_log` VALUES (12037, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:52:50');
INSERT INTO `job_log` VALUES (12038, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:52:50');
INSERT INTO `job_log` VALUES (12039, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:52:50');
INSERT INTO `job_log` VALUES (12040, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:52:50');
INSERT INTO `job_log` VALUES (12041, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:53:11');
INSERT INTO `job_log` VALUES (12042, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:53:12');
INSERT INTO `job_log` VALUES (12043, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:53:12');
INSERT INTO `job_log` VALUES (12044, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:53:12');
INSERT INTO `job_log` VALUES (12045, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:53:12');
INSERT INTO `job_log` VALUES (12046, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:53:26');
INSERT INTO `job_log` VALUES (12047, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:53:26');
INSERT INTO `job_log` VALUES (12048, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:53:26');
INSERT INTO `job_log` VALUES (12049, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:53:26');
INSERT INTO `job_log` VALUES (12050, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:53:26');
INSERT INTO `job_log` VALUES (12051, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:54:34');
INSERT INTO `job_log` VALUES (12052, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:54:34');
INSERT INTO `job_log` VALUES (12053, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:54:34');
INSERT INTO `job_log` VALUES (12054, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:54:34');
INSERT INTO `job_log` VALUES (12055, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:54:34');
INSERT INTO `job_log` VALUES (12056, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:55:20');
INSERT INTO `job_log` VALUES (12057, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:55:20');
INSERT INTO `job_log` VALUES (12058, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:55:20');
INSERT INTO `job_log` VALUES (12059, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:55:20');
INSERT INTO `job_log` VALUES (12060, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:55:20');
INSERT INTO `job_log` VALUES (12061, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:57:28');
INSERT INTO `job_log` VALUES (12062, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:57:28');
INSERT INTO `job_log` VALUES (12063, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:57:28');
INSERT INTO `job_log` VALUES (12064, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:57:28');
INSERT INTO `job_log` VALUES (12065, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:57:28');
INSERT INTO `job_log` VALUES (12066, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:57:34');
INSERT INTO `job_log` VALUES (12067, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:57:34');
INSERT INTO `job_log` VALUES (12068, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:57:34');
INSERT INTO `job_log` VALUES (12069, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:57:34');
INSERT INTO `job_log` VALUES (12070, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:57:34');
INSERT INTO `job_log` VALUES (12071, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:58:26');
INSERT INTO `job_log` VALUES (12072, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:58:26');
INSERT INTO `job_log` VALUES (12073, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:58:26');
INSERT INTO `job_log` VALUES (12074, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:58:26');
INSERT INTO `job_log` VALUES (12075, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:58:26');
INSERT INTO `job_log` VALUES (12076, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:58:45');
INSERT INTO `job_log` VALUES (12077, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:58:46');
INSERT INTO `job_log` VALUES (12078, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:58:46');
INSERT INTO `job_log` VALUES (12079, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:58:46');
INSERT INTO `job_log` VALUES (12080, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:58:46');
INSERT INTO `job_log` VALUES (12081, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:58:50');
INSERT INTO `job_log` VALUES (12082, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:58:50');
INSERT INTO `job_log` VALUES (12083, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:58:50');
INSERT INTO `job_log` VALUES (12084, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:58:50');
INSERT INTO `job_log` VALUES (12085, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:58:50');
INSERT INTO `job_log` VALUES (12086, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 11:58:51');
INSERT INTO `job_log` VALUES (12087, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 11:58:51');
INSERT INTO `job_log` VALUES (12088, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 11:58:51');
INSERT INTO `job_log` VALUES (12089, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 11:58:51');
INSERT INTO `job_log` VALUES (12090, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 11:58:51');
INSERT INTO `job_log` VALUES (12091, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '执行任务成功', '0', '', '2025-12-05 12:00:00');
INSERT INTO `job_log` VALUES (12092, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '执行任务成功', '0', '', '2025-12-05 12:01:00');
INSERT INTO `job_log` VALUES (12093, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:01:10');
INSERT INTO `job_log` VALUES (12094, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:01:10');
INSERT INTO `job_log` VALUES (12095, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:01:10');
INSERT INTO `job_log` VALUES (12096, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:01:10');
INSERT INTO `job_log` VALUES (12097, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:01:10');
INSERT INTO `job_log` VALUES (12098, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:01:46');
INSERT INTO `job_log` VALUES (12099, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:01:46');
INSERT INTO `job_log` VALUES (12100, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:01:46');
INSERT INTO `job_log` VALUES (12101, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:01:46');
INSERT INTO `job_log` VALUES (12102, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:01:46');
INSERT INTO `job_log` VALUES (12103, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:02:07');
INSERT INTO `job_log` VALUES (12104, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:02:07');
INSERT INTO `job_log` VALUES (12105, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:02:07');
INSERT INTO `job_log` VALUES (12106, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:02:07');
INSERT INTO `job_log` VALUES (12107, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:02:07');
INSERT INTO `job_log` VALUES (12108, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:02:14');
INSERT INTO `job_log` VALUES (12109, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:02:14');
INSERT INTO `job_log` VALUES (12110, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:02:14');
INSERT INTO `job_log` VALUES (12111, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:02:14');
INSERT INTO `job_log` VALUES (12112, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:02:14');
INSERT INTO `job_log` VALUES (12113, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:02:15');
INSERT INTO `job_log` VALUES (12114, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:02:15');
INSERT INTO `job_log` VALUES (12115, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:02:15');
INSERT INTO `job_log` VALUES (12116, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:02:15');
INSERT INTO `job_log` VALUES (12117, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:02:15');
INSERT INTO `job_log` VALUES (12118, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:03:12');
INSERT INTO `job_log` VALUES (12119, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:03:12');
INSERT INTO `job_log` VALUES (12120, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:03:12');
INSERT INTO `job_log` VALUES (12121, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:03:12');
INSERT INTO `job_log` VALUES (12122, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:03:12');
INSERT INTO `job_log` VALUES (12123, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:03:34');
INSERT INTO `job_log` VALUES (12124, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:03:34');
INSERT INTO `job_log` VALUES (12125, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:03:34');
INSERT INTO `job_log` VALUES (12126, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:03:34');
INSERT INTO `job_log` VALUES (12127, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:03:34');
INSERT INTO `job_log` VALUES (12128, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:04:09');
INSERT INTO `job_log` VALUES (12129, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:04:09');
INSERT INTO `job_log` VALUES (12130, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:04:09');
INSERT INTO `job_log` VALUES (12131, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:04:09');
INSERT INTO `job_log` VALUES (12132, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:04:09');
INSERT INTO `job_log` VALUES (12133, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '执行任务成功', '0', '', '2025-12-05 12:04:55');
INSERT INTO `job_log` VALUES (12134, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:05:57');
INSERT INTO `job_log` VALUES (12135, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:05:57');
INSERT INTO `job_log` VALUES (12136, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:05:57');
INSERT INTO `job_log` VALUES (12137, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:05:57');
INSERT INTO `job_log` VALUES (12138, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:05:57');
INSERT INTO `job_log` VALUES (12139, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:06:25');
INSERT INTO `job_log` VALUES (12140, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:06:25');
INSERT INTO `job_log` VALUES (12141, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:06:25');
INSERT INTO `job_log` VALUES (12142, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:06:25');
INSERT INTO `job_log` VALUES (12143, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:06:25');
INSERT INTO `job_log` VALUES (12144, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:08:41');
INSERT INTO `job_log` VALUES (12145, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:08:41');
INSERT INTO `job_log` VALUES (12146, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:08:42');
INSERT INTO `job_log` VALUES (12147, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:08:42');
INSERT INTO `job_log` VALUES (12148, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:08:42');
INSERT INTO `job_log` VALUES (12149, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:08:49');
INSERT INTO `job_log` VALUES (12150, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:08:49');
INSERT INTO `job_log` VALUES (12151, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:08:49');
INSERT INTO `job_log` VALUES (12152, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:08:49');
INSERT INTO `job_log` VALUES (12153, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:08:49');
INSERT INTO `job_log` VALUES (12154, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:08:57');
INSERT INTO `job_log` VALUES (12155, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:08:57');
INSERT INTO `job_log` VALUES (12156, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:08:57');
INSERT INTO `job_log` VALUES (12157, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:08:57');
INSERT INTO `job_log` VALUES (12158, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:08:57');
INSERT INTO `job_log` VALUES (12159, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '启动任务成功', '0', '', '2025-12-05 12:08:58');
INSERT INTO `job_log` VALUES (12160, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '启动任务成功', '0', '', '2025-12-05 12:08:58');
INSERT INTO `job_log` VALUES (12161, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '启动任务成功', '0', '', '2025-12-05 12:08:58');
INSERT INTO `job_log` VALUES (12162, '兑换券状态定时变更', 'DEFAULT', 'updateExpiredCoupons()', '启动任务成功', '0', '', '2025-12-05 12:08:58');
INSERT INTO `job_log` VALUES (12163, '邀请奖励发放任务', 'DEFAULT', 'processInviteRewards()', '启动任务成功', '0', '', '2025-12-05 12:08:58');
COMMIT;

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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
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
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `login_info` VALUES (77, 'laoying', '120.227.33.125', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-13 06:17:46');
INSERT INTO `login_info` VALUES (78, 'admin', '111.49.39.90', '宁夏 银川市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-13 09:28:03');
INSERT INTO `login_info` VALUES (79, 'admin', '60.10.194.247', '河北省 廊坊市', 'Edge126', 'Windows10', '0', '登录成功', '2025-04-13 13:01:06');
INSERT INTO `login_info` VALUES (80, 'admin', '58.241.71.200', '江苏省 常州市', 'Mobile Safari18', 'iOS18.3.2', '0', '登录成功', '2025-04-14 00:29:39');
INSERT INTO `login_info` VALUES (81, 'laoying', '118.248.140.178', '湖南省 邵阳市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-14 01:32:56');
INSERT INTO `login_info` VALUES (82, 'admin', '219.157.191.136', '河南省 郑州市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-14 01:37:19');
INSERT INTO `login_info` VALUES (83, 'laoying', '118.248.140.178', '湖南省 邵阳市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-14 05:52:09');
INSERT INTO `login_info` VALUES (84, 'admin', '171.15.167.94', '河南省 郑州市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-14 06:02:50');
INSERT INTO `login_info` VALUES (85, 'admin', '222.223.124.192', '河北省 邢台市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-14 08:01:05');
INSERT INTO `login_info` VALUES (86, 'admin', '173.214.27.106', ' ', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-14 09:27:15');
INSERT INTO `login_info` VALUES (87, 'admin', '114.96.41.113', '安徽省 马鞍山市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-14 10:35:12');
INSERT INTO `login_info` VALUES (88, 'admin', '120.229.210.102', '广东省 揭阳市', 'Edge134', 'macOS10.15.7', '0', '登录成功', '2025-04-14 11:37:46');
INSERT INTO `login_info` VALUES (89, 'eagle', '120.227.33.125', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-14 13:46:45');
INSERT INTO `login_info` VALUES (90, 'admin', '120.227.33.125', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-14 13:46:59');
INSERT INTO `login_info` VALUES (91, 'laoying', '120.227.33.125', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-14 13:47:34');
INSERT INTO `login_info` VALUES (92, 'eagle', '120.227.33.125', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-14 13:47:55');
INSERT INTO `login_info` VALUES (93, 'admin', '175.152.112.196', '四川省 成都市', 'Chrome133', 'Windows10', '0', '登录成功', '2025-04-14 13:53:45');
INSERT INTO `login_info` VALUES (94, 'laoying', '120.227.33.125', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-14 14:47:25');
INSERT INTO `login_info` VALUES (95, 'admin', '58.101.247.41', '浙江省 杭州市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-14 15:15:06');
INSERT INTO `login_info` VALUES (96, 'admin', '183.135.227.233', '浙江省 宁波市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-14 15:39:19');
INSERT INTO `login_info` VALUES (97, 'admin', '117.189.20.33', '贵州省 贵阳市', 'Chrome120', 'Windows10', '0', '登录成功', '2025-04-14 17:22:38');
INSERT INTO `login_info` VALUES (98, 'admin', '113.249.239.31', '重庆市 重庆市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-04-15 01:23:03');
INSERT INTO `login_info` VALUES (99, 'admin', '157.10.105.73', ' ', 'Firefox137', 'Windows10', '0', '登录成功', '2025-04-15 05:34:28');
INSERT INTO `login_info` VALUES (100, 'laoying', '119.39.23.70', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-15 06:39:59');
INSERT INTO `login_info` VALUES (101, 'admin', '113.119.158.200', '广东省 广州市', 'Chrome119', 'Windows10', '0', '登录成功', '2025-04-15 08:43:19');
INSERT INTO `login_info` VALUES (102, 'admin', '183.230.37.181', '重庆市 重庆市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-15 09:25:29');
INSERT INTO `login_info` VALUES (103, 'admin', '219.142.154.40', '北京市 北京市', 'Chrome134', 'Windows10', '0', '登录成功', '2025-04-15 12:59:08');
INSERT INTO `login_info` VALUES (104, 'admin', '183.186.76.154', '山西省 吕梁市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-15 13:47:58');
INSERT INTO `login_info` VALUES (105, 'admin', '112.6.231.2', '山东省 潍坊市', 'Chrome115', 'Windows10', '1', '验证码错误', '2025-04-16 05:16:22');
INSERT INTO `login_info` VALUES (106, 'admin', '112.6.231.2', '山东省 潍坊市', 'Chrome115', 'Windows10', '0', '登录成功', '2025-04-16 05:16:26');
INSERT INTO `login_info` VALUES (107, 'admin', '120.236.4.10', '广东省 深圳市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-16 08:40:14');
INSERT INTO `login_info` VALUES (108, 'admin', '111.203.158.101', '北京市 北京市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-16 08:52:58');
INSERT INTO `login_info` VALUES (109, 'admin', '103.188.234.179', ' ', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-16 11:28:46');
INSERT INTO `login_info` VALUES (110, 'admin', '112.54.172.77', '内蒙古 呼和浩特市', 'Chrome128', 'Windows10', '0', '登录成功', '2025-04-17 00:58:19');
INSERT INTO `login_info` VALUES (111, 'admin', '111.172.130.107', '湖北省 武汉市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-17 02:18:49');
INSERT INTO `login_info` VALUES (112, 'admin', '123.173.115.50', '吉林省 长春市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-17 08:08:54');
INSERT INTO `login_info` VALUES (113, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '1', '验证码错误', '2025-04-17 08:33:19');
INSERT INTO `login_info` VALUES (114, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-17 08:33:23');
INSERT INTO `login_info` VALUES (115, 'admin', '125.33.250.63', '北京市 北京市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-17 09:22:12');
INSERT INTO `login_info` VALUES (116, 'admin', '58.62.166.123', '广东省 广州市', 'Edge126', 'Windows10', '0', '登录成功', '2025-04-17 14:59:33');
INSERT INTO `login_info` VALUES (117, 'admin', '175.145.232.161', ' ', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-18 02:38:14');
INSERT INTO `login_info` VALUES (118, 'admin', '113.244.71.38', '湖南省 永州市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-18 06:02:37');
INSERT INTO `login_info` VALUES (119, 'admin', '122.238.55.58', '浙江省 嘉兴市', 'Chrome126', 'Windows10', '0', '登录成功', '2025-04-18 07:48:14');
INSERT INTO `login_info` VALUES (120, 'admin', '113.128.85.119', '山东省 济南市', 'Sogou Explorer1', 'Windows10', '1', '验证码错误', '2025-04-18 08:31:47');
INSERT INTO `login_info` VALUES (121, 'admin', '113.128.85.119', '山东省 济南市', 'Sogou Explorer1', 'Windows10', '0', '登录成功', '2025-04-18 08:31:54');
INSERT INTO `login_info` VALUES (122, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-18 09:01:56');
INSERT INTO `login_info` VALUES (123, 'admin', '124.193.218.82', '北京市 北京市', 'Chrome124', 'macOS10.15.7', '0', '登录成功', '2025-04-18 09:09:08');
INSERT INTO `login_info` VALUES (124, 'admin', '118.248.44.134', '湖南省 益阳市', 'Firefox137', 'Windows10', '0', '登录成功', '2025-04-18 12:03:55');
INSERT INTO `login_info` VALUES (125, 'admin', '103.231.84.3', '香港 ', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-19 06:38:13');
INSERT INTO `login_info` VALUES (126, 'laoying', '120.228.89.165', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-19 11:48:31');
INSERT INTO `login_info` VALUES (127, 'admin', '221.225.141.78', '江苏省 苏州市', 'Chrome134', 'Windows10', '1', '验证码错误', '2025-04-19 13:23:36');
INSERT INTO `login_info` VALUES (128, 'admin', '221.225.141.78', '江苏省 苏州市', 'Chrome134', 'Windows10', '0', '登录成功', '2025-04-19 13:23:42');
INSERT INTO `login_info` VALUES (129, 'admin', '43.167.220.79', ' ', 'Edge135', 'macOS10.15.7', '0', '登录成功', '2025-04-20 01:29:18');
INSERT INTO `login_info` VALUES (130, 'admin', '183.128.208.240', '浙江省 杭州市', 'Chrome126', 'Windows10', '0', '登录成功', '2025-04-20 03:32:06');
INSERT INTO `login_info` VALUES (131, 'admin', '58.212.33.229', '江苏省 南京市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-20 04:52:28');
INSERT INTO `login_info` VALUES (132, 'admin', '183.9.130.154', '广东省 揭阳市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-20 12:12:45');
INSERT INTO `login_info` VALUES (133, 'admin', '14.221.38.100', '广东省 东莞市', 'Chrome122', 'Windows10', '0', '登录成功', '2025-04-21 01:31:16');
INSERT INTO `login_info` VALUES (134, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-21 02:50:09');
INSERT INTO `login_info` VALUES (135, 'admin', '112.32.91.181', '安徽省 合肥市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-21 06:00:07');
INSERT INTO `login_info` VALUES (136, 'laoying', '113.244.65.158', '湖南省 永州市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-21 08:06:56');
INSERT INTO `login_info` VALUES (137, 'admin', '120.237.153.179', '广东省 珠海市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-21 09:21:25');
INSERT INTO `login_info` VALUES (138, 'admin', '218.68.64.192', '天津市 天津市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-21 09:45:16');
INSERT INTO `login_info` VALUES (139, 'admin', '101.6.130.18', '北京市 北京市', 'Chrome128', 'macOS10.15.7', '0', '登录成功', '2025-04-21 16:19:47');
INSERT INTO `login_info` VALUES (140, 'admin', '183.192.62.53', '上海市 上海市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-21 17:10:30');
INSERT INTO `login_info` VALUES (141, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-22 02:12:35');
INSERT INTO `login_info` VALUES (142, 'admin', '114.108.225.175', ' ', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-22 02:44:10');
INSERT INTO `login_info` VALUES (143, 'admin', '219.232.77.94', '广西 南宁市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-22 06:00:09');
INSERT INTO `login_info` VALUES (144, 'admin', '113.245.75.169', '湖南省 湘潭市', 'Chrome122', 'Windows10', '0', '登录成功', '2025-04-22 11:02:53');
INSERT INTO `login_info` VALUES (145, 'admin', '117.188.16.109', '贵州省 贵阳市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-22 13:29:15');
INSERT INTO `login_info` VALUES (146, 'admin', '101.39.146.190', '北京市 北京市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-22 14:53:59');
INSERT INTO `login_info` VALUES (147, 'admin', '50.116.13.108', ' ', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-23 02:51:37');
INSERT INTO `login_info` VALUES (148, 'admin', '1.80.83.222', '陕西省 西安市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-23 02:55:12');
INSERT INTO `login_info` VALUES (149, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-23 03:26:31');
INSERT INTO `login_info` VALUES (150, 'admin', '103.188.234.179', ' ', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-23 04:43:02');
INSERT INTO `login_info` VALUES (151, 'admin', '43.167.220.79', ' ', 'Edge135', 'macOS10.15.7', '0', '登录成功', '2025-04-23 06:11:33');
INSERT INTO `login_info` VALUES (152, 'admin', '120.230.44.194', '广东省 广州市', 'Chrome133', 'macOS10.15.7', '0', '登录成功', '2025-04-23 06:56:12');
INSERT INTO `login_info` VALUES (153, 'admin', '183.255.44.192', '海南省 儋州市', 'Chrome121', 'Windows10', '0', '登录成功', '2025-04-23 07:26:15');
INSERT INTO `login_info` VALUES (154, 'admin', '183.93.146.196', '湖北省 襄阳市', 'Firefox137', 'Windows10', '0', '登录成功', '2025-04-23 08:41:14');
INSERT INTO `login_info` VALUES (155, 'admin', '223.145.30.151', '湖南省 岳阳市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-23 09:03:30');
INSERT INTO `login_info` VALUES (156, 'admin', '125.92.113.25', '广东省 江门市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-23 09:23:48');
INSERT INTO `login_info` VALUES (157, 'admin', '154.18.174.162', ' ', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-23 09:43:06');
INSERT INTO `login_info` VALUES (158, 'admin', '163.125.167.174', '广东省 深圳市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-23 10:05:18');
INSERT INTO `login_info` VALUES (159, 'admin', '39.144.57.209', '辽宁省 ', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-23 10:53:34');
INSERT INTO `login_info` VALUES (160, 'admin', '1.198.22.147', '河南省 郑州市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-23 11:10:49');
INSERT INTO `login_info` VALUES (161, 'laoying', '120.228.88.105', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-23 14:56:06');
INSERT INTO `login_info` VALUES (162, 'admin', '183.192.62.53', '上海市 上海市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-23 22:12:12');
INSERT INTO `login_info` VALUES (163, 'admin', '36.57.114.157', '安徽省 六安市', 'Chrome122', 'Windows10', '1', '验证码错误', '2025-04-24 01:00:26');
INSERT INTO `login_info` VALUES (164, 'admin', '36.57.114.157', '安徽省 六安市', 'Chrome122', 'Windows10', '0', '登录成功', '2025-04-24 01:00:29');
INSERT INTO `login_info` VALUES (165, 'admin', '182.101.60.172', '江西省 南昌市', 'Edge135', 'macOS10.15.7', '0', '登录成功', '2025-04-24 01:01:31');
INSERT INTO `login_info` VALUES (166, 'laoying', '118.248.141.5', '湖南省 邵阳市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-24 01:34:59');
INSERT INTO `login_info` VALUES (167, 'admin', '115.238.84.98', '浙江省 杭州市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-24 01:47:20');
INSERT INTO `login_info` VALUES (168, 'admin', '117.151.246.13', '湖北省 恩施州', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-24 02:17:06');
INSERT INTO `login_info` VALUES (169, 'admin', '115.238.84.98', '浙江省 杭州市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-24 02:22:55');
INSERT INTO `login_info` VALUES (170, 'admin', '223.104.82.75', '广东省 广州市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-24 02:44:51');
INSERT INTO `login_info` VALUES (171, 'admin', '113.77.134.148', '广东省 东莞市', 'Chrome131', 'Windows10', '0', '登录成功', '2025-04-24 07:41:14');
INSERT INTO `login_info` VALUES (172, 'laoying', '118.248.141.5', '湖南省 邵阳市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-24 08:31:55');
INSERT INTO `login_info` VALUES (173, 'admin', '183.159.120.91', '浙江省 杭州市', 'Edge135', 'macOS10.15.7', '0', '登录成功', '2025-04-24 08:48:09');
INSERT INTO `login_info` VALUES (174, 'admin', '115.193.2.74', '浙江省 杭州市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-24 09:21:19');
INSERT INTO `login_info` VALUES (175, 'admin', '223.68.29.157', '江苏省 宿迁市', 'Chrome131', 'Windows10', '0', '登录成功', '2025-04-24 09:24:53');
INSERT INTO `login_info` VALUES (176, 'admin', '58.212.178.100', '江苏省 南京市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-24 11:21:53');
INSERT INTO `login_info` VALUES (177, 'admin', '223.106.33.187', '江苏省 苏州市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-24 13:40:17');
INSERT INTO `login_info` VALUES (178, 'admin', '123.185.78.172', '辽宁省 大连市', 'Chrome133', 'Windows10', '0', '登录成功', '2025-04-24 14:17:00');
INSERT INTO `login_info` VALUES (179, 'admin', '112.2.253.119', '江苏省 南京市', 'Firefox137', 'Windows10', '1', '验证码错误', '2025-04-25 02:53:52');
INSERT INTO `login_info` VALUES (180, 'admin', '112.2.253.119', '江苏省 南京市', 'Firefox137', 'Windows10', '0', '登录成功', '2025-04-25 02:53:56');
INSERT INTO `login_info` VALUES (181, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-25 03:25:30');
INSERT INTO `login_info` VALUES (182, 'admin', '222.91.150.15', '陕西省 西安市', 'QQBrowser13', 'Windows10', '0', '登录成功', '2025-04-25 04:12:04');
INSERT INTO `login_info` VALUES (183, 'admin', '111.10.226.227', '重庆市 重庆市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-25 05:46:51');
INSERT INTO `login_info` VALUES (184, 'admin', '123.119.186.168', '北京市 北京市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-25 05:59:09');
INSERT INTO `login_info` VALUES (185, 'admin', '123.245.1.133', '辽宁省 沈阳市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-25 08:42:55');
INSERT INTO `login_info` VALUES (186, 'admin', '121.30.190.115', '山西省 大同市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-25 09:28:48');
INSERT INTO `login_info` VALUES (187, 'admin', '183.192.62.53', '上海市 上海市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-26 02:01:15');
INSERT INTO `login_info` VALUES (188, 'admin', '42.229.130.16', '河南省 安阳市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-26 05:00:02');
INSERT INTO `login_info` VALUES (189, 'admin', '110.83.48.177', '福建省 福州市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-26 07:04:02');
INSERT INTO `login_info` VALUES (190, 'admin', '27.202.201.27', '山东省 东营市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-26 09:16:45');
INSERT INTO `login_info` VALUES (191, 'laoying', '120.228.88.105', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-26 11:09:57');
INSERT INTO `login_info` VALUES (192, 'admin', '223.88.36.102', '河南省 郑州市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-26 12:38:12');
INSERT INTO `login_info` VALUES (193, 'admin', '58.152.113.218', '香港 ', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-26 13:38:49');
INSERT INTO `login_info` VALUES (194, 'admin', '113.76.169.124', '广东省 珠海市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-26 14:33:16');
INSERT INTO `login_info` VALUES (195, 'admin', '114.108.225.175', ' ', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-26 16:41:16');
INSERT INTO `login_info` VALUES (196, 'admin', '58.152.113.218', '香港 ', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-27 00:54:58');
INSERT INTO `login_info` VALUES (197, 'admin', '61.242.153.115', '江西省 抚州市', 'Edge123', 'Android10', '0', '登录成功', '2025-04-27 00:56:51');
INSERT INTO `login_info` VALUES (198, 'laoying', '118.248.208.127', '湖南省 邵阳市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-27 01:28:30');
INSERT INTO `login_info` VALUES (199, 'admin', '223.104.86.97', '四川省 ', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-27 02:08:31');
INSERT INTO `login_info` VALUES (200, 'admin', '36.233.228.188', '台湾省 ', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-27 04:01:51');
INSERT INTO `login_info` VALUES (201, 'admin', '113.116.30.188', '广东省 深圳市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-27 06:29:30');
INSERT INTO `login_info` VALUES (202, 'admin', '182.88.27.229', '广西 南宁市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-27 06:29:44');
INSERT INTO `login_info` VALUES (203, 'admin', '113.116.30.188', '广东省 深圳市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-27 06:30:22');
INSERT INTO `login_info` VALUES (204, 'admin', '113.132.235.244', '陕西省 西安市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-27 07:40:30');
INSERT INTO `login_info` VALUES (205, 'admin', '36.97.124.232', '吉林省 松原市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-27 09:54:30');
INSERT INTO `login_info` VALUES (206, 'laoying', '120.228.88.105', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-27 12:35:27');
INSERT INTO `login_info` VALUES (207, 'admin', '27.43.204.228', '广东省 潮州市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-27 13:54:53');
INSERT INTO `login_info` VALUES (208, 'admin', '223.145.30.192', '湖南省 岳阳市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-27 17:43:44');
INSERT INTO `login_info` VALUES (209, 'admin', '39.144.59.170', '辽宁省 沈阳市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-27 23:29:14');
INSERT INTO `login_info` VALUES (210, 'admin', '120.42.159.98', '福建省 泉州市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-28 01:14:00');
INSERT INTO `login_info` VALUES (211, 'admin', '111.60.118.254', '湖北省 武汉市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-28 08:56:20');
INSERT INTO `login_info` VALUES (212, 'admin', '222.64.253.177', '上海市 上海市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-28 12:06:13');
INSERT INTO `login_info` VALUES (213, 'admin', '103.172.116.207', ' ', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-28 14:50:59');
INSERT INTO `login_info` VALUES (214, 'admin', '14.153.218.153', '广东省 深圳市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-28 15:54:28');
INSERT INTO `login_info` VALUES (215, 'admin', '113.75.82.37', '广东省 河源市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-28 18:27:16');
INSERT INTO `login_info` VALUES (216, 'admin', '124.64.17.91', '北京市 北京市', 'Chrome132', 'Windows10', '0', '登录成功', '2025-04-29 01:07:16');
INSERT INTO `login_info` VALUES (217, 'laoying', '118.248.208.127', '湖南省 邵阳市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-29 01:12:13');
INSERT INTO `login_info` VALUES (218, 'admin', '111.60.88.186', '湖北省 武汉市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-29 01:44:08');
INSERT INTO `login_info` VALUES (219, 'admin', '106.120.54.124', '北京市 北京市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-29 06:23:39');
INSERT INTO `login_info` VALUES (220, 'admin', '111.26.161.240', '吉林省 长春市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-29 06:55:38');
INSERT INTO `login_info` VALUES (221, 'admin', '123.174.204.27', '山西省 运城市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-29 08:12:18');
INSERT INTO `login_info` VALUES (222, 'admin', '14.19.73.102', '广东省 广州市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-29 10:52:15');
INSERT INTO `login_info` VALUES (223, 'admin', '223.88.36.102', '河南省 郑州市', 'Chrome135', 'Windows10', '1', '验证码错误', '2025-04-29 13:56:22');
INSERT INTO `login_info` VALUES (224, 'admin', '223.88.36.102', '河南省 郑州市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-29 13:56:28');
INSERT INTO `login_info` VALUES (225, 'admin', '27.187.195.81', '河北省 保定市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-29 15:30:22');
INSERT INTO `login_info` VALUES (226, 'admin', '39.144.144.71', '四川省 成都市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-29 17:00:36');
INSERT INTO `login_info` VALUES (227, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-30 01:44:33');
INSERT INTO `login_info` VALUES (228, 'admin', '223.73.7.176', '广东省 深圳市', 'Chrome135', 'Windows10', '1', '验证码错误', '2025-04-30 02:12:04');
INSERT INTO `login_info` VALUES (229, 'admin', '223.73.7.176', '广东省 深圳市', 'Chrome135', 'Windows10', '1', '验证码错误', '2025-04-30 02:12:10');
INSERT INTO `login_info` VALUES (230, 'admin', '223.73.7.176', '广东省 深圳市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-30 02:12:19');
INSERT INTO `login_info` VALUES (231, 'admin', '183.14.28.189', '广东省 深圳市', 'Safari17', 'macOS10.15.7', '0', '登录成功', '2025-04-30 02:40:40');
INSERT INTO `login_info` VALUES (232, 'admin', '202.103.63.1', '湖北省 武汉市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-30 02:54:29');
INSERT INTO `login_info` VALUES (233, 'admin', '121.235.47.82', '江苏省 无锡市', 'Chrome131', 'Windows10', '0', '登录成功', '2025-04-30 04:05:14');
INSERT INTO `login_info` VALUES (234, 'admin', '116.30.125.188', '广东省 深圳市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-30 08:30:30');
INSERT INTO `login_info` VALUES (235, 'admin', '175.152.113.42', '四川省 成都市', 'Chrome135', 'Windows10', '1', '验证码错误', '2025-04-30 12:00:49');
INSERT INTO `login_info` VALUES (236, 'admin', '175.152.113.42', '四川省 成都市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-04-30 12:00:53');
INSERT INTO `login_info` VALUES (237, 'admin', '124.79.50.64', '上海市 上海市', 'Edge135', 'Windows10', '0', '登录成功', '2025-04-30 13:25:49');
INSERT INTO `login_info` VALUES (238, 'admin', '114.108.225.175', ' ', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-04-30 15:41:31');
INSERT INTO `login_info` VALUES (239, 'admin', '113.221.72.63', '湖南省 常德市', 'Chrome122', 'Windows10', '0', '登录成功', '2025-05-01 01:33:10');
INSERT INTO `login_info` VALUES (240, 'admin', '36.143.132.243', '河北省 石家庄市', 'Firefox137', 'Windows10', '0', '登录成功', '2025-05-01 01:40:48');
INSERT INTO `login_info` VALUES (241, 'admin', '113.77.104.91', '广东省 东莞市', 'Chrome132', 'Windows10', '0', '登录成功', '2025-05-01 04:47:00');
INSERT INTO `login_info` VALUES (242, 'admin', '220.197.224.169', '云南省 昆明市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-01 07:59:46');
INSERT INTO `login_info` VALUES (243, 'admin', '36.143.132.243', '河北省 石家庄市', 'Firefox137', 'Windows10', '0', '登录成功', '2025-05-01 08:05:15');
INSERT INTO `login_info` VALUES (244, 'admin', '106.60.188.185', '云南省 昆明市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-01 08:40:08');
INSERT INTO `login_info` VALUES (245, 'laoying', '120.228.88.188', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-01 13:28:14');
INSERT INTO `login_info` VALUES (246, 'admin', '120.245.25.2', '北京市 北京市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-01 15:59:16');
INSERT INTO `login_info` VALUES (247, 'admin', '114.108.225.175', ' ', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-01 20:25:46');
INSERT INTO `login_info` VALUES (248, 'admin', '120.245.25.2', '北京市 北京市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-02 00:39:48');
INSERT INTO `login_info` VALUES (249, 'admin', '222.152.213.0', ' ', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-02 13:13:20');
INSERT INTO `login_info` VALUES (250, 'admin', '185.151.146.98', ' ', 'Mobile Chrome135', 'Android10', '0', '登录成功', '2025-05-02 14:45:11');
INSERT INTO `login_info` VALUES (251, 'admin', '223.104.133.110', '湖南省 长沙市', 'MIUI Browser19', 'Android15', '0', '登录成功', '2025-05-03 00:26:59');
INSERT INTO `login_info` VALUES (252, 'admin', '222.128.46.10', '北京市 北京市', 'Chrome122', 'Windows10', '0', '登录成功', '2025-05-03 00:47:18');
INSERT INTO `login_info` VALUES (253, 'admin', '103.17.148.123', ' ', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-03 02:03:47');
INSERT INTO `login_info` VALUES (254, 'admin', '14.155.235.67', '广东省 深圳市', 'Edge135', 'Windows10', '0', '登录成功', '2025-05-03 03:11:06');
INSERT INTO `login_info` VALUES (255, 'laoying', '120.228.88.188', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-03 05:24:28');
INSERT INTO `login_info` VALUES (256, 'admin', '120.242.203.188', '安徽省 安庆市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-03 12:30:20');
INSERT INTO `login_info` VALUES (257, 'admin', '14.155.235.67', '广东省 深圳市', 'Edge135', 'Windows10', '0', '登录成功', '2025-05-03 14:14:16');
INSERT INTO `login_info` VALUES (258, 'laoying', '120.228.88.188', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-04 05:25:11');
INSERT INTO `login_info` VALUES (259, 'admin', '112.36.58.72', '山东省 德州市', 'Edge135', 'Windows10', '0', '登录成功', '2025-05-04 11:34:01');
INSERT INTO `login_info` VALUES (260, 'admin', '122.90.28.36', '福建省 福州市', 'Chrome120', 'Windows10', '0', '登录成功', '2025-05-04 11:52:26');
INSERT INTO `login_info` VALUES (261, 'admin', '58.244.69.25', '吉林省 长春市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-04 14:41:24');
INSERT INTO `login_info` VALUES (262, 'admin', '14.145.61.5', '广东省 广州市', 'Edge135', 'Windows10', '0', '登录成功', '2025-05-04 17:30:21');
INSERT INTO `login_info` VALUES (263, 'admin', '45.192.106.113', '香港 ', 'Chrome130', 'Windows10', '1', '验证码错误', '2025-05-04 23:21:32');
INSERT INTO `login_info` VALUES (264, 'admin', '45.192.106.113', '香港 ', 'Chrome130', 'Windows10', '0', '登录成功', '2025-05-04 23:21:37');
INSERT INTO `login_info` VALUES (265, 'admin', '111.60.133.184', '湖北省 武汉市', 'Edge135', 'Windows10', '0', '登录成功', '2025-05-05 00:30:49');
INSERT INTO `login_info` VALUES (266, 'admin', '117.147.118.86', '浙江省 温州市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-05 01:36:36');
INSERT INTO `login_info` VALUES (267, 'admin', '223.94.33.20', '浙江省 宁波市', 'Chrome135', 'Windows10', '1', '验证码错误', '2025-05-05 07:05:00');
INSERT INTO `login_info` VALUES (268, 'admin', '223.94.33.20', '浙江省 宁波市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-05 07:05:05');
INSERT INTO `login_info` VALUES (269, 'laoying', '120.228.88.188', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-05 08:00:02');
INSERT INTO `login_info` VALUES (270, 'admin', '182.88.167.163', '广西 南宁市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-05 09:32:21');
INSERT INTO `login_info` VALUES (271, 'laoying', '120.228.88.188', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-05 13:32:08');
INSERT INTO `login_info` VALUES (272, 'admin', '14.155.244.41', '广东省 深圳市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-05 14:23:03');
INSERT INTO `login_info` VALUES (273, 'laoying', '120.228.88.188', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-05 14:36:09');
INSERT INTO `login_info` VALUES (274, 'admin', '54.238.188.95', ' ', 'Chrome138', 'Windows10', '0', '登录成功', '2025-05-05 17:42:01');
INSERT INTO `login_info` VALUES (275, 'admin', '114.108.225.175', ' ', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-05 21:11:58');
INSERT INTO `login_info` VALUES (276, 'laoying', '118.248.215.174', '湖南省 邵阳市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-06 01:40:18');
INSERT INTO `login_info` VALUES (277, 'admin', '60.169.68.42', '安徽省 芜湖市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-06 01:47:33');
INSERT INTO `login_info` VALUES (278, 'admin', '14.154.45.229', '广东省 深圳市', 'Edge135', 'Windows10', '0', '登录成功', '2025-05-06 02:10:16');
INSERT INTO `login_info` VALUES (279, 'admin', '123.112.21.188', '北京市 北京市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-06 05:53:45');
INSERT INTO `login_info` VALUES (280, 'admin', '113.133.208.59', '陕西省 西安市', 'Edge112', 'Windows10', '0', '登录成功', '2025-05-06 06:19:24');
INSERT INTO `login_info` VALUES (281, 'admin', '1.25.64.11', '内蒙古 包头市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-06 06:32:09');
INSERT INTO `login_info` VALUES (282, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-06 09:08:50');
INSERT INTO `login_info` VALUES (283, 'admin', '14.153.247.252', '广东省 深圳市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-06 09:14:38');
INSERT INTO `login_info` VALUES (284, 'admin', '61.93.200.248', '香港 ', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-06 12:04:32');
INSERT INTO `login_info` VALUES (285, 'admin', '219.237.177.224', '北京市 北京市', 'Quark2', 'Windows10', '1', '验证码错误', '2025-05-06 13:29:31');
INSERT INTO `login_info` VALUES (286, 'admin', '219.237.177.224', '北京市 北京市', 'Quark2', 'Windows10', '1', '验证码错误', '2025-05-06 13:29:41');
INSERT INTO `login_info` VALUES (287, 'admin', '219.237.177.224', '北京市 北京市', 'Quark2', 'Windows10', '0', '登录成功', '2025-05-06 13:29:44');
INSERT INTO `login_info` VALUES (288, 'admin', '14.155.202.115', '广东省 深圳市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-06 13:54:11');
INSERT INTO `login_info` VALUES (289, 'admin', '219.134.219.105', '广东省 深圳市', 'Mobile Chrome135', 'iOS18.3.2', '0', '登录成功', '2025-05-06 15:40:59');
INSERT INTO `login_info` VALUES (290, 'admin', '91.229.132.83', ' ', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-06 16:37:16');
INSERT INTO `login_info` VALUES (291, 'admin', '117.24.201.114', '福建省 泉州市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-07 01:25:05');
INSERT INTO `login_info` VALUES (292, 'admin', '36.152.178.139', '江苏省 苏州市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-07 03:15:27');
INSERT INTO `login_info` VALUES (293, 'admin', '123.119.187.218', '北京市 北京市', 'Edge135', 'Windows10', '0', '登录成功', '2025-05-07 03:33:29');
INSERT INTO `login_info` VALUES (294, 'admin', '175.152.142.68', '四川省 成都市', 'Firefox116', 'Windows10', '0', '登录成功', '2025-05-07 04:18:44');
INSERT INTO `login_info` VALUES (295, 'admin', '171.109.145.53', '广西 北海市', 'Quark7', 'Android15', '0', '登录成功', '2025-05-07 08:47:00');
INSERT INTO `login_info` VALUES (296, 'admin', '223.152.69.67', '湖南省 郴州市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-07 08:52:12');
INSERT INTO `login_info` VALUES (297, 'admin', '112.123.93.179', '安徽省 蚌埠市', 'Chrome121', 'Windows10', '0', '登录成功', '2025-05-07 09:10:44');
INSERT INTO `login_info` VALUES (298, 'admin', '175.160.33.179', '辽宁省 沈阳市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-07 09:42:49');
INSERT INTO `login_info` VALUES (299, 'admin', '183.197.46.24', '河北省 石家庄市', 'Edge136', 'Windows10', '1', '验证码错误', '2025-05-07 13:25:53');
INSERT INTO `login_info` VALUES (300, 'admin', '183.197.46.24', '河北省 石家庄市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-07 13:26:00');
INSERT INTO `login_info` VALUES (301, 'admin', '101.24.214.151', '河北省 石家庄市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-07 13:32:28');
INSERT INTO `login_info` VALUES (302, 'laoying', '113.244.65.183', '湖南省 永州市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-08 01:43:19');
INSERT INTO `login_info` VALUES (303, 'admin', '117.88.136.114', '江苏省 南京市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-08 03:07:34');
INSERT INTO `login_info` VALUES (304, 'admin', '183.230.64.14', '重庆市 重庆市', 'Chrome109', 'Windows10', '1', '验证码错误', '2025-05-08 03:15:25');
INSERT INTO `login_info` VALUES (305, 'admin', '183.230.64.14', '重庆市 重庆市', 'Chrome109', 'Windows10', '0', '登录成功', '2025-05-08 03:15:30');
INSERT INTO `login_info` VALUES (306, 'admin', '120.246.45.5', '北京市 北京市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-08 03:32:11');
INSERT INTO `login_info` VALUES (307, 'admin', '171.88.108.117', '四川省 成都市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-08 03:36:01');
INSERT INTO `login_info` VALUES (308, 'admin', '106.114.250.73', '河北省 石家庄市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-08 03:54:52');
INSERT INTO `login_info` VALUES (309, 'admin', '61.182.226.81', '河北省 石家庄市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-08 04:19:06');
INSERT INTO `login_info` VALUES (310, 'admin', '222.173.70.78', '山东省 青岛市', 'Edge128', 'Windows10', '0', '登录成功', '2025-05-08 06:01:31');
INSERT INTO `login_info` VALUES (311, 'admin', '183.141.221.164', '浙江省 嘉兴市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-08 06:11:19');
INSERT INTO `login_info` VALUES (312, 'admin', '171.223.122.232', '四川省 成都市', 'Chrome124', 'Windows10', '0', '登录成功', '2025-05-08 08:33:46');
INSERT INTO `login_info` VALUES (313, 'admin', '39.144.30.52', '新疆 昌吉州', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-08 11:57:57');
INSERT INTO `login_info` VALUES (314, 'admin', '117.154.83.60', '湖北省 武汉市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-08 13:28:19');
INSERT INTO `login_info` VALUES (315, 'laoying', '113.244.65.183', '湖南省 永州市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-09 01:59:26');
INSERT INTO `login_info` VALUES (316, 'admin', '116.18.220.227', '广东省 东莞市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-09 02:02:52');
INSERT INTO `login_info` VALUES (317, 'admin', '120.197.159.126', '广东省 东莞市', 'Chrome129', 'Windows10', '0', '登录成功', '2025-05-09 02:16:35');
INSERT INTO `login_info` VALUES (318, 'admin', '223.73.2.83', '广东省 深圳市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-09 03:04:08');
INSERT INTO `login_info` VALUES (319, 'admin', '1.83.4.162', '陕西省 西安市', 'Edge135', 'Windows10', '0', '登录成功', '2025-05-09 07:34:01');
INSERT INTO `login_info` VALUES (320, 'admin', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-09 07:50:50');
INSERT INTO `login_info` VALUES (321, 'admin', '166.108.206.53', ' ', 'Edge128', 'Windows10', '0', '登录成功', '2025-05-09 08:17:03');
INSERT INTO `login_info` VALUES (322, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-09 08:17:14');
INSERT INTO `login_info` VALUES (323, 'admin', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-09 08:22:07');
INSERT INTO `login_info` VALUES (324, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-09 09:17:53');
INSERT INTO `login_info` VALUES (325, 'admin', '1.202.36.114', '北京市 北京市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-09 09:34:25');
INSERT INTO `login_info` VALUES (326, 'admin', '119.15.85.198', ' ', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-09 10:03:16');
INSERT INTO `login_info` VALUES (327, 'admin', '109.110.162.51', ' ', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-09 10:12:37');
INSERT INTO `login_info` VALUES (328, 'admin', '111.33.199.126', '天津市 天津市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-09 14:17:11');
INSERT INTO `login_info` VALUES (329, 'laoying', '120.228.88.47', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-10 00:14:08');
INSERT INTO `login_info` VALUES (330, 'admin', '112.96.209.108', '广东省 广州市', 'Chrome86', 'Windows7', '0', '登录成功', '2025-05-10 01:16:39');
INSERT INTO `login_info` VALUES (331, 'admin', '182.102.89.125', '江西省 南昌市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-10 02:08:02');
INSERT INTO `login_info` VALUES (332, 'admin', '112.245.49.134', '山东省 泰安市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-10 05:56:53');
INSERT INTO `login_info` VALUES (333, 'admin', '185.212.58.48', ' ', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-10 10:03:47');
INSERT INTO `login_info` VALUES (334, 'laoying', '120.228.88.47', '湖南省 长沙市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-10 11:54:48');
INSERT INTO `login_info` VALUES (335, 'admin', '27.38.240.203', '广东省 深圳市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-11 09:31:26');
INSERT INTO `login_info` VALUES (336, 'laoying', '120.228.88.47', '湖南省 长沙市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-11 13:56:32');
INSERT INTO `login_info` VALUES (337, 'admin', '101.68.3.7', '浙江省 杭州市', 'MIUI Browser19', 'Android15', '0', '登录成功', '2025-05-11 23:25:36');
INSERT INTO `login_info` VALUES (338, 'laoying', '113.244.65.81', '湖南省 永州市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-12 01:39:25');
INSERT INTO `login_info` VALUES (339, 'admin', '119.130.200.212', '广东省 广州市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-12 03:20:23');
INSERT INTO `login_info` VALUES (340, 'admin', '123.177.54.10', '辽宁省 沈阳市', 'Chrome131', 'Windows10', '0', '登录成功', '2025-05-12 05:43:55');
INSERT INTO `login_info` VALUES (341, 'admin', '112.96.230.5', '广东省 广州市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-12 06:05:15');
INSERT INTO `login_info` VALUES (342, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-12 07:49:07');
INSERT INTO `login_info` VALUES (343, 'admin', '115.207.134.176', '浙江省 衢州市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-12 08:51:39');
INSERT INTO `login_info` VALUES (344, 'admin', '114.108.225.175', ' ', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-12 21:58:11');
INSERT INTO `login_info` VALUES (345, 'admin', '59.174.63.57', '湖北省 武汉市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-13 00:11:04');
INSERT INTO `login_info` VALUES (346, 'admin', '113.120.201.136', '山东省 潍坊市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-13 02:58:35');
INSERT INTO `login_info` VALUES (347, 'admin', '159.138.134.119', '香港 ', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-13 03:26:31');
INSERT INTO `login_info` VALUES (348, 'admin', '103.131.130.195', '台湾省 ', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-13 05:00:09');
INSERT INTO `login_info` VALUES (349, 'admin', '221.232.128.205', '湖北省 武汉市', 'Edge136', 'Windows10', '1', '验证码错误', '2025-05-13 06:10:38');
INSERT INTO `login_info` VALUES (350, 'admin', '221.232.128.205', '湖北省 武汉市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-13 06:10:43');
INSERT INTO `login_info` VALUES (351, 'admin', '112.21.22.164', '江苏省 无锡市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-13 06:54:58');
INSERT INTO `login_info` VALUES (352, 'laoying', '119.39.1.143', '湖南省 长沙市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-13 07:52:48');
INSERT INTO `login_info` VALUES (353, 'admin', '120.1.7.130', '河北省 石家庄市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-13 09:32:09');
INSERT INTO `login_info` VALUES (354, 'admin', '45.195.70.15', '香港 ', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-13 12:09:13');
INSERT INTO `login_info` VALUES (355, 'laoying', '120.228.88.149', '湖南省 长沙市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-13 12:49:26');
INSERT INTO `login_info` VALUES (356, 'admin', '119.183.223.104', '山东省 潍坊市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-13 13:33:15');
INSERT INTO `login_info` VALUES (357, 'admin', '39.184.4.235', '浙江省 台州市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-13 15:47:15');
INSERT INTO `login_info` VALUES (358, 'admin', '121.15.193.79', '广东省 深圳市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-14 09:24:21');
INSERT INTO `login_info` VALUES (359, 'admin', '111.33.233.194', '天津市 天津市', 'Chrome120', 'macOS10.15.7', '0', '登录成功', '2025-05-14 11:13:40');
INSERT INTO `login_info` VALUES (360, 'admin', '36.46.168.215', '陕西省 西安市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-14 12:28:48');
INSERT INTO `login_info` VALUES (361, 'admin', '120.231.119.254', '广东省 中山市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-14 16:44:26');
INSERT INTO `login_info` VALUES (362, 'laoying', '113.244.65.71', '湖南省 永州市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-15 01:35:32');
INSERT INTO `login_info` VALUES (363, 'admin', '101.7.161.121', '山西省 太原市', 'Chrome128', 'Windows10', '0', '登录成功', '2025-05-15 02:37:01');
INSERT INTO `login_info` VALUES (364, 'admin', '14.145.58.114', '广东省 广州市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-15 02:48:28');
INSERT INTO `login_info` VALUES (365, 'admin', '113.65.212.164', '广东省 广州市', 'Edge133', 'Windows10', '1', '验证码错误', '2025-05-15 02:54:34');
INSERT INTO `login_info` VALUES (366, 'admin', '113.65.212.164', '广东省 广州市', 'Edge133', 'Windows10', '0', '登录成功', '2025-05-15 02:54:39');
INSERT INTO `login_info` VALUES (367, 'admin', '125.36.117.214', '天津市 天津市', 'Chrome136', 'Windows10', '1', '验证码错误', '2025-05-15 06:20:34');
INSERT INTO `login_info` VALUES (368, 'admin', '125.36.117.214', '天津市 天津市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-15 06:20:39');
INSERT INTO `login_info` VALUES (369, 'admin', '60.27.179.212', '天津市 天津市', 'Chrome135', 'macOS10.15.7', '0', '登录成功', '2025-05-15 09:49:44');
INSERT INTO `login_info` VALUES (370, 'admin', '165.140.241.130', ' ', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-15 14:03:09');
INSERT INTO `login_info` VALUES (371, 'admin', '125.36.117.214', '天津市 天津市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-16 01:53:42');
INSERT INTO `login_info` VALUES (372, 'admin', '14.145.58.114', '广东省 广州市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-16 03:03:47');
INSERT INTO `login_info` VALUES (373, 'admin', '125.36.117.214', '天津市 天津市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-16 03:16:54');
INSERT INTO `login_info` VALUES (374, 'admin', '14.145.58.114', '广东省 广州市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-16 03:24:20');
INSERT INTO `login_info` VALUES (375, 'admin', '125.36.117.214', '天津市 天津市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-16 03:26:57');
INSERT INTO `login_info` VALUES (376, 'admin', '14.145.58.114', '广东省 广州市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-16 03:33:54');
INSERT INTO `login_info` VALUES (377, 'admin', '14.145.58.114', '广东省 广州市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-16 03:34:31');
INSERT INTO `login_info` VALUES (378, 'laoying', '119.39.23.122', '湖南省 长沙市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-16 06:01:44');
INSERT INTO `login_info` VALUES (379, 'admin', '14.145.58.114', '广东省 广州市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-16 06:29:37');
INSERT INTO `login_info` VALUES (380, 'admin', '111.59.18.190', '广西 南宁市', 'Chrome135', 'Windows10', '0', '登录成功', '2025-05-16 07:28:38');
INSERT INTO `login_info` VALUES (381, 'admin', '171.110.98.136', '广西 钦州市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-16 07:32:08');
INSERT INTO `login_info` VALUES (382, 'admin', '112.90.194.148', '广东省 清远市', 'Edge135', 'macOS10.15.7', '0', '登录成功', '2025-05-16 08:16:15');
INSERT INTO `login_info` VALUES (383, 'admin', '119.62.206.30', '云南省 西双版纳州', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-16 13:42:56');
INSERT INTO `login_info` VALUES (384, 'admin', '14.155.233.122', '广东省 深圳市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-16 16:48:46');
INSERT INTO `login_info` VALUES (385, 'admin', '112.42.32.197', '辽宁省 大连市', 'Firefox138', 'Windows10', '0', '登录成功', '2025-05-16 17:47:01');
INSERT INTO `login_info` VALUES (386, 'admin', '183.69.158.7', '重庆市 重庆市', 'Chrome136', 'Windows10', '1', '验证码错误', '2025-05-17 02:16:20');
INSERT INTO `login_info` VALUES (387, 'admin', '183.69.158.7', '重庆市 重庆市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-17 02:16:35');
INSERT INTO `login_info` VALUES (388, 'admin', '14.155.233.122', '广东省 深圳市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-17 02:45:57');
INSERT INTO `login_info` VALUES (389, 'laoying', '118.248.215.135', '湖南省 邵阳市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-17 05:39:17');
INSERT INTO `login_info` VALUES (390, 'admin', '112.87.186.237', '江苏省 苏州市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-17 15:50:51');
INSERT INTO `login_info` VALUES (391, 'admin', '183.15.204.194', '广东省 深圳市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-18 02:45:06');
INSERT INTO `login_info` VALUES (392, 'admin', '49.88.22.119', '江苏省 连云港市', 'Edge126', 'Windows10', '0', '登录成功', '2025-05-18 02:52:43');
INSERT INTO `login_info` VALUES (393, 'admin', '124.127.144.97', '北京市 北京市', 'Edge136', 'macOS10.15.7', '0', '登录成功', '2025-05-18 03:04:00');
INSERT INTO `login_info` VALUES (394, 'admin', '119.1.177.151', '贵州省 黔东南州', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-18 17:05:54');
INSERT INTO `login_info` VALUES (395, 'laoying', '119.39.23.122', '湖南省 长沙市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-19 01:14:45');
INSERT INTO `login_info` VALUES (396, 'admin', '219.232.77.64', '广西 南宁市', 'Edge127', 'Windows10', '0', '登录成功', '2025-05-19 03:10:56');
INSERT INTO `login_info` VALUES (397, 'admin', '106.115.91.43', '河北省 邯郸市', 'Edge136', 'macOS10.15.7', '0', '登录成功', '2025-05-19 04:56:36');
INSERT INTO `login_info` VALUES (398, 'admin', '183.239.158.35', '广东省 深圳市', 'Chrome121', 'Windows10', '0', '登录成功', '2025-05-19 05:35:15');
INSERT INTO `login_info` VALUES (399, 'admin', '116.18.120.114', '广东省 东莞市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-19 06:33:08');
INSERT INTO `login_info` VALUES (400, 'laoying', '119.39.23.122', '湖南省 长沙市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-19 09:00:14');
INSERT INTO `login_info` VALUES (401, 'admin', '14.145.50.106', '广东省 广州市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-19 10:19:23');
INSERT INTO `login_info` VALUES (402, 'admin', '14.145.168.20', '广东省 广州市', 'Quark2', 'Windows10', '0', '登录成功', '2025-05-20 02:36:49');
INSERT INTO `login_info` VALUES (403, 'admin', '14.145.50.106', '广东省 广州市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-20 03:53:04');
INSERT INTO `login_info` VALUES (404, 'admin', '183.253.145.178', '福建省 泉州市', 'Chrome86', 'Windows7', '0', '登录成功', '2025-05-20 07:52:13');
INSERT INTO `login_info` VALUES (405, 'admin', '36.33.45.253', '安徽省 合肥市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-20 07:58:20');
INSERT INTO `login_info` VALUES (406, 'admin', '14.19.77.194', '广东省 广州市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-20 08:59:24');
INSERT INTO `login_info` VALUES (407, 'admin', '14.155.220.189', '广东省 深圳市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-20 14:15:46');
INSERT INTO `login_info` VALUES (408, 'admin', '115.62.236.132', '河南省 新乡市', 'Edge136', 'Windows10', '0', '登录成功', '2025-05-20 14:24:43');
INSERT INTO `login_info` VALUES (409, 'laoying', '119.39.23.122', '湖南省 长沙市', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-21 03:56:25');
INSERT INTO `login_info` VALUES (410, 'admin', '113.218.137.149', '湖南省 长沙市', 'Chrome136', 'Windows10', '0', '登录成功', '2025-05-21 05:29:31');
INSERT INTO `login_info` VALUES (411, 'admin', '127.0.0.1', '内网IP', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-21 06:34:08');
INSERT INTO `login_info` VALUES (412, 'admin', '127.0.0.1', '内网IP', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-21 07:20:13');
INSERT INTO `login_info` VALUES (413, 'admin', '127.0.0.1', '内网IP', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-05-26 05:37:01');
INSERT INTO `login_info` VALUES (414, 'admin', '127.0.0.1', '内网IP', 'Chrome136', 'macOS10.15.7', '0', '登录成功', '2025-06-03 01:41:32');
INSERT INTO `login_info` VALUES (415, 'admin', '127.0.0.1', '内网IP', 'Chrome137', 'macOS10.15.7', '0', '登录成功', '2025-06-18 06:47:04');
INSERT INTO `login_info` VALUES (416, 'admin', '127.0.0.1', '内网IP', 'Chrome140', 'macOS10.15.7', '0', '登录成功', '2025-09-25 06:43:39');
INSERT INTO `login_info` VALUES (417, 'admin', '127.0.0.1', '内网IP', 'Chrome140', 'macOS10.15.7', '0', '登录成功', '2025-09-26 07:08:51');
INSERT INTO `login_info` VALUES (418, 'admin', '', '湖南省 长沙市', 'Chrome141', 'macOS10.15.7', '0', '登录成功', '2025-10-22 07:18:54');
INSERT INTO `login_info` VALUES (419, 'admin', '', '湖南省 长沙市', 'Chrome141', 'macOS10.15.7', '0', '登录成功', '2025-11-05 13:43:36');
INSERT INTO `login_info` VALUES (420, 'admin', '', '湖南省 长沙市', 'Chrome142', 'macOS10.15.7', '1', '密码错误', '2025-11-11 02:51:28');
INSERT INTO `login_info` VALUES (421, 'admin', '', '湖南省 长沙市', 'Chrome142', 'macOS10.15.7', '0', '登录成功', '2025-11-11 02:51:34');
INSERT INTO `login_info` VALUES (422, 'admin', '', '湖南省 长沙市', 'Chrome142', 'macOS10.15.7', '0', '登录成功', '2025-11-25 07:38:21');
INSERT INTO `login_info` VALUES (423, 'admin', '', '湖南省 长沙市', 'Chrome142', 'macOS10.15.7', '0', '登录成功', '2025-11-28 06:09:14');
INSERT INTO `login_info` VALUES (424, 'admin', '', '湖南省 长沙市', 'Chrome142', 'macOS10.15.7', '0', '登录成功', '2025-11-28 06:09:16');
INSERT INTO `login_info` VALUES (425, 'admin', '', '湖南省 长沙市', 'Chrome142', 'macOS10.15.7', '0', '登录成功', '2025-12-02 06:35:04');
INSERT INTO `login_info` VALUES (426, 'admin', '', '湖南省 长沙市', 'Chrome142', 'macOS10.15.7', '1', '密码错误', '2025-12-03 02:51:51');
INSERT INTO `login_info` VALUES (427, 'admin', '', '湖南省 长沙市', 'Chrome142', 'macOS10.15.7', '0', '登录成功', '2025-12-03 02:51:58');
INSERT INTO `login_info` VALUES (428, 'admin', '', '湖南省 长沙市', 'Chrome142', 'macOS10.15.7', '0', '登录成功', '2025-12-05 09:35:47');
COMMIT;

-- ----------------------------
-- Table structure for member_collection
-- ----------------------------
DROP TABLE IF EXISTS `member_collection`;
CREATE TABLE `member_collection` (
  `member_collection_id` int NOT NULL AUTO_INCREMENT,
  `member_user_id` int NOT NULL,
  `short_id` int NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`member_collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_collection
-- ----------------------------
BEGIN;
INSERT INTO `member_collection` VALUES (2, 1, 11, '', '', '2025-09-13 03:13:57', '', '2025-09-13 03:13:57');
INSERT INTO `member_collection` VALUES (3, 1, 12, '', '', '2025-09-13 03:13:57', '', '2025-09-13 03:13:57');
INSERT INTO `member_collection` VALUES (4, 1, 14, '', '', '2025-09-13 03:13:57', '', '2025-09-13 03:13:57');
INSERT INTO `member_collection` VALUES (5, 1, 5, '', '', '2025-09-13 03:13:57', '', '2025-09-13 03:13:57');
COMMIT;

-- ----------------------------
-- Table structure for member_coupon
-- ----------------------------
DROP TABLE IF EXISTS `member_coupon`;
CREATE TABLE `member_coupon` (
  `member_coupon_id` int NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(50) NOT NULL,
  `gold_amount` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `used_by` int DEFAULT NULL,
  `used_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  `remark` varchar(500) DEFAULT '',
  PRIMARY KEY (`member_coupon_id`),
  UNIQUE KEY `member_coupon_coupon_code_unique` (`coupon_code`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_coupon
-- ----------------------------
BEGIN;
INSERT INTO `member_coupon` VALUES (2, '4GBLQD00', 100, 0, NULL, NULL, '2025-12-30 16:00:00', '', '2025-12-02 08:17:59', '', '2025-12-02 08:17:59', '');
INSERT INTO `member_coupon` VALUES (3, 'T0BKO357', 100, 0, NULL, NULL, '2025-12-16 16:00:00', '', '2025-12-02 08:18:11', '', '2025-12-02 08:18:11', '');
INSERT INTO `member_coupon` VALUES (4, 'CNQBQTKB', 100, 0, NULL, NULL, '2025-12-30 16:00:00', '', '2025-12-02 08:21:26', '', '2025-12-02 08:21:26', '');
INSERT INTO `member_coupon` VALUES (5, 'U8RJ02GB', 100, 0, NULL, NULL, '2025-12-09 16:00:00', '', '2025-12-02 08:23:00', '', '2025-12-02 08:23:00', '');
INSERT INTO `member_coupon` VALUES (6, 'J9ZS175J', 100, 0, NULL, NULL, NULL, '', '2025-12-02 08:23:57', '', '2025-12-02 08:23:57', '');
INSERT INTO `member_coupon` VALUES (7, 'BTKNB5FA', 100, 0, NULL, NULL, NULL, '', '2025-12-02 08:23:57', '', '2025-12-02 08:23:57', '');
INSERT INTO `member_coupon` VALUES (8, '3PQM31OE', 100, 0, NULL, NULL, NULL, '', '2025-12-02 08:23:57', '', '2025-12-02 08:23:57', '');
INSERT INTO `member_coupon` VALUES (9, 'LF95RMBV', 100, 0, NULL, NULL, NULL, '', '2025-12-02 08:23:57', '', '2025-12-02 08:23:57', '');
INSERT INTO `member_coupon` VALUES (10, '3EVF0TNO', 100, 0, NULL, NULL, NULL, '', '2025-12-02 08:23:57', '', '2025-12-02 08:23:57', '');
INSERT INTO `member_coupon` VALUES (11, 'WZNWINE0', 100, 0, NULL, NULL, NULL, '', '2025-12-02 08:26:45', '', '2025-12-02 08:26:45', '');
INSERT INTO `member_coupon` VALUES (12, 'T9M6X3FL', 100, 0, NULL, NULL, NULL, '', '2025-12-02 08:26:45', '', '2025-12-02 08:26:45', '');
INSERT INTO `member_coupon` VALUES (13, 'EZC5HWI2', 100, 0, NULL, NULL, NULL, '', '2025-12-02 08:27:15', '', '2025-12-02 08:27:15', '');
INSERT INTO `member_coupon` VALUES (14, '1V6SNMF9', 100, 0, NULL, NULL, NULL, '', '2025-12-02 08:27:15', '', '2025-12-02 08:27:15', '');
INSERT INTO `member_coupon` VALUES (18, 'DIPHYDBJ', 100, 1, 4, '2025-12-02 08:48:40', NULL, 'admin', '2025-12-02 08:47:29', 'admin', '2025-12-02 08:48:40', '');
INSERT INTO `member_coupon` VALUES (19, 'E6OJTT3J', 100, 2, NULL, NULL, '2025-11-30 16:00:00', 'admin', '2025-12-02 11:40:55', 'admin', '2025-12-02 11:58:18', '');
INSERT INTO `member_coupon` VALUES (20, 'HF8F24G2', 100, 2, NULL, NULL, '2025-11-30 16:00:00', 'admin', '2025-12-02 12:01:04', 'admin', '2025-12-02 12:01:04', '');
INSERT INTO `member_coupon` VALUES (21, 'ICFIFS4V', 100, 0, NULL, NULL, NULL, 'admin', '2025-12-02 14:08:14', 'admin', '2025-12-02 14:08:14', '');
INSERT INTO `member_coupon` VALUES (22, 'Z4N774HO', 100, 0, NULL, NULL, NULL, 'admin', '2025-12-02 14:13:03', 'admin', '2025-12-02 14:13:03', '');
COMMIT;

-- ----------------------------
-- Table structure for member_favorite
-- ----------------------------
DROP TABLE IF EXISTS `member_favorite`;
CREATE TABLE `member_favorite` (
  `member_favorite_id` int NOT NULL AUTO_INCREMENT,
  `member_user_id` int NOT NULL,
  `movie_basics_id` int NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`member_favorite_id`),
  UNIQUE KEY `idx_user_movie` (`member_user_id`,`movie_basics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_favorite
-- ----------------------------
BEGIN;
INSERT INTO `member_favorite` VALUES (4, 1, 64, '', '', '2025-11-25 08:04:03', '', '2025-11-25 08:04:03');
INSERT INTO `member_favorite` VALUES (5, 1, 66, '', '', '2025-11-25 09:17:25', '', '2025-11-25 09:17:25');
COMMIT;

-- ----------------------------
-- Table structure for member_invite_code
-- ----------------------------
DROP TABLE IF EXISTS `member_invite_code`;
CREATE TABLE `member_invite_code` (
  `member_invite_code_id` int NOT NULL AUTO_INCREMENT,
  `member_user_id` int NOT NULL,
  `invite_code` varchar(8) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  `use_count` int NOT NULL DEFAULT '0',
  `max_use_count` int NOT NULL DEFAULT '0',
  `expire_time` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`member_invite_code_id`),
  UNIQUE KEY `member_invite_code_invite_code_unique` (`invite_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_invite_code
-- ----------------------------
BEGIN;
INSERT INTO `member_invite_code` VALUES (1, 1, 'IN3FTHDS', '0', 2, 0, NULL, '', '', '2025-12-05 09:20:43', '', '2025-12-05 12:00:09');
INSERT INTO `member_invite_code` VALUES (2, 5, '8NANN1QU', '0', 0, 0, NULL, '', '', '2025-12-05 09:25:15', '', '2025-12-05 08:54:28');
INSERT INTO `member_invite_code` VALUES (3, 6, '5L4D6S7W', '0', 0, 0, NULL, '', '', '2025-12-05 12:01:13', '', '2025-12-05 08:54:28');
COMMIT;

-- ----------------------------
-- Table structure for member_invite_record
-- ----------------------------
DROP TABLE IF EXISTS `member_invite_record`;
CREATE TABLE `member_invite_record` (
  `member_invite_record_id` int NOT NULL AUTO_INCREMENT,
  `inviter_id` int NOT NULL,
  `invitee_id` int NOT NULL,
  `invite_code` varchar(8) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  `inviter_reward` int NOT NULL DEFAULT '0',
  `invitee_reward` int NOT NULL DEFAULT '0',
  `reward_time` datetime DEFAULT NULL,
  `register_time` datetime NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`member_invite_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_invite_record
-- ----------------------------
BEGIN;
INSERT INTO `member_invite_record` VALUES (1, 1, 5, 'IN3FTHDS', '1', 50, 20, '2025-12-05 09:43:54', '2025-12-05 09:22:47', '', '', '2025-12-05 09:22:47', '', '2025-12-05 09:43:54');
INSERT INTO `member_invite_record` VALUES (2, 1, 6, 'IN3FTHDS', '1', 50, 20, '2025-12-05 12:04:55', '2025-12-05 12:00:09', '', '', '2025-12-05 12:00:09', '', '2025-12-05 12:04:55');
COMMIT;

-- ----------------------------
-- Table structure for member_like
-- ----------------------------
DROP TABLE IF EXISTS `member_like`;
CREATE TABLE `member_like` (
  `member_like_id` int NOT NULL AUTO_INCREMENT,
  `member_user_id` int NOT NULL,
  `short_id` int NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`member_like_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_like
-- ----------------------------
BEGIN;
INSERT INTO `member_like` VALUES (1, 2, 14, '', '', '2025-05-19 08:56:52', '', '2025-05-19 08:56:52');
INSERT INTO `member_like` VALUES (3, 2, 9, '', '', '2025-05-19 08:56:52', '', '2025-05-19 08:56:52');
INSERT INTO `member_like` VALUES (4, 1, 14, '', '', '2025-05-19 08:56:52', '', '2025-05-19 08:56:52');
INSERT INTO `member_like` VALUES (5, 1, 11, '', '', '2025-05-19 08:56:52', '', '2025-05-19 08:56:52');
INSERT INTO `member_like` VALUES (6, 1, 9, '', '', '2025-05-19 08:56:52', '', '2025-05-19 08:56:52');
INSERT INTO `member_like` VALUES (13, 1, 7, '', '', '2025-05-19 08:56:52', '', '2025-05-19 08:56:52');
INSERT INTO `member_like` VALUES (15, 2, 15, '', '', '2025-05-19 08:56:52', '', '2025-05-19 08:56:52');
INSERT INTO `member_like` VALUES (16, 2, 12, '', '', '2025-05-19 08:56:52', '', '2025-05-19 08:56:52');
INSERT INTO `member_like` VALUES (17, 2, 11, '', '', '2025-05-19 08:56:52', '', '2025-05-19 08:56:52');
INSERT INTO `member_like` VALUES (32, 1, 5, '', '', '2025-09-13 03:13:57', '', '2025-09-13 03:13:57');
COMMIT;

-- ----------------------------
-- Table structure for member_movie
-- ----------------------------
DROP TABLE IF EXISTS `member_movie`;
CREATE TABLE `member_movie` (
  `member_movie_id` int NOT NULL AUTO_INCREMENT,
  `member_user_id` int NOT NULL,
  `movie_basics_id` int NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`member_movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_movie
-- ----------------------------
BEGIN;
INSERT INTO `member_movie` VALUES (1, 1, 64, '', '', '2025-05-14 08:40:30', '', '2025-05-14 08:25:28');
COMMIT;

-- ----------------------------
-- Table structure for member_order
-- ----------------------------
DROP TABLE IF EXISTS `member_order`;
CREATE TABLE `member_order` (
  `member_order_id` int NOT NULL AUTO_INCREMENT,
  `member_user_id` int NOT NULL,
  `out_trade_no` varchar(50) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `total_amount` int NOT NULL,
  `status` varchar(20) DEFAULT 'NOTPAY',
  `paid_at` datetime DEFAULT NULL,
  `query_count` int DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`member_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for member_rate
-- ----------------------------
DROP TABLE IF EXISTS `member_rate`;
CREATE TABLE `member_rate` (
  `member_rate_id` int NOT NULL AUTO_INCREMENT,
  `member_user_id` int NOT NULL,
  `movie_basics_id` int NOT NULL,
  `rate` int DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`member_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_rate
-- ----------------------------
BEGIN;
INSERT INTO `member_rate` VALUES (14, 1, 52, 8, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `member_rate` VALUES (15, 1, 40, 9, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `member_rate` VALUES (16, 1, 48, 6, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `member_rate` VALUES (17, 1, 49, 8, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `member_rate` VALUES (18, 1, 53, 9, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `member_rate` VALUES (19, 1, 54, 9, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `member_rate` VALUES (20, 1, 33, 10, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `member_rate` VALUES (21, 2, 30, 7, '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `member_rate` VALUES (22, 2, 29, 6, '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `member_rate` VALUES (23, 2, 18, 5, '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `member_rate` VALUES (24, 1, 66, 7, '', '', '2025-09-26 14:10:49', '', '2025-09-26 14:10:49');
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
  `login_date` datetime NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  `birthday` date DEFAULT NULL,
  `sex` char(1) NOT NULL DEFAULT '0',
  `introduction` varchar(500) DEFAULT '',
  PRIMARY KEY (`member_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_user
-- ----------------------------
BEGIN;
INSERT INTO `member_user` VALUES (1, '542968439@qq.com', '512fbd59e5d63f9624cb2bf57592549d', '前端老鹰', NULL, 'http://localhost:3000/uploads/2025-11-21/jsnBVM6zb.jpeg', 'lapn6iUXnzfdrRjmhmZWY', '0', '127.0.0.1', '2025-12-05 12:04:30', '', '', '2025-04-28 08:28:35', '', '2025-11-21 07:28:27', '2025-04-01', '1', 'Hi，你好！我的朋友~ 跟我一起探索更多前端动效，体验新Cs...');
INSERT INTO `member_user` VALUES (2, '542968430@qq.com', '512fbd59e5d63f9624cb2bf57592549d', '芝士焗月亮', NULL, 'https://cms.yinchunyu.com/uploads/2025-05-13/diSQllSAy.jpeg', 'lapn6iUXnzfdrRjmhmZWY', '0', '119.39.23.122', '2025-05-19 09:18:03', '', '', '2025-04-28 08:28:35', '', '2025-05-13 08:12:56', '2025-04-01', '1', 'Hi，你好！我的朋友~ 跟我一起探索更多前端动效，体验新Cs...');
INSERT INTO `member_user` VALUES (3, '54296843@qq.com', '', 'DTdC1v', NULL, 'http://localhost:3000/images/toux.png', '', '1', '', '2025-12-02 06:59:30', '', '', '2025-12-02 06:59:30', '', '2025-11-25 09:17:25', NULL, '0', '');
INSERT INTO `member_user` VALUES (4, '542968431@qq.com', '', '9Mnutk', NULL, 'http://localhost:3000/images/toux.png', '', '0', '', '2025-12-02 07:03:16', '', '', '2025-12-02 07:03:16', '', '2025-11-25 09:17:25', NULL, '0', '');
INSERT INTO `member_user` VALUES (5, '54219684@qq.com', '', 'xSwtn7', NULL, 'http://localhost:3000/images/toux.png', '', '0', '', '2025-12-05 09:45:58', '', '', '2025-12-05 09:22:47', '', '2025-12-05 08:54:28', NULL, '0', '');
INSERT INTO `member_user` VALUES (6, '543837485@qq.com', '', 'E6IMcq', NULL, 'http://localhost:3000/images/toux.png', '', '0', '', '2025-12-05 12:00:09', '', '', '2025-12-05 12:00:09', '', '2025-12-05 08:54:28', NULL, '0', '');
COMMIT;

-- ----------------------------
-- Table structure for member_wallet
-- ----------------------------
DROP TABLE IF EXISTS `member_wallet`;
CREATE TABLE `member_wallet` (
  `member_wallet_id` int NOT NULL AUTO_INCREMENT,
  `member_user_id` int NOT NULL,
  `gold` int NOT NULL DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`member_wallet_id`),
  UNIQUE KEY `member_wallet_member_user_id_unique` (`member_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_wallet
-- ----------------------------
BEGIN;
INSERT INTO `member_wallet` VALUES (1, 1, 191, '', '', '2025-05-14 08:25:28', '', '2025-05-14 08:40:30');
INSERT INTO `member_wallet` VALUES (2, 3, 100, '', '', '2025-11-25 09:17:25', '', '2025-11-25 09:17:25');
INSERT INTO `member_wallet` VALUES (3, 4, 200, '', '', '2025-11-25 09:17:25', '', '2025-11-25 09:17:25');
INSERT INTO `member_wallet` VALUES (4, 5, 100, '', '', '2025-12-05 08:54:28', '', '2025-12-05 08:54:28');
INSERT INTO `member_wallet` VALUES (5, 6, 120, '', '', '2025-12-05 08:54:28', '', '2025-12-05 08:54:28');
COMMIT;

-- ----------------------------
-- Table structure for member_wallet_log
-- ----------------------------
DROP TABLE IF EXISTS `member_wallet_log`;
CREATE TABLE `member_wallet_log` (
  `member_wallet_log_id` int NOT NULL AUTO_INCREMENT,
  `member_user_id` int NOT NULL,
  `gold` int NOT NULL,
  `type` char(1) NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`member_wallet_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_wallet_log
-- ----------------------------
BEGIN;
INSERT INTO `member_wallet_log` VALUES (1, 1, 100, '1', '充值 +100', '', '2025-05-14 08:40:13', '', '2025-05-14 08:25:28');
INSERT INTO `member_wallet_log` VALUES (2, 1, 90, '2', '购买影片:有病才会喜欢你 -10', '', '2025-05-14 08:40:30', '', '2025-05-14 08:25:28');
INSERT INTO `member_wallet_log` VALUES (3, 1, 91, '1', '充值 +1', '', '2025-05-15 03:51:11', '', '2025-05-14 08:25:28');
INSERT INTO `member_wallet_log` VALUES (4, 4, 100, '1', '注册奖励 +100', '', '2025-12-02 07:03:16', '', '2025-11-25 09:17:25');
INSERT INTO `member_wallet_log` VALUES (5, 4, 200, '1', '兑换券兑换 +100', '', '2025-12-02 08:48:40', '', '2025-12-02 07:28:00');
INSERT INTO `member_wallet_log` VALUES (7, 5, 100, '1', '注册奖励 +100', '', '2025-12-05 09:22:47', '', '2025-12-05 08:54:28');
INSERT INTO `member_wallet_log` VALUES (8, 1, 141, '1', '充值 +50', '', '2025-12-05 09:43:54', '', '2025-12-05 08:54:28');
INSERT INTO `member_wallet_log` VALUES (9, 1, 50, '1', '邀请奖励 +50 (被邀请者: 5)', '', '2025-12-05 09:43:54', '', '2025-12-05 08:54:28');
INSERT INTO `member_wallet_log` VALUES (10, 6, 100, '1', '注册奖励 +100', '', '2025-12-05 12:00:09', '', '2025-12-05 08:54:28');
INSERT INTO `member_wallet_log` VALUES (11, 6, 120, '1', '充值 +20', '', '2025-12-05 12:00:09', '', '2025-12-05 08:54:28');
INSERT INTO `member_wallet_log` VALUES (12, 6, 20, '1', '邀请奖励 +20', '', '2025-12-05 12:00:09', '', '2025-12-05 08:54:28');
INSERT INTO `member_wallet_log` VALUES (13, 1, 191, '1', '邀请奖励 +50 (被邀请者: E6IMcq) +50', '', '2025-12-05 12:04:55', '', '2025-12-05 08:54:28');
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `menu` VALUES (98, '基础数据', 3, 'basic', NULL, NULL, 1, '0', 'M', '0', '0', NULL, 'tab', 0, '', '', 'admin', '2025-01-02 01:49:54', 'laoying', '2025-05-09 07:43:18');
INSERT INTO `menu` VALUES (99, '国家管理', 1, 'country', 'basic/country/index', NULL, 1, '0', 'C', '0', '0', NULL, 'peoples', 98, '99.', '', 'admin', '2025-01-02 01:49:54', 'admin', '2025-01-02 01:49:54');
INSERT INTO `menu` VALUES (100, '语言管理', 2, 'language', 'basic/language/index', NULL, 1, '0', 'C', '0', '0', NULL, 'nested', 98, '100.', '', 'admin', '2025-01-02 01:49:54', 'admin', '2025-01-02 01:49:54');
INSERT INTO `menu` VALUES (101, '类型管理', 3, 'genre', 'basic/genre/index', NULL, 1, '0', 'C', '0', '0', NULL, 'row', 98, '101.', '', 'admin', '2025-01-02 01:49:54', 'admin', '2025-01-02 01:49:54');
INSERT INTO `menu` VALUES (102, '影人职务', 4, 'profession', 'basic/profession/index', NULL, 1, '0', 'C', '0', '0', NULL, 'peoples', 98, '102.', '', 'admin', '2025-01-02 01:49:54', 'admin', '2025-01-02 01:49:54');
INSERT INTO `menu` VALUES (103, '家长引导', 5, 'level', 'basic/level/index', NULL, 1, '0', 'C', '0', '0', NULL, 'server', 98, '103.', '', 'admin', '2025-01-02 01:49:54', 'admin', '2025-01-02 01:49:54');
INSERT INTO `menu` VALUES (104, '栏目管理', 1, 'column', 'basic/column/index', NULL, 1, '0', 'C', '0', '0', NULL, 'tree-table', 98, '104.', '', 'admin', '2025-02-14 02:41:05', 'admin', '2025-02-14 02:49:22');
INSERT INTO `menu` VALUES (105, '横幅管理', 5, 'banner', 'basic/banner/index', NULL, 1, '0', 'C', '0', '0', NULL, 'druid', 98, '105.', '', 'admin', '2025-02-14 02:41:05', 'admin', '2025-02-14 02:41:05');
INSERT INTO `menu` VALUES (106, '影视管理', 1, 'movie', NULL, NULL, 1, '0', 'M', '0', '0', NULL, 'redis-list', 0, '', '', 'admin', '2025-04-03 03:25:01', 'admin', '2025-04-03 03:25:01');
INSERT INTO `menu` VALUES (107, '影人列表', 3, 'actor', 'movie/actor/list/index', NULL, 1, '0', 'C', '0', '0', NULL, 'list', 106, '107.', '', 'admin', '2025-04-03 03:25:01', 'laoying', '2025-04-25 03:28:49');
INSERT INTO `menu` VALUES (108, '视频列表', 2, 'video', 'movie/video/list/index', NULL, 1, '0', 'C', '0', '0', NULL, 'list', 106, '108.', '', 'admin', '2025-04-03 03:25:01', 'admin', '2025-04-03 06:03:12');
INSERT INTO `menu` VALUES (109, '影视列表', 1, 'movieList', 'movie/list/index', NULL, 1, '0', 'C', '0', '0', NULL, 'list', 106, '109.', '', 'admin', '2025-04-03 06:22:02', 'admin', '2025-05-21 07:21:39');
INSERT INTO `menu` VALUES (110, '文件配置', 8, 'file-config', 'system/file-config/index', NULL, 1, '0', 'C', '0', '0', 'system:file-config:list', 'documentation', 1, '1.110.', '', 'laoying', '2025-04-18 08:56:56', 'laoying', '2025-04-18 08:56:56');
INSERT INTO `menu` VALUES (111, '会员中心', 4, 'member', NULL, NULL, 1, '0', 'M', '0', '0', NULL, 'peoples', 0, '', '', 'laoying', '2025-04-28 08:24:00', 'laoying', '2025-05-09 07:43:23');
INSERT INTO `menu` VALUES (112, '会员管理', 1, 'users', 'member/user/index', NULL, 1, '0', 'C', '0', '0', NULL, 'user', 111, '112.', '', 'laoying', '2025-04-28 08:24:00', 'laoying', '2025-04-28 08:24:00');
INSERT INTO `menu` VALUES (113, '短视频', 2, 'shorts', NULL, NULL, 1, '0', 'M', '0', '0', NULL, 'example', 0, '', '', 'laoying', '2025-05-08 08:41:52', 'laoying', '2025-05-08 08:41:52');
INSERT INTO `menu` VALUES (114, '视频管理', 1, 'short', 'short/list/index', NULL, 1, '0', 'C', '0', '0', NULL, 'international', 113, '114.', '', 'laoying', '2025-05-08 08:41:52', 'laoying', '2025-05-08 08:41:52');
INSERT INTO `menu` VALUES (115, '评论管理', 4, 'comment', 'movie/comment/list/index', NULL, 1, '0', 'C', '0', '0', NULL, 'list', 106, '115.', '', 'laoying', '2025-05-13 06:14:56', 'laoying', '2025-05-13 06:14:56');
INSERT INTO `menu` VALUES (116, '订单列表', 2, 'member-order', 'member/orders/index', NULL, 1, '0', 'C', '0', '0', NULL, 'money', 111, '116.', '', 'laoying', '2025-05-15 08:33:31', 'laoying', '2025-05-15 08:33:31');
INSERT INTO `menu` VALUES (117, '兑换券', 3, 'coupon', 'member/coupon/index', NULL, 1, '0', 'C', '0', '0', NULL, 'shopping', 111, '117.', '', 'admin', '2025-12-02 07:28:00', 'admin', '2025-12-02 07:31:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_basic_to_country
-- ----------------------------
BEGIN;
INSERT INTO `movie_basic_to_country` VALUES (2, 51, 1);
INSERT INTO `movie_basic_to_country` VALUES (3, 29, 9);
INSERT INTO `movie_basic_to_country` VALUES (4, 49, 1);
INSERT INTO `movie_basic_to_country` VALUES (5, 32, 2);
INSERT INTO `movie_basic_to_country` VALUES (6, 53, 1);
INSERT INTO `movie_basic_to_country` VALUES (7, 52, 1);
INSERT INTO `movie_basic_to_country` VALUES (8, 54, 1);
INSERT INTO `movie_basic_to_country` VALUES (9, 55, 1);
INSERT INTO `movie_basic_to_country` VALUES (10, 56, 1);
INSERT INTO `movie_basic_to_country` VALUES (11, 57, 1);
INSERT INTO `movie_basic_to_country` VALUES (12, 58, 1);
INSERT INTO `movie_basic_to_country` VALUES (13, 59, 1);
INSERT INTO `movie_basic_to_country` VALUES (14, 60, 1);
INSERT INTO `movie_basic_to_country` VALUES (15, 61, 1);
INSERT INTO `movie_basic_to_country` VALUES (18, 63, 8);
INSERT INTO `movie_basic_to_country` VALUES (21, 64, 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `movie_basic_to_genre` VALUES (11, 42, 6);
INSERT INTO `movie_basic_to_genre` VALUES (12, 42, 12);
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
INSERT INTO `movie_basic_to_genre` VALUES (27, 31, 6);
INSERT INTO `movie_basic_to_genre` VALUES (28, 31, 10);
INSERT INTO `movie_basic_to_genre` VALUES (29, 30, 3);
INSERT INTO `movie_basic_to_genre` VALUES (30, 30, 7);
INSERT INTO `movie_basic_to_genre` VALUES (31, 25, 14);
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
INSERT INTO `movie_basic_to_genre` VALUES (47, 17, 7);
INSERT INTO `movie_basic_to_genre` VALUES (48, 18, 7);
INSERT INTO `movie_basic_to_genre` VALUES (61, 4, 6);
INSERT INTO `movie_basic_to_genre` VALUES (62, 4, 10);
INSERT INTO `movie_basic_to_genre` VALUES (63, 4, 11);
INSERT INTO `movie_basic_to_genre` VALUES (68, 50, 14);
INSERT INTO `movie_basic_to_genre` VALUES (77, 51, 14);
INSERT INTO `movie_basic_to_genre` VALUES (78, 29, 13);
INSERT INTO `movie_basic_to_genre` VALUES (79, 29, 7);
INSERT INTO `movie_basic_to_genre` VALUES (80, 49, 14);
INSERT INTO `movie_basic_to_genre` VALUES (81, 32, 8);
INSERT INTO `movie_basic_to_genre` VALUES (82, 32, 9);
INSERT INTO `movie_basic_to_genre` VALUES (83, 32, 7);
INSERT INTO `movie_basic_to_genre` VALUES (84, 53, 22);
INSERT INTO `movie_basic_to_genre` VALUES (85, 52, 10);
INSERT INTO `movie_basic_to_genre` VALUES (86, 52, 11);
INSERT INTO `movie_basic_to_genre` VALUES (87, 54, 26);
INSERT INTO `movie_basic_to_genre` VALUES (88, 55, 22);
INSERT INTO `movie_basic_to_genre` VALUES (89, 56, 22);
INSERT INTO `movie_basic_to_genre` VALUES (90, 57, 22);
INSERT INTO `movie_basic_to_genre` VALUES (91, 58, 22);
INSERT INTO `movie_basic_to_genre` VALUES (92, 59, 26);
INSERT INTO `movie_basic_to_genre` VALUES (93, 60, 26);
INSERT INTO `movie_basic_to_genre` VALUES (94, 61, 26);
INSERT INTO `movie_basic_to_genre` VALUES (97, 63, 27);
INSERT INTO `movie_basic_to_genre` VALUES (115, 64, 10);
INSERT INTO `movie_basic_to_genre` VALUES (116, 64, 7);
INSERT INTO `movie_basic_to_genre` VALUES (117, 64, 3);
INSERT INTO `movie_basic_to_genre` VALUES (121, 48, 6);
INSERT INTO `movie_basic_to_genre` VALUES (122, 48, 11);
INSERT INTO `movie_basic_to_genre` VALUES (123, 48, 10);
INSERT INTO `movie_basic_to_genre` VALUES (126, 66, 12);
INSERT INTO `movie_basic_to_genre` VALUES (127, 66, 10);
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`movie_basics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_basics
-- ----------------------------
BEGIN;
INSERT INTO `movie_basics` VALUES (1, '0', '2', NULL, '大宋少年志2', 'https://cms.yinchunyu.com/uploads/2025-04-03/3I4O3ob3p.png', NULL, NULL, NULL, NULL, 'tv', 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 2, '0', '国语', '剧情,古装', '<p>庆历年间，北宋为免除战事，维护各民族间的和平与稳定，借秘阁之名培训少年暗探。经过严密的选拔和审查，聪慧的元仲辛、美貌机敏的赵简、从不杀生的小景、绝不说谎的王宽、不爱交流的薛映、性格开朗的韦衙内六位少年组成了秘阁第七斋。在经历了一次次生死相关的任务后，曾经年轻懵懂的少年们逐渐成长，他们彼此团结，用自己的热血和忠诚为保卫和平献身消除大宋面临的灾难。遍体鳞伤的少年们，终于可以踏上归家之路，他们为国而战，百死无悔，同时他们也相信，未来的岁月里，会有更多少年，为了理想而战，不懂后退，世界总是被这样的少年点亮，那是名为希望的光芒。</p>', 1, 5, 1, '', '', '2025-04-03 12:28:21', '', '2025-04-12 15:40:47');
INSERT INTO `movie_basics` VALUES (4, '0', '0', NULL, '黑金风暴', 'https://cms.yinchunyu.com/uploads/2025-04-10/4439CRCAd.jpeg', NULL, NULL, NULL, NULL, 'movie', 2022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '汉语普通话,英语', '动作,剧情,战争,爱情', '<p>索马里海域外，中国商船遭遇劫持，船员全数沦为阶下囚。蛟龙突击队沉着应对，潜入商船进行突袭，成功解救全部人质。 返航途中，非洲北部伊维亚共和国发生政变，恐怖组织连同叛军攻入首都，当地华侨面临危险，海军战舰接到上级命令改变航向，前往执行撤侨任务。蛟龙突击队八人，整装待发。 时间紧迫，在&ldquo;撤侨遇袭可反击，相反则必须避免交火，以免引起外交冲突&rdquo;的大原则下，海军战舰及蛟龙突击队深入伊维亚，在恶劣的环境之下，借助海陆等多种装备，成功营救了被恐怖分子追击的中国领事馆巴士。 然而事情尚未完结，就在掩护华侨撤离之际，蛟龙突击队即将遭遇的远不止人质营救那么简单，恐怖分子的惊天阴谋即将浮出水面。</p>', 0, 0, 1, '', '', '2025-04-03 12:28:21', '', '2025-04-15 14:30:43');
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
INSERT INTO `movie_basics` VALUES (29, '0', '2', '2024-11-29', '痴人之爱', 'https://cms.yinchunyu.com/uploads/2025-04-12/aRRL0SYlm.jpeg', NULL, NULL, '痴人の愛', NULL, 'movie', 2024, NULL, '106', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', '日语', NULL, '<p>本作的主人公是河合譲治，他是一名曾在剧本比赛中获奖但至今未能正式出道的剧作家。故事从他在一家萧条的酒吧遇到一位自称为直美的女性开始展开。某天，譲治代替剧本课程的讲师，接下了改编自谷崎润一郎的《痴人之爱》的电影剧本创作任务。在创作过程中，譲治苦于写作瓶颈，与直美再次相遇并在关系逐渐加深中，经历了一段既甜蜜又苦涩且疯狂的时光。</p>', 0, 0, 1, '', 'laoying', '2025-04-12 02:20:18', 'laoying', '2025-04-22 06:28:56');
INSERT INTO `movie_basics` VALUES (30, '0', '0', NULL, '好东西', 'https://cms.yinchunyu.com/uploads/2025-04-12/ryWdsk8AM.jpeg', NULL, NULL, NULL, '爱情神话平行篇：好东西,爱情神话·平行篇,爱情神话2,Herstory,Her Story', 'movie', 2024, NULL, '123', NULL, '2D', NULL, '0', NULL, NULL, NULL, NULL, NULL, '汉语普通话', NULL, '<p>　　爱逞强的单亲妈妈王铁梅（宋佳 饰）带小孩王茉莉（曾慕梅 饰）搬到新家，结识了所谓清醒恋爱脑的邻居小叶（钟楚曦 饰）。两位性格迥异的女性，一个坚强，一个柔软，一个擅长给人当妈，一个擅长随时撒谎。面对旧创伤和新挑战，她们彼此温暖互相慰藉。<br>　　而围绕王铁梅的两个男人，前夫（赵又廷 饰）不时&ldquo;添乱&rdquo;，女儿的鼓手老师（章宇 饰）似乎充满新的可能。作为已经觉醒的女人们和学习过性别议题的男人们，会遇到什么新问题？会如何看待自己和世界？</p>', 0, 0, 1, '', 'laoying', '2025-04-12 02:30:15', 'laoying', '2025-04-12 15:36:23');
INSERT INTO `movie_basics` VALUES (31, '0', '0', NULL, '焚城', 'https://cms.yinchunyu.com/uploads/2025-04-12/txhRHXQzz.jpeg', NULL, NULL, NULL, NULL, 'movie', 2025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '汉语普通话,粤语', NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 02:44:02', 'laoying', '2025-04-12 15:36:08');
INSERT INTO `movie_basics` VALUES (32, '0', '0', NULL, '峡谷', 'https://cms.yinchunyu.com/uploads/2025-04-12/axmynovlW.jpeg', NULL, NULL, NULL, NULL, 'movie', 2025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '英语', '爱情,恐怖,科幻,冒险', NULL, 0, 0, 1, '', 'laoying', '2025-04-12 05:32:37', 'laoying', '2025-04-22 06:30:03');
INSERT INTO `movie_basics` VALUES (33, '0', '0', NULL, '夏洛特烦恼', 'https://cms.yinchunyu.com/uploads/2025-04-12/b6TaNUUx6.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '汉语普通话', NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 10:52:44', 'laoying', '2025-04-12 15:35:25');
INSERT INTO `movie_basics` VALUES (35, '0', '0', NULL, '警察故事续集', 'https://cms.yinchunyu.com/uploads/2025-04-12/PiPiER55m.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 10:55:22', 'laoying', '2025-04-12 15:35:10');
INSERT INTO `movie_basics` VALUES (36, '0', '0', NULL, '红海行动', 'https://cms.yinchunyu.com/uploads/2025-04-12/G2LiBGcNH.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 10:58:07', 'laoying', '2025-04-12 15:34:56');
INSERT INTO `movie_basics` VALUES (37, '0', '0', NULL, '杀破狼2', 'https://cms.yinchunyu.com/uploads/2025-04-12/yDPDwuEN0.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 10:58:40', 'laoying', '2025-04-12 15:34:43');
INSERT INTO `movie_basics` VALUES (39, '0', '0', NULL, '西虹市首富', 'https://cms.yinchunyu.com/uploads/2025-04-12/NQL9atp59.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 10:59:44', 'laoying', '2025-04-12 15:34:34');
INSERT INTO `movie_basics` VALUES (40, '0', '0', NULL, '我是谁', 'https://cms.yinchunyu.com/uploads/2025-04-12/cZHKW7D4Q.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:00:34', 'laoying', '2025-04-12 15:34:20');
INSERT INTO `movie_basics` VALUES (42, '0', '0', NULL, '湄公河行动', 'https://cms.yinchunyu.com/uploads/2025-04-12/dAkYv2CYY.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:01:20', 'laoying', '2025-04-12 15:34:02');
INSERT INTO `movie_basics` VALUES (43, '0', '0', NULL, '扫毒', 'https://cms.yinchunyu.com/uploads/2025-04-12/xL9HV0k7r.jpeg', NULL, NULL, NULL, NULL, 'movie', 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:03:25', 'laoying', '2025-04-12 15:33:53');
INSERT INTO `movie_basics` VALUES (44, '0', '0', NULL, '九层妖塔', 'https://cms.yinchunyu.com/uploads/2025-04-12/cGkxCjQB4.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:04:02', 'laoying', '2025-04-12 15:33:40');
INSERT INTO `movie_basics` VALUES (45, '0', '0', NULL, '敢死队3', 'https://cms.yinchunyu.com/uploads/2025-04-12/gMXPeqiTP.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:04:42', 'laoying', '2025-04-12 15:33:31');
INSERT INTO `movie_basics` VALUES (46, '0', '0', NULL, '唐人街探案', 'https://cms.yinchunyu.com/uploads/2025-04-12/VgDMfRrvr.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:05:36', 'laoying', '2025-04-12 15:33:22');
INSERT INTO `movie_basics` VALUES (47, '0', '0', NULL, '寻龙诀', 'https://cms.yinchunyu.com/uploads/2025-04-12/gCXtYPbHP.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-12 11:06:28', 'laoying', '2025-04-12 15:33:12');
INSERT INTO `movie_basics` VALUES (48, '0', '0', NULL, '超级保镖', 'https://cms.yinchunyu.com/uploads/2025-04-12/84WAoRlXO.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, '2D', 1, '0', NULL, NULL, NULL, NULL, '1', '汉语普通话', '动作,爱情,战争,剧情', '<p>索马里海域外，中国商船遭遇劫持，船员全数沦为阶下囚。蛟龙突击队沉着应对，潜入商船进行突袭，成功解救全部人质。 返航途中，非洲北部伊维亚共和国发生政变，恐怖组织连同叛军攻入首都，当地华侨面临危险，海军战舰接到上级命令改变航向，前往执行撤侨任务。蛟龙突击队八人，整装待发。 时间紧迫，在&ldquo;撤侨遇袭可反击，相反则必须避免交火，以免引起外交冲突&rdquo;的大原则下，海军战舰及蛟龙突击队深入伊维亚，在恶劣的环境之下，借助海陆等多种装备，成功营救了被恐怖分子追击的中国领事馆巴士。 然而事情尚未完结，就在掩护华侨撤离之际，蛟龙突击队即将遭遇的远不止人质营救那么简单，恐怖分子的惊天阴谋即将浮出水面。</p>', 1, 1000, 1, '', 'laoying', '2025-04-12 15:54:29', 'laoying', '2025-10-22 07:37:52');
INSERT INTO `movie_basics` VALUES (49, '0', '0', '2000-01-01', '西游记续集', 'https://cms.yinchunyu.com/uploads/2025-04-17/Asa1rRcy0.jpeg', NULL, NULL, NULL, NULL, 'tv', 2000, NULL, NULL, NULL, '2D', NULL, '0', NULL, NULL, 16, 16, '1', '汉语普通话', '玄幻,四大名著', '<p>经过九九八十一难，唐僧师徒四人终于到达灵山，求取真经。修得正果，师徒一行驾云回到都城长安，见到唐王李世民，并向其讲述了取经的经过。 话说这一路真可谓艰难险阻，困难重重。通天河有灵感大王阻断行程，伤害性命；狮驼岭又有来自灵山的三神兽为妖作怪；期间更有师徒心生嫌隙，导致六耳猕猴趁虚而入，上演真假美猴王的好戏；更有金平府犀牛怪假冒佛祖，欺世盗名，引来天兵天将除妖。这万里艰辛，一言难尽&hellip;&hellip;</p>', 0, 0, 1, '', 'laoying', '2025-04-17 08:39:24', 'laoying', '2025-04-22 06:29:19');
INSERT INTO `movie_basics` VALUES (50, '0', '0', NULL, '洪武大案', 'https://cms.yinchunyu.com/uploads/2025-04-17/PkpUjSmUZ.jpeg', NULL, NULL, NULL, NULL, 'tv', 2012, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '汉语普通话', '历史', NULL, 0, 0, 1, '', 'laoying', '2025-04-17 08:42:49', 'laoying', '2025-04-17 08:42:49');
INSERT INTO `movie_basics` VALUES (51, '0', '0', NULL, '危情实录', 'https://cms.yinchunyu.com/uploads/2025-04-18/RNChsREIl.jpeg', NULL, NULL, NULL, NULL, 'tv', 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 24, '1', '汉语普通话', '犯罪,感情', NULL, 0, 0, 1, '', 'laoying', '2025-04-18 09:09:29', 'laoying', '2025-04-22 06:28:26');
INSERT INTO `movie_basics` VALUES (52, '0', '0', NULL, '私家侦探', 'https://cms.yinchunyu.com/uploads/2025-04-27/G8ajR47q7.png', NULL, NULL, NULL, '尾随,Behind The Shadows', 'movie', 2025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '粤语', '犯罪,悬疑', NULL, 0, 0, 1, '', 'laoying', '2025-04-19 14:10:49', 'laoying', '2025-04-27 14:09:13');
INSERT INTO `movie_basics` VALUES (53, '0', '0', NULL, '斗破苍穹 年番3', 'https://cms.yinchunyu.com/uploads/2025-04-23/bWqZen8hb.png', NULL, NULL, NULL, NULL, 'cartoon', 2024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '汉语普通话', '动作,动画,奇幻,冒险', NULL, 0, 0, 1, '', 'laoying', '2025-04-23 14:59:20', 'laoying', '2025-04-23 14:59:20');
INSERT INTO `movie_basics` VALUES (54, '0', '0', NULL, '我也想过我刷到的人生啊', 'https://cms.yinchunyu.com/uploads/2025-04-27/j5CMJjjSE.jpeg', NULL, NULL, NULL, NULL, 'variety', 2025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 2, '0', '汉语普通话', NULL, NULL, 0, 0, 1, '', 'laoying', '2025-04-27 14:29:26', 'laoying', '2025-04-27 14:29:26');
INSERT INTO `movie_basics` VALUES (55, '0', '0', NULL, '盟卡车神之魔幻元珠第三季', 'https://cms.yinchunyu.com/uploads/2025-05-04/VLXIfOEVd.jpeg', NULL, NULL, NULL, NULL, 'cartoon', 2022, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '汉语普通话', NULL, NULL, 0, 0, 1, '', 'laoying', '2025-05-04 05:20:33', 'laoying', '2025-05-04 05:20:33');
INSERT INTO `movie_basics` VALUES (56, '0', '0', NULL, '爆裂飞车第三季：兽神合体', 'https://cms.yinchunyu.com/uploads/2025-05-04/YRkpJpMLG.jpeg', NULL, NULL, NULL, NULL, 'cartoon', 2022, NULL, NULL, NULL, '2D', 1, '0', NULL, NULL, NULL, NULL, NULL, '汉语普通话', NULL, NULL, 0, 0, 1, '', 'laoying', '2025-05-04 05:23:09', 'laoying', '2025-05-04 05:23:09');
INSERT INTO `movie_basics` VALUES (57, '0', '0', NULL, '精灵梦叶罗丽第三季', 'https://cms.yinchunyu.com/uploads/2025-05-04/DrLXglfXy.jpeg', NULL, NULL, NULL, NULL, 'cartoon', 2022, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '汉语普通话', NULL, NULL, 0, 0, 1, '', 'laoying', '2025-05-04 05:23:58', 'laoying', '2025-05-04 05:23:58');
INSERT INTO `movie_basics` VALUES (58, '0', '0', NULL, '霹雳勇士之元气勇者', 'https://cms.yinchunyu.com/uploads/2025-05-04/g2JNUBP8X.jpeg', NULL, NULL, NULL, NULL, 'cartoon', 2022, NULL, NULL, NULL, '2D', NULL, '0', NULL, NULL, NULL, NULL, '1', '汉语普通话', NULL, NULL, 0, 0, 1, '', 'laoying', '2025-05-04 05:25:38', 'laoying', '2025-05-04 05:25:38');
INSERT INTO `movie_basics` VALUES (59, '0', '0', NULL, '宠物医生第二季', 'https://cms.yinchunyu.com/uploads/2025-05-04/woyO1FkDT.jpeg', NULL, NULL, NULL, NULL, 'variety', 2022, NULL, NULL, NULL, '2D', NULL, '0', NULL, NULL, NULL, NULL, NULL, '汉语普通话', NULL, NULL, 0, 0, 1, '', 'laoying', '2025-05-04 05:27:15', 'laoying', '2025-05-04 05:27:15');
INSERT INTO `movie_basics` VALUES (60, '0', '0', NULL, '跟着爸爸去露营', 'https://cms.yinchunyu.com/uploads/2025-05-04/izTOD4aMe.jpeg', NULL, NULL, NULL, NULL, 'variety', 2022, NULL, NULL, NULL, '2D', NULL, '0', NULL, NULL, NULL, NULL, NULL, '汉语普通话', NULL, NULL, 0, 0, 1, '', 'laoying', '2025-05-04 05:28:17', 'laoying', '2025-05-04 05:28:17');
INSERT INTO `movie_basics` VALUES (61, '0', '0', NULL, '奇妙热榜挑战派对', 'https://cms.yinchunyu.com/uploads/2025-05-04/rnXHGuDDH.jpeg', NULL, NULL, NULL, NULL, 'variety', 2022, NULL, NULL, NULL, '2D', NULL, '0', NULL, NULL, NULL, NULL, NULL, '汉语普通话', NULL, NULL, 0, 0, 1, '', 'laoying', '2025-05-04 05:29:03', 'laoying', '2025-05-04 05:29:03');
INSERT INTO `movie_basics` VALUES (63, '0', '0', NULL, '孝利家民宿 第一季', 'https://cms.yinchunyu.com/uploads/2025-05-11/ptnz0hy44.png', NULL, NULL, '효리네민박', NULL, 'variety', 2017, NULL, NULL, NULL, '2D', NULL, '0', 1, 1, 14, 14, NULL, '韩语', NULL, '<p>《孝利家民宿》为韩国JTBC的综艺节目，由李孝利主持，节目背景为李孝利与丈夫李尚顺音乐家在韩国济州岛开设的民宿，并邀请IU担任民宿职员。节目事前透过官网发布，开放所有人申请，并由制作单位通知成功住宿者；节目从5月19日连续开拍11天，而于5月30日结束拍摄，预计于2017年6月中播出，将有12集。</p>\n<p>节目每集将记录李孝利、李孝利丈夫、IU与入住房客所有发生的互动点滴与故事。</p>', 0, 0, 1, '', 'laoying', '2025-05-11 14:08:06', 'laoying', '2025-05-11 14:12:39');
INSERT INTO `movie_basics` VALUES (64, '0', '1', NULL, '有病才会喜欢你', 'https://cms.yinchunyu.com/uploads/2025-05-13/ao4kZx9Xv.png', NULL, NULL, NULL, 'Lovesick', 'movie', 2025, NULL, '111', NULL, '2D', NULL, '0', NULL, NULL, NULL, NULL, NULL, '汉语普通话', '爱情,剧情,青春', '我们忘不掉的是青春，还是青春里的那个人呢？一个是吊儿郎当，活在当下的学渣叶子杰（詹怀云 饰），在面临退学危机时，意外发现装病似乎可以逃过一劫？一个是沉稳内敛，渴望未来的学霸叶梓洁（江齐 饰），她仿佛装了测谎雷达，总会找到叶子杰疑似装病的证据！两个人相似的名字暗示了他们注定交织的命运。原本水火不相容的他们，因为这场&ldquo;有病&rdquo;乌龙，在一次次谍对谍的较量中渐渐靠近，暗生情愫&hellip;然而青春常常伴随遗憾，相爱的人也总是难免分离，但也正因如此，才要把握现在，在这个明媚的春天，即刻告白吧！告诉那个人：我就是有病，才会这么喜欢你。', 1, 10, 1, '', 'laoying', '2025-05-13 13:09:59', 'laoying', '2025-09-26 13:06:50');
INSERT INTO `movie_basics` VALUES (66, '0', '0', NULL, '731', 'http://localhost:3000/uploads/2025-11-05/5VTthjhTg.jpeg', NULL, NULL, NULL, NULL, 'movie', 2025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, '', 'admin', '2025-09-25 09:19:23', 'admin', '2025-11-05 14:20:51');
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
-- Table structure for movie_month_visits
-- ----------------------------
DROP TABLE IF EXISTS `movie_month_visits`;
CREATE TABLE `movie_month_visits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_basics_id` int NOT NULL,
  `month_number` varchar(10) NOT NULL,
  `month_pv` int NOT NULL,
  `month_increment` int NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_month_visits
-- ----------------------------
BEGIN;
INSERT INTO `movie_month_visits` VALUES (1, 48, '2025-05', 87, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (2, 47, '2025-05', 36, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (3, 44, '2025-05', 15, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (4, 52, '2025-05', 132, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (5, 40, '2025-05', 35, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (6, 49, '2025-05', 21, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (7, 57, '2025-05', 21, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (8, 53, '2025-05', 30, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (9, 23, '2025-05', 16, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (10, 61, '2025-05', 25, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (11, 4, '2025-05', 11, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (12, 46, '2025-05', 37, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (13, 21, '2025-05', 7, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (14, 29, '2025-05', 35, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (15, 50, '2025-05', 44, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (16, 26, '2025-05', 31, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (17, 24, '2025-05', 22, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (18, 45, '2025-05', 19, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (19, 58, '2025-05', 46, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (20, 39, '2025-05', 16, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (21, 32, '2025-05', 13, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (22, 19, '2025-05', 7, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (23, 30, '2025-05', 8, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (24, 56, '2025-05', 17, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (25, 59, '2025-05', 18, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (26, 1, '2025-05', 24, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (27, 54, '2025-05', 43, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (28, 60, '2025-05', 18, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (29, 55, '2025-05', 22, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (30, 25, '2025-05', 19, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (31, 51, '2025-05', 33, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (32, 36, '2025-05', 9, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (33, 37, '2025-05', 13, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (34, 42, '2025-05', 16, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (35, 43, '2025-05', 18, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (36, 27, '2025-05', 14, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (37, 17, '2025-05', 6, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (38, 35, '2025-05', 17, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (39, 33, '2025-05', 17, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (40, 20, '2025-05', 7, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (41, 31, '2025-05', 9, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (42, 18, '2025-05', 6, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (43, 22, '2025-05', 8, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (44, 63, '2025-05', 17, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (45, 28, '2025-05', 6, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (46, 64, '2025-05', 58, 0, '', '', '2025-05-21 03:57:50', '', '2025-06-03 02:01:00');
INSERT INTO `movie_month_visits` VALUES (47, 48, '2025-06', 87, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (48, 47, '2025-06', 36, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (49, 44, '2025-06', 15, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (50, 52, '2025-06', 132, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (51, 40, '2025-06', 35, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (52, 49, '2025-06', 21, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (53, 57, '2025-06', 21, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (54, 53, '2025-06', 30, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (55, 23, '2025-06', 16, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (56, 61, '2025-06', 25, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (57, 4, '2025-06', 11, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (58, 46, '2025-06', 37, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (59, 21, '2025-06', 7, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (60, 29, '2025-06', 35, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (61, 50, '2025-06', 44, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (62, 26, '2025-06', 31, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (63, 24, '2025-06', 22, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (64, 45, '2025-06', 19, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (65, 58, '2025-06', 46, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (66, 39, '2025-06', 16, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (67, 32, '2025-06', 13, 0, '', '', '2025-06-03 01:41:40', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (68, 19, '2025-06', 7, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (69, 30, '2025-06', 8, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (70, 56, '2025-06', 17, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (71, 59, '2025-06', 18, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (72, 1, '2025-06', 24, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (73, 54, '2025-06', 43, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (74, 60, '2025-06', 18, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (75, 55, '2025-06', 22, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (76, 25, '2025-06', 19, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (77, 51, '2025-06', 33, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (78, 36, '2025-06', 9, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (79, 37, '2025-06', 13, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (80, 42, '2025-06', 16, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (81, 43, '2025-06', 18, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (82, 27, '2025-06', 14, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (83, 17, '2025-06', 6, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (84, 35, '2025-06', 17, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (85, 33, '2025-06', 17, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (86, 20, '2025-06', 7, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (87, 31, '2025-06', 9, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (88, 18, '2025-06', 6, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (89, 22, '2025-06', 8, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (90, 63, '2025-06', 17, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (91, 28, '2025-06', 6, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (92, 64, '2025-06', 58, 0, '', '', '2025-06-03 01:41:41', '', '2025-06-18 07:01:00');
INSERT INTO `movie_month_visits` VALUES (93, 48, '2025-09', 89, 89, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (94, 47, '2025-09', 38, 38, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (95, 44, '2025-09', 23, 23, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (96, 52, '2025-09', 140, 140, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (97, 40, '2025-09', 35, 35, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (98, 49, '2025-09', 21, 21, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (99, 57, '2025-09', 21, 21, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (100, 53, '2025-09', 30, 30, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (101, 23, '2025-09', 16, 16, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (102, 61, '2025-09', 25, 25, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (103, 4, '2025-09', 11, 11, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (104, 46, '2025-09', 39, 39, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (105, 21, '2025-09', 7, 7, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (106, 29, '2025-09', 36, 36, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (107, 50, '2025-09', 44, 44, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (108, 26, '2025-09', 31, 31, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (109, 24, '2025-09', 22, 22, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (110, 45, '2025-09', 21, 21, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (111, 58, '2025-09', 46, 46, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (112, 39, '2025-09', 16, 16, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (113, 32, '2025-09', 13, 13, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (114, 19, '2025-09', 7, 7, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (115, 30, '2025-09', 8, 8, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (116, 56, '2025-09', 17, 17, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (117, 59, '2025-09', 18, 18, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (118, 1, '2025-09', 25, 25, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (119, 54, '2025-09', 43, 43, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (120, 60, '2025-09', 18, 18, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (121, 55, '2025-09', 23, 23, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (122, 25, '2025-09', 19, 19, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (123, 51, '2025-09', 33, 33, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (124, 36, '2025-09', 9, 9, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (125, 37, '2025-09', 13, 13, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (126, 42, '2025-09', 17, 17, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (127, 43, '2025-09', 18, 18, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (128, 27, '2025-09', 21, 21, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (129, 17, '2025-09', 6, 6, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (130, 35, '2025-09', 17, 17, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (131, 33, '2025-09', 17, 17, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (132, 20, '2025-09', 7, 7, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (133, 31, '2025-09', 9, 9, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (134, 18, '2025-09', 6, 6, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (135, 22, '2025-09', 8, 8, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (136, 63, '2025-09', 18, 18, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (137, 28, '2025-09', 6, 6, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (138, 64, '2025-09', 136, 136, '', '', '2025-09-13 03:31:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (139, 66, '2025-09', 120, 120, '', '', '2025-09-25 10:04:26', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (140, 66, '2025-09', 120, 120, '', '', '2025-09-25 10:04:26', '', '2025-09-28 05:34:21');
INSERT INTO `movie_month_visits` VALUES (141, 48, '2025-10', 90, 1, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (142, 47, '2025-10', 38, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (143, 44, '2025-10', 23, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (144, 52, '2025-10', 141, 1, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (145, 40, '2025-10', 35, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (146, 49, '2025-10', 21, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (147, 57, '2025-10', 22, 1, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (148, 53, '2025-10', 30, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (149, 23, '2025-10', 16, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (150, 61, '2025-10', 25, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (151, 4, '2025-10', 11, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (152, 46, '2025-10', 39, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (153, 21, '2025-10', 7, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (154, 29, '2025-10', 36, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (155, 50, '2025-10', 44, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (156, 26, '2025-10', 31, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (157, 24, '2025-10', 22, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (158, 45, '2025-10', 21, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (159, 58, '2025-10', 46, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (160, 39, '2025-10', 16, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (161, 32, '2025-10', 13, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (162, 19, '2025-10', 7, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (163, 30, '2025-10', 8, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (164, 56, '2025-10', 17, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (165, 59, '2025-10', 18, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (166, 1, '2025-10', 25, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (167, 54, '2025-10', 43, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (168, 60, '2025-10', 19, 1, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (169, 55, '2025-10', 23, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (170, 25, '2025-10', 19, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (171, 51, '2025-10', 33, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (172, 36, '2025-10', 9, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (173, 37, '2025-10', 13, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (174, 42, '2025-10', 17, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (175, 43, '2025-10', 18, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (176, 27, '2025-10', 21, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (177, 17, '2025-10', 6, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (178, 35, '2025-10', 17, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (179, 33, '2025-10', 17, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (180, 20, '2025-10', 7, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (181, 31, '2025-10', 9, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (182, 18, '2025-10', 6, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (183, 22, '2025-10', 8, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (184, 63, '2025-10', 18, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (185, 28, '2025-10', 6, 0, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (186, 64, '2025-10', 140, 4, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (187, 66, '2025-10', 127, 7, '', '', '2025-10-14 06:31:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_month_visits` VALUES (188, 48, '2025-11', 102, 12, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (189, 47, '2025-11', 38, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (190, 44, '2025-11', 24, 1, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (191, 52, '2025-11', 143, 2, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (192, 40, '2025-11', 39, 4, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (193, 49, '2025-11', 21, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (194, 57, '2025-11', 23, 1, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (195, 53, '2025-11', 30, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (196, 23, '2025-11', 16, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (197, 61, '2025-11', 25, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (198, 4, '2025-11', 11, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (199, 46, '2025-11', 78, 39, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (200, 21, '2025-11', 7, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (201, 29, '2025-11', 37, 1, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (202, 50, '2025-11', 45, 1, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (203, 26, '2025-11', 31, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (204, 24, '2025-11', 22, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (205, 45, '2025-11', 21, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (206, 58, '2025-11', 48, 2, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (207, 39, '2025-11', 16, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (208, 32, '2025-11', 13, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (209, 19, '2025-11', 7, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (210, 30, '2025-11', 8, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (211, 56, '2025-11', 17, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (212, 59, '2025-11', 18, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:19');
INSERT INTO `movie_month_visits` VALUES (213, 1, '2025-11', 25, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (214, 54, '2025-11', 43, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (215, 60, '2025-11', 19, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (216, 55, '2025-11', 23, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (217, 25, '2025-11', 19, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (218, 51, '2025-11', 35, 2, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (219, 36, '2025-11', 9, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (220, 37, '2025-11', 13, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (221, 42, '2025-11', 17, 0, '', '', '2025-11-03 02:01:00', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (222, 43, '2025-11', 18, 0, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (223, 27, '2025-11', 21, 0, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (224, 17, '2025-11', 6, 0, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (225, 35, '2025-11', 17, 0, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (226, 33, '2025-11', 17, 0, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (227, 20, '2025-11', 7, 0, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (228, 31, '2025-11', 9, 0, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (229, 18, '2025-11', 6, 0, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (230, 22, '2025-11', 8, 0, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (231, 63, '2025-11', 18, 0, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (232, 28, '2025-11', 6, 0, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (233, 64, '2025-11', 154, 14, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (234, 66, '2025-11', 218, 91, '', '', '2025-11-03 02:01:01', '', '2025-11-30 15:47:20');
INSERT INTO `movie_month_visits` VALUES (235, 48, '2025-12', 102, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (236, 47, '2025-12', 38, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (237, 44, '2025-12', 24, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (238, 52, '2025-12', 143, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (239, 40, '2025-12', 39, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (240, 49, '2025-12', 21, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (241, 57, '2025-12', 23, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (242, 53, '2025-12', 30, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (243, 23, '2025-12', 16, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (244, 61, '2025-12', 25, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (245, 4, '2025-12', 11, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (246, 46, '2025-12', 78, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (247, 21, '2025-12', 7, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (248, 29, '2025-12', 37, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (249, 50, '2025-12', 45, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (250, 26, '2025-12', 31, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (251, 24, '2025-12', 22, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (252, 45, '2025-12', 21, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (253, 58, '2025-12', 48, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (254, 39, '2025-12', 16, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (255, 32, '2025-12', 13, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (256, 19, '2025-12', 7, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (257, 30, '2025-12', 8, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (258, 56, '2025-12', 17, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (259, 59, '2025-12', 18, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (260, 1, '2025-12', 25, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (261, 54, '2025-12', 43, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (262, 60, '2025-12', 19, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (263, 55, '2025-12', 23, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (264, 25, '2025-12', 19, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (265, 51, '2025-12', 35, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (266, 36, '2025-12', 9, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (267, 37, '2025-12', 13, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (268, 42, '2025-12', 17, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (269, 43, '2025-12', 18, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (270, 27, '2025-12', 21, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (271, 17, '2025-12', 6, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (272, 35, '2025-12', 17, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (273, 33, '2025-12', 17, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (274, 20, '2025-12', 7, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (275, 31, '2025-12', 9, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (276, 18, '2025-12', 6, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (277, 22, '2025-12', 8, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (278, 63, '2025-12', 18, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (279, 28, '2025-12', 6, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (280, 64, '2025-12', 154, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
INSERT INTO `movie_month_visits` VALUES (281, 66, '2025-12', 218, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:01:00');
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`movie_photo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_photo
-- ----------------------------
BEGIN;
INSERT INTO `movie_photo` VALUES (2, 1, '1', 'http://localhost:3000/uploads/2025-04-07/D0V43NXN2.png', '2', 270, 404, 246388, '0', '', '', '2025-04-07 14:14:38', '', '2025-04-07 14:14:38');
INSERT INTO `movie_photo` VALUES (3, 17, '1', 'http://localhost:3000/uploads/2025-04-07/9f1RAcSzh.png', '1', 270, 404, 246388, '0', '', '', '2025-04-07 14:14:38', '', '2025-04-07 14:14:38');
INSERT INTO `movie_photo` VALUES (4, 17, '2', 'http://localhost:3000/uploads/2025-04-07/fMfpUrdgi.jpeg', '2', 140, 193, 6866, '0', '', '', '2025-04-07 14:14:38', '', '2025-04-07 14:14:38');
INSERT INTO `movie_photo` VALUES (5, 53, '1', 'https://cms.yinchunyu.com/uploads/2025-04-23/4DiSMQezx.png', '2', 1256, 528, 722264, '0', '', '', '2025-04-22 06:20:04', '', '2025-04-22 06:20:04');
COMMIT;

-- ----------------------------
-- Table structure for movie_pv
-- ----------------------------
DROP TABLE IF EXISTS `movie_pv`;
CREATE TABLE `movie_pv` (
  `movie_pv_id` int NOT NULL AUTO_INCREMENT,
  `movie_basic_id` int NOT NULL,
  `pv` int NOT NULL,
  PRIMARY KEY (`movie_pv_id`),
  UNIQUE KEY `movie_pv_movie_basic_id_unique` (`movie_basic_id`),
  CONSTRAINT `movie_pv_movie_basic_id_fkey` FOREIGN KEY (`movie_basic_id`) REFERENCES `movie_basics` (`movie_basics_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_pv
-- ----------------------------
BEGIN;
INSERT INTO `movie_pv` VALUES (1, 48, 102);
INSERT INTO `movie_pv` VALUES (2, 47, 38);
INSERT INTO `movie_pv` VALUES (3, 44, 24);
INSERT INTO `movie_pv` VALUES (4, 52, 143);
INSERT INTO `movie_pv` VALUES (5, 40, 39);
INSERT INTO `movie_pv` VALUES (6, 49, 21);
INSERT INTO `movie_pv` VALUES (7, 57, 23);
INSERT INTO `movie_pv` VALUES (8, 53, 30);
INSERT INTO `movie_pv` VALUES (9, 23, 16);
INSERT INTO `movie_pv` VALUES (11, 61, 25);
INSERT INTO `movie_pv` VALUES (12, 4, 11);
INSERT INTO `movie_pv` VALUES (13, 46, 78);
INSERT INTO `movie_pv` VALUES (14, 21, 7);
INSERT INTO `movie_pv` VALUES (15, 29, 37);
INSERT INTO `movie_pv` VALUES (16, 50, 45);
INSERT INTO `movie_pv` VALUES (18, 26, 31);
INSERT INTO `movie_pv` VALUES (19, 24, 22);
INSERT INTO `movie_pv` VALUES (20, 45, 21);
INSERT INTO `movie_pv` VALUES (21, 58, 48);
INSERT INTO `movie_pv` VALUES (22, 39, 16);
INSERT INTO `movie_pv` VALUES (23, 32, 13);
INSERT INTO `movie_pv` VALUES (24, 19, 7);
INSERT INTO `movie_pv` VALUES (25, 30, 8);
INSERT INTO `movie_pv` VALUES (26, 56, 17);
INSERT INTO `movie_pv` VALUES (27, 59, 18);
INSERT INTO `movie_pv` VALUES (28, 1, 25);
INSERT INTO `movie_pv` VALUES (29, 54, 43);
INSERT INTO `movie_pv` VALUES (30, 60, 19);
INSERT INTO `movie_pv` VALUES (31, 55, 23);
INSERT INTO `movie_pv` VALUES (32, 25, 19);
INSERT INTO `movie_pv` VALUES (33, 51, 35);
INSERT INTO `movie_pv` VALUES (34, 36, 9);
INSERT INTO `movie_pv` VALUES (35, 37, 13);
INSERT INTO `movie_pv` VALUES (36, 42, 17);
INSERT INTO `movie_pv` VALUES (37, 43, 18);
INSERT INTO `movie_pv` VALUES (41, 27, 21);
INSERT INTO `movie_pv` VALUES (42, 17, 6);
INSERT INTO `movie_pv` VALUES (43, 35, 17);
INSERT INTO `movie_pv` VALUES (44, 33, 17);
INSERT INTO `movie_pv` VALUES (45, 20, 7);
INSERT INTO `movie_pv` VALUES (46, 31, 9);
INSERT INTO `movie_pv` VALUES (47, 18, 6);
INSERT INTO `movie_pv` VALUES (48, 22, 8);
INSERT INTO `movie_pv` VALUES (49, 63, 18);
INSERT INTO `movie_pv` VALUES (50, 28, 6);
INSERT INTO `movie_pv` VALUES (51, 64, 154);
INSERT INTO `movie_pv` VALUES (52, 66, 218);
COMMIT;

-- ----------------------------
-- Table structure for movie_rate
-- ----------------------------
DROP TABLE IF EXISTS `movie_rate`;
CREATE TABLE `movie_rate` (
  `movie_rate_id` int NOT NULL AUTO_INCREMENT,
  `movie_basics_id` int NOT NULL,
  `rate` float NOT NULL,
  `rate_user_count` int NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`movie_rate_id`),
  UNIQUE KEY `movie_rate_movie_basics_id_unique` (`movie_basics_id`),
  CONSTRAINT `movie_rate_movie_basics_id_fkey` FOREIGN KEY (`movie_basics_id`) REFERENCES `movie_basics` (`movie_basics_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_rate
-- ----------------------------
BEGIN;
INSERT INTO `movie_rate` VALUES (11, 52, 8, 1, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `movie_rate` VALUES (12, 40, 9, 1, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `movie_rate` VALUES (13, 48, 6, 1, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `movie_rate` VALUES (14, 49, 8, 1, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `movie_rate` VALUES (15, 53, 9, 1, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `movie_rate` VALUES (16, 54, 9, 1, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `movie_rate` VALUES (17, 33, 10, 1, '', '', '2025-05-06 09:02:27', '', '2025-05-06 09:02:27');
INSERT INTO `movie_rate` VALUES (18, 30, 7, 1, '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `movie_rate` VALUES (19, 29, 6, 1, '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `movie_rate` VALUES (20, 18, 5, 1, '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `movie_rate` VALUES (21, 63, 0, 0, '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `movie_rate` VALUES (22, 64, 0, 0, '', '', '2025-05-13 06:14:56', '', '2025-05-13 06:14:56');
INSERT INTO `movie_rate` VALUES (23, 66, 7, 1, '', '', '2025-09-13 03:13:57', '', '2025-09-13 03:13:57');
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
  `video_id` int DEFAULT NULL,
  `cover` varchar(255) NOT NULL DEFAULT '',
  `sort` int NOT NULL DEFAULT '1',
  `status` varchar(255) NOT NULL DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  `link` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`movie_video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_video
-- ----------------------------
BEGIN;
INSERT INTO `movie_video` VALUES (1, 4, '1', '黑金风暴第一集', 2, '', 1, '0', '', '', '2025-04-07 09:20:01', '', '2025-04-15 14:31:20', '');
INSERT INTO `movie_video` VALUES (3, 17, '1', 'ss', 2, '', 1, '0', '', '', '2025-04-07 14:14:38', '', '2025-04-07 14:14:38', '');
INSERT INTO `movie_video` VALUES (4, 4, '1', '黑金风暴第二集', 1, '', 2, '0', '', '', '2025-04-12 15:32:16', '', '2025-04-12 15:32:16', '');
INSERT INTO `movie_video` VALUES (6, 48, '1', '超级保镖-下', 2, '', 2, '0', '', '', '2025-04-12 15:32:16', '', '2025-04-12 15:32:16', '');
INSERT INTO `movie_video` VALUES (7, 50, '1', '洪武大案-第一集', 2, '', 1, '0', '', '', '2025-04-17 06:41:51', '', '2025-04-17 06:41:51', '');
INSERT INTO `movie_video` VALUES (8, 50, '1', '洪武大案-第二集', 2, '', 2, '0', '', '', '2025-04-17 06:41:51', '', '2025-04-17 06:41:51', '');
INSERT INTO `movie_video` VALUES (9, 50, '1', '洪武大案-第三集', 2, '', 3, '0', '', '', '2025-04-17 06:41:51', '', '2025-04-17 06:41:51', '');
INSERT INTO `movie_video` VALUES (10, 52, '2', '私家侦探 预告片', 4, '', 1, '0', '', '', '2025-04-18 08:56:56', '', '2025-04-18 08:56:56', '');
INSERT INTO `movie_video` VALUES (11, 53, '1', '斗破', 2, '', 1, '0', '', '', '2025-04-28 08:24:00', '', '2025-04-28 08:24:00', '');
INSERT INTO `movie_video` VALUES (12, 24, '1', '宇宙守卫队', 5, '', 1, '0', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52', '');
INSERT INTO `movie_video` VALUES (13, 58, '1', '宇宙守卫队', 5, '', 1, '0', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52', '');
INSERT INTO `movie_video` VALUES (14, 1, '1', '宇宙守卫队', 5, '', 1, '0', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52', '');
INSERT INTO `movie_video` VALUES (15, 18, '2', '私家侦探', 4, '', 1, '0', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52', '');
INSERT INTO `movie_video` VALUES (16, 48, '1', '超级保镖-宇宙守卫队', 5, '', 3, '0', '', '', '2025-05-13 06:14:56', '', '2025-05-14 08:42:26', '');
INSERT INTO `movie_video` VALUES (17, 64, '1', '有病才喜欢你', 6, '', 2, '0', '', '', '2025-05-13 06:14:56', '', '2025-09-26 05:46:55', '');
INSERT INTO `movie_video` VALUES (18, 48, '1', '超级保镖2', 6, '', 1, '0', '', '', '2025-05-14 08:25:28', '', '2025-05-14 08:25:28', '');
INSERT INTO `movie_video` VALUES (19, 64, '1', '666', 2, '', 1, '0', '', '', '2025-09-13 03:13:57', '', '2025-09-13 03:13:57', '');
INSERT INTO `movie_video` VALUES (20, 66, '5', '豆瓣', NULL, '', 1, '0', '', '', '2025-09-26 06:24:52', '', '2025-09-26 06:24:52', 'https://movie.douban.com/subject/27605659/?from=showing');
INSERT INTO `movie_video` VALUES (21, 66, '1', '731', 2, '', 1, '0', '', '', '2025-09-26 06:24:52', '', '2025-09-26 06:24:52', '');
INSERT INTO `movie_video` VALUES (22, 66, '4', '私家侦探 预告片', 4, '', 2, '0', '', '', '2025-09-26 06:24:52', '', '2025-09-26 06:24:52', '');
COMMIT;

-- ----------------------------
-- Table structure for movie_weekly_visits
-- ----------------------------
DROP TABLE IF EXISTS `movie_weekly_visits`;
CREATE TABLE `movie_weekly_visits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_basics_id` int NOT NULL,
  `week_number` varchar(10) NOT NULL,
  `weekly_pv` int NOT NULL,
  `weekly_increment` int NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=654 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_weekly_visits
-- ----------------------------
BEGIN;
INSERT INTO `movie_weekly_visits` VALUES (1, 48, '2025-21', 87, 87, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (2, 47, '2025-21', 36, 36, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (3, 44, '2025-21', 15, 15, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (4, 52, '2025-21', 130, 130, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (5, 40, '2025-21', 35, 35, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (6, 49, '2025-21', 21, 21, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (7, 57, '2025-21', 21, 21, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (8, 53, '2025-21', 30, 30, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (9, 23, '2025-21', 16, 16, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (10, 61, '2025-21', 25, 25, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (11, 4, '2025-21', 11, 11, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (12, 46, '2025-21', 37, 37, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (13, 21, '2025-21', 7, 7, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (14, 29, '2025-21', 35, 35, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (15, 50, '2025-21', 44, 44, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (16, 26, '2025-21', 31, 31, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (17, 24, '2025-21', 22, 22, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (18, 45, '2025-21', 19, 19, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (19, 58, '2025-21', 46, 46, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (20, 39, '2025-21', 16, 16, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (21, 32, '2025-21', 13, 13, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (22, 19, '2025-21', 7, 7, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (23, 30, '2025-21', 8, 8, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (24, 56, '2025-21', 17, 17, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (25, 59, '2025-21', 18, 18, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (26, 1, '2025-21', 24, 24, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (27, 54, '2025-21', 43, 43, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (28, 60, '2025-21', 18, 18, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (29, 55, '2025-21', 22, 22, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (30, 25, '2025-21', 19, 19, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (31, 51, '2025-21', 33, 33, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (32, 36, '2025-21', 9, 9, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (33, 37, '2025-21', 13, 13, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (34, 42, '2025-21', 16, 16, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (35, 43, '2025-21', 18, 18, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (36, 27, '2025-21', 14, 14, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (37, 17, '2025-21', 6, 6, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (38, 35, '2025-21', 17, 17, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (39, 33, '2025-21', 17, 17, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (40, 20, '2025-21', 7, 7, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (41, 31, '2025-21', 9, 9, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (42, 18, '2025-21', 6, 6, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (43, 22, '2025-21', 8, 8, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (44, 63, '2025-21', 17, 17, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (45, 28, '2025-21', 6, 6, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (46, 64, '2025-21', 58, 58, '', '', '2025-05-21 03:57:45', '', '2025-05-22 02:30:00');
INSERT INTO `movie_weekly_visits` VALUES (47, 48, '2025-22', 87, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (48, 47, '2025-22', 36, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (49, 44, '2025-22', 15, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (50, 52, '2025-22', 132, 2, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (51, 40, '2025-22', 35, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (52, 49, '2025-22', 21, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (53, 57, '2025-22', 21, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (54, 53, '2025-22', 30, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (55, 23, '2025-22', 16, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (56, 61, '2025-22', 25, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (57, 4, '2025-22', 11, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (58, 46, '2025-22', 37, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (59, 21, '2025-22', 7, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (60, 29, '2025-22', 35, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (61, 50, '2025-22', 44, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (62, 26, '2025-22', 31, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (63, 24, '2025-22', 22, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (64, 45, '2025-22', 19, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (65, 58, '2025-22', 46, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (66, 39, '2025-22', 16, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (67, 32, '2025-22', 13, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (68, 19, '2025-22', 7, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (69, 30, '2025-22', 8, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (70, 56, '2025-22', 17, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (71, 59, '2025-22', 18, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (72, 1, '2025-22', 24, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (73, 54, '2025-22', 43, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (74, 60, '2025-22', 18, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (75, 55, '2025-22', 22, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (76, 25, '2025-22', 19, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (77, 51, '2025-22', 33, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (78, 36, '2025-22', 9, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (79, 37, '2025-22', 13, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (80, 42, '2025-22', 16, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (81, 43, '2025-22', 18, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (82, 27, '2025-22', 14, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (83, 17, '2025-22', 6, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (84, 35, '2025-22', 17, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (85, 33, '2025-22', 17, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (86, 20, '2025-22', 7, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (87, 31, '2025-22', 9, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (88, 18, '2025-22', 6, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (89, 22, '2025-22', 8, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (90, 63, '2025-22', 17, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (91, 28, '2025-22', 6, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (92, 64, '2025-22', 58, 0, '', '', '2025-05-26 04:00:00', '', '2025-05-27 03:00:00');
INSERT INTO `movie_weekly_visits` VALUES (93, 48, '2025-23', 87, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (94, 47, '2025-23', 36, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (95, 44, '2025-23', 15, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (96, 52, '2025-23', 132, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (97, 40, '2025-23', 35, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (98, 49, '2025-23', 21, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (99, 57, '2025-23', 21, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (100, 53, '2025-23', 30, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (101, 23, '2025-23', 16, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (102, 61, '2025-23', 25, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (103, 4, '2025-23', 11, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (104, 46, '2025-23', 37, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (105, 21, '2025-23', 7, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (106, 29, '2025-23', 35, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (107, 50, '2025-23', 44, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (108, 26, '2025-23', 31, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (109, 24, '2025-23', 22, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (110, 45, '2025-23', 19, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (111, 58, '2025-23', 46, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (112, 39, '2025-23', 16, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (113, 32, '2025-23', 13, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (114, 19, '2025-23', 7, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (115, 30, '2025-23', 8, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (116, 56, '2025-23', 17, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (117, 59, '2025-23', 18, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (118, 1, '2025-23', 24, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (119, 54, '2025-23', 43, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (120, 60, '2025-23', 18, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (121, 55, '2025-23', 22, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (122, 25, '2025-23', 19, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (123, 51, '2025-23', 33, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (124, 36, '2025-23', 9, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (125, 37, '2025-23', 13, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (126, 42, '2025-23', 16, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (127, 43, '2025-23', 18, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (128, 27, '2025-23', 14, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (129, 17, '2025-23', 6, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (130, 35, '2025-23', 17, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (131, 33, '2025-23', 17, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (132, 20, '2025-23', 7, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (133, 31, '2025-23', 9, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (134, 18, '2025-23', 6, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (135, 22, '2025-23', 8, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (136, 63, '2025-23', 17, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (137, 28, '2025-23', 6, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (138, 64, '2025-23', 58, 0, '', '', '2025-06-03 02:00:00', '', '2025-06-03 02:00:00');
INSERT INTO `movie_weekly_visits` VALUES (139, 48, '2025-25', 87, 87, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (140, 47, '2025-25', 36, 36, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (141, 44, '2025-25', 15, 15, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (142, 52, '2025-25', 132, 132, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (143, 40, '2025-25', 35, 35, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (144, 49, '2025-25', 21, 21, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (145, 57, '2025-25', 21, 21, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (146, 53, '2025-25', 30, 30, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (147, 23, '2025-25', 16, 16, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (148, 61, '2025-25', 25, 25, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (149, 4, '2025-25', 11, 11, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (150, 46, '2025-25', 37, 37, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (151, 21, '2025-25', 7, 7, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (152, 29, '2025-25', 35, 35, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (153, 50, '2025-25', 44, 44, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (154, 26, '2025-25', 31, 31, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (155, 24, '2025-25', 22, 22, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (156, 45, '2025-25', 19, 19, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (157, 58, '2025-25', 46, 46, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (158, 39, '2025-25', 16, 16, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (159, 32, '2025-25', 13, 13, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (160, 19, '2025-25', 7, 7, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (161, 30, '2025-25', 8, 8, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (162, 56, '2025-25', 17, 17, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (163, 59, '2025-25', 18, 18, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (164, 1, '2025-25', 24, 24, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (165, 54, '2025-25', 43, 43, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (166, 60, '2025-25', 18, 18, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (167, 55, '2025-25', 22, 22, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (168, 25, '2025-25', 19, 19, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (169, 51, '2025-25', 33, 33, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (170, 36, '2025-25', 9, 9, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (171, 37, '2025-25', 13, 13, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (172, 42, '2025-25', 16, 16, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (173, 43, '2025-25', 18, 18, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (174, 27, '2025-25', 14, 14, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (175, 17, '2025-25', 6, 6, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (176, 35, '2025-25', 17, 17, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (177, 33, '2025-25', 17, 17, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (178, 20, '2025-25', 7, 7, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (179, 31, '2025-25', 9, 9, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (180, 18, '2025-25', 6, 6, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (181, 22, '2025-25', 8, 8, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (182, 63, '2025-25', 17, 17, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (183, 28, '2025-25', 6, 6, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:00');
INSERT INTO `movie_weekly_visits` VALUES (184, 64, '2025-25', 58, 58, '', '', '2025-06-16 03:30:00', '', '2025-06-18 07:00:01');
INSERT INTO `movie_weekly_visits` VALUES (185, 48, '2025-37', 87, 87, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (186, 47, '2025-37', 37, 37, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (187, 44, '2025-37', 15, 15, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (188, 52, '2025-37', 132, 132, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (189, 40, '2025-37', 35, 35, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (190, 49, '2025-37', 21, 21, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (191, 57, '2025-37', 21, 21, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (192, 53, '2025-37', 30, 30, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (193, 23, '2025-37', 16, 16, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (194, 61, '2025-37', 25, 25, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (195, 4, '2025-37', 11, 11, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (196, 46, '2025-37', 37, 37, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (197, 21, '2025-37', 7, 7, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (198, 29, '2025-37', 35, 35, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (199, 50, '2025-37', 44, 44, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (200, 26, '2025-37', 31, 31, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:05');
INSERT INTO `movie_weekly_visits` VALUES (201, 24, '2025-37', 22, 22, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (202, 45, '2025-37', 19, 19, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (203, 58, '2025-37', 46, 46, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (204, 39, '2025-37', 16, 16, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (205, 32, '2025-37', 13, 13, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (206, 19, '2025-37', 7, 7, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (207, 30, '2025-37', 8, 8, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (208, 56, '2025-37', 17, 17, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (209, 59, '2025-37', 18, 18, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (210, 1, '2025-37', 24, 24, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (211, 54, '2025-37', 43, 43, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (212, 60, '2025-37', 18, 18, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (213, 55, '2025-37', 23, 23, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (214, 25, '2025-37', 19, 19, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (215, 51, '2025-37', 33, 33, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (216, 36, '2025-37', 9, 9, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (217, 37, '2025-37', 13, 13, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (218, 42, '2025-37', 16, 16, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (219, 43, '2025-37', 18, 18, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (220, 27, '2025-37', 14, 14, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (221, 17, '2025-37', 6, 6, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (222, 35, '2025-37', 17, 17, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (223, 33, '2025-37', 17, 17, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (224, 20, '2025-37', 7, 7, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (225, 31, '2025-37', 9, 9, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (226, 18, '2025-37', 6, 6, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (227, 22, '2025-37', 8, 8, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (228, 63, '2025-37', 17, 17, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (229, 28, '2025-37', 6, 6, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (230, 64, '2025-37', 59, 59, '', '', '2025-09-13 03:30:00', '', '2025-09-13 09:07:06');
INSERT INTO `movie_weekly_visits` VALUES (231, 48, '2025-39', 89, 89, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (232, 47, '2025-39', 38, 38, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (233, 44, '2025-39', 23, 23, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (234, 52, '2025-39', 140, 140, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (235, 40, '2025-39', 35, 35, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (236, 49, '2025-39', 21, 21, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (237, 57, '2025-39', 21, 21, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (238, 53, '2025-39', 30, 30, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (239, 23, '2025-39', 16, 16, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (240, 61, '2025-39', 25, 25, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (241, 4, '2025-39', 11, 11, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (242, 46, '2025-39', 39, 39, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (243, 21, '2025-39', 7, 7, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (244, 29, '2025-39', 36, 36, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (245, 50, '2025-39', 44, 44, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (246, 26, '2025-39', 31, 31, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (247, 24, '2025-39', 22, 22, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (248, 45, '2025-39', 21, 21, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (249, 58, '2025-39', 46, 46, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (250, 39, '2025-39', 16, 16, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (251, 32, '2025-39', 13, 13, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (252, 19, '2025-39', 7, 7, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (253, 30, '2025-39', 8, 8, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (254, 56, '2025-39', 17, 17, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (255, 59, '2025-39', 18, 18, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (256, 1, '2025-39', 25, 25, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (257, 54, '2025-39', 43, 43, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (258, 60, '2025-39', 18, 18, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (259, 55, '2025-39', 23, 23, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (260, 25, '2025-39', 19, 19, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (261, 51, '2025-39', 33, 33, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (262, 36, '2025-39', 9, 9, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (263, 37, '2025-39', 13, 13, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (264, 42, '2025-39', 17, 17, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (265, 43, '2025-39', 18, 18, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (266, 27, '2025-39', 21, 21, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (267, 17, '2025-39', 6, 6, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (268, 35, '2025-39', 17, 17, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (269, 33, '2025-39', 17, 17, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (270, 20, '2025-39', 7, 7, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (271, 31, '2025-39', 9, 9, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (272, 18, '2025-39', 6, 6, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (273, 22, '2025-39', 8, 8, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (274, 63, '2025-39', 18, 18, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (275, 28, '2025-39', 6, 6, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (276, 64, '2025-39', 136, 136, '', '', '2025-09-24 09:00:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (277, 66, '2025-39', 120, 120, '', '', '2025-09-25 09:30:00', '', '2025-09-28 05:34:21');
INSERT INTO `movie_weekly_visits` VALUES (278, 48, '2025-42', 89, 89, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (279, 47, '2025-42', 38, 38, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (280, 44, '2025-42', 23, 23, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (281, 52, '2025-42', 141, 141, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (282, 40, '2025-42', 35, 35, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (283, 49, '2025-42', 21, 21, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (284, 57, '2025-42', 21, 21, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (285, 53, '2025-42', 30, 30, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (286, 23, '2025-42', 16, 16, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (287, 61, '2025-42', 25, 25, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (288, 4, '2025-42', 11, 11, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (289, 46, '2025-42', 39, 39, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (290, 21, '2025-42', 7, 7, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (291, 29, '2025-42', 36, 36, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (292, 50, '2025-42', 44, 44, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (293, 26, '2025-42', 31, 31, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (294, 24, '2025-42', 22, 22, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (295, 45, '2025-42', 21, 21, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (296, 58, '2025-42', 46, 46, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (297, 39, '2025-42', 16, 16, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (298, 32, '2025-42', 13, 13, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (299, 19, '2025-42', 7, 7, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (300, 30, '2025-42', 8, 8, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (301, 56, '2025-42', 17, 17, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (302, 59, '2025-42', 18, 18, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (303, 1, '2025-42', 25, 25, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (304, 54, '2025-42', 43, 43, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (305, 60, '2025-42', 19, 19, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (306, 55, '2025-42', 23, 23, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (307, 25, '2025-42', 19, 19, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (308, 51, '2025-42', 33, 33, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (309, 36, '2025-42', 9, 9, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (310, 37, '2025-42', 13, 13, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (311, 42, '2025-42', 17, 17, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (312, 43, '2025-42', 18, 18, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (313, 27, '2025-42', 21, 21, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (314, 17, '2025-42', 6, 6, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (315, 35, '2025-42', 17, 17, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (316, 33, '2025-42', 17, 17, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (317, 20, '2025-42', 7, 7, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (318, 31, '2025-42', 9, 9, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (319, 18, '2025-42', 6, 6, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (320, 22, '2025-42', 8, 8, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (321, 63, '2025-42', 18, 18, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (322, 28, '2025-42', 6, 6, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (323, 64, '2025-42', 138, 138, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (324, 66, '2025-42', 124, 124, '', '', '2025-10-14 07:00:00', '', '2025-10-17 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (325, 48, '2025-43', 90, 1, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (326, 47, '2025-43', 38, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (327, 44, '2025-43', 23, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (328, 52, '2025-43', 141, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (329, 40, '2025-43', 35, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (330, 49, '2025-43', 21, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (331, 57, '2025-43', 22, 1, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (332, 53, '2025-43', 30, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (333, 23, '2025-43', 16, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (334, 61, '2025-43', 25, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (335, 4, '2025-43', 11, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (336, 46, '2025-43', 39, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (337, 21, '2025-43', 7, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (338, 29, '2025-43', 36, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (339, 50, '2025-43', 44, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (340, 26, '2025-43', 31, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (341, 24, '2025-43', 22, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (342, 45, '2025-43', 21, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (343, 58, '2025-43', 46, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (344, 39, '2025-43', 16, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (345, 32, '2025-43', 13, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (346, 19, '2025-43', 7, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (347, 30, '2025-43', 8, 0, '', '', '2025-10-21 15:00:00', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (348, 56, '2025-43', 17, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (349, 59, '2025-43', 18, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (350, 1, '2025-43', 25, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (351, 54, '2025-43', 43, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (352, 60, '2025-43', 19, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (353, 55, '2025-43', 23, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (354, 25, '2025-43', 19, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (355, 51, '2025-43', 33, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (356, 36, '2025-43', 9, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (357, 37, '2025-43', 13, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (358, 42, '2025-43', 17, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (359, 43, '2025-43', 18, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (360, 27, '2025-43', 21, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (361, 17, '2025-43', 6, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (362, 35, '2025-43', 17, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (363, 33, '2025-43', 17, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (364, 20, '2025-43', 7, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (365, 31, '2025-43', 9, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (366, 18, '2025-43', 6, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (367, 22, '2025-43', 8, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (368, 63, '2025-43', 18, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (369, 28, '2025-43', 6, 0, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (370, 64, '2025-43', 140, 2, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (371, 66, '2025-43', 127, 3, '', '', '2025-10-21 15:00:01', '', '2025-10-22 13:00:00');
INSERT INTO `movie_weekly_visits` VALUES (372, 48, '2025-44', 90, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (373, 47, '2025-44', 38, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (374, 44, '2025-44', 23, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (375, 52, '2025-44', 141, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (376, 40, '2025-44', 35, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (377, 49, '2025-44', 21, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (378, 57, '2025-44', 22, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (379, 53, '2025-44', 30, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (380, 23, '2025-44', 16, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (381, 61, '2025-44', 25, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (382, 4, '2025-44', 11, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (383, 46, '2025-44', 39, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (384, 21, '2025-44', 7, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (385, 29, '2025-44', 36, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (386, 50, '2025-44', 44, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (387, 26, '2025-44', 31, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (388, 24, '2025-44', 22, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (389, 45, '2025-44', 21, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (390, 58, '2025-44', 46, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (391, 39, '2025-44', 16, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (392, 32, '2025-44', 13, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (393, 19, '2025-44', 7, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (394, 30, '2025-44', 8, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (395, 56, '2025-44', 17, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (396, 59, '2025-44', 18, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (397, 1, '2025-44', 25, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (398, 54, '2025-44', 43, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (399, 60, '2025-44', 19, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (400, 55, '2025-44', 23, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (401, 25, '2025-44', 19, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (402, 51, '2025-44', 33, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (403, 36, '2025-44', 9, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (404, 37, '2025-44', 13, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (405, 42, '2025-44', 17, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (406, 43, '2025-44', 18, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (407, 27, '2025-44', 21, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (408, 17, '2025-44', 6, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (409, 35, '2025-44', 17, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (410, 33, '2025-44', 17, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (411, 20, '2025-44', 7, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (412, 31, '2025-44', 9, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (413, 18, '2025-44', 6, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (414, 22, '2025-44', 8, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (415, 63, '2025-44', 18, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (416, 28, '2025-44', 6, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (417, 64, '2025-44', 140, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (418, 66, '2025-44', 127, 0, '', '', '2025-10-27 07:30:00', '', '2025-10-31 14:03:02');
INSERT INTO `movie_weekly_visits` VALUES (419, 48, '2025-45', 90, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (420, 47, '2025-45', 38, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (421, 44, '2025-45', 23, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (422, 52, '2025-45', 141, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (423, 40, '2025-45', 36, 1, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (424, 49, '2025-45', 21, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (425, 57, '2025-45', 22, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (426, 53, '2025-45', 30, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (427, 23, '2025-45', 16, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (428, 61, '2025-45', 25, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (429, 4, '2025-45', 11, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (430, 46, '2025-45', 39, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (431, 21, '2025-45', 7, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (432, 29, '2025-45', 37, 1, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (433, 50, '2025-45', 44, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (434, 26, '2025-45', 31, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (435, 24, '2025-45', 22, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (436, 45, '2025-45', 21, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (437, 58, '2025-45', 46, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (438, 39, '2025-45', 16, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (439, 32, '2025-45', 13, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (440, 19, '2025-45', 7, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (441, 30, '2025-45', 8, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (442, 56, '2025-45', 17, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (443, 59, '2025-45', 18, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (444, 1, '2025-45', 25, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (445, 54, '2025-45', 43, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (446, 60, '2025-45', 19, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (447, 55, '2025-45', 23, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (448, 25, '2025-45', 19, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (449, 51, '2025-45', 33, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (450, 36, '2025-45', 9, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (451, 37, '2025-45', 13, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (452, 42, '2025-45', 17, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (453, 43, '2025-45', 18, 0, '', '', '2025-11-03 02:00:00', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (454, 27, '2025-45', 21, 0, '', '', '2025-11-03 02:00:01', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (455, 17, '2025-45', 6, 0, '', '', '2025-11-03 02:00:01', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (456, 35, '2025-45', 17, 0, '', '', '2025-11-03 02:00:01', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (457, 33, '2025-45', 17, 0, '', '', '2025-11-03 02:00:01', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (458, 20, '2025-45', 7, 0, '', '', '2025-11-03 02:00:01', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (459, 31, '2025-45', 9, 0, '', '', '2025-11-03 02:00:01', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (460, 18, '2025-45', 6, 0, '', '', '2025-11-03 02:00:01', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (461, 22, '2025-45', 8, 0, '', '', '2025-11-03 02:00:01', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (462, 63, '2025-45', 18, 0, '', '', '2025-11-03 02:00:01', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (463, 28, '2025-45', 6, 0, '', '', '2025-11-03 02:00:01', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (464, 64, '2025-45', 144, 4, '', '', '2025-11-03 02:00:01', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (465, 66, '2025-45', 130, 3, '', '', '2025-11-03 02:00:01', '', '2025-11-05 14:00:00');
INSERT INTO `movie_weekly_visits` VALUES (466, 48, '2025-46', 90, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (467, 47, '2025-46', 38, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (468, 44, '2025-46', 23, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (469, 52, '2025-46', 141, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (470, 40, '2025-46', 36, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (471, 49, '2025-46', 21, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (472, 57, '2025-46', 22, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (473, 53, '2025-46', 30, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (474, 23, '2025-46', 16, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (475, 61, '2025-46', 25, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (476, 4, '2025-46', 11, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (477, 46, '2025-46', 39, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (478, 21, '2025-46', 7, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (479, 29, '2025-46', 37, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (480, 50, '2025-46', 44, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (481, 26, '2025-46', 31, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (482, 24, '2025-46', 22, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (483, 45, '2025-46', 21, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (484, 58, '2025-46', 46, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (485, 39, '2025-46', 16, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (486, 32, '2025-46', 13, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (487, 19, '2025-46', 7, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (488, 30, '2025-46', 8, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (489, 56, '2025-46', 17, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (490, 59, '2025-46', 18, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (491, 1, '2025-46', 25, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (492, 54, '2025-46', 43, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (493, 60, '2025-46', 19, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (494, 55, '2025-46', 23, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (495, 25, '2025-46', 19, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (496, 51, '2025-46', 33, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (497, 36, '2025-46', 9, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (498, 37, '2025-46', 13, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (499, 42, '2025-46', 17, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (500, 43, '2025-46', 18, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (501, 27, '2025-46', 21, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (502, 17, '2025-46', 6, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (503, 35, '2025-46', 17, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (504, 33, '2025-46', 17, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (505, 20, '2025-46', 7, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (506, 31, '2025-46', 9, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (507, 18, '2025-46', 6, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (508, 22, '2025-46', 8, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (509, 63, '2025-46', 18, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (510, 28, '2025-46', 6, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (511, 64, '2025-46', 144, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (512, 66, '2025-46', 130, 0, '', '', '2025-11-11 03:00:00', '', '2025-11-11 06:00:00');
INSERT INTO `movie_weekly_visits` VALUES (513, 48, '2025-47', 90, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (514, 47, '2025-47', 38, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (515, 44, '2025-47', 24, 1, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (516, 52, '2025-47', 141, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (517, 40, '2025-47', 39, 3, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (518, 49, '2025-47', 21, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (519, 57, '2025-47', 23, 1, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (520, 53, '2025-47', 30, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (521, 23, '2025-47', 16, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (522, 61, '2025-47', 25, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (523, 4, '2025-47', 11, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (524, 46, '2025-47', 40, 1, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (525, 21, '2025-47', 7, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (526, 29, '2025-47', 37, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (527, 50, '2025-47', 45, 1, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (528, 26, '2025-47', 31, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (529, 24, '2025-47', 22, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (530, 45, '2025-47', 21, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (531, 58, '2025-47', 48, 2, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:00');
INSERT INTO `movie_weekly_visits` VALUES (532, 39, '2025-47', 16, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (533, 32, '2025-47', 13, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (534, 19, '2025-47', 7, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (535, 30, '2025-47', 8, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (536, 56, '2025-47', 17, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (537, 59, '2025-47', 18, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (538, 1, '2025-47', 25, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (539, 54, '2025-47', 43, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (540, 60, '2025-47', 19, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (541, 55, '2025-47', 23, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (542, 25, '2025-47', 19, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (543, 51, '2025-47', 35, 2, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (544, 36, '2025-47', 9, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (545, 37, '2025-47', 13, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (546, 42, '2025-47', 17, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (547, 43, '2025-47', 18, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (548, 27, '2025-47', 21, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (549, 17, '2025-47', 6, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (550, 35, '2025-47', 17, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (551, 33, '2025-47', 17, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (552, 20, '2025-47', 7, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (553, 31, '2025-47', 9, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (554, 18, '2025-47', 6, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (555, 22, '2025-47', 8, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (556, 63, '2025-47', 18, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (557, 28, '2025-47', 6, 0, '', '', '2025-11-19 06:00:00', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (558, 64, '2025-47', 148, 4, '', '', '2025-11-19 06:00:01', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (559, 66, '2025-47', 151, 21, '', '', '2025-11-19 06:00:01', '', '2025-11-21 07:30:01');
INSERT INTO `movie_weekly_visits` VALUES (560, 48, '2025-48', 102, 12, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (561, 47, '2025-48', 38, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (562, 44, '2025-48', 24, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (563, 52, '2025-48', 143, 2, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (564, 40, '2025-48', 39, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (565, 49, '2025-48', 21, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (566, 57, '2025-48', 23, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (567, 53, '2025-48', 30, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (568, 23, '2025-48', 16, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (569, 61, '2025-48', 25, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (570, 4, '2025-48', 11, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (571, 46, '2025-48', 78, 38, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (572, 21, '2025-48', 7, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (573, 29, '2025-48', 37, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (574, 50, '2025-48', 45, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (575, 26, '2025-48', 31, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (576, 24, '2025-48', 22, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (577, 45, '2025-48', 21, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (578, 58, '2025-48', 48, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (579, 39, '2025-48', 16, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (580, 32, '2025-48', 13, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (581, 19, '2025-48', 7, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (582, 30, '2025-48', 8, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (583, 56, '2025-48', 17, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (584, 59, '2025-48', 18, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (585, 1, '2025-48', 25, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (586, 54, '2025-48', 43, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (587, 60, '2025-48', 19, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (588, 55, '2025-48', 23, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:52');
INSERT INTO `movie_weekly_visits` VALUES (589, 25, '2025-48', 19, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (590, 51, '2025-48', 35, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (591, 36, '2025-48', 9, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (592, 37, '2025-48', 13, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (593, 42, '2025-48', 17, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (594, 43, '2025-48', 18, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (595, 27, '2025-48', 21, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (596, 17, '2025-48', 6, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (597, 35, '2025-48', 17, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (598, 33, '2025-48', 17, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (599, 20, '2025-48', 7, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (600, 31, '2025-48', 9, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (601, 18, '2025-48', 6, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (602, 22, '2025-48', 8, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (603, 63, '2025-48', 18, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (604, 28, '2025-48', 6, 0, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (605, 64, '2025-48', 154, 6, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (606, 66, '2025-48', 218, 67, '', '', '2025-11-25 07:30:00', '', '2025-11-30 15:30:53');
INSERT INTO `movie_weekly_visits` VALUES (607, 48, '2025-49', 102, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (608, 47, '2025-49', 38, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (609, 44, '2025-49', 24, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (610, 52, '2025-49', 143, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (611, 40, '2025-49', 39, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (612, 49, '2025-49', 21, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (613, 57, '2025-49', 23, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (614, 53, '2025-49', 30, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (615, 23, '2025-49', 16, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (616, 61, '2025-49', 25, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (617, 4, '2025-49', 11, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (618, 46, '2025-49', 78, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (619, 21, '2025-49', 7, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (620, 29, '2025-49', 37, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (621, 50, '2025-49', 45, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (622, 26, '2025-49', 31, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (623, 24, '2025-49', 22, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (624, 45, '2025-49', 21, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (625, 58, '2025-49', 48, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (626, 39, '2025-49', 16, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (627, 32, '2025-49', 13, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (628, 19, '2025-49', 7, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (629, 30, '2025-49', 8, 0, '', '', '2025-11-30 16:04:31', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (630, 56, '2025-49', 17, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (631, 59, '2025-49', 18, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (632, 1, '2025-49', 25, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (633, 54, '2025-49', 43, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (634, 60, '2025-49', 19, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (635, 55, '2025-49', 23, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (636, 25, '2025-49', 19, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (637, 51, '2025-49', 35, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (638, 36, '2025-49', 9, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (639, 37, '2025-49', 13, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (640, 42, '2025-49', 17, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (641, 43, '2025-49', 18, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (642, 27, '2025-49', 21, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (643, 17, '2025-49', 6, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (644, 35, '2025-49', 17, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (645, 33, '2025-49', 17, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (646, 20, '2025-49', 7, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (647, 31, '2025-49', 9, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (648, 18, '2025-49', 6, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (649, 22, '2025-49', 8, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (650, 63, '2025-49', 18, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (651, 28, '2025-49', 6, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (652, 64, '2025-49', 154, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
INSERT INTO `movie_weekly_visits` VALUES (653, 66, '2025-49', 218, 0, '', '', '2025-11-30 16:04:32', '', '2025-12-05 12:00:00');
COMMIT;

-- ----------------------------
-- Table structure for movie_year_visits
-- ----------------------------
DROP TABLE IF EXISTS `movie_year_visits`;
CREATE TABLE `movie_year_visits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_basics_id` int NOT NULL,
  `year_number` varchar(4) NOT NULL,
  `year_pv` int NOT NULL,
  `year_increment` int NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_year_visits
-- ----------------------------
BEGIN;
INSERT INTO `movie_year_visits` VALUES (1, 48, '2025', 102, 102, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (2, 47, '2025', 38, 38, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (3, 44, '2025', 24, 24, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (4, 52, '2025', 143, 143, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (5, 40, '2025', 39, 39, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (6, 49, '2025', 21, 21, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (7, 57, '2025', 23, 23, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (8, 53, '2025', 30, 30, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (9, 23, '2025', 16, 16, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (10, 61, '2025', 25, 25, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (11, 4, '2025', 11, 11, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (12, 46, '2025', 78, 78, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (13, 21, '2025', 7, 7, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (14, 29, '2025', 37, 37, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (15, 50, '2025', 45, 45, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (16, 26, '2025', 31, 31, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (17, 24, '2025', 22, 22, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (18, 45, '2025', 21, 21, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (19, 58, '2025', 48, 48, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (20, 39, '2025', 16, 16, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (21, 32, '2025', 13, 13, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (22, 19, '2025', 7, 7, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (23, 30, '2025', 8, 8, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (24, 56, '2025', 17, 17, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (25, 59, '2025', 18, 18, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (26, 1, '2025', 25, 25, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (27, 54, '2025', 43, 43, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (28, 60, '2025', 19, 19, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (29, 55, '2025', 23, 23, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (30, 25, '2025', 19, 19, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:17:53');
INSERT INTO `movie_year_visits` VALUES (31, 51, '2025', 35, 35, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (32, 36, '2025', 9, 9, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (33, 37, '2025', 13, 13, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (34, 42, '2025', 17, 17, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (35, 43, '2025', 18, 18, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (36, 27, '2025', 21, 21, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (37, 17, '2025', 6, 6, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (38, 35, '2025', 17, 17, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (39, 33, '2025', 17, 17, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (40, 20, '2025', 7, 7, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (41, 31, '2025', 9, 9, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (42, 18, '2025', 6, 6, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (43, 22, '2025', 8, 8, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (44, 63, '2025', 18, 18, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (45, 28, '2025', 6, 6, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (46, 64, '2025', 154, 154, '', '', '2025-05-21 03:57:54', '', '2025-12-01 16:18:18');
INSERT INTO `movie_year_visits` VALUES (47, 66, '2025', 218, 218, '', '', '2025-09-25 16:11:17', '', '2025-12-01 16:18:18');
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
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
-- Table structure for short
-- ----------------------------
DROP TABLE IF EXISTS `short`;
CREATE TABLE `short` (
  `short_id` int NOT NULL AUTO_INCREMENT,
  `member_user_id` int NOT NULL,
  `poster` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `size` int DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `likes` int DEFAULT '0',
  `comments` int DEFAULT '0',
  `play_count` int DEFAULT '0',
  `share_count` int DEFAULT '0',
  `collection` int DEFAULT '0',
  `is_public` char(1) NOT NULL DEFAULT '1',
  `status` char(1) NOT NULL DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`short_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of short
-- ----------------------------
BEGIN;
INSERT INTO `short` VALUES (1, 1, 'https://cms.yinchunyu.com/uploads/2025-05-08/c8FRcDFzi.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-08/表单协议验证动画.mp4', 'mp4', 10, 1080, 1920, 1060864, '表单协议验证动画', 500, 20, 0, 60, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (2, 1, 'https://cms.yinchunyu.com/uploads/2025-05-08/ou9ZbST9Y.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-08/下载按钮与进度动画.mp4', 'mp4', 19, 1080, 1920, 3166208, '下载按钮进度动画', 100, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (3, 1, 'https://cms.yinchunyu.com/uploads/2025-05-08/3ewFisEtP.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-08/玻璃形态导航栏.mp4', 'mp4', 19, 1080, 1920, 4399104, '玻璃形态导航栏', 200, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (4, 1, 'https://cms.yinchunyu.com/uploads/2025-05-08/bNUzvdN5l.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-08/703200128.mp4', 'mp4', 50, 1280, 720, 18360492, '爆裂飞车', 888, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (5, 2, 'https://cms.yinchunyu.com/uploads/2025-05-09/AohB5ymTu.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-09/30cChh1uW.mp4', 'mp4', 78, 1280, 720, 29315802, '独一无二', 1001, 60, 0, 600, 801, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (6, 2, 'https://cms.yinchunyu.com/uploads/2025-05-09/iueQIFqF7.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-09/JUZQGoqj6.mp4', 'mp4', 16, 720, 1280, 826567, 'wowowowo...', 0, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (7, 1, 'https://cms.yinchunyu.com/uploads/2025-05-09/Tx3WNWcHk.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-09/CV2GgALSD.mp4', 'mp4', 26, 720, 1280, 1368064, '你会不会突然的出现#你会不会忽然地出现  #鹿晗  #邓紫棋演唱会 ', 1, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (8, 1, 'https://cms.yinchunyu.com/uploads/2025-05-09/IZBv8dXRE.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-09/gDVpIV9sy.mp4', 'mp4', 31, 720, 1280, 1196032, 'imerecord', 0, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (9, 1, 'https://cms.yinchunyu.com/uploads/2025-05-09/p24UHbI7D.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-09/CDEDoQEYz.mp4', 'mp4', 15, 576, 1024, 2097152, 'Heeseung trend cuốn quá :)) ', 2, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (10, 1, 'https://cms.yinchunyu.com/uploads/2025-05-11/ByJEUCgMe.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-11/dfNBptIig.mp4', 'mp4', 15, 720, 1280, 692224, '可爱的胜利之舞舞蹈视频', 0, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (11, 1, 'https://cms.yinchunyu.com/uploads/2025-05-11/1PNbiclM1.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-11/Kyhi8wX80.mp4', 'mp4', 32, 576, 1026, 1056768, '把妹王二人组 ', 2, 0, 0, 0, 1, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (12, 1, 'https://cms.yinchunyu.com/uploads/2025-05-11/V0H7KVxKi.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-11/pt73gnu6m.mp4', 'mp4', 16, 720, 1280, 1646592, '书', 1, 0, 0, 0, 1, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (13, 1, 'https://cms.yinchunyu.com/uploads/2025-05-11/q4xVqS4Bn.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-11/zyE2Orqfg.mp4', 'mp4', 17, 576, 768, 1650688, '😚😚🥰 ', 0, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (14, 1, 'https://cms.yinchunyu.com/uploads/2025-05-11/pI3ZZqAC9.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-11/uZ0xtgrML.mp4', 'mp4', 12, 576, 1024, 1239974, 'yyy', 2, 0, 0, 0, 1, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (15, 1, 'https://cms.yinchunyu.com/uploads/2025-05-11/W0qzDD1nf.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-11/kZ4Qbcuea.mp4', 'mp4', 20, 576, 1024, 3944448, '加菜熊又要加菜了～ ', 1, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`sys_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '登录过期时长', 'loginTime', '259200', 'Y', '三天(60 * 60 * 24 * 3)', '', '2025-01-02 01:53:49', '', '2025-05-13 01:40:56');
INSERT INTO `sys_config` VALUES (2, '文件上传', 'fileConfig', 'default', 'Y', '参数键值可到文件配置中获取，值为default时默认存储到服务器', '', '2025-04-18 09:03:19', '', '2025-04-19 14:31:34');
INSERT INTO `sys_config` VALUES (3, '注册送金币', 'regGold', '100', 'Y', '新用户注册赠送', '', '2025-12-02 06:35:58', '', '2025-12-05 09:41:13');
INSERT INTO `sys_config` VALUES (4, '邀请者奖励金币', 'inviteReward', '50', 'Y', '用户成功邀请他人注册时，邀请者获得的金币数量', '', '2025-12-05 09:40:23', '', '2025-12-05 09:41:20');
INSERT INTO `sys_config` VALUES (5, '被邀请者奖励金币', 'inviteeReward', '20', 'Y', '用户使用邀请码注册时，被邀请者获得的额外金币数量', '', '2025-12-05 09:40:51', '', '2025-12-05 09:41:24');
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`user_id`),
  KEY `user_dept_id_dept_dept_id_fk` (`dept_id`),
  CONSTRAINT `user_dept_id_dept_dept_id_fk` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (-1, 'laoying', 'laoying', '00', '5428@qq.com', '15677777777', '0', '/uploads/DRYdnUydl.png', '205cef87ef43f79760db6b3bcd2c0984', 'Y2uPc7hyq8Vi5qBc879Ut', '0', '0', '', NULL, 1, '', '', NULL, '', '2024-12-14 09:14:45');
INSERT INTO `user` VALUES (1, 'admin', 'admin', '00', '5428@qq.com', '15677777777', '0', '/uploads/DRYdnUydl.png', '9c68fb331431f8dcfb7defef22b0c527', 'Y2uPc7hyq8Vi5qBc879Ut', '0', '0', '', NULL, 1, '', '', NULL, '', '2024-12-14 09:14:45');
INSERT INTO `user` VALUES (2, 'test', 'test', '00', NULL, NULL, '0', '', '728c992f87ae532307c688d1e212394f', 'BBIs09BXeYNzzzILTqPXQ', '0', '0', '', NULL, 1, '', 'admin', '2024-12-14 09:20:20', 'admin', '2024-12-14 09:20:20');
INSERT INTO `user` VALUES (3, 'eagle', 'eagle', '00', NULL, NULL, '0', '', '1fb95d6d5d2a557386fcbcfd75178b04', 'LHmrkV4f1kNA33kdYT-vL', '0', '0', '', NULL, 1, '', 'laoying', '2025-04-12 15:32:16', 'laoying', '2025-04-14 13:47:42');
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
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
BEGIN;
INSERT INTO `video` VALUES (2, '灌篮高手', 'https://cms.yinchunyu.com/uploads/2025-04-03/93iXAgPes.mp4', 'https://cms.yinchunyu.com/uploads/2025-04-03/jJEy1UQ9N.jpeg', '1682085201153-202759664-403030638.mp4', '/Users/yinchunyu/my/project/chunyu-cms-v2/chunyu-cms-web/uploads/2025-04-03/93iXAgPes.mp4', 15, 486, 864, 3371942, '', '', '2025-04-03 06:22:02', '', '2025-04-03 06:22:02');
INSERT INTO `video` VALUES (3, '按钮波纹悬停效果', 'https://cms.yinchunyu.com/uploads/2025-04-24/yDlLTZTRT.mp4', 'https://cms.yinchunyu.com/uploads/2025-04-24/lgUHzK6mz.jpeg', '按钮波纹悬停效果.mp4', '/data/wwwroot/chunyu-cms-v2/chunyu-cms-web/uploads/2025-04-24/yDlLTZTRT.mp4', 17, 1920, 1080, 2389750, '', '', '2025-04-18 08:56:56', '', '2025-04-24 13:02:58');
INSERT INTO `video` VALUES (4, '私家侦探 预告片', 'https://cms.yinchunyu.com/uploads/2025-04-21/XjUUJl7J0.mp4', 'http://yinchunyu.oss-cn-shenzhen.aliyuncs.com/uploads/2025-04-19/ukEs3nGUY.jpeg', '703200215.mp4', '/data/wwwroot/chunyu-cms-v2/chunyu-cms-web/uploads/2025-04-21/XjUUJl7J0.mp4', 18, 720, 1280, 7659970, '', '', '2025-04-18 08:56:56', '', '2025-04-21 03:05:37');
INSERT INTO `video` VALUES (5, '宇宙守卫队', 'https://cms.yinchunyu.com/uploads/2025-05-09/Q993OBuaa.mp4', 'https://cms.yinchunyu.com/uploads/2025-05-09/YIx4jRj0L.jpeg', '703200128.mp4', '/data/wwwroot/chunyu-cms-v2/chunyu-cms-web/uploads/2025-05-09/Q993OBuaa.mp4', 50, 720, 1280, 18360492, '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `video` VALUES (6, '有病才喜欢你', 'https://cms.yinchunyu.com/uploads/2025-05-13/tLwryR716.mp4', 'https://cms.yinchunyu.com/uploads/2025-05-13/cAG2vEMqq.jpeg', '703200254.mp4', '/data/wwwroot/chunyu-cms-v2/chunyu-cms-web/uploads/2025-05-13/tLwryR716.mp4', 95, 720, 1280, 35630607, '', '', '2025-05-13 06:14:56', '', '2025-05-13 06:14:56');
COMMIT;

-- ----------------------------
-- Table structure for video_resource
-- ----------------------------
DROP TABLE IF EXISTS `video_resource`;
CREATE TABLE `video_resource` (
  `resource_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `resources` varchar(10) NOT NULL DEFAULT '1',
  `url` varchar(500) NOT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-12-05 08:54:28',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-12-05 08:54:28',
  `movie_id` int NOT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of video_resource
-- ----------------------------
BEGIN;
INSERT INTO `video_resource` VALUES (1, '第01集', '1', 'https://play.modujx10.com/20240229/4HZBxyXt/index.m3u8', '', 'admin', '2025-09-26 14:12:00', 'admin', '2025-09-26 14:12:00', 66);
INSERT INTO `video_resource` VALUES (2, '第02集', '1', 'https://play.modujx10.com/20240229/Nsz2aeWd/index.m3u8', '', 'admin', '2025-09-26 14:12:00', 'admin', '2025-09-26 14:12:00', 66);
INSERT INTO `video_resource` VALUES (3, '第03集', '1', 'https://play.modujx10.com/20240229/nk4oDMiw/index.m3u8', '', 'admin', '2025-09-26 14:12:00', 'admin', '2025-09-26 14:12:00', 66);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
