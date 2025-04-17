import { useAuth } from '../composables/useAuth';

const runtimeConfig = useRuntimeConfig();
/* 不需要验证Auth的路由 */
const noVerificationRouters = ['/api/admin/login', '/api/admin/logout', '/api/admin/captchaImage', '/api/web/movie/pv'];

export default defineEventHandler(async event => {
  if (!noVerificationRouters.includes(event.path) && event.path.includes('/api/admin')) {
    const auth = useAuth(event);
    event.context.user = await auth.verification();
    event.context.validatePermission = auth.validatePermission;
  }
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
