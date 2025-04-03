import { mysqlTable, varchar, longtext, text, int } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const videoTable = mysqlTable('video', {
  videoId: int('video_id').autoincrement().primaryKey(),
  // 标题
  title: varchar('title', { length: 255 }).notNull(),
  // 视频地址
  url: varchar('url', { length: 255 }).notNull(),
  // 封面地址
  poster: longtext('poster').notNull(),
  // 视频文件名
  name: text('name'),
  // 视频存放路径
  path: text('path'),
  // 视频时长
  duration: int('duration'),
  // 视频高
  height: int('height'),
  // 视频宽
  width: int('width'),
  // 大小
  size: int('size'),
  ...columnsHelpers
});

export type Video = typeof videoTable.$inferSelect;
export type NewVideo = typeof videoTable.$inferInsert;
