import { UserServices } from '~/server/services/admin/system/user/user.services';

const userServices = new UserServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  delete body.createTime;
  body.updateTime = new Date();
  await userServices.updateUser(body);
  return createApiResponse(null);
});
