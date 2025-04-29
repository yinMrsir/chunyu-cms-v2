const runtimeConfig = useRuntimeConfig();

/* 放开执行的路由 */
const noVerificationRouters = [
  '/api/admin/login',
  '/api/admin/logout',
  '/api/admin/captchaImage',
  '/api/admin/common/upload',
  '/api/web/movie/pv',
  '/api/web/sendCode',
  '/api/web/login',
  '/api/web/member/user'
];

export default defineEventHandler(event => {
  // 演示环境
  if (
    runtimeConfig.isDemoEnvironment &&
    isMethod(event, ['POST', 'PUT']) &&
    !noVerificationRouters.includes(event.path) &&
    event.context.user?.userId !== -1
  ) {
    throw createError({ statusCode: 403, message: '演示环境禁止修改数据！' });
  }
});
