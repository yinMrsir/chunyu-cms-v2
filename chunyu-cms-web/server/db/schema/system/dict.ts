import { int, varchar, char, mysqlTable } from 'drizzle-orm/mysql-core';
import { relations } from 'drizzle-orm';
import { columnsHelpers } from '../../columns.helpers';

// 定义DictType表
export const dictTypeTable = mysqlTable('dict_type', {
  // 字典编码
  dictId: int('dict_id').autoincrement().primaryKey().notNull(),
  // 字典名称
  dictName: varchar('dict_name', { length: 100 }).default(''),
  // 字典类型
  dictType: varchar('dict_type', { length: 100 }).notNull().unique().default(''),
  // 状态
  status: char('status', { length: 1 }).default('0'),
  // 通用字段
  ...columnsHelpers
});

// 定义DictData表
export const dictDataTable = mysqlTable('dict_data', {
  // 字典编码
  dictCode: int('dict_data_id').autoincrement().primaryKey().notNull(),
  // 字典排序
  dictSort: int('dict_sort').default(0),
  // 字典标签
  dictLabel: varchar('dict_label', { length: 100 }),
  // 字典键值
  dictValue: varchar('dict_value', { length: 100 }),
  // 样式属性（其他样式扩展）
  cssClass: varchar('css_class', { length: 100 }),
  // 表格回显样式
  listClass: varchar('list_class', { length: 100 }),
  // 是否默认（Y是 N否）
  isDefault: char('is_default', { length: 1 }).default('N'),
  // 状态（0正常 1停用）
  status: char('status', { length: 1 }).default('0'),
  // 关联到DictType表的外键字段
  dictTypeId: int('dict_type_id').references(() => dictTypeTable.dictId),
  // 通用字段
  ...columnsHelpers
});

export const dictDataRelations = relations(dictDataTable, ({ one }) => ({
  dictType: one(dictTypeTable, { fields: [dictDataTable.dictTypeId], references: [dictTypeTable.dictId] })
}));
