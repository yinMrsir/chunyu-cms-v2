import { FileConfigServices } from '~~/server/services/admin/system/fileConfig/fileConfig.services';

const fileConfigServices = new FileConfigServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  const data = await fileConfigServices.delete(ids.split(','));
  return createApiResponse(data);
});
