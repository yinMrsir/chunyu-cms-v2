import { char, int, mysqlTable, varchar } from 'drizzle-orm/mysql-core';
import { columnsHelpers } from '../../columns.helpers';

export const deptTable = mysqlTable('dept', {
  // 部门id
  deptId: int('dept_id').autoincrement().primaryKey().notNull(),
  // 部门名称
  deptName: varchar('dept_name', { length: 50 }).default(''),
  // 显示顺序
  orderNum: int('order_num').default(0),
  // 负责人
  leader: varchar('leader', { length: 20 }).default(''),
  // 联系电话
  phone: varchar('phone', { length: 11 }).default(''),
  // 邮箱
  email: varchar('email', { length: 50 }).default(''),
  // 部门状态
  status: char('status', { length: 1 }).default('0'),
  // 删除标志
  delFlag: char('del_flag', { length: 1 }).default('0'),
  // 父级ID
  parentDeptId: int('parent_dept_id').default(0),
  // 路径
  mpath: varchar('mpath', { length: 255 }),
  // 通用字段
  ...columnsHelpers
});

export type Dept = typeof deptTable.$inferSelect;
export type NewDept = typeof deptTable.$inferInsert;
