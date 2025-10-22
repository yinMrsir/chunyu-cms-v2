import { UserServices } from '~~/server/services/admin/system/user/user.services';

const userServices = new UserServices();

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:user:list');
  const query = getQuery(event);
  const data = await userServices.list(query);
  return createApiResponse(data);
});
