import { int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { movieBasicsTable } from './movieBasics';

/**
 * 电影月访问量统计表
 */
export const movieMonthVisitsTable = mysqlTable('movie_month_visits', {
  id: int('id').autoincrement().primaryKey(),
  // 电影ID
  movieBasicsId: int('movie_basics_id').notNull(),
  // 月，格式为YYYY-MM
  monthNumber: varchar('month_number', { length: 10 }).notNull(),
  // 本月累计访问量
  monthPv: int('month_pv').notNull(),
  // 本月相对于上月的增量
  monthIncrement: int('month_increment').notNull(),
  ...columnsHelpers
});

export const movieMonthVisitsRelations = relations(movieMonthVisitsTable, ({ one }) => {
  return {
    movie: one(movieBasicsTable, {
      fields: [movieMonthVisitsTable.movieBasicsId],
      references: [movieBasicsTable.movieBasicsId]
    })
  };
});

export type MovieMonthVisits = typeof movieMonthVisitsTable.$inferSelect;
export type NewMoMonthVisits = typeof movieMonthVisitsTable.$inferInsert;
