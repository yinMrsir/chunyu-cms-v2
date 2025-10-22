import { OnlineServices } from '~~/server/services/admin/monitor/online/online.services';

export default defineEventHandler(async event => {
  const tokenKey = getRouterParam(event, 'tokenKey');
  if (!tokenKey) {
    throw createError({ statusCode: 400, statusMessage: '参数错误' });
  }
  await new OnlineServices().deleteOnline(tokenKey);
  return createApiResponse(null);
});
