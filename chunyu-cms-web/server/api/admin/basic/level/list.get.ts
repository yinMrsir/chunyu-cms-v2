import { LevelServices } from '~~/server/services/basic/level/level.services';

const levelServices = new LevelServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await levelServices.pageList(query);
  return createApiResponse(data);
});
