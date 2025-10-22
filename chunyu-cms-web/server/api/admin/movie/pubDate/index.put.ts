import { PubDateServices } from '~~/server/services/movie/pubDate/pubDate.services';

const pubDateServices = new PubDateServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await pubDateServices.update(body);
  return createApiResponse(null);
});
