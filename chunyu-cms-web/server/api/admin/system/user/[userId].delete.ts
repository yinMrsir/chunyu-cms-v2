import { UserServices } from '~/server/services/admin/system/user/user.services';

const userServices = new UserServices();

export default defineEventHandler(async event => {
  const userId = getRouterParam(event, 'userId');
  if (userId) {
    await userServices.delete(userId);
    return createApiResponse(null);
  }
});
