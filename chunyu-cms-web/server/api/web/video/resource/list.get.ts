import { VideoResourceServices } from '~~/server/services/movie/videoResource/videoResource.services';

const videoResourceServices = new VideoResourceServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await videoResourceServices.list(query);
  return data;
});
