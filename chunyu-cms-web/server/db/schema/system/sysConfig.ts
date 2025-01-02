import { mysqlTable, mysqlEnum, varchar, text, int } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const sysConfigTable = mysqlTable('sys_config', {
  /* 参数主键 */
  sysConfigId: int('sys_config_id').primaryKey().autoincrement(),

  /* 参数名称 */
  configName: varchar('config_name', { length: 100 }).default(''),

  /* 参数键名 */
  configKey: varchar('config_key', { length: 100 }).default(''),

  /* 参数键值 */
  configValue: text('config_value').default(''),

  /* 系统内置（Y是 N否） */
  configType: mysqlEnum('config_type', ['Y', 'N']).default('N'),
  ...columnsHelpers
});

export type SysConfig = typeof sysConfigTable.$inferSelect;
export type NewSysConfig = typeof sysConfigTable.$inferInsert;
