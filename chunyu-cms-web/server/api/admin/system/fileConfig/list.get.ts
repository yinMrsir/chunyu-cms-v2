import { FileConfigServices } from '~~/server/services/admin/system/fileConfig/fileConfig.services';

const fileConfigServices = new FileConfigServices();

export default defineEventHandler(async () => {
  const data = await fileConfigServices.pageList();
  return createApiResponse(data);
});
