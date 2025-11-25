import { mysqlTable, varchar, datetime, int, char, date } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { movieBasicToGenreTable } from '../movie/movieBasicToGenre';
import { columnsTable } from '../basic/columns';
import { memberFavoriteTable } from '../member/favorite';
import { movieBasicToCountryTable } from './movieBasicToCountry';
import { movieVideoTable } from './movieVideo';
import { castTable } from './cast';
import { moviePvTable } from './moviePv';
import { movieRateTable } from './rate';
import { commentTable } from './comment';

// 定义 MovieBasic 表
export const movieBasicsTable = mysqlTable('movie_basics', {
  movieBasicsId: int('movie_basics_id').autoincrement().primaryKey(),
  // 状态： 0: 正常 1: 锁定 2: 处理中 3: 待完善 4: 待审核 5: 隐藏
  status: char('status', { length: 1 }).default('0'),
  // 上映状态: 0: 无 1: 即将上映 2: 正在热映
  releaseStatus: char('release_status', { length: 1 }).default('0'),
  // 上映日期
  releaseDate: date('release_date', { mode: 'string' }),
  // 中文名
  title: varchar('title', { length: 50 }).notNull(),
  // 海报
  poster: varchar('poster', { length: 300 }),
  // 背景色
  bgColor: varchar('bg_color', { length: 100 }),
  // 英文名
  titleEn: varchar('title_en', { length: 100 }),
  // 影视原名
  titleOriginal: varchar('title_original', { length: 100 }),
  // 别名
  akas: varchar('akas', { length: 100 }),
  // 影视分类
  columnValue: varchar('column_value', { length: 255 }),
  // 年代
  year: int('year'),
  // 首映时间
  pubDate: datetime('pub_date'),
  // 上映版片长
  duration: varchar('duration', { length: 100 }),
  // 片长
  durations: varchar('durations', { length: 100 }),
  // 银幕
  versions: varchar('versions', { length: 100 }),
  // 彩蛋个数
  eggHunt: int('egg_hunt'),
  // 色彩 0: 彩色  1：黑白
  color: char('color', { length: 1 }),
  // 总季数
  seasonCount: int('season_count'),
  // 当前季
  currentSeason: int('current_season'),
  // 总集数
  episodeCount: int('episode_count'),
  // 当前集数
  currentEpisode: int('current_episode'),
  // 是否完结 0：否  1：是
  theEnd: char('the_end', { length: 1 }),
  // 语言
  languages: varchar('languages', { length: 100 }),
  // 标签
  tags: varchar('tags', { length: 100 }),
  // 简介
  summary: varchar('summary', { length: 1000 }),
  // 是否付费
  isPay: int('is_pay').default(0).notNull(),
  // 支付金币
  paymentAmount: int('payment_amount').default(0).notNull(),
  // 免费时长(分钟)
  freeDuration: int('free_duration').default(1).notNull(),
  ...columnsHelpers
});

export type MovieBasics = typeof movieBasicsTable.$inferSelect;
export type NewMovieBasics = typeof movieBasicsTable.$inferInsert;

export const movieBasicsTableRelations = relations(movieBasicsTable, ({ many, one }) => ({
  movieBasicToCountry: many(movieBasicToCountryTable),
  movieVideo: many(movieVideoTable),
  casts: many(castTable),
  genres: many(movieBasicToGenreTable),
  memberFavorites: many(memberFavoriteTable),
  comments: many(commentTable),
  column: one(columnsTable, {
    fields: [movieBasicsTable.columnValue],
    references: [columnsTable.value]
  }),
  pv: one(moviePvTable, {
    fields: [movieBasicsTable.movieBasicsId],
    references: [moviePvTable.movieBasicsId]
  }),
  movieRate: one(movieRateTable, {
    fields: [movieBasicsTable.movieBasicsId],
    references: [movieRateTable.movieBasicsId]
  })
}));
