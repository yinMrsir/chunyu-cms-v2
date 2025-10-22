import { ActorServices } from '~~/server/services/movie/actor/actor.services';

const actorServices = new ActorServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await actorServices.update(body);
  return createApiResponse(null);
});
