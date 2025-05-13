import * as jwt from 'jsonwebtoken';
import { USER_WEB_TOKEN_KEY } from '~/server/contants/redis.contant';

const redis = useStorage('redis');

/* 用户端接口需要验证的路由 */
const noVerificationRouters = [
  '/api/web/member/user/updatePassword',
  '/api/web/member/user',
  '/api/web/member/rate',
  '/api/web/member/short',
  '/api/web/member/short/list',
  '/api/web/member/comment'
];

export default defineEventHandler(async event => {
  if (noVerificationRouters.includes(event.path.split('?')[0]) && event.path.includes('/api/web')) {
    const token = getHeader(event, 'Token');
    if (!token) {
      return createApiResponse(null, 401, '未登录');
    }
    const sign = token.replaceAll('Bearer ', '');
    try {
      const memberUser = (jwt as any).default.verify(sign, useRuntimeConfig().jwt.secret as string) as any;
      const redisToken = await redis.getItem(`${USER_WEB_TOKEN_KEY}:${memberUser.memberUserId}`);
      if (redisToken !== sign) {
        return createApiResponse(null, 401, '登录状态已过期');
      }
      event.context.memberUser = memberUser;
    } catch (error: any) {
      return createApiResponse(null, 401, error.message);
    }
  }
});
