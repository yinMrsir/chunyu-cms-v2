import { useAuth } from '../composables/useAuth';

/* 管理端接口不需要验证Auth的路由 */
const noVerificationRouters = [
  '/api/admin/login',
  '/api/admin/logout',
  '/api/admin/captchaImage',
  '/api/admin/common/upload',
  '/api/admin/common/uploadChunk',
  '/api/admin/common/mergeChunks'
];

export default defineEventHandler(async event => {
  if (!noVerificationRouters.includes(event.path.split('?')[0]) && event.path.includes('/api/admin')) {
    const auth = useAuth(event);
    event.context.user = await auth.verification();
    event.context.validatePermission = auth.validatePermission;
  }
});
