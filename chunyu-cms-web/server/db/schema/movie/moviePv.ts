import { int, mysqlTable, foreignKey } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { MovieBasics, movieBasicsTable } from './movieBasics';

// @ts-ignore
export const moviePvTable = mysqlTable(
  'movie_pv',
  {
    moviePvId: int('movie_pv_id').autoincrement().primaryKey(),
    movieBasicsId: int('movie_basic_id').notNull().unique(),
    pv: int('pv').notNull()
  },
  table => [
    foreignKey({
      name: 'movie_pv_movie_basic_id_fkey',
      columns: [table.movieBasicsId],
      foreignColumns: [movieBasicsTable.movieBasicsId]
    }).onDelete('cascade')
  ]
);

export const moviePvTableRelations = relations(moviePvTable, ({ one }) => ({
  movieBasic: one(movieBasicsTable, {
    fields: [moviePvTable.movieBasicsId],
    references: [movieBasicsTable.movieBasicsId]
  })
}));

export type MoviePv = typeof moviePvTable.$inferSelect;
export type NewMoviePv = typeof moviePvTable.$inferInsert;
