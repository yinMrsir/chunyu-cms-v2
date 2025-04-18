import { char, int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const fileConfigTable = mysqlTable('file_config', {
  fileConfigId: int('file_config_id').autoincrement().primaryKey(),
  // 名称
  name: varchar('name', { length: 255 }).notNull(),
  // 值
  value: varchar('value', { length: 255 }).notNull(),
  // 填写Bucket所在地域。以华东1（杭州）为例，Region填写为oss-cn-hangzhou。
  region: varchar('region', { length: 255 }).notNull(),
  // 填写Bucket名称。
  bucket: varchar('bucket', { length: 255 }).notNull(),
  // 账号AccessKey拥有所有API的访问权限，风险很高。强烈建议您创建并使用RAM用户进行API访问或日常运维，请登录RAM控制台创建RAM用户。
  accessKeyId: varchar('access_key_id', { length: 255 }).notNull(),
  accessKeySecret: varchar('access_key_secret', { length: 255 }).notNull(),
  // 是否支持上传自定义域名 0 不支持 1 支持
  cname: char('cname', { length: 1 }).default('0').notNull(),
  // OSS访问域名
  endpoint: varchar('endpoint', { length: 255 }),
  // 超时 5分钟
  timeout: int().default(300000).notNull(),
  ...columnsHelpers
});

export type FileConfig = typeof fileConfigTable.$inferSelect;
export type NewFileConfig = typeof fileConfigTable.$inferInsert;
