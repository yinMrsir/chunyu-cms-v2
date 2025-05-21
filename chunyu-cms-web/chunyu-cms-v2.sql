/*
 Navicat MySQL Data Transfer

 Source Server         : 47.119.191.19
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : 47.119.191.19:3306
 Source Schema         : chunyu-cms-v2

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 21/05/2025 13:39:00
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
INSERT INTO `cast` VALUES (18, 4, 12, 2, NULL, '', '', '2025-04-12 15:32:16', '', '2025-04-12 15:32:16');
INSERT INTO `cast` VALUES (19, 48, 12, 2, NULL, '', '', '2025-04-12 15:32:16', '', '2025-04-12 15:32:16');
INSERT INTO `cast` VALUES (20, 52, 13, 21, '欧阳伟业', '', '', '2025-04-18 08:56:56', '', '2025-04-18 08:56:56');
INSERT INTO `cast` VALUES (21, 64, 14, 21, '叶子杰', '', '', '2025-05-13 06:14:56', '', '2025-05-13 06:14:56');
INSERT INTO `cast` VALUES (22, 64, 15, 21, '叶梓洁', '', '', '2025-05-13 06:14:56', '', '2025-05-13 06:14:56');
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES (1, 4, 1, '1', '精彩，终于可以看了！', 8647, '', '', '2025-05-13 06:18:04', '', '2025-05-13 06:14:56');
INSERT INTO `comment` VALUES (2, 4, 1, '1', '爱看❤️', 2980, '', '', '2025-05-13 08:06:59', '', '2025-05-13 06:14:56');
INSERT INTO `comment` VALUES (3, 4, 1, '0', '可以哦～', 2360, '', '', '2025-05-13 08:07:27', '', '2025-05-13 06:14:56');
INSERT INTO `comment` VALUES (4, 4, 2, '1', '期待上映，私家侦探好看！', 7202, '', '', '2025-05-13 08:08:36', '', '2025-05-13 06:14:56');
INSERT INTO `comment` VALUES (5, 2, 2, '1', '牛逼啊～', 9318, '', '', '2025-05-13 08:16:16', '', '2025-05-13 06:14:56');
INSERT INTO `comment` VALUES (6, 5, 2, '1', '匹夫，速速更新', 13728, '', '', '2025-05-13 08:17:20', '', '2025-05-13 06:14:56');
INSERT INTO `comment` VALUES (7, 6, 1, '1', '期待上映～', 69258, '', '', '2025-05-13 13:13:48', '', '2025-05-13 06:14:56');
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of job
-- ----------------------------
BEGIN;
INSERT INTO `job` VALUES (1, '同步微信支付订单状态', 'DEFAULT', 'syncOrderStatus()', '0/30 * * * * ?', '2', '1', '1', '', '', '2024-12-22 03:13:18', '', '2025-05-15 08:38:45');
INSERT INTO `job` VALUES (3, '生成周排名(每30分钟执行一次)', 'DEFAULT', 'generateWeeklyStatistics()', '0 0/30 * ? * *', '1', '1', '0', '', '', '2025-05-21 03:52:59', '', '2025-05-21 03:59:25');
INSERT INTO `job` VALUES (4, '生成月排名(每30分钟执行一次)', 'DEFAULT', 'generateMonthStatistics()', '0 1/30 * * * ?', '1', '1', '0', '', '', '2025-05-21 03:52:59', '', '2025-05-21 03:59:47');
INSERT INTO `job` VALUES (5, '生成年排名(每天零点执行一次)', 'DEFAULT', 'generateYearStatistics()', '0 0 0 1/1 * ?', '1', '1', '0', '', '', '2025-05-21 03:52:59', '', '2025-05-21 03:52:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=8615 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
) ENGINE=InnoDB AUTO_INCREMENT=411 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`member_like_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`member_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`member_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  `birthday` date DEFAULT NULL,
  `sex` char(1) NOT NULL DEFAULT '0',
  `introduction` varchar(500) DEFAULT '',
  PRIMARY KEY (`member_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_user
-- ----------------------------
BEGIN;
INSERT INTO `member_user` VALUES (1, '542968439@qq.com', '512fbd59e5d63f9624cb2bf57592549d', '前端老鹰', NULL, 'https://cms.yinchunyu.com/uploads/2025-04-29/SmGhRjJeF.jpeg', 'lapn6iUXnzfdrRjmhmZWY', '0', '119.39.23.122', '2025-05-19 09:00:40', '', '', '2025-04-28 08:28:35', '', '2025-04-30 01:46:10', '2025-04-01', '1', 'Hi，你好！我的朋友~ 跟我一起探索更多前端动效，体验新Cs...');
INSERT INTO `member_user` VALUES (2, '542968430@qq.com', '512fbd59e5d63f9624cb2bf57592549d', '芝士焗月亮', NULL, 'https://cms.yinchunyu.com/uploads/2025-05-13/diSQllSAy.jpeg', 'lapn6iUXnzfdrRjmhmZWY', '0', '119.39.23.122', '2025-05-19 09:18:03', '', '', '2025-04-28 08:28:35', '', '2025-05-13 08:12:56', '2025-04-01', '1', 'Hi，你好！我的朋友~ 跟我一起探索更多前端动效，体验新Cs...');
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`member_wallet_id`),
  UNIQUE KEY `member_wallet_member_user_id_unique` (`member_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_wallet
-- ----------------------------
BEGIN;
INSERT INTO `member_wallet` VALUES (1, 1, 91, '', '', '2025-05-14 08:25:28', '', '2025-05-14 08:40:30');
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`member_wallet_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of member_wallet_log
-- ----------------------------
BEGIN;
INSERT INTO `member_wallet_log` VALUES (1, 1, 100, '1', '充值 +100', '', '2025-05-14 08:40:13', '', '2025-05-14 08:25:28');
INSERT INTO `member_wallet_log` VALUES (2, 1, 90, '2', '购买影片:有病才会喜欢你 -10', '', '2025-05-14 08:40:30', '', '2025-05-14 08:25:28');
INSERT INTO `member_wallet_log` VALUES (3, 1, 91, '1', '充值 +1', '', '2025-05-15 03:51:11', '', '2025-05-14 08:25:28');
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `menu` VALUES (109, '影视列表', 1, 'list', 'movie/list/index', NULL, 1, '0', 'C', '0', '0', NULL, 'list', 106, '109.', '', 'admin', '2025-04-03 06:22:02', 'laoying', '2025-04-25 03:28:39');
INSERT INTO `menu` VALUES (110, '文件配置', 8, 'file-config', 'system/file-config/index', NULL, 1, '0', 'C', '0', '0', 'system:file-config:list', 'documentation', 1, '1.110.', '', 'laoying', '2025-04-18 08:56:56', 'laoying', '2025-04-18 08:56:56');
INSERT INTO `menu` VALUES (111, '会员中心', 4, 'member', NULL, NULL, 1, '0', 'M', '0', '0', NULL, 'peoples', 0, '', '', 'laoying', '2025-04-28 08:24:00', 'laoying', '2025-05-09 07:43:23');
INSERT INTO `menu` VALUES (112, '会员管理', 1, 'users', 'member/user/index', NULL, 1, '0', 'C', '0', '0', NULL, 'user', 111, '112.', '', 'laoying', '2025-04-28 08:24:00', 'laoying', '2025-04-28 08:24:00');
INSERT INTO `menu` VALUES (113, '短视频', 2, 'shorts', NULL, NULL, 1, '0', 'M', '0', '0', NULL, 'example', 0, '', '', 'laoying', '2025-05-08 08:41:52', 'laoying', '2025-05-08 08:41:52');
INSERT INTO `menu` VALUES (114, '视频管理', 1, 'short', 'short/list/index', NULL, 1, '0', 'C', '0', '0', NULL, 'international', 113, '114.', '', 'laoying', '2025-05-08 08:41:52', 'laoying', '2025-05-08 08:41:52');
INSERT INTO `menu` VALUES (115, '评论管理', 4, 'comment', 'movie/comment/list/index', NULL, 1, '0', 'C', '0', '0', NULL, 'list', 106, '115.', '', 'laoying', '2025-05-13 06:14:56', 'laoying', '2025-05-13 06:14:56');
INSERT INTO `menu` VALUES (116, '订单列表', 2, 'member-order', 'member/orders/index', NULL, 1, '0', 'C', '0', '0', NULL, 'money', 111, '116.', '', 'laoying', '2025-05-15 08:33:31', 'laoying', '2025-05-15 08:33:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `movie_basic_to_country` VALUES (19, 64, 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `movie_basic_to_genre` VALUES (101, 64, 10);
INSERT INTO `movie_basic_to_genre` VALUES (102, 64, 7);
INSERT INTO `movie_basic_to_genre` VALUES (103, 64, 3);
INSERT INTO `movie_basic_to_genre` VALUES (107, 48, 6);
INSERT INTO `movie_basic_to_genre` VALUES (108, 48, 11);
INSERT INTO `movie_basic_to_genre` VALUES (109, 48, 10);
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`movie_basics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
INSERT INTO `movie_basics` VALUES (48, '0', '0', NULL, '超级保镖', 'https://cms.yinchunyu.com/uploads/2025-04-12/84WAoRlXO.jpeg', NULL, NULL, NULL, NULL, 'movie', 2000, NULL, NULL, NULL, '2D', 1, '0', NULL, NULL, NULL, NULL, '1', '汉语普通话', '动作,爱情,战争,剧情', '<p>索马里海域外，中国商船遭遇劫持，船员全数沦为阶下囚。蛟龙突击队沉着应对，潜入商船进行突袭，成功解救全部人质。 返航途中，非洲北部伊维亚共和国发生政变，恐怖组织连同叛军攻入首都，当地华侨面临危险，海军战舰接到上级命令改变航向，前往执行撤侨任务。蛟龙突击队八人，整装待发。 时间紧迫，在&ldquo;撤侨遇袭可反击，相反则必须避免交火，以免引起外交冲突&rdquo;的大原则下，海军战舰及蛟龙突击队深入伊维亚，在恶劣的环境之下，借助海陆等多种装备，成功营救了被恐怖分子追击的中国领事馆巴士。 然而事情尚未完结，就在掩护华侨撤离之际，蛟龙突击队即将遭遇的远不止人质营救那么简单，恐怖分子的惊天阴谋即将浮出水面。</p>', 1, 1000, 1, '', 'laoying', '2025-04-12 15:54:29', 'laoying', '2025-05-14 08:42:37');
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
INSERT INTO `movie_basics` VALUES (64, '0', '1', NULL, '有病才会喜欢你', 'https://cms.yinchunyu.com/uploads/2025-05-13/ao4kZx9Xv.png', NULL, NULL, NULL, 'Lovesick', 'movie', 2025, NULL, '111', NULL, '2D', NULL, '0', NULL, NULL, NULL, NULL, NULL, '汉语普通话', NULL, '<p>我们忘不掉的是青春，还是青春里的那个人呢？一个是吊儿郎当，活在当下的学渣叶子杰（詹怀云 饰），在面临退学危机时，意外发现装病似乎可以逃过一劫？一个是沉稳内敛，渴望未来的学霸叶梓洁（江齐 饰），她仿佛装了测谎雷达，总会找到叶子杰疑似装病的证据！两个人相似的名字暗示了他们注定交织的命运。原本水火不相容的他们，因为这场&ldquo;有病&rdquo;乌龙，在一次次谍对谍的较量中渐渐靠近，暗生情愫&hellip;然而青春常常伴随遗憾，相爱的人也总是难免分离，但也正因如此，才要把握现在，在这个明媚的春天，即刻告白吧！告诉那个人：我就是有病，才会这么喜欢你。</p>', 1, 10, 1, '', 'laoying', '2025-05-13 13:09:59', 'laoying', '2025-05-13 13:09:59');
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_month_visits
-- ----------------------------
BEGIN;
INSERT INTO `movie_month_visits` VALUES (1, 48, '2025-05', 87, 87, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (2, 47, '2025-05', 36, 36, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (3, 44, '2025-05', 15, 15, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (4, 52, '2025-05', 130, 130, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (5, 40, '2025-05', 35, 35, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (6, 49, '2025-05', 21, 21, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (7, 57, '2025-05', 21, 21, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (8, 53, '2025-05', 30, 30, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (9, 23, '2025-05', 16, 16, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (10, 61, '2025-05', 25, 25, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (11, 4, '2025-05', 11, 11, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (12, 46, '2025-05', 37, 37, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (13, 21, '2025-05', 7, 7, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (14, 29, '2025-05', 35, 35, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (15, 50, '2025-05', 44, 44, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (16, 26, '2025-05', 31, 31, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (17, 24, '2025-05', 22, 22, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (18, 45, '2025-05', 18, 18, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (19, 58, '2025-05', 46, 46, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (20, 39, '2025-05', 16, 16, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (21, 32, '2025-05', 13, 13, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (22, 19, '2025-05', 7, 7, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (23, 30, '2025-05', 8, 8, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (24, 56, '2025-05', 17, 17, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (25, 59, '2025-05', 18, 18, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (26, 1, '2025-05', 24, 24, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (27, 54, '2025-05', 43, 43, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (28, 60, '2025-05', 18, 18, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (29, 55, '2025-05', 22, 22, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (30, 25, '2025-05', 19, 19, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (31, 51, '2025-05', 33, 33, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (32, 36, '2025-05', 9, 9, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (33, 37, '2025-05', 13, 13, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (34, 42, '2025-05', 16, 16, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (35, 43, '2025-05', 18, 18, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (36, 27, '2025-05', 14, 14, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (37, 17, '2025-05', 6, 6, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (38, 35, '2025-05', 17, 17, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (39, 33, '2025-05', 17, 17, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (40, 20, '2025-05', 7, 7, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (41, 31, '2025-05', 9, 9, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (42, 18, '2025-05', 6, 6, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (43, 22, '2025-05', 8, 8, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (44, 63, '2025-05', 17, 17, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (45, 28, '2025-05', 6, 6, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
INSERT INTO `movie_month_visits` VALUES (46, 64, '2025-05', 58, 58, '', '', '2025-05-21 03:57:50', '', '2025-05-21 05:31:00');
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_pv
-- ----------------------------
BEGIN;
INSERT INTO `movie_pv` VALUES (1, 48, 87);
INSERT INTO `movie_pv` VALUES (2, 47, 36);
INSERT INTO `movie_pv` VALUES (3, 44, 15);
INSERT INTO `movie_pv` VALUES (4, 52, 130);
INSERT INTO `movie_pv` VALUES (5, 40, 35);
INSERT INTO `movie_pv` VALUES (6, 49, 21);
INSERT INTO `movie_pv` VALUES (7, 57, 21);
INSERT INTO `movie_pv` VALUES (8, 53, 30);
INSERT INTO `movie_pv` VALUES (9, 23, 16);
INSERT INTO `movie_pv` VALUES (11, 61, 25);
INSERT INTO `movie_pv` VALUES (12, 4, 11);
INSERT INTO `movie_pv` VALUES (13, 46, 37);
INSERT INTO `movie_pv` VALUES (14, 21, 7);
INSERT INTO `movie_pv` VALUES (15, 29, 35);
INSERT INTO `movie_pv` VALUES (16, 50, 44);
INSERT INTO `movie_pv` VALUES (18, 26, 31);
INSERT INTO `movie_pv` VALUES (19, 24, 22);
INSERT INTO `movie_pv` VALUES (20, 45, 18);
INSERT INTO `movie_pv` VALUES (21, 58, 46);
INSERT INTO `movie_pv` VALUES (22, 39, 16);
INSERT INTO `movie_pv` VALUES (23, 32, 13);
INSERT INTO `movie_pv` VALUES (24, 19, 7);
INSERT INTO `movie_pv` VALUES (25, 30, 8);
INSERT INTO `movie_pv` VALUES (26, 56, 17);
INSERT INTO `movie_pv` VALUES (27, 59, 18);
INSERT INTO `movie_pv` VALUES (28, 1, 24);
INSERT INTO `movie_pv` VALUES (29, 54, 43);
INSERT INTO `movie_pv` VALUES (30, 60, 18);
INSERT INTO `movie_pv` VALUES (31, 55, 22);
INSERT INTO `movie_pv` VALUES (32, 25, 19);
INSERT INTO `movie_pv` VALUES (33, 51, 33);
INSERT INTO `movie_pv` VALUES (34, 36, 9);
INSERT INTO `movie_pv` VALUES (35, 37, 13);
INSERT INTO `movie_pv` VALUES (36, 42, 16);
INSERT INTO `movie_pv` VALUES (37, 43, 18);
INSERT INTO `movie_pv` VALUES (41, 27, 14);
INSERT INTO `movie_pv` VALUES (42, 17, 6);
INSERT INTO `movie_pv` VALUES (43, 35, 17);
INSERT INTO `movie_pv` VALUES (44, 33, 17);
INSERT INTO `movie_pv` VALUES (45, 20, 7);
INSERT INTO `movie_pv` VALUES (46, 31, 9);
INSERT INTO `movie_pv` VALUES (47, 18, 6);
INSERT INTO `movie_pv` VALUES (48, 22, 8);
INSERT INTO `movie_pv` VALUES (49, 63, 17);
INSERT INTO `movie_pv` VALUES (50, 28, 6);
INSERT INTO `movie_pv` VALUES (51, 64, 58);
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`movie_rate_id`),
  UNIQUE KEY `movie_rate_movie_basics_id_unique` (`movie_basics_id`),
  CONSTRAINT `movie_rate_movie_basics_id_fkey` FOREIGN KEY (`movie_basics_id`) REFERENCES `movie_basics` (`movie_basics_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`movie_video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_video
-- ----------------------------
BEGIN;
INSERT INTO `movie_video` VALUES (1, 4, '1', '黑金风暴第一集', 2, '', 1, '0', '', '', '2025-04-07 09:20:01', '', '2025-04-15 14:31:20');
INSERT INTO `movie_video` VALUES (3, 17, '1', 'ss', 2, '', 1, '0', '', '', '2025-04-07 14:14:38', '', '2025-04-07 14:14:38');
INSERT INTO `movie_video` VALUES (4, 4, '1', '黑金风暴第二集', 1, '', 2, '0', '', '', '2025-04-12 15:32:16', '', '2025-04-12 15:32:16');
INSERT INTO `movie_video` VALUES (6, 48, '1', '超级保镖-下', 2, '', 2, '0', '', '', '2025-04-12 15:32:16', '', '2025-04-12 15:32:16');
INSERT INTO `movie_video` VALUES (7, 50, '1', '洪武大案-第一集', 2, '', 1, '0', '', '', '2025-04-17 06:41:51', '', '2025-04-17 06:41:51');
INSERT INTO `movie_video` VALUES (8, 50, '1', '洪武大案-第二集', 2, '', 2, '0', '', '', '2025-04-17 06:41:51', '', '2025-04-17 06:41:51');
INSERT INTO `movie_video` VALUES (9, 50, '1', '洪武大案-第三集', 2, '', 3, '0', '', '', '2025-04-17 06:41:51', '', '2025-04-17 06:41:51');
INSERT INTO `movie_video` VALUES (10, 52, '2', '私家侦探 预告片', 4, '', 1, '0', '', '', '2025-04-18 08:56:56', '', '2025-04-18 08:56:56');
INSERT INTO `movie_video` VALUES (11, 53, '1', '斗破', 2, '', 1, '0', '', '', '2025-04-28 08:24:00', '', '2025-04-28 08:24:00');
INSERT INTO `movie_video` VALUES (12, 24, '1', '宇宙守卫队', 5, '', 1, '0', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `movie_video` VALUES (13, 58, '1', '宇宙守卫队', 5, '', 1, '0', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `movie_video` VALUES (14, 1, '1', '宇宙守卫队', 5, '', 1, '0', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `movie_video` VALUES (15, 18, '2', '私家侦探', 4, '', 1, '0', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `movie_video` VALUES (16, 48, '1', '超级保镖-宇宙守卫队', 5, '', 3, '0', '', '', '2025-05-13 06:14:56', '', '2025-05-14 08:42:26');
INSERT INTO `movie_video` VALUES (17, 64, '1', '有病才喜欢你', 6, '', 1, '0', '', '', '2025-05-13 06:14:56', '', '2025-05-13 06:14:56');
INSERT INTO `movie_video` VALUES (18, 48, '1', '超级保镖2', 6, '', 1, '0', '', '', '2025-05-14 08:25:28', '', '2025-05-14 08:25:28');
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_weekly_visits
-- ----------------------------
BEGIN;
INSERT INTO `movie_weekly_visits` VALUES (1, 48, '2025-21', 87, 87, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (2, 47, '2025-21', 36, 36, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (3, 44, '2025-21', 15, 15, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (4, 52, '2025-21', 130, 130, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (5, 40, '2025-21', 35, 35, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (6, 49, '2025-21', 21, 21, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (7, 57, '2025-21', 21, 21, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (8, 53, '2025-21', 30, 30, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (9, 23, '2025-21', 16, 16, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (10, 61, '2025-21', 25, 25, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (11, 4, '2025-21', 11, 11, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (12, 46, '2025-21', 37, 37, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (13, 21, '2025-21', 7, 7, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (14, 29, '2025-21', 35, 35, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (15, 50, '2025-21', 44, 44, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (16, 26, '2025-21', 31, 31, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (17, 24, '2025-21', 22, 22, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (18, 45, '2025-21', 18, 18, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (19, 58, '2025-21', 46, 46, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (20, 39, '2025-21', 16, 16, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (21, 32, '2025-21', 13, 13, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (22, 19, '2025-21', 7, 7, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (23, 30, '2025-21', 8, 8, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (24, 56, '2025-21', 17, 17, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (25, 59, '2025-21', 18, 18, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (26, 1, '2025-21', 24, 24, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (27, 54, '2025-21', 43, 43, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (28, 60, '2025-21', 18, 18, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (29, 55, '2025-21', 22, 22, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (30, 25, '2025-21', 19, 19, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (31, 51, '2025-21', 33, 33, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (32, 36, '2025-21', 9, 9, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (33, 37, '2025-21', 13, 13, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (34, 42, '2025-21', 16, 16, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (35, 43, '2025-21', 18, 18, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (36, 27, '2025-21', 14, 14, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (37, 17, '2025-21', 6, 6, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (38, 35, '2025-21', 17, 17, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (39, 33, '2025-21', 17, 17, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (40, 20, '2025-21', 7, 7, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (41, 31, '2025-21', 9, 9, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (42, 18, '2025-21', 6, 6, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (43, 22, '2025-21', 8, 8, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (44, 63, '2025-21', 17, 17, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (45, 28, '2025-21', 6, 6, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
INSERT INTO `movie_weekly_visits` VALUES (46, 64, '2025-21', 58, 58, '', '', '2025-05-21 03:57:45', '', '2025-05-21 05:30:00');
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_year_visits
-- ----------------------------
BEGIN;
INSERT INTO `movie_year_visits` VALUES (1, 48, '2025', 87, 87, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (2, 47, '2025', 36, 36, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (3, 44, '2025', 15, 15, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (4, 52, '2025', 130, 130, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (5, 40, '2025', 35, 35, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (6, 49, '2025', 21, 21, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (7, 57, '2025', 21, 21, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (8, 53, '2025', 30, 30, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (9, 23, '2025', 16, 16, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (10, 61, '2025', 25, 25, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (11, 4, '2025', 11, 11, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (12, 46, '2025', 37, 37, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (13, 21, '2025', 6, 6, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (14, 29, '2025', 35, 35, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (15, 50, '2025', 44, 44, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (16, 26, '2025', 31, 31, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (17, 24, '2025', 22, 22, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (18, 45, '2025', 18, 18, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (19, 58, '2025', 46, 46, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (20, 39, '2025', 16, 16, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (21, 32, '2025', 12, 12, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (22, 19, '2025', 7, 7, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (23, 30, '2025', 8, 8, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (24, 56, '2025', 17, 17, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (25, 59, '2025', 18, 18, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (26, 1, '2025', 24, 24, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (27, 54, '2025', 43, 43, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (28, 60, '2025', 18, 18, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (29, 55, '2025', 22, 22, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (30, 25, '2025', 19, 19, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (31, 51, '2025', 33, 33, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (32, 36, '2025', 9, 9, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (33, 37, '2025', 13, 13, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (34, 42, '2025', 16, 16, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (35, 43, '2025', 18, 18, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (36, 27, '2025', 14, 14, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (37, 17, '2025', 6, 6, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (38, 35, '2025', 17, 17, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (39, 33, '2025', 17, 17, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (40, 20, '2025', 7, 7, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (41, 31, '2025', 9, 9, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (42, 18, '2025', 6, 6, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (43, 22, '2025', 8, 8, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (44, 63, '2025', 17, 17, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (45, 28, '2025', 5, 5, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
INSERT INTO `movie_year_visits` VALUES (46, 64, '2025', 57, 57, '', '', '2025-05-21 03:57:54', '', '2025-05-21 03:57:54');
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
INSERT INTO `short` VALUES (5, 2, 'https://cms.yinchunyu.com/uploads/2025-05-09/AohB5ymTu.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-09/30cChh1uW.mp4', 'mp4', 78, 1280, 720, 29315802, '独一无二', 1000, 60, 0, 600, 800, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (6, 2, 'https://cms.yinchunyu.com/uploads/2025-05-09/iueQIFqF7.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-09/JUZQGoqj6.mp4', 'mp4', 16, 720, 1280, 826567, 'wowowowo...', 0, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (7, 1, 'https://cms.yinchunyu.com/uploads/2025-05-09/Tx3WNWcHk.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-09/CV2GgALSD.mp4', 'mp4', 26, 720, 1280, 1368064, '你会不会突然的出现#你会不会忽然地出现  #鹿晗  #邓紫棋演唱会 ', 1, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (8, 1, 'https://cms.yinchunyu.com/uploads/2025-05-09/IZBv8dXRE.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-09/gDVpIV9sy.mp4', 'mp4', 31, 720, 1280, 1196032, 'imerecord', 0, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (9, 1, 'https://cms.yinchunyu.com/uploads/2025-05-09/p24UHbI7D.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-09/CDEDoQEYz.mp4', 'mp4', 15, 576, 1024, 2097152, 'Heeseung trend cuốn quá :)) ', 2, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (10, 1, 'https://cms.yinchunyu.com/uploads/2025-05-11/ByJEUCgMe.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-11/dfNBptIig.mp4', 'mp4', 15, 720, 1280, 692224, '可爱的胜利之舞舞蹈视频', 0, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (11, 1, 'https://cms.yinchunyu.com/uploads/2025-05-11/1PNbiclM1.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-11/Kyhi8wX80.mp4', 'mp4', 32, 576, 1026, 1056768, '把妹王二人组 ', 2, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (12, 1, 'https://cms.yinchunyu.com/uploads/2025-05-11/V0H7KVxKi.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-11/pt73gnu6m.mp4', 'mp4', 16, 720, 1280, 1646592, '书', 1, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (13, 1, 'https://cms.yinchunyu.com/uploads/2025-05-11/q4xVqS4Bn.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-11/zyE2Orqfg.mp4', 'mp4', 17, 576, 768, 1650688, '😚😚🥰 ', 0, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
INSERT INTO `short` VALUES (14, 1, 'https://cms.yinchunyu.com/uploads/2025-05-11/pI3ZZqAC9.jpeg', 'https://cms.yinchunyu.com/uploads/2025-05-11/uZ0xtgrML.mp4', 'mp4', 12, 576, 1024, 1239974, 'yyy', 2, 0, 0, 0, 0, '1', '1', '', '', '2025-05-08 08:41:52', '', '2025-05-08 08:41:52');
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
  PRIMARY KEY (`sys_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '登录过期时长', 'loginTime', '259200', 'Y', '三天(60 * 60 * 24 * 3)', '', '2025-01-02 01:53:49', '', '2025-05-13 01:40:56');
INSERT INTO `sys_config` VALUES (2, '文件上传', 'fileConfig', 'default', 'Y', '参数键值可到文件配置中获取，值为default时默认存储到服务器', '', '2025-04-18 09:03:19', '', '2025-04-19 14:31:34');
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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
  `create_time` datetime DEFAULT '2025-05-21 03:52:59',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-05-21 03:52:59',
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

SET FOREIGN_KEY_CHECKS = 1;
