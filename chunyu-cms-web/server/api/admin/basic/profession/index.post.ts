import { ProfessionServices } from '~~/server/services/basic/profession/profession.services';

const professionServices = new ProfessionServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await professionServices.add(body);
  return createApiResponse(null);
});
