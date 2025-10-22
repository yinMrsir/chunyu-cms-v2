import * as jwt from 'jsonwebtoken';
import { MemberMovieServices } from '~~/server/services/member/memberMovie.services';
import { USER_WEB_TOKEN_KEY } from '~~/server/contants/redis.contant';

const redis = useStorage('redis');
const memberMovieServices = new MemberMovieServices();

/**
 * 查询影片购买状态
 */
export default defineEventHandler(async event => {
  const query = getQuery(event);
  if (!query.movieBasicsId) {
    return false;
  }
  const token = getHeader(event, 'Token');
  if (!token) {
    return false;
  }
  const sign = token.replaceAll('Bearer ', '');
  const memberUser = (jwt as any).default.verify(sign, useRuntimeConfig().jwt.secret as string) as any;
  const redisToken = await redis.getItem(`${USER_WEB_TOKEN_KEY}:${memberUser.memberUserId}`);
  if (redisToken !== sign) {
    return false;
  }
  const data = await memberMovieServices.getMemberMovieById(memberUser.memberUserId, Number(query.movieBasicsId));
  return !!data;
});
