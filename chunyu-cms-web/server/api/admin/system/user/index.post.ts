import { UserServices } from '~~/server/services/admin/system/user/user.services';

const userServices = new UserServices();

export default defineEventHandler(async event => {
  await event.context.validatePermission('system:user:add');
  const body = await readBody(event);
  const user = await new UserServices().findOneByUserNameState(body.userName);
  if (user) throw createError({ statusCode: 400, message: '该用户名已存在，请更换' });
  body.createBy = body.updateBy = event.context.user.userName;
  const data = await userServices.addUser(body);
  return createApiResponse(data);
});
