import { LoginServices } from '~~/server/services/admin/login/login.services';

export default defineEventHandler(async event => {
  const data = await new LoginServices().getRouterByUser(event.context.user.userId);
  return createApiResponse(data);
});
