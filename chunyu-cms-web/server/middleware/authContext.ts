import { useAuth } from '../composables/useAuth';

/* 不需要验证Auth的路由 */
const noVerificationRouters = ['/api/admin/login', '/api/admin/logout', '/api/admin/captchaImage'];

export default defineEventHandler(async event => {
  if (!noVerificationRouters.includes(event.path) && event.path.includes('/api')) {
    const auth = useAuth(event);
    event.context.user = await auth.verification();
    event.context.validatePermission = auth.validatePermission;
  }
});
