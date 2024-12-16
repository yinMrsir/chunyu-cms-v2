import { LoginServices } from '~/server/services/admin/login/login.services';

export default defineEventHandler(async event => {
  await new LoginServices().logout(event.context.user.userId);
  return createApiResponse(null);
});
