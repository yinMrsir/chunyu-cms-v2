import { LevelServices } from '~~/server/services/basic/level/level.services';

const levelServices = new LevelServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await levelServices.delete(ids.split(','));
  return createApiResponse(null);
});
