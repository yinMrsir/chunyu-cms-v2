import { DictServices } from '~~/server/services/admin/system/dict/dict.services';

/* 通过字典类型查询字典数据 */
export default defineEventHandler(async event => {
  const dictType = getRouterParam(event, 'dictType');
  if (!dictType) {
    throw createError({ statusCode: 400, message: 'dictType undefined' });
  }
  const data = await new DictServices().getDictDataByDictType(dictType);
  return createApiResponse(data);
});
