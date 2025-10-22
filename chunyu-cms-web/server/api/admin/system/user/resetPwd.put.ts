import { UserServices } from '~~/server/services/admin/system/user/user.services';

export default defineEventHandler(async event => {
  const { userId, password } = await readBody(event);
  await new UserServices().resetPwd(userId, password, event.context.user.userName);
  return createApiResponse(null);
});
