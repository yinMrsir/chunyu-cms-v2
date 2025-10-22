import { LevelServices } from '~~/server/services/basic/level/level.services';

const levelServices = new LevelServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await levelServices.add(body);
  return createApiResponse(null);
});
