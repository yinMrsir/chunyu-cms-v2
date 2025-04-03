import { mysqlTable, serial, varchar, date, text, int } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { countryTable } from '../basic/country';
import { columnsHelpers } from '../../columns.helpers';

export const actorTable = mysqlTable('actor', {
  actorId: serial('actor_id').autoincrement().primaryKey(),
  // 封面
  avatar: varchar('avatar', { length: 255 }).default(''),
  // 中文名
  name: varchar('name', { length: 255 }).notNull(),
  // 英文名
  nameEn: varchar('name_en', { length: 255 }).default(''),
  // 中文别名
  nameMore: varchar('name_more', { length: 255 }).default(''),
  // 英文别名
  nameEnMore: varchar('name_en_more', { length: 255 }).default(''),
  // 性别
  gender: varchar('gender', { length: 10 }).default('3'),
  // 出生日期
  birthday: date('birthday', { mode: 'string' }),
  // 逝世日期
  deathDay: date('death_day', { mode: 'string' }),
  // 所属国家
  countryId: int('country_id'),
  // 出生地址
  bornPlace: varchar('born_place', { length: 255 }).default('').notNull(),
  // 简介
  brief: text('brief'),
  ...columnsHelpers
});

export const actorTableRelations = relations(actorTable, ({ one }) => ({
  country: one(countryTable, {
    fields: [actorTable.countryId],
    references: [countryTable.countryId]
  })
}));

export type Actor = typeof actorTable.$inferSelect;
export type NewActor = typeof actorTable.$inferInsert;
