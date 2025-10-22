import { ActorServices } from '~~/server/services/movie/actor/actor.services';

const actorServices = new ActorServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await actorServices.pageList(query);
  return createApiResponse(data);
});
