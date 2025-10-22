import { PubDateServices } from '~~/server/services/movie/pubDate/pubDate.services';

const pubDateServices = new PubDateServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await pubDateServices.pageList(query);
  return createApiResponse(data);
});
