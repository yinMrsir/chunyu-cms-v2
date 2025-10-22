import { CastServices } from '~~/server/services/movie/cast/cast.services';

const castServices = new CastServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await castServices.update(body);
  return createApiResponse(null);
});
