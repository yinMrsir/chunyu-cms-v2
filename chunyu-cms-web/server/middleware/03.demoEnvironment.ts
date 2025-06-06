const runtimeConfig = useRuntimeConfig();

/* 放开执行的路由 */
const noVerificationRouters = [
  '/api/admin/login',
  '/api/admin/logout',
  '/api/admin/captchaImage',
  '/api/admin/common/upload',
  '/api/admin/common/uploadChunk',
  '/api/admin/common/mergeChunks',
  '/api/web/movie/pv',
  '/api/web/sendCode',
  '/api/web/login',
  '/api/web/member/rate',
  '/api/web/member/user',
  '/api/web/member/short',
  '/api/web/member/comment',
  '/api/web/member/wallet/recharge',
  '/api/web/member/movie/buy',
  '/api/web/member/short/like',
  '/api/web/member/short/like/cancel'
];

export default defineEventHandler(event => {
  // 演示环境
  if (
    runtimeConfig.isDemoEnvironment &&
    isMethod(event, ['POST', 'PUT', 'DELETE']) &&
    !noVerificationRouters.includes(event.path.split('?')[0]) &&
    event.context.user?.userId !== -1
  ) {
    throw createError({ statusCode: 403, message: '演示环境禁止修改数据！' });
  }
});
