import { PubDateServices } from '~~/server/services/movie/pubDate/pubDate.services';

const pubDateServices = new PubDateServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await pubDateServices.delete(ids.split(','));
  return createApiResponse(null);
});
