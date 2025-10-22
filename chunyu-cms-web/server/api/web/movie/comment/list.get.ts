import { CommentServices } from '~~/server/services/movie/comment/comment.services';

const commentServices = new CommentServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  if (query.videoId === 'undefined' || !query.videoId) {
    return [];
  }
  return await commentServices.pageList(query);
});
