import { CommentServices } from '~~/server/services/movie/comment/comment.services';

const commentServices = new CommentServices();

/**
 * 获取视频的弹幕
 */
export default defineEventHandler(async event => {
  const query = getQuery(event);
  if (query.videoId === 'undefined' || !query.videoId) {
    return [];
  }
  return await commentServices.getAllDm(Number(query.videoId));
});
