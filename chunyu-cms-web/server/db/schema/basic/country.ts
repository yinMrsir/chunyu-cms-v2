import { mysqlTable, int, varchar, text, date, char } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const countryTable = mysqlTable('country', {
  countryId: int('country_id').autoincrement().primaryKey(),
  // 中文简称
  name: varchar('name', { length: 255 }).notNull(),
  // 编码
  code: varchar('code', { length: 255 }).default(''),
  // 类型 0:国家 1：地区
  type: char('type', { length: 1 }).default('0'),
  // 中文全称
  fullName: varchar('full_name', { length: 255 }).default(''),
  // 所属大洲
  continent: varchar('continent', { length: 255 }).default(''),
  // 英文简称
  nameEn: varchar('name_en', { length: 255 }).default(''),
  // 英文全称
  fullNameEn: varchar('full_name_en', { length: 255 }).default(''),
  // 原名简称
  originalName: varchar('original_name', { length: 255 }).default(''),
  // 原名全称
  originalFullName: varchar('original_full_name', { length: 255 }),
  // 成立日期
  beginDate: date('begin_date', { mode: 'string' }),
  // 消失日期
  endDate: date('end_date', { mode: 'string' }),
  // 国旗/区旗
  flag: varchar('flag', { length: 255 }),
  // 简介
  brief: text('brief').default(''),
  ...columnsHelpers
});

export type Country = typeof countryTable.$inferSelect;
export type NewCountry = typeof countryTable.$inferInsert;
