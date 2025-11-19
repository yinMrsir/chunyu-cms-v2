import { mysqlTable, int, foreignKey } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { countryTable } from '../basic/country';
import { movieBasicsTable } from './movieBasics';

// @ts-ignore
export const movieBasicToCountryTable = mysqlTable(
  'movie_basic_to_country',
  {
    movieBasicToCountryId: int('movie_basic_to_country_id').autoincrement().primaryKey(),
    movieBasicsId: int('movie_basics_id'),
    countryId: int('country_id')
  },
  table => [
    foreignKey({
      name: 'movie_basic_to_country_fk',
      columns: [table.movieBasicsId],
      foreignColumns: [movieBasicsTable.movieBasicsId]
    }).onDelete('cascade')
  ]
);

export type MovieBasicToCountry = typeof movieBasicToCountryTable.$inferSelect;

export const movieBasicToCountryRelations = relations(movieBasicToCountryTable, ({ one }) => ({
  movieBasics: one(movieBasicsTable, {
    fields: [movieBasicToCountryTable.movieBasicsId],
    references: [movieBasicsTable.movieBasicsId]
  }),
  country: one(countryTable, {
    fields: [movieBasicToCountryTable.countryId],
    references: [countryTable.countryId]
  })
}));
