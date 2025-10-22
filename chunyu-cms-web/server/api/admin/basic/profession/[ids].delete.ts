import { ProfessionServices } from '~~/server/services/basic/profession/profession.services';

const professionServices = new ProfessionServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await professionServices.delete(ids.split(','));
  return createApiResponse(null);
});
