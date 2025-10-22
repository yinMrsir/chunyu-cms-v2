import { VideoServices } from '~~/server/services/movie/video/video.services';

const videoServices = new VideoServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await videoServices.pageList(query);
  return createApiResponse(data);
});
