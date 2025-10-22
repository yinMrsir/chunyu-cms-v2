import { ProfessionServices } from '~~/server/services/basic/profession/profession.services';

const professionServices = new ProfessionServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await professionServices.allList(query);
  return createApiResponse(data);
});
