import { int, mysqlTable } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const movieRateTable = mysqlTable('movie_rate', {
  movieRateId: int('movie_rate_id').autoincrement().primaryKey(),
  movieBasicsId: int('movie_basics_id').notNull().unique(),
  rate: int('rate').notNull(),
  rateUserCount: int('rate_user_count').notNull(),
  ...columnsHelpers
});

export type MovieRate = typeof movieRateTable.$inferSelect;
export type NewMovieRate = typeof movieRateTable.$inferInsert;
