import { UserServices } from '~~/server/services/admin/system/user/user.services';

export default defineEventHandler(async event => {
  const query: any = getQuery(event);
  await new UserServices().updateSelfPwd(query, event.context.user.userName);
  return createApiResponse(null);
});
