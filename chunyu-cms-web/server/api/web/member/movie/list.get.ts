import { MemberMovieServices } from '~~/server/services/member/memberMovie.services';

const memberMovieServices = new MemberMovieServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const data = await memberMovieServices.list(query, event.context.memberUser.memberUserId);
  return createApiResponse(data);
});
