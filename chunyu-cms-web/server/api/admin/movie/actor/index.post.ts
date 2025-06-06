import { ActorServices } from '~/server/services/movie/actor/actor.services';

const actorServices = new ActorServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await actorServices.add(body);
  return createApiResponse(null);
});
