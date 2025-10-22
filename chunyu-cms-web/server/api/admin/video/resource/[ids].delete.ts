import { VideoResourceServices } from '~~/server/services/movie/videoResource/videoResource.services';

const videoResourceServices = new VideoResourceServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await videoResourceServices.delete(ids.split(',').map(item => Number(item)));
  return createApiResponse(null);
});
