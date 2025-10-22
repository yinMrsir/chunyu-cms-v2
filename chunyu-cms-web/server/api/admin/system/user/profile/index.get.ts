import { UserServices } from '~~/server/services/admin/system/user/user.services';

export default defineEventHandler(async event => {
  const data = await new UserServices().userAllInfo(event.context.user.userId);
  const postGroup = data.posts?.map(item => item?.postName).join('、');
  const roleGroup = data.roles?.map(item => item?.roleName).join('、');
  return createApiResponse({
    data,
    postGroup,
    roleGroup
  });
});
