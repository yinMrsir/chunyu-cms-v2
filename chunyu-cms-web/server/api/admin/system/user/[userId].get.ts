import { UserServices } from '~~/server/services/admin/system/user/user.services';
import { PostServices } from '~~/server/services/admin/system/post/post.services';
import { RoleServices } from '~~/server/services/admin/system/role/role.services';

const userServices = new UserServices();
const postServices = new PostServices();
const roleServices = new RoleServices();

/* 通过Id 查询角色 */
export default defineEventHandler(async event => {
  const userId = getRouterParam(event, 'userId');
  if (!userId) {
    throw createError({ statusCode: 400, statusMessage: 'userId:参数错误' });
  }
  const data = await userServices.userAllInfo(userId);
  const postIds = data?.posts?.map(item => item?.postId) || [];
  const roleIds = data?.roles?.map(item => item?.roleId) || [];

  const posts = await postServices.findAll();
  const roles = await roleServices.findAll();
  return createApiResponse({ data, postIds, posts, roleIds, roles });
});
