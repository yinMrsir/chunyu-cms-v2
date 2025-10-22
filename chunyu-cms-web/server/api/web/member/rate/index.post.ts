import { MemberRateServices } from '~~/server/services/member/memberRate.services';
import { MovieRateServices } from '~~/server/services/movie/movieRate/movieRate.services';

const memberRateServices = new MemberRateServices();
const movieRateServices = new MovieRateServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const memberUserId = event.context.memberUser.memberUserId;
  const data = await memberRateServices.getMemberRateByMemberUserId(memberUserId, body.movieBasicsId);
  if (data) {
    return createApiResponse(data, 400, '你已经评价过了');
  }
  const rate = await movieRateServices.createMovieRate({
    memberUserId,
    movieBasicsId: body.movieBasicsId,
    rate: body.rate
  });
  return createApiResponse({ rate }, 200, '评价成功');
});
