import { char, int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const professionTable = mysqlTable('profession', {
  professionId: int('profession_id').autoincrement().primaryKey(),
  // 中文名称
  name: varchar('name', { length: 10 }).notNull(),
  // 英文名称
  nameEn: varchar('name_en', { length: 100 }),
  // 状态
  status: char('status', { length: 1 }).default('0').notNull(),
  // 简介
  brief: varchar('brief', { length: 100 }),
  // 父级Id
  parentId: int('parent_id').default(0),
  // 层级路径，逗号分隔
  mpath: varchar('mpath', { length: 100 }),
  ...columnsHelpers
});

export type Profession = typeof professionTable.$inferSelect;
export type NewProfession = typeof professionTable.$inferInsert;
