import { MovieVideoServices } from '~~/server/services/movie/movieVideo/movieVideo.services';

const movieVideoServices = new MovieVideoServices();

// 通过影视ID和类型获取视频
export default defineEventHandler(async event => {
  const query = getQuery(event);

  const data = await movieVideoServices.pageList(query);
  return data.rows;
});
