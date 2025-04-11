import { char, int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const bannerTable = mysqlTable('banner', {
  bannerId: int('banner_id').autoincrement().primaryKey(),
  // 图片地址
  img: varchar('img', { length: 255 }),
  // 标题
  title: varchar('title', { length: 255 }),
  // 视频地址
  videoUrl: varchar('video_url', { length: 255 }),
  // 链接
  url: varchar('url', { length: 255 }),
  // 链接类型 0: 站内 1: 站外
  urlType: char('url_type', { length: 1 }).default('0'),
  ...columnsHelpers
});

export type Banner = typeof bannerTable.$inferSelect;
export type NewBanner = typeof bannerTable.$inferInsert;
