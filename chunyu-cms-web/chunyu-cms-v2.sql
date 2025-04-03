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

 Date: 03/04/2025 21:03:12
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  PRIMARY KEY (`actor_id`),
  UNIQUE KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of actor
-- ----------------------------
BEGIN;
INSERT INTO `actor` VALUES (1, 'http://localhost:3000/uploads/2025-04-03/pDRmWJag7.jpeg', '申奥', '', '', '', '1', NULL, NULL, 1, '', NULL, '', '', '2025-04-03 03:25:01', '', '2025-04-03 05:56:50');
INSERT INTO `actor` VALUES (2, 'http://localhost:3000/uploads/2025-04-03/BqDkpQUEo.jpeg', '王一博', 'Yibo Wang', '白牡丹,小王子', '', '1', '1997-08-05', NULL, 1, '', NULL, '', '', '2025-04-03 03:25:01', '', '2025-04-03 03:25:01');
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of columns
-- ----------------------------
BEGIN;
INSERT INTO `columns` VALUES (1, '电影', '1', 'movie', 1, '0');
INSERT INTO `columns` VALUES (2, '电视剧', '1', 'tv', 2, '0');
INSERT INTO `columns` VALUES (3, '动漫', '1', 'cartoon', 3, '0');
INSERT INTO `columns` VALUES (4, '综艺', '1', 'variety', 4, '0');
INSERT INTO `columns` VALUES (5, '源码下载', '2', 'https://github.com/yinMrsir/chunyu-cms', 5, '0');
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of country
-- ----------------------------
BEGIN;
INSERT INTO `country` VALUES (1, '中国', '', '0', '中华人民共和国', '亚洲', 'china', 'the People\'s Republic of China', '', NULL, NULL, 'http://localhost:3000/uploads/2025-01-03/nGKCeZYRd.jpeg', '', '', '', '2025-01-03 06:51:20', '', '2025-02-13 08:49:16', NULL);
INSERT INTO `country` VALUES (2, '美国', 'USA', '0', '美利坚合众国', '北美洲', '', 'The United States of America', '', NULL, NULL, 'http://localhost:3000/uploads/2025-01-03/bvBagglbR.jpeg', '', '', '', '2025-01-03 06:51:20', '', '2025-01-03 06:54:40', NULL);
INSERT INTO `country` VALUES (7, '英国', 'GBR', '0', '大不列颠及北爱尔兰联合王国', '欧洲', '', 'United Kingdom of Great Britain and Northern Ireland', '', NULL, NULL, NULL, '', '', '', '2025-02-14 02:41:05', '', '2025-02-14 02:41:05', NULL);
INSERT INTO `country` VALUES (8, '韩国', '', '0', '大韩民国', '亚洲', '', 'Republic of Korea', '대한민국', NULL, NULL, NULL, '', '', '', '2025-02-14 02:41:05', '', '2025-02-14 02:41:05', NULL);
INSERT INTO `country` VALUES (9, '日本', '', '0', '日本国', '亚洲', 'Japan', 'Japan', 'にほんこく', NULL, NULL, NULL, '', '', '', '2025-02-14 02:41:05', '', '2025-02-14 02:41:05', NULL);
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  PRIMARY KEY (`dict_data_id`),
  KEY `dict_data_dict_type_id_dict_type_dict_id_fk` (`dict_type_id`),
  CONSTRAINT `dict_data_dict_type_id_dict_type_dict_id_fk` FOREIGN KEY (`dict_type_id`) REFERENCES `dict_type` (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type_dict_type_unique` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of language
-- ----------------------------
BEGIN;
INSERT INTO `language` VALUES (1, '国语', NULL, 1, NULL, NULL, NULL, NULL, NULL, '', '', '2025-01-03 07:32:38', '', '2025-01-03 08:34:34');
INSERT INTO `language` VALUES (3, '粤语', NULL, 1, NULL, NULL, NULL, NULL, NULL, '', '', '2025-01-03 07:32:38', '', '2025-02-13 08:50:33');
INSERT INTO `language` VALUES (5, '英语', NULL, 7, NULL, NULL, NULL, NULL, NULL, '', '', '2025-02-14 02:41:05', '', '2025-02-14 02:41:05');
INSERT INTO `language` VALUES (6, '韩语', NULL, 8, NULL, NULL, NULL, NULL, NULL, '', '', '2025-02-14 02:41:05', '', '2025-02-14 02:41:05');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of login_info
-- ----------------------------
BEGIN;
INSERT INTO `login_info` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-14 09:20:39');
INSERT INTO `login_info` VALUES (2, 'test', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-14 14:09:49');
INSERT INTO `login_info` VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-16 01:36:30');
INSERT INTO `login_info` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-16 09:23:29');
INSERT INTO `login_info` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-16 09:37:08');
INSERT INTO `login_info` VALUES (6, 'admin', '', '未知', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-16 10:55:47');
INSERT INTO `login_info` VALUES (7, 'admin', '', '未知', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-16 11:28:42');
INSERT INTO `login_info` VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-16 11:54:32');
INSERT INTO `login_info` VALUES (9, 'admin', '', '未知', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-16 11:57:32');
INSERT INTO `login_info` VALUES (10, 'admin', '', '未知', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-16 11:59:56');
INSERT INTO `login_info` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-19 14:27:16');
INSERT INTO `login_info` VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-19 14:52:50');
INSERT INTO `login_info` VALUES (13, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2024-12-21 15:24:23');
INSERT INTO `login_info` VALUES (14, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2025-01-02 01:39:13');
INSERT INTO `login_info` VALUES (15, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2025-01-02 09:02:29');
INSERT INTO `login_info` VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2025-01-02 09:03:54');
INSERT INTO `login_info` VALUES (17, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2025-01-02 09:04:54');
INSERT INTO `login_info` VALUES (18, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2025-01-02 09:06:22');
INSERT INTO `login_info` VALUES (19, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2025-01-03 09:16:41');
INSERT INTO `login_info` VALUES (20, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2025-01-03 09:26:54');
INSERT INTO `login_info` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2025-01-03 09:27:41');
INSERT INTO `login_info` VALUES (22, 'admin', '', '未知', 'Chrome131', 'macOS10.15.7', '1', '密码错误', '2025-01-07 02:00:30');
INSERT INTO `login_info` VALUES (23, 'admin', '', '未知', 'Chrome131', 'macOS10.15.7', '0', '登录成功', '2025-01-07 02:00:42');
INSERT INTO `login_info` VALUES (24, 'admin', '127.0.0.1', '内网IP', 'Chrome132', 'macOS10.15.7', '1', '密码错误', '2025-02-13 03:07:28');
INSERT INTO `login_info` VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome132', 'macOS10.15.7', '1', '密码错误', '2025-02-13 03:07:31');
INSERT INTO `login_info` VALUES (26, 'admin', '127.0.0.1', '内网IP', 'Chrome132', 'macOS10.15.7', '1', '验证码错误', '2025-02-13 03:07:43');
INSERT INTO `login_info` VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome132', 'macOS10.15.7', '0', '登录成功', '2025-02-13 03:08:14');
INSERT INTO `login_info` VALUES (28, 'admin', '', '未知', 'Chrome132', 'macOS10.15.7', '0', '登录成功', '2025-02-19 07:29:41');
INSERT INTO `login_info` VALUES (29, 'admin', '127.0.0.1', '内网IP', 'Chrome133', 'macOS10.15.7', '1', '密码错误', '2025-03-14 06:33:19');
INSERT INTO `login_info` VALUES (30, 'admin', '127.0.0.1', '内网IP', 'Chrome133', 'macOS10.15.7', '0', '登录成功', '2025-03-14 06:33:28');
INSERT INTO `login_info` VALUES (31, 'admin', '127.0.0.1', '内网IP', 'Chrome134', 'macOS10.15.7', '1', '密码错误', '2025-04-02 06:04:25');
INSERT INTO `login_info` VALUES (32, 'admin', '127.0.0.1', '内网IP', 'Chrome134', 'macOS10.15.7', '1', '验证码错误', '2025-04-02 06:05:42');
INSERT INTO `login_info` VALUES (33, 'admin', '127.0.0.1', '内网IP', 'Chrome134', 'macOS10.15.7', '0', '登录成功', '2025-04-02 06:06:08');
INSERT INTO `login_info` VALUES (34, 'admin', '127.0.0.1', '内网IP', 'Chrome134', 'macOS10.15.7', '0', '登录成功', '2025-04-03 06:19:34');
INSERT INTO `login_info` VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome134', 'macOS10.15.7', '0', '登录成功', '2025-04-03 11:07:45');
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
COMMIT;

-- ----------------------------
-- Table structure for movie_basic_to_country
-- ----------------------------
DROP TABLE IF EXISTS `movie_basic_to_country`;
CREATE TABLE `movie_basic_to_country` (
  `movie_basics_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_basic_to_country
-- ----------------------------
BEGIN;
INSERT INTO `movie_basic_to_country` VALUES (4, 1);
INSERT INTO `movie_basic_to_country` VALUES (4, 2);
INSERT INTO `movie_basic_to_country` VALUES (4, 7);
INSERT INTO `movie_basic_to_country` VALUES (1, 1);
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
  `genres` varchar(100) DEFAULT NULL,
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  PRIMARY KEY (`movie_basics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_basics
-- ----------------------------
BEGIN;
INSERT INTO `movie_basics` VALUES (1, '0', '2', NULL, '大宋少年志2', 'http://localhost:3000/uploads/2025-04-03/3I4O3ob3p.png', NULL, NULL, NULL, NULL, 'tv', '国产剧', 2023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 2, '0', '国语', '剧情,古装', '<p>庆历年间，北宋为免除战事，维护各民族间的和平与稳定，借秘阁之名培训少年暗探。经过严密的选拔和审查，聪慧的元仲辛、美貌机敏的赵简、从不杀生的小景、绝不说谎的王宽、不爱交流的薛映、性格开朗的韦衙内六位少年组成了秘阁第七斋。在经历了一次次生死相关的任务后，曾经年轻懵懂的少年们逐渐成长，他们彼此团结，用自己的热血和忠诚为保卫和平献身消除大宋面临的灾难。遍体鳞伤的少年们，终于可以踏上归家之路，他们为国而战，百死无悔，同时他们也相信，未来的岁月里，会有更多少年，为了理想而战，不懂后退，世界总是被这样的少年点亮，那是名为希望的光芒。</p>', 1, 5, 1, '', '', '2025-04-03 12:28:21', '', '2025-04-03 13:01:57');
INSERT INTO `movie_basics` VALUES (4, '0', '0', NULL, '121', 'http://localhost:3000/uploads/2025-04-03/DE47ChRy7.jpeg', NULL, NULL, NULL, NULL, 'movie', '喜剧片', 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>11ee</p>', 0, 0, 1, '', '', '2025-04-03 12:28:21', '', '2025-04-03 13:01:04');
COMMIT;

-- ----------------------------
-- Table structure for movie_level
-- ----------------------------
DROP TABLE IF EXISTS `movie_level`;
CREATE TABLE `movie_level` (
  `movie_level_id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `level` varchar(10) NOT NULL,
  `level_zh` varchar(10) DEFAULT NULL,
  `status` char(1) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  PRIMARY KEY (`movie_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_level
-- ----------------------------
BEGIN;
INSERT INTO `movie_level` VALUES (7, 2, 'G', '大众级', '0', '本片在${country}的评级为【${level}】，任何人都可以观看。', '', 'admin', '2022-12-23 16:15:46', 'admin', '2023-03-02 14:39:17');
INSERT INTO `movie_level` VALUES (8, 2, 'PG', '辅导级', '0', '本片在${country}的评级为【${level}】，该级别电影中的一些内容可能不适合儿童观看。', '', 'admin', '2023-03-02 14:39:48', 'admin', '2023-03-02 14:39:48');
INSERT INTO `movie_level` VALUES (9, 2, 'PG-13', '特别辅导级', '0', '本片在${country}的评级为【${level}】，建议13岁后儿童观看。', '', 'admin', '2023-03-02 14:40:14', 'admin', '2023-03-02 14:40:14');
INSERT INTO `movie_level` VALUES (10, 2, 'NC-17', NULL, '0', '本片在${country}的评级为【${level}】，17岁以下（包括17岁）禁止观看。', '', 'admin', '2023-03-02 14:40:34', 'admin', '2023-03-02 14:40:34');
INSERT INTO `movie_level` VALUES (11, 2, 'R', '限制级', '0', '本片在${country}的评级为【${level}】，建议17岁以上观看。', '', 'admin', '2023-03-02 14:41:01', 'admin', '2023-03-02 14:41:01');
INSERT INTO `movie_level` VALUES (12, 9, 'G', NULL, '0', '本片在${country}的评级为【${level}】，没有任何限制。', '', 'admin', '2023-03-02 14:41:44', 'admin', '2023-03-02 14:41:44');
INSERT INTO `movie_level` VALUES (13, 9, 'PG-12', NULL, '0', '本片在${country}的评级为【${level}】，12岁以下的人要有家长陪同才可观看。', '', 'admin', '2023-03-02 14:42:04', 'admin', '2023-03-02 14:42:04');
INSERT INTO `movie_level` VALUES (14, 9, 'R-15', NULL, '0', '本片在${country}的评级为【${level}】，15岁以下禁止入场。', '', 'admin', '2023-03-02 14:42:22', 'admin', '2023-03-02 14:42:22');
INSERT INTO `movie_level` VALUES (15, 9, 'R-18', NULL, '0', '本片在${country}的评级为【${level}】，18岁以下禁止入场。', '', 'admin', '2023-03-02 14:42:43', 'admin', '2023-03-02 14:42:43');
INSERT INTO `movie_level` VALUES (16, 1, 'I', NULL, '0', '本片在${country}的评级为【${level}】，适合任何年龄人士观看。', '', 'admin', '2023-03-02 14:44:23', 'admin', '2025-04-03 03:52:31');
INSERT INTO `movie_level` VALUES (17, 1, 'Ⅱ', NULL, '0', '本片在${country}的评级为【${level}】，儿童不宜观看。', '', 'admin', '2023-03-02 14:44:46', 'admin', '2025-04-03 03:52:37');
INSERT INTO `movie_level` VALUES (18, 1, 'Ⅲ', NULL, '0', '本片在${country}的评级为【${level}】，只准18岁或以上人士观看。', '', 'admin', '2023-03-02 14:45:21', 'admin', '2025-04-03 03:52:40');
INSERT INTO `movie_level` VALUES (19, 1, 'ⅡA', NULL, '0', '本片在${country}的评级为【${level}】，儿童不宜。', '', 'admin', '2023-03-02 14:45:41', 'admin', '2025-04-03 03:52:44');
INSERT INTO `movie_level` VALUES (20, 1, 'ⅡB', NULL, '0', '本片在${country}的评级为【${level}】，青少年及儿童不宜。', '', 'admin', '2023-03-02 14:45:57', 'admin', '2025-04-03 03:52:52');
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
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
  `status` char(1) DEFAULT '0',
  `brief` varchar(100) DEFAULT NULL,
  `parent_id` int DEFAULT '0',
  `remark` varchar(500) DEFAULT '',
  `create_by` varchar(64) DEFAULT '',
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  PRIMARY KEY (`profession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of profession
-- ----------------------------
BEGIN;
INSERT INTO `profession` VALUES (1, '导演', 'Director', '0', '0', NULL, '', 'admin', '2022-12-15 10:52:25', 'admin', '2022-12-15 14:50:09');
INSERT INTO `profession` VALUES (2, '导演', 'Director', '0', '', 1, '', 'admin', '2022-12-15 10:58:19', 'admin', '2022-12-16 14:48:03');
INSERT INTO `profession` VALUES (3, '联合执导', 'Co-Director', '0', '', 1, '', 'admin', '2022-12-15 10:58:31', 'admin', '2023-03-02 14:35:30');
INSERT INTO `profession` VALUES (20, '演员', 'Cast', '0', '', NULL, '', 'admin', '2022-12-15 14:25:07', 'admin', '2023-03-02 14:35:53');
INSERT INTO `profession` VALUES (21, '演员', 'Actor/Actress', '0', '', 20, '', 'admin', '2022-12-15 14:25:20', 'admin', '2023-03-02 14:36:04');
INSERT INTO `profession` VALUES (23, '总导演', 'General Director', '0', NULL, 1, '', 'admin', '2022-12-16 15:02:20', 'admin', '2023-03-02 14:35:40');
INSERT INTO `profession` VALUES (24, '配音', 'Voice', '0', NULL, 20, '', 'admin', '2023-03-02 14:36:24', 'admin', '2023-03-02 14:36:24');
INSERT INTO `profession` VALUES (25, '自己', 'Self', '0', NULL, 20, '', 'admin', '2023-03-02 14:36:41', 'admin', '2023-03-02 14:36:40');
INSERT INTO `profession` VALUES (26, '主持人', 'Host', '0', NULL, 20, '', 'admin', '2023-03-02 14:36:55', 'admin', '2023-03-02 14:36:55');
INSERT INTO `profession` VALUES (27, '嘉宾', 'Guest', '0', NULL, 20, '', 'admin', '2023-03-02 14:37:10', 'admin', '2023-03-02 14:37:10');
INSERT INTO `profession` VALUES (28, '动作捕捉', 'Motion Capture', '0', NULL, 20, '', 'admin', '2023-03-02 14:37:26', 'admin', '2023-03-02 14:37:26');
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  PRIMARY KEY (`sys_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '登录过期时长', 'loginTime', '86400', 'Y', '一天(60 * 60 * 24)', '', '2025-01-02 01:53:49', '', '2025-01-03 02:20:44');
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  PRIMARY KEY (`user_id`),
  KEY `user_dept_id_dept_dept_id_fk` (`dept_id`),
  CONSTRAINT `user_dept_id_dept_dept_id_fk` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
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
  `create_time` datetime DEFAULT '2025-04-03 12:28:21',
  `update_by` varchar(64) DEFAULT '',
  `update_time` datetime DEFAULT '2025-04-03 12:28:21',
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
BEGIN;
INSERT INTO `video` VALUES (1, '超能一家人', 'http://localhost:3000/uploads/2025-04-03/vyDvWDGSc.mp4', 'http://localhost:3000/uploads/2025-04-03/r938IoHbp.jpeg', '1692668895164-668765805-403060223.mp4', '/Users/yinchunyu/my/project/chunyu-cms-v2/chunyu-cms-web/uploads/2025-04-03/vyDvWDGSc.mp4', 74, 486, 864, 18737380, '', '', '2025-04-03 06:22:02', '', '2025-04-03 07:57:18');
INSERT INTO `video` VALUES (2, '灌篮高手', 'http://localhost:3000/uploads/2025-04-03/93iXAgPes.mp4', 'http://localhost:3000/uploads/2025-04-03/jJEy1UQ9N.jpeg', '1682085201153-202759664-403030638.mp4', '/Users/yinchunyu/my/project/chunyu-cms-v2/chunyu-cms-web/uploads/2025-04-03/93iXAgPes.mp4', 15, 486, 864, 3371942, '', '', '2025-04-03 06:22:02', '', '2025-04-03 06:22:02');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
