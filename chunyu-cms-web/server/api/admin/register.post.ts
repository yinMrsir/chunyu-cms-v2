import { UserServices } from '~~/server/services/admin/system/user/user.services';
import { AuthServices } from '~~/server/services/admin/auth/auth.services';

const userServices = new UserServices();
const authServices = new AuthServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  await authServices.checkImgCaptcha(body.uuid, body.code);
  const user = await userServices.findOneByUserNameState(body.username);
  if (user) {
    throw createError({ statusCode: 400, message: '用户已存在' });
  }
  return createApiResponse(null);
});
