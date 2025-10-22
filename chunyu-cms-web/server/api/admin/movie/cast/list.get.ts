import { CastServices } from '~~/server/services/movie/cast/cast.services';

const castServices = new CastServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await castServices.pageList(query);
  return createApiResponse(data);
});
