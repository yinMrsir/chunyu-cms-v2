import { PubDateServices } from '~~/server/services/movie/pubDate/pubDate.services';

const pubDateServices = new PubDateServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await pubDateServices.add(body);
  return createApiResponse(null);
});
