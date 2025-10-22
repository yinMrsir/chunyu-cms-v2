import { DictServices } from '~~/server/services/admin/system/dict/dict.services';

export default defineEventHandler(async event => {
  const dictCode = getRouterParam(event, 'dictCode');
  if (!dictCode) {
    throw createError({ statusCode: 400, message: 'dictCode undefined' });
  }
  const data = await new DictServices().findDictDataById(+dictCode);
  return createApiResponse({
    ...data,
    dictType: data?.dictType?.dictType
  });
});
