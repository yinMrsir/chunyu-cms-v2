import { mysqlTable, varchar, int, datetime } from 'drizzle-orm/mysql-core';

export const jobLogTable = mysqlTable('job_log', {
  // 任务日志ID
  jobLogId: int('job_log_id').autoincrement().primaryKey(),
  // 任务名称
  jobName: varchar('job_name', { length: 64 }),
  // 任务组名
  jobGroup: varchar('job_group', { length: 64 }),
  // 调用目标字符串
  invokeTarget: varchar('invoke_target', { length: 500 }),
  // 日志信息
  jobMessage: varchar('job_message', { length: 500 }).default(''),
  // 执行状态（0正常 1失败）
  status: varchar('status', { length: 1 }).default('0'),
  // 异常信息
  exceptionInfo: varchar('exception_info', { length: 2000 }).default(''),
  // 创建时间
  createTime: datetime('create_time')
});

export type JobLog = typeof jobLogTable.$inferSelect;
export type NewJobLog = typeof jobLogTable.$inferInsert;
