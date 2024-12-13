import { NewsServices } from '~/server/services/news/news.services';

const newsServices = new NewsServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  try {
    const data = await newsServices.queryAll(query);
    return createApiResponse(data);
  } catch (error) {
    return createApiResponse(null, 400, error);
  }
});
