import { PostServices } from '~~/server/services/admin/system/post/post.services';

/* 通过Id 查询岗位 */
export default defineEventHandler(async event => {
  const postId = getRouterParam(event, 'postId');
  const data = await new PostServices().findById(Number(postId));
  return createApiResponse(data);
});
