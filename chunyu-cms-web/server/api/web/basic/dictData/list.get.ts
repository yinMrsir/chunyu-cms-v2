import { DictServices } from '~~/server/services/admin/system/dict/dict.services';

// 获取字典类型的接口
export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await new DictServices().dictDataList(query);
  return data.rows;
});
