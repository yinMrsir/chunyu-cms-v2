CREATE TABLE `banner` (
	`banner_id` int AUTO_INCREMENT NOT NULL,
	`img` varchar(255),
	`title` varchar(255),
	`video_url` varchar(255),
	`url` varchar(255),
	`url_type` char(1) DEFAULT '0',
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `banner_banner_id` PRIMARY KEY(`banner_id`)
);
--> statement-breakpoint
CREATE TABLE `columns` (
	`column_id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`type` char(1) DEFAULT '1',
	`value` varchar(255),
	`icon` varchar(255),
	`order` int DEFAULT 1,
	`status` char(1) DEFAULT '0',
	CONSTRAINT `columns_column_id` PRIMARY KEY(`column_id`)
);
--> statement-breakpoint
CREATE TABLE `country` (
	`country_id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`code` varchar(255) DEFAULT '',
	`type` char(1) DEFAULT '0',
	`full_name` varchar(255) DEFAULT '',
	`continent` varchar(255) DEFAULT '',
	`name_en` varchar(255) DEFAULT '',
	`full_name_en` varchar(255) DEFAULT '',
	`original_name` varchar(255) DEFAULT '',
	`original_full_name` varchar(255),
	`begin_date` date,
	`end_date` date,
	`flag` varchar(255),
	`brief` text DEFAULT (''),
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `country_country_id` PRIMARY KEY(`country_id`)
);
--> statement-breakpoint
CREATE TABLE `genre` (
	`genre_id` int AUTO_INCREMENT NOT NULL,
	`column_value` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`name_en` varchar(50),
	`status` char(1) DEFAULT '0',
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `genre_genre_id` PRIMARY KEY(`genre_id`)
);
--> statement-breakpoint
CREATE TABLE `language` (
	`language_id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(50) NOT NULL,
	`full_name` varchar(50),
	`country_id` int,
	`name_en` varchar(50),
	`full_name_en` varchar(50),
	`original_name` varchar(50),
	`original_full_name` varchar(50),
	`brief` varchar(500),
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `language_language_id` PRIMARY KEY(`language_id`)
);
--> statement-breakpoint
CREATE TABLE `level` (
	`level_id` int AUTO_INCREMENT NOT NULL,
	`country_id` int NOT NULL,
	`level` varchar(10) NOT NULL,
	`level_zh` varchar(10),
	`status` char(1) DEFAULT '0',
	`description` varchar(255),
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `level_level_id` PRIMARY KEY(`level_id`)
);
--> statement-breakpoint
CREATE TABLE `profession` (
	`profession_id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(10) NOT NULL,
	`name_en` varchar(100),
	`status` char(1) NOT NULL DEFAULT '0',
	`brief` varchar(100),
	`parent_id` int DEFAULT 0,
	`mpath` varchar(100),
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `profession_profession_id` PRIMARY KEY(`profession_id`)
);
--> statement-breakpoint
CREATE TABLE `member_collection` (
	`member_collection_id` int AUTO_INCREMENT NOT NULL,
	`member_user_id` int NOT NULL,
	`short_id` int NOT NULL,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `member_collection_member_collection_id` PRIMARY KEY(`member_collection_id`)
);
--> statement-breakpoint
CREATE TABLE `member_like` (
	`member_like_id` int AUTO_INCREMENT NOT NULL,
	`member_user_id` int NOT NULL,
	`short_id` int NOT NULL,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `member_like_member_like_id` PRIMARY KEY(`member_like_id`)
);
--> statement-breakpoint
CREATE TABLE `member_movie` (
	`member_movie_id` int AUTO_INCREMENT NOT NULL,
	`member_user_id` int NOT NULL,
	`movie_basics_id` int NOT NULL,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `member_movie_member_movie_id` PRIMARY KEY(`member_movie_id`)
);
--> statement-breakpoint
CREATE TABLE `member_order` (
	`member_order_id` int AUTO_INCREMENT NOT NULL,
	`member_user_id` int NOT NULL,
	`out_trade_no` varchar(50) NOT NULL,
	`transaction_id` varchar(50),
	`total_amount` int NOT NULL,
	`status` varchar(20) DEFAULT 'NOTPAY',
	`paid_at` datetime,
	`query_count` int DEFAULT 0,
	`description` varchar(255),
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `member_order_member_order_id` PRIMARY KEY(`member_order_id`)
);
--> statement-breakpoint
CREATE TABLE `member_rate` (
	`member_rate_id` int AUTO_INCREMENT NOT NULL,
	`member_user_id` int NOT NULL,
	`movie_basics_id` int NOT NULL,
	`rate` int,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `member_rate_member_rate_id` PRIMARY KEY(`member_rate_id`)
);
--> statement-breakpoint
CREATE TABLE `member_user` (
	`member_user_id` int AUTO_INCREMENT NOT NULL,
	`email` varchar(255) NOT NULL,
	`password` varchar(255) DEFAULT '',
	`nickname` varchar(255) NOT NULL,
	`phonenumber` varchar(11),
	`avatar` varchar(100) NOT NULL,
	`birthday` date,
	`sex` char(1) NOT NULL DEFAULT '0',
	`salt` varchar(100) DEFAULT '',
	`introduction` varchar(500) DEFAULT '',
	`del_flag` char(1) NOT NULL DEFAULT '0',
	`login_ip` varchar(128) DEFAULT '',
	`login_date` datetime NOT NULL,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `member_user_member_user_id` PRIMARY KEY(`member_user_id`)
);
--> statement-breakpoint
CREATE TABLE `member_wallet` (
	`member_wallet_id` int AUTO_INCREMENT NOT NULL,
	`member_user_id` int NOT NULL,
	`gold` int NOT NULL DEFAULT 0,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `member_wallet_member_wallet_id` PRIMARY KEY(`member_wallet_id`),
	CONSTRAINT `member_wallet_member_user_id_unique` UNIQUE(`member_user_id`)
);
--> statement-breakpoint
CREATE TABLE `member_wallet_log` (
	`member_wallet_log_id` int AUTO_INCREMENT NOT NULL,
	`member_user_id` int NOT NULL,
	`gold` int NOT NULL,
	`type` char(1) NOT NULL,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `member_wallet_log_member_wallet_log_id` PRIMARY KEY(`member_wallet_log_id`)
);
--> statement-breakpoint
CREATE TABLE `job` (
	`job_id` int AUTO_INCREMENT NOT NULL,
	`job_name` varchar(64) NOT NULL,
	`job_group` varchar(64) DEFAULT 'DEFAULT',
	`invoke_target` varchar(225) NOT NULL,
	`cron_expression` varchar(225) NOT NULL,
	`misfire_policy` varchar(20) DEFAULT '3',
	`concurrent` varchar(1) DEFAULT '1',
	`status` varchar(1) DEFAULT '0',
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `job_job_id` PRIMARY KEY(`job_id`)
);
--> statement-breakpoint
CREATE TABLE `job_log` (
	`job_log_id` int AUTO_INCREMENT NOT NULL,
	`job_name` varchar(64),
	`job_group` varchar(64),
	`invoke_target` varchar(500),
	`job_message` varchar(500) DEFAULT '',
	`status` varchar(1) DEFAULT '0',
	`exception_info` varchar(2000) DEFAULT '',
	`create_time` datetime,
	CONSTRAINT `job_log_job_log_id` PRIMARY KEY(`job_log_id`)
);
--> statement-breakpoint
CREATE TABLE `login_info` (
	`info_id` int AUTO_INCREMENT NOT NULL,
	`user_name` varchar(50) NOT NULL DEFAULT '',
	`ipaddr` varchar(128) NOT NULL DEFAULT '',
	`login_location` varchar(255) NOT NULL DEFAULT '',
	`browser` varchar(50) NOT NULL DEFAULT '',
	`os` varchar(50) NOT NULL DEFAULT '',
	`status` char(1) NOT NULL DEFAULT '0',
	`msg` text NOT NULL DEFAULT (''),
	`login_time` datetime NOT NULL,
	CONSTRAINT `login_info_info_id` PRIMARY KEY(`info_id`)
);
--> statement-breakpoint
CREATE TABLE `actor` (
	`actor_id` serial AUTO_INCREMENT NOT NULL,
	`avatar` varchar(255) DEFAULT '',
	`name` varchar(255) NOT NULL,
	`name_en` varchar(255) DEFAULT '',
	`name_more` varchar(255) DEFAULT '',
	`name_en_more` varchar(255) DEFAULT '',
	`gender` varchar(10) DEFAULT '3',
	`birthday` date,
	`death_day` date,
	`country_id` int,
	`born_place` varchar(255) NOT NULL DEFAULT '',
	`brief` text,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `actor_actor_id` PRIMARY KEY(`actor_id`)
);
--> statement-breakpoint
CREATE TABLE `cast` (
	`cast_id` int AUTO_INCREMENT NOT NULL,
	`movie_id` int NOT NULL,
	`actor_id` int NOT NULL,
	`profession_id` int NOT NULL,
	`role` varchar(255),
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `cast_cast_id` PRIMARY KEY(`cast_id`)
);
--> statement-breakpoint
CREATE TABLE `comment` (
	`comment_id` int AUTO_INCREMENT NOT NULL,
	`video_id` int NOT NULL,
	`member_user_id` int NOT NULL,
	`is_dm` char(1) NOT NULL DEFAULT '0',
	`content` varchar(512) NOT NULL,
	`start` int NOT NULL,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `comment_comment_id` PRIMARY KEY(`comment_id`)
);
--> statement-breakpoint
CREATE TABLE `movie_basic_to_country` (
	`movie_basic_to_country_id` int AUTO_INCREMENT NOT NULL,
	`movie_basics_id` int,
	`country_id` int,
	CONSTRAINT `movie_basic_to_country_movie_basic_to_country_id` PRIMARY KEY(`movie_basic_to_country_id`)
);
--> statement-breakpoint
CREATE TABLE `movie_basic_to_genre` (
	`movie_basic_to_genre_id` int AUTO_INCREMENT NOT NULL,
	`movie_basics_id` int NOT NULL,
	`genre_id` int NOT NULL,
	CONSTRAINT `movie_basic_to_genre_movie_basic_to_genre_id` PRIMARY KEY(`movie_basic_to_genre_id`)
);
--> statement-breakpoint
CREATE TABLE `movie_basics` (
	`movie_basics_id` int AUTO_INCREMENT NOT NULL,
	`status` char(1) DEFAULT '0',
	`release_status` char(1) DEFAULT '0',
	`release_date` date,
	`title` varchar(50) NOT NULL,
	`poster` varchar(300),
	`bg_color` varchar(100),
	`title_en` varchar(100),
	`title_original` varchar(100),
	`akas` varchar(100),
	`column_value` varchar(255),
	`year` int,
	`pub_date` datetime,
	`duration` varchar(100),
	`durations` varchar(100),
	`versions` varchar(100),
	`egg_hunt` int,
	`color` char(1),
	`season_count` int,
	`current_season` int,
	`episode_count` int,
	`current_episode` int,
	`the_end` char(1),
	`languages` varchar(100),
	`tags` varchar(100),
	`summary` varchar(1000),
	`is_pay` int NOT NULL DEFAULT 0,
	`payment_amount` int NOT NULL DEFAULT 0,
	`free_duration` int NOT NULL DEFAULT 1,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `movie_basics_movie_basics_id` PRIMARY KEY(`movie_basics_id`)
);
--> statement-breakpoint
CREATE TABLE `movie_level` (
	`movie_level_id` int AUTO_INCREMENT NOT NULL,
	`movieId` int NOT NULL,
	`levelId` int NOT NULL,
	CONSTRAINT `movie_level_movie_level_id` PRIMARY KEY(`movie_level_id`)
);
--> statement-breakpoint
CREATE TABLE `movie_month_visits` (
	`id` int AUTO_INCREMENT NOT NULL,
	`movie_basics_id` int NOT NULL,
	`month_number` varchar(10) NOT NULL,
	`month_pv` int NOT NULL,
	`month_increment` int NOT NULL,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `movie_month_visits_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `movie_photo` (
	`movie_photo_id` int AUTO_INCREMENT NOT NULL,
	`movie_id` int NOT NULL,
	`type` varchar(255) NOT NULL,
	`img` varchar(500) NOT NULL,
	`status` varchar(255) NOT NULL DEFAULT '1',
	`img_width` int NOT NULL DEFAULT 0,
	`img_height` int NOT NULL DEFAULT 0,
	`img_size` int NOT NULL DEFAULT 0,
	`del_flag` varchar(1) NOT NULL DEFAULT '0',
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `movie_photo_movie_photo_id` PRIMARY KEY(`movie_photo_id`)
);
--> statement-breakpoint
CREATE TABLE `movie_pv` (
	`movie_pv_id` int AUTO_INCREMENT NOT NULL,
	`movie_basic_id` int NOT NULL,
	`pv` int NOT NULL,
	CONSTRAINT `movie_pv_movie_pv_id` PRIMARY KEY(`movie_pv_id`),
	CONSTRAINT `movie_pv_movie_basic_id_unique` UNIQUE(`movie_basic_id`)
);
--> statement-breakpoint
CREATE TABLE `movie_video` (
	`movie_video_id` int AUTO_INCREMENT NOT NULL,
	`movie_id` int NOT NULL,
	`type_id` varchar(255) NOT NULL,
	`title` varchar(200) NOT NULL DEFAULT '',
	`video_id` int NOT NULL,
	`link` varchar(255) NOT NULL DEFAULT '',
	`cover` varchar(255) NOT NULL DEFAULT '',
	`sort` int NOT NULL DEFAULT 1,
	`status` varchar(255) NOT NULL DEFAULT '0',
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `movie_video_movie_video_id` PRIMARY KEY(`movie_video_id`)
);
--> statement-breakpoint
CREATE TABLE `movie_weekly_visits` (
	`id` int AUTO_INCREMENT NOT NULL,
	`movie_basics_id` int NOT NULL,
	`week_number` varchar(10) NOT NULL,
	`weekly_pv` int NOT NULL,
	`weekly_increment` int NOT NULL,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `movie_weekly_visits_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `movie_year_visits` (
	`id` int AUTO_INCREMENT NOT NULL,
	`movie_basics_id` int NOT NULL,
	`year_number` varchar(4) NOT NULL,
	`year_pv` int NOT NULL,
	`year_increment` int NOT NULL,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `movie_year_visits_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `pub_date` (
	`pub_date_id` int AUTO_INCREMENT NOT NULL,
	`pub_date` text NOT NULL,
	`country_id` int NOT NULL,
	`premiere` varchar(255) DEFAULT '1',
	`movie_id` int NOT NULL,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `pub_date_pub_date_id` PRIMARY KEY(`pub_date_id`)
);
--> statement-breakpoint
CREATE TABLE `movie_rate` (
	`movie_rate_id` int AUTO_INCREMENT NOT NULL,
	`movie_basics_id` int NOT NULL,
	`rate` float NOT NULL,
	`rate_user_count` int NOT NULL,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `movie_rate_movie_rate_id` PRIMARY KEY(`movie_rate_id`),
	CONSTRAINT `movie_rate_movie_basics_id_unique` UNIQUE(`movie_basics_id`)
);
--> statement-breakpoint
CREATE TABLE `video` (
	`video_id` int AUTO_INCREMENT NOT NULL,
	`title` varchar(255) NOT NULL,
	`url` varchar(255) NOT NULL,
	`poster` longtext NOT NULL,
	`name` text,
	`path` text,
	`duration` int,
	`height` int,
	`width` int,
	`size` int,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `video_video_id` PRIMARY KEY(`video_id`)
);
--> statement-breakpoint
CREATE TABLE `short` (
	`short_id` int AUTO_INCREMENT NOT NULL,
	`member_user_id` int NOT NULL,
	`poster` varchar(255) NOT NULL,
	`video_url` varchar(255) NOT NULL,
	`mime_type` varchar(255),
	`duration` int,
	`width` int,
	`height` int,
	`size` int,
	`description` varchar(255) NOT NULL,
	`likes` int DEFAULT 0,
	`comments` int DEFAULT 0,
	`play_count` int DEFAULT 0,
	`share_count` int DEFAULT 0,
	`collection` int DEFAULT 0,
	`is_public` char(1) NOT NULL DEFAULT '1',
	`status` char(1) NOT NULL DEFAULT '0',
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `short_short_id` PRIMARY KEY(`short_id`)
);
--> statement-breakpoint
CREATE TABLE `file_config` (
	`file_config_id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`value` varchar(255) NOT NULL,
	`region` varchar(255) NOT NULL,
	`bucket` varchar(255) NOT NULL,
	`access_key_id` varchar(255) NOT NULL,
	`access_key_secret` varchar(255) NOT NULL,
	`cname` char(1) NOT NULL DEFAULT '0',
	`endpoint` varchar(255),
	`timeout` int NOT NULL DEFAULT 300000,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `file_config_file_config_id` PRIMARY KEY(`file_config_id`)
);
--> statement-breakpoint
CREATE TABLE `post` (
	`post_id` int AUTO_INCREMENT NOT NULL,
	`post_code` varchar(30) NOT NULL,
	`post_name` varchar(30) NOT NULL,
	`post_sort` int NOT NULL,
	`status` varchar(1) NOT NULL,
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `post_post_id` PRIMARY KEY(`post_id`),
	CONSTRAINT `post_post_code_unique` UNIQUE(`post_code`)
);
--> statement-breakpoint
CREATE TABLE `sys_config` (
	`sys_config_id` int AUTO_INCREMENT NOT NULL,
	`config_name` varchar(100) DEFAULT '',
	`config_key` varchar(100) DEFAULT '',
	`config_value` text DEFAULT (''),
	`config_type` enum('Y','N') DEFAULT 'N',
	`remark` varchar(500) DEFAULT '',
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-09-26 06:16:34.093',
	CONSTRAINT `sys_config_sys_config_id` PRIMARY KEY(`sys_config_id`)
);
--> statement-breakpoint
CREATE TABLE `user_to_post` (
	`user_id` int,
	`post_id` int
);
--> statement-breakpoint
DROP TABLE `news_content`;--> statement-breakpoint
DROP TABLE `news_info`;--> statement-breakpoint
ALTER TABLE `dept` MODIFY COLUMN `create_time` datetime DEFAULT '2025-09-26 06:16:34.093';--> statement-breakpoint
ALTER TABLE `dept` MODIFY COLUMN `update_time` datetime DEFAULT '2025-09-26 06:16:34.093';--> statement-breakpoint
ALTER TABLE `dict_data` MODIFY COLUMN `dict_label` varchar(100);--> statement-breakpoint
ALTER TABLE `dict_data` MODIFY COLUMN `dict_value` varchar(100);--> statement-breakpoint
ALTER TABLE `dict_data` MODIFY COLUMN `css_class` varchar(100);--> statement-breakpoint
ALTER TABLE `dict_data` MODIFY COLUMN `list_class` varchar(100);--> statement-breakpoint
ALTER TABLE `dict_data` MODIFY COLUMN `create_time` datetime DEFAULT '2025-09-26 06:16:34.093';--> statement-breakpoint
ALTER TABLE `dict_data` MODIFY COLUMN `update_time` datetime DEFAULT '2025-09-26 06:16:34.093';--> statement-breakpoint
ALTER TABLE `dict_type` MODIFY COLUMN `create_time` datetime DEFAULT '2025-09-26 06:16:34.093';--> statement-breakpoint
ALTER TABLE `dict_type` MODIFY COLUMN `update_time` datetime DEFAULT '2025-09-26 06:16:34.093';--> statement-breakpoint
ALTER TABLE `menu` MODIFY COLUMN `create_time` datetime DEFAULT '2025-09-26 06:16:34.093';--> statement-breakpoint
ALTER TABLE `menu` MODIFY COLUMN `update_time` datetime DEFAULT '2025-09-26 06:16:34.093';--> statement-breakpoint
ALTER TABLE `role` MODIFY COLUMN `create_time` datetime DEFAULT '2025-09-26 06:16:34.093';--> statement-breakpoint
ALTER TABLE `role` MODIFY COLUMN `update_time` datetime DEFAULT '2025-09-26 06:16:34.093';--> statement-breakpoint
ALTER TABLE `user` MODIFY COLUMN `create_time` datetime DEFAULT '2025-09-26 06:16:34.093';--> statement-breakpoint
ALTER TABLE `user` ADD `dept_id` int;--> statement-breakpoint
ALTER TABLE `user` ADD `update_time` datetime DEFAULT '2025-09-26 06:16:34.093';--> statement-breakpoint
ALTER TABLE `movie_basic_to_country` ADD CONSTRAINT `movie_basic_to_country_fk` FOREIGN KEY (`movie_basics_id`) REFERENCES `movie_basics`(`movie_basics_id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `movie_basic_to_genre` ADD CONSTRAINT `movie_basic_to_genre_fk` FOREIGN KEY (`movie_basics_id`) REFERENCES `movie_basics`(`movie_basics_id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `movie_pv` ADD CONSTRAINT `movie_pv_movie_basic_id_fkey` FOREIGN KEY (`movie_basic_id`) REFERENCES `movie_basics`(`movie_basics_id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `movie_rate` ADD CONSTRAINT `movie_rate_movie_basics_id_fkey` FOREIGN KEY (`movie_basics_id`) REFERENCES `movie_basics`(`movie_basics_id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_to_post` ADD CONSTRAINT `user_to_post_user_id_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_to_post` ADD CONSTRAINT `user_to_post_post_id_post_post_id_fk` FOREIGN KEY (`post_id`) REFERENCES `post`(`post_id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user` ADD CONSTRAINT `user_dept_id_dept_dept_id_fk` FOREIGN KEY (`dept_id`) REFERENCES `dept`(`dept_id`) ON DELETE no action ON UPDATE no action;