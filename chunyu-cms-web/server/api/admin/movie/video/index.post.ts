import { VideoServices } from '~~/server/services/movie/video/video.services';

const videoServices = new VideoServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await videoServices.add(body);
  return createApiResponse(null);
});
