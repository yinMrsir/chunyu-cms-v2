import { int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { movieBasicsTable } from './movieBasics';

/**
 * 电影年访问量统计表
 */
export const movieYearVisitsTable = mysqlTable('movie_year_visits', {
  id: int('id').autoincrement().primaryKey(),
  // 电影ID
  movieBasicsId: int('movie_basics_id').notNull(),
  // 年，格式为YYYY
  yearNumber: varchar('year_number', { length: 4 }).notNull(),
  // 本年累计访问量
  yearPv: int('year_pv').notNull(),
  // 本年相对于上年的增量
  yearIncrement: int('year_increment').notNull(),
  ...columnsHelpers
});

export const movieYearVisitsRelations = relations(movieYearVisitsTable, ({ one }) => {
  return {
    movie: one(movieBasicsTable, {
      fields: [movieYearVisitsTable.movieBasicsId],
      references: [movieBasicsTable.movieBasicsId]
    })
  };
});

export type MovieYearVisits = typeof movieYearVisitsTable.$inferSelect;
export type NewMoYearVisits = typeof movieYearVisitsTable.$inferInsert;
