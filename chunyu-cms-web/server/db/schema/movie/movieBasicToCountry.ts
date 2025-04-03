import { mysqlTable, int } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { countryTable } from '../basic/country';
import { movieBasicsTable } from './movieBasics';

export const movieBasicToCountryTable = mysqlTable('movie_basic_to_country', {
  movieBasicsId: int('movie_basics_id'),
  countryId: int('country_id')
});

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
