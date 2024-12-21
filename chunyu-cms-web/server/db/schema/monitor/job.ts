import { mysqlTable, varchar, int } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const jobTable = mysqlTable('job', {
  // 任务ID
  jobId: int('job_id').autoincrement().primaryKey(),
  // 任务名称
  jobName: varchar('job_name', { length: 64 }).notNull(),
  // 任务组名
  jobGroup: varchar('job_group', { length: 64 }).default('DEFAULT'),
  // 调用目标字符串
  invokeTarget: varchar('invoke_target', { length: 225 }).notNull(),
  // cron执行表达式
  cronExpression: varchar('cron_expression', { length: 225 }).notNull(),
  // 计划执行错误策略（1立即执行 2执行一次 3放弃执行）
  misfirePolicy: varchar('misfire_policy', { length: 20 }).default('3'),
  // 是否并发执行（0允许 1禁止）
  concurrent: varchar('concurrent', { length: 1 }).default('1'),
  // 状态（0正常 1暂停）
  status: varchar('status', { length: 1 }).default('0'),
  ...columnsHelpers
});

export type Job = typeof jobTable.$inferSelect;
export type NewJob = typeof jobTable.$inferInsert;
