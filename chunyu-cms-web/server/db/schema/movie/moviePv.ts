import { int, mysqlTable } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { MovieBasics, movieBasicsTable } from './movieBasics';

export const moviePvTable = mysqlTable('movie_pv', {
  moviePvId: int('id').autoincrement().primaryKey(),
  movieBasicsId: int('movie_basic_id').notNull(),
  pv: int('pv').notNull()
});

export const moviePvTableRelations = relations(moviePvTable, ({ one }) => ({
  movieBasic: one(movieBasicsTable, {
    fields: [moviePvTable.movieBasicsId],
    references: [movieBasicsTable.movieBasicsId]
  })
}));

export type MoviePv = typeof moviePvTable.$inferSelect & { movieBasic?: MovieBasics };
export type NewMoviePv = typeof moviePvTable.$inferInsert;
