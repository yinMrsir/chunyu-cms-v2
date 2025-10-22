import { AuthServices } from '~~/server/services/admin/auth/auth.services';
import { LoginServices } from '~~/server/services/admin/login/login.services';

const authServices = new AuthServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const headers = getHeaders(event);
  const loginInfo = { headers, user: { userName: body.username } };
  await authServices.checkImgCaptcha(body.uuid, body.code, loginInfo);
  const data = await new LoginServices().login(body.username, body.password, headers);
  return createApiResponse(data);
});
