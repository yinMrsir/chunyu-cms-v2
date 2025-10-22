import { LoginServices } from '~~/server/services/admin/login/login.services';

const loginServices = new LoginServices();

export default defineEventHandler(async event => {
  const data = await loginServices.getInfo(event.context.user.userId);
  return createApiResponse(data);
});
