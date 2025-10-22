import { LoginServices } from '~~/server/services/admin/login/login.services';

const loginServices = new LoginServices();

export default defineEventHandler(async () => {
  const data = await loginServices.createImageCaptcha();
  return createApiResponse(data);
});
