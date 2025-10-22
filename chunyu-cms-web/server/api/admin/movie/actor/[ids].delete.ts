import { ActorServices } from '~~/server/services/movie/actor/actor.services';

const actorServices = new ActorServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await actorServices.delete(ids.split(','));
  return createApiResponse(null);
});
