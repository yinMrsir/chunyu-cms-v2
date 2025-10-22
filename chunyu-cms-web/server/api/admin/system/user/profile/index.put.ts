import { UserServices } from '~~/server/services/admin/system/user/user.services';

export default defineEventHandler(async event => {
  const body = await readBody(event);
  body.updateTime = new Date();
  delete body.createTime;
  await new UserServices().updateProfile(body, event.context.user.userId);
  return createApiResponse(null);
});
