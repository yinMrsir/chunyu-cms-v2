import { datetime, varchar } from 'drizzle-orm/mysql-core';

export const columnsHelpers = {
  // 备注
  remark: varchar('remark', { length: 500 }).default(''),
  // 创建者
  createBy: varchar('create_by', { length: 64 }).default(''),
  // 创建时间
  createTime: datetime('create_time', { mode: 'date' }).default(new Date()),
  // 更新者
  updateBy: varchar('update_by', { length: 64 }).default(''),
  // 更新时间
  updateTime: datetime('update_time', { mode: 'date' }).default(new Date())
};
