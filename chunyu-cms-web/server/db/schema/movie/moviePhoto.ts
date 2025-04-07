import { mysqlTable, varchar, int } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const moviePhotoTable = mysqlTable('movie_photo', {
  // 主键，自增
  moviePhotoId: int('movie_photo_id').autoincrement().primaryKey(),
  // 关联的影视id，整数类型，必填
  movieId: int('movie_id').notNull(),
  // 图片类型，字符串类型，必填
  type: varchar('type', { length: 255 }).notNull(),
  // 图片，字符串类型，必填
  img: varchar('img', { length: 500 }).notNull(),
  // 审核状态，字符串类型，可选，默认值为'1'
  status: varchar('status', { length: 255 }).notNull().default('1'),
  // 图片宽度，整数类型，必填，默认值为0
  imgWidth: int('img_width').notNull().default(0),
  // 图片高度，整数类型，必填，默认值为0
  imgHeight: int('img_height').notNull().default(0),
  // 图片大小，整数类型，必填，默认值为0
  imgSize: int('img_size').notNull().default(0),
  // 删除标志，字符串类型，必填，默认值为'0'
  delFlag: varchar('del_flag', { length: 1 }).notNull().default('0'),
  ...columnsHelpers
});

export type MoviePhoto = typeof moviePhotoTable.$inferSelect;
export type NewMoviePhoto = typeof moviePhotoTable.$inferInsert;
