import { CommentServices } from '~~/server/services/movie/comment/comment.services';

const commentServices = new CommentServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await commentServices.pageList(query);
  return createApiResponse(data);
});
