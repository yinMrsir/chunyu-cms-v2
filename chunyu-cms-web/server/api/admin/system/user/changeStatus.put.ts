import { UserServices } from '~~/server/services/admin/system/user/user.services';

const userServices = new UserServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await userServices.changeStatus(body.userId, body.status, event.context.user.userName);
  return createApiResponse(null);
});
