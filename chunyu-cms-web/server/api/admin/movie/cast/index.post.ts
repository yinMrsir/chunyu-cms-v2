import { CastServices } from '~~/server/services/movie/cast/cast.services';

const castServices = new CastServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await castServices.add(body);
  return createApiResponse(null);
});
