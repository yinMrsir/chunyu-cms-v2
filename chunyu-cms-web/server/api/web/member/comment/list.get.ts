import { CommentServices } from '~~/server/services/movie/comment/comment.services';

const commentServices = new CommentServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const { pageNum = 1, limit = 10 } = query;

  try {
    const result = await commentServices.pageList({
      pageNum: Number(pageNum),
      limit: Number(limit),
      memberUserId: event.context.memberUser.memberUserId
    });
    return createApiResponse(result);
  } catch (error) {
    return createApiResponse(null, 500, '获取评论列表失败');
  }
});
