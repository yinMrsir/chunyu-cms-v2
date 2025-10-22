import { UserServices } from '~~/server/services/admin/system/user/user.services';

const userServices = new UserServices();

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:user:remove');
  const userId = getRouterParam(event, 'userId');
  if (userId) {
    await userServices.delete(userId);
    return createApiResponse(null);
  }
});
