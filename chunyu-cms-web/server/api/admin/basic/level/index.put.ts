import { LevelServices } from '~~/server/services/basic/level/level.services';

const levelServices = new LevelServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await levelServices.update(body);
  return createApiResponse(null);
});
