import { SharedServices } from '~/server/services/admin/share/shared.services';
import { createApiResponse } from '~/server/utils/apiResponse';
import { USER_WEB_CODE_KEY } from '~/server/contants/redis.contant';

const sharedServices = new SharedServices();
const redis = useStorage('redis');

export default defineEventHandler(async event => {
  const body = await readBody(event);
  if (!body.email) {
    return createApiResponse(null, 400, '邮箱不能为空');
  }
  const randomCode = sharedServices.generateRandomValue(4);
  await sendEmail({
    to: body.email,
    subject: '淳渔CMS登录/注册验证码',
    text: `您的验证码是：<span style="font-size: 36px; font-weight: bold;">${randomCode}</span>`
  });
  await redis.setItem(`${USER_WEB_CODE_KEY}:${body.email}`, randomCode, { ttl: 60 * 3 });
  return createApiResponse(null);
});
