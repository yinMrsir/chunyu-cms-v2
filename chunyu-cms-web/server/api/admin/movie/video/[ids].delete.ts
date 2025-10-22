import { VideoServices } from '~~/server/services/movie/video/video.services';

const videoServices = new VideoServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await videoServices.delete(ids.split(','));
  return createApiResponse(null);
});
