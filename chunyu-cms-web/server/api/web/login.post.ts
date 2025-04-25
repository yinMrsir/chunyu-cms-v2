import { createApiResponse } from '~/server/utils/apiResponse';
import { USER_WEB_CODE_KEY } from '~/server/contants/redis.contant';

const redis = useStorage('redis');

export default defineEventHandler(async event => {
  const body = await readBody(event);
  if (!body.email) {
    return createApiResponse(null, 400, '邮箱不能为空');
  }
  if (body.loginType === '1') {
    if (!body.code) {
      return createApiResponse(null, 400, '验证码不能为空');
    }
    const validateCode = await redis.getItem(`${USER_WEB_CODE_KEY}:${body.email}`);
    if (validateCode !== body.code) {
      return createApiResponse(null, 400, '验证码错误');
    }
  } else if (body.loginType === '2') {
    if (!body.password) {
      return createApiResponse(null, 400, '密码不能为空');
    }
  }
  return createApiResponse(null, 400, '开发中...');
});
