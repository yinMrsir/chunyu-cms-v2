import { mysqlTable, int, varchar, char } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';
import { movieBasicToGenreTable } from '../movie/movieBasicToGenre';
import { columnsTable } from './columns';

export const genreTable = mysqlTable('genre', {
  genreId: int('genre_id').autoincrement().primaryKey(),
  // 所属分类
  columnValue: varchar('column_value', { length: 50 }).notNull(),
  // 中文名称
  name: varchar('name', { length: 50 }).notNull(),
  // 英文名称
  nameEn: varchar('name_en', { length: 50 }),
  // 状态
  status: char('status', { length: 1 }).default('0'),
  ...columnsHelpers
});

export type Genre = typeof genreTable.$inferSelect;
export type NewGenre = typeof genreTable.$inferInsert;

export const genreTableRelations = relations(genreTable, ({ one, many }) => {
  return {
    column: one(columnsTable, {
      fields: [genreTable.columnValue],
      references: [columnsTable.value]
    }),
    movies: many(movieBasicToGenreTable)
  };
});
