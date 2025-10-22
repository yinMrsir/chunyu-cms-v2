import { CastServices } from '~~/server/services/movie/cast/cast.services';

const castServices = new CastServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await castServices.delete(ids.split(','));
  return createApiResponse(null);
});
