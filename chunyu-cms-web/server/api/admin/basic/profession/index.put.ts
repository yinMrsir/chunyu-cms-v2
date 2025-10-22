import { ProfessionServices } from '~~/server/services/basic/profession/profession.services';

const professionServices = new ProfessionServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await professionServices.update(body);
  return createApiResponse(null);
});
