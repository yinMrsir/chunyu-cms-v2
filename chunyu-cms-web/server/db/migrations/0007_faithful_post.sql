CREATE TABLE `member_coupon` (
	`member_coupon_id` int AUTO_INCREMENT NOT NULL,
	`coupon_code` varchar(50) NOT NULL,
	`gold_amount` int NOT NULL,
	`status` tinyint NOT NULL DEFAULT 0,
	`used_by` int,
	`used_time` datetime,
	`expire_time` datetime,
	`create_by` varchar(64) DEFAULT '',
	`create_time` datetime DEFAULT '2025-12-02 07:27:32.687',
	`update_by` varchar(64) DEFAULT '',
	`update_time` datetime DEFAULT '2025-12-02 07:27:32.687',
	CONSTRAINT `member_coupon_member_coupon_id` PRIMARY KEY(`member_coupon_id`),
	CONSTRAINT `member_coupon_coupon_code_unique` UNIQUE(`coupon_code`)
);
--> statement-breakpoint
ALTER TABLE `banner` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `banner` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `country` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `country` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `genre` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `genre` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `language` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `language` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `level` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `level` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `profession` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `profession` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_collection` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_collection` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_favorite` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_favorite` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_like` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_like` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_movie` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_movie` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_order` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_order` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_rate` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_rate` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_user` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_user` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_wallet` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_wallet` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_wallet_log` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `member_wallet_log` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `job` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `job` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `actor` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `actor` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `cast` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `cast` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `comment` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `comment` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_basics` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_basics` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_month_visits` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_month_visits` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_photo` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_photo` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_video` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_video` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_weekly_visits` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_weekly_visits` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_year_visits` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_year_visits` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `pub_date` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `pub_date` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_rate` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `movie_rate` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `video` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `video` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `video_resource` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `video_resource` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `short` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `short` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `dept` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `dept` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `dict_data` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `dict_data` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `dict_type` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `dict_type` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `file_config` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `file_config` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `menu` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `menu` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `post` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `post` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `role` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `role` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `sys_config` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `sys_config` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `user` MODIFY COLUMN `create_time` datetime DEFAULT '2025-12-02 07:27:32.651';--> statement-breakpoint
ALTER TABLE `user` MODIFY COLUMN `update_time` datetime DEFAULT '2025-12-02 07:27:32.651';