import { int, mysqlTable, float, foreignKey } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { movieBasicsTable } from './movieBasics';

// @ts-ignore
export const movieRateTable = mysqlTable(
  'movie_rate',
  {
    movieRateId: int('movie_rate_id').autoincrement().primaryKey(),
    movieBasicsId: int('movie_basics_id').notNull().unique(),
    rate: float('rate').notNull(),
    rateUserCount: int('rate_user_count').notNull(),
    ...columnsHelpers
  },
  table => [
    foreignKey({
      name: 'movie_rate_movie_basics_id_fkey',
      columns: [table.movieBasicsId],
      foreignColumns: [movieBasicsTable.movieBasicsId]
    }).onDelete('cascade')
  ]
);

export const movieRateRelations = relations(movieRateTable, ({ one }) => ({
  movieBasic: one(movieBasicsTable, {
    fields: [movieRateTable.movieBasicsId],
    references: [movieBasicsTable.movieBasicsId]
  })
}));

export type MovieRate = typeof movieRateTable.$inferSelect;
export type NewMovieRate = typeof movieRateTable.$inferInsert;
