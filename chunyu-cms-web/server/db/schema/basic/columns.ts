import { char, int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { movieBasicsTable } from '../movie/movieBasics';
import { genreTable } from './genre';

export const columnsTable = mysqlTable('columns', {
  columnId: int('column_id').autoincrement().primaryKey(),
  // 栏目名
  name: varchar('name', { length: 255 }).notNull(),
  // 栏目类型 1: 网站 2: 外链
  type: char('type', { length: 1 }).default('1'),
  // 目录名
  value: varchar('value', { length: 255 }),
  // 图标
  icon: varchar('icon', { length: 255 }),
  // 排序
  order: int('order').default(1),
  // 状态
  status: char('status', { length: 1 }).default('0')
});

export type Columns = typeof columnsTable.$inferSelect;
export type NewColumns = typeof columnsTable.$inferInsert;

export const columnsRelation = relations(columnsTable, ({ many }) => {
  return {
    genre: many(genreTable),
    movies: many(movieBasicsTable)
  };
});
