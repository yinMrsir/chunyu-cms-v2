import { CommentServices } from '~~/server/services/movie/comment/comment.services';

const commentServices = new CommentServices();

/**
 * 新增视频评论
 */
export default defineEventHandler(async event => {
  const body = await readBody(event);
  body.memberUserId = event.context.memberUser.memberUserId;
  body.createTime = new Date();
  const commentId = await commentServices.add(body);
  return createApiResponse(commentId);
});
