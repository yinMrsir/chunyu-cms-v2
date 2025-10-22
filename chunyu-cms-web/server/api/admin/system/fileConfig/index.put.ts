import { FileConfigServices } from '~~/server/services/admin/system/fileConfig/fileConfig.services';

const fileConfigServices = new FileConfigServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  body.updateBy = event.context.user.userName;
  delete body.createTime;
  body.updateTime = new Date();
  const data = await fileConfigServices.update(body);
  return createApiResponse(data);
});
