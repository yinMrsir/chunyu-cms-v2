import { mysqlTable, int } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { genreTable } from '../basic/genre';
import { movieBasicsTable } from './movieBasics';

export const movieBasicToGenreTable = mysqlTable('movie_basic_to_genre', {
  movieBasicsId: int('movie_basics_id'),
  genreId: int('genre_id')
});

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
