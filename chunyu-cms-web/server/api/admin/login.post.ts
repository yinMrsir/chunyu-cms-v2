import * as jwt from 'jsonwebtoken';
import { AuthServices } from '~/server/services/admin/auth/auth.services';
import { LoginServices } from '~/server/services/admin/login/login.services';

const authServices = new AuthServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await authServices.checkImgCaptcha(body.uuid, body.code);
  const data = await new LoginServices().login(body.username, body.password);
  return createApiResponse(data);
});
