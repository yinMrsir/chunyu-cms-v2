import { PostServices } from '~~/server/services/admin/system/post/post.services';

/* 通过Id 查询角色 */
export default defineEventHandler(async event => {
  await event.context.validatePermission('system:post:remove');
  const postId = getRouterParam(event, 'postId');
  if (!postId) {
    throw createError({ statusCode: 400, message: '未传入角色ID' });
  }
  const data = await new PostServices().delete(postId.split(','));
  return createApiResponse(data);
});
