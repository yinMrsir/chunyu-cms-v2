import { int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { videoTable } from './video';
import { movieBasicsTable } from './movieBasics';

export const movieVideoTable = mysqlTable('movie_video', {
  movieVideoId: int('movie_video_id').autoincrement().primaryKey(), // 主键，自增
  // 关联的影视id，整数类型，必填
  movieId: int('movie_id').notNull(),
  // 分类Id，字符串类型，必填
  typeId: varchar('type_id', { length: 255 }).notNull(),
  // 标题，字符串类型，可选
  title: varchar('title', { length: 200 }).notNull().default(''),
  // 关联的视频，整数类型，必填
  videoId: int('video_id'),
  // 视频地址，字符串类型，可选，默认值为空字符串
  link: varchar('link', { length: 255 }).notNull().default(''),
  // 封面，字符串类型，可选，默认值为空字符串
  cover: varchar('cover', { length: 255 }).notNull().default(''),
  // 排序，整数类型，必填，默认值为1
  sort: int('sort').notNull().default(1),
  // 状态，字符串类型，可选，默认值为'0'
  status: varchar('status', { length: 255 }).notNull().default('0'),
  ...columnsHelpers
});

export type MovieVideo = typeof movieVideoTable.$inferSelect;
export type NewMovieVideo = typeof movieVideoTable.$inferInsert;

export const movieVideoRelations = relations(movieVideoTable, ({ one }) => {
  return {
    video: one(videoTable, {
      fields: [movieVideoTable.videoId],
      references: [videoTable.videoId]
    }),
    movieBasics: one(movieBasicsTable, {
      fields: [movieVideoTable.movieId],
      references: [movieBasicsTable.movieBasicsId]
    })
  };
});
