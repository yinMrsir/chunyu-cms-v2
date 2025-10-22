import { VideoServices } from '~~/server/services/movie/video/video.services';

const videoServices = new VideoServices();

export default defineEventHandler(async event => {
  const id = getRouterParam(event, 'id');
  if (!id || id === 'undefined') {
    return null;
  }
  return await videoServices.getByVideoId(Number(id));
});
