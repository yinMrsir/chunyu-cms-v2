import { mysqlTable, int, foreignKey } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { genreTable } from '../basic/genre';
import { movieBasicsTable } from './movieBasics';

// @ts-ignore
export const movieBasicToGenreTable = mysqlTable(
  'movie_basic_to_genre',
  {
    movieBasicToGenreId: int('movie_basic_to_genre_id').autoincrement().primaryKey(),
    movieBasicsId: int('movie_basics_id').notNull(),
    genreId: int('genre_id').notNull()
  },
  table => [
    foreignKey({
      name: 'movie_basic_to_genre_fk',
      columns: [table.movieBasicsId], // 外键指向 movieBasicsTable
      foreignColumns: [movieBasicsTable.movieBasicsId]
    }).onDelete('cascade')
  ]
);

export type MovieBasicToGenre = typeof movieBasicToGenreTable.$inferSelect;

export const movieBasicToGenreRelations = relations(movieBasicToGenreTable, ({ one }) => ({
  movieBasics: one(movieBasicsTable, {
    fields: [movieBasicToGenreTable.movieBasicsId],
    references: [movieBasicsTable.movieBasicsId]
  }),
  genre: one(genreTable, {
    fields: [movieBasicToGenreTable.genreId],
    references: [genreTable.genreId]
  })
}));
