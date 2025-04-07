import { int, mysqlTable, text, varchar } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { countryTable } from '../basic/country';

export const pubDateTable = mysqlTable('pub_date', {
  // 主键，自增
  pubDateId: int('pub_date_id').autoincrement().primaryKey(),
  // 上映日期
  pubDate: text('pub_date').notNull(),
  // 国家Id，必填
  countryId: int('country_id').notNull(),
  // 首映，1: 是  2:否
  premiere: varchar('premiere', { length: 255 }).default('1'),
  // 关联的影视Id，必填
  movieId: int('movie_id').notNull(),
  ...columnsHelpers
});

export const pubDateTableRelations = relations(pubDateTable, ({ one }) => ({
  country: one(countryTable, {
    fields: [pubDateTable.countryId],
    references: [countryTable.countryId]
  })
}));

export type PubDate = typeof pubDateTable.$inferSelect;
export type NewPubDate = typeof pubDateTable.$inferInsert;
