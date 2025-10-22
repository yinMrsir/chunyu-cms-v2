import { PostServices } from '~~/server/services/admin/system/post/post.services';
import { RoleServices } from '~~/server/services/admin/system/role/role.services';

export default defineEventHandler(async () => {
  const posts = await new PostServices().findAll();
  const roles = await new RoleServices().findAll();
  return createApiResponse({
    posts,
    roles
  });
});
