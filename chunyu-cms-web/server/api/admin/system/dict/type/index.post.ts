import { DictServices } from '~~/server/services/admin/system/dict/dict.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  if (!body.dictType) {
    throw createError({ statusCode: 400, message: '字典类型不能为空' });
  }
  try {
    await new DictServices().addType(body);
    return createApiResponse(null);
  } catch (error) {
    throw createError({ statusCode: 400, message: String(error) });
  }
});
