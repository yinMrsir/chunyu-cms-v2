import { DictServices } from '~~/server/services/admin/system/dict/dict.services';

export default defineEventHandler(async event => {
  const dictId = getRouterParam(event, 'dictId');
  if (!dictId) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  try {
    await new DictServices().deleteByDictIdArr(dictId.split(','));
    return createApiResponse(null);
  } catch (error) {
    throw createError({ statusCode: 400, message: String(error) });
  }
});
