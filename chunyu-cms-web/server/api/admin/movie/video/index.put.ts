import { VideoServices } from '~~/server/services/movie/video/video.services';

const videoServices = new VideoServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await videoServices.update(body);
  return createApiResponse(null);
});
