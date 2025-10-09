/* 字典类型导入、导出字段 */
export const dictTypeTableHeaders = [
  { propertyKey: 'dictId', name: '字典编码', type: '0' },
  { propertyKey: 'dictName', name: '字典名称', type: '0' },
  { propertyKey: 'dictType', name: '字典类型', type: '0' },
  { propertyKey: 'status', name: '状态', type: '0', dictType: 'sys_normal_disable' }
];

/* 字典数据导入、导出字段 */
export const dictDataTableHeaders = [
  { propertyKey: 'dictCode', name: '字典编码', type: '0' },
  { propertyKey: 'dictSort', name: '字典排序', type: '0' },
  { propertyKey: 'dictLabel', name: '字典标签', type: '0' },
  { propertyKey: 'dictValue', name: '字典键值', type: '0' },
  { propertyKey: 'cssClass', name: '样式属性', type: '0' },
  { propertyKey: 'listClass', name: '表格回显样式', type: '0' },
  { propertyKey: 'isDefault', name: '是否默认（Y是 N否）', type: '0' },
  { propertyKey: 'status', name: '状态', type: '0', dictType: 'sys_normal_disable' },
  { propertyKey: 'dictTypeId', name: '字典类型', type: '2' }
];
