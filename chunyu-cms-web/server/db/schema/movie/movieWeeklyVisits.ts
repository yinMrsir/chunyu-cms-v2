import { int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { movieBasicsTable } from './movieBasics';

/**
 * 电影周访问量统计表
 */
export const movieWeeklyVisitsTable = mysqlTable('movie_weekly_visits', {
  id: int('id').autoincrement().primaryKey(),
  // 电影ID
  movieBasicsId: int('movie_basics_id').notNull(),
  // 周数，格式为YYYY-WW (例如2025-20代表2025年第20周)
  weekNumber: varchar('week_number', { length: 10 }).notNull(),
  // 本周累计访问量
  weeklyPv: int('weekly_pv').notNull(),
  // 本周相对于上周的增量
  weeklyIncrement: int('weekly_increment').notNull(),
  ...columnsHelpers
});

export const movieWeeklyVisitsRelations = relations(movieWeeklyVisitsTable, ({ one }) => {
  return {
    movie: one(movieBasicsTable, {
      fields: [movieWeeklyVisitsTable.movieBasicsId],
      references: [movieBasicsTable.movieBasicsId]
    })
  };
});

export type MovieWeeklyVisits = typeof movieWeeklyVisitsTable.$inferSelect;
export type NewMovieWeeklyVisits = typeof movieWeeklyVisitsTable.$inferInsert;
