import { mysqlTable, varchar, int } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const videoResourceTable = mysqlTable('video_resource', {
  resourceId: int('resource_id').autoincrement().primaryKey(),
  // 关联影视ID
  movieId: int('movie_id').notNull(),
  // 标题
  title: varchar('title', { length: 255 }).notNull(),
  // 资源类型
  resources: varchar('resources', { length: 10 }).notNull().default('1'),
  // 资源地址
  url: varchar('url', { length: 500 }).notNull(),
  ...columnsHelpers
});

export type VideoResource = typeof videoResourceTable.$inferSelect;
export type NewVideoResource = typeof videoResourceTable.$inferInsert;
