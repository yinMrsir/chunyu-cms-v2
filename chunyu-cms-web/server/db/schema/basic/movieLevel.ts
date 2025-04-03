import { char, int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { countryTable } from './country';

export const movieLevelTable = mysqlTable('movie_level', {
  movieLevelId: int('movie_level_id').autoincrement().primaryKey(),
  // 所属国家ID
  countryId: int('country_id').notNull(),
  // 家长引导
  level: varchar('level', { length: 10 }).notNull(),
  // 引导中文
  levelZh: varchar('level_zh', { length: 10 }),
  // 状态
  status: char('status', { length: 1 }).default('0'),
  // 引导模板
  description: varchar('description', { length: 255 }),
  ...columnsHelpers
});

export const movieLevelTableRelations = relations(movieLevelTable, ({ one }) => {
  return {
    country: one(countryTable, {
      fields: [movieLevelTable.countryId],
      references: [countryTable.countryId]
    })
  };
});

export type MovieLevel = typeof movieLevelTable.$inferSelect;
export type NewMovieLevel = typeof movieLevelTable.$inferInsert;
