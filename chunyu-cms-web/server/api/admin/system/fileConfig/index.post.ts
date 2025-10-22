import { FileConfigServices } from '~~/server/services/admin/system/fileConfig/fileConfig.services';

const fileConfigServices = new FileConfigServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const data = await fileConfigServices.add(body);
  return createApiResponse(data);
});
