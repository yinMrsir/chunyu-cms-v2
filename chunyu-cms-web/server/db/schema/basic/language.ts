import { mysqlTable, varchar, int } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { countryTable } from './country';

export const languageTable = mysqlTable('language', {
  languageId: int('language_id').autoincrement().primaryKey(),
  // 中文简称
  name: varchar('name', { length: 50 }).notNull(),
  // 中文全称
  fullName: varchar('full_name', { length: 50 }),
  // 所属国家
  countryId: int('country_id'),
  // 英文简称
  nameEn: varchar('name_en', { length: 50 }),
  // 英文全称
  fullNameEn: varchar('full_name_en', { length: 50 }),
  // 原名简称
  originalName: varchar('original_name', { length: 50 }),
  // 原名全称
  originalFullName: varchar('original_full_name', { length: 50 }),
  // 简介
  brief: varchar('brief', { length: 500 }),
  ...columnsHelpers
});

export const languageRelations = relations(languageTable, ({ one }) => ({
  country: one(countryTable, {
    fields: [languageTable.countryId],
    references: [countryTable.countryId]
  })
}));

export type Language = typeof languageTable.$inferSelect;
export type NewLanguage = typeof languageTable.$inferInsert;
