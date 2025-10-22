import { MemberWalletServices } from '~~/server/services/member/memberWallet.services';

const memberWalletServices = new MemberWalletServices();

/**
 * 购买影片
 */
export default defineEventHandler(async event => {
  const body = await readBody(event);
  await memberWalletServices.buyMovie(event.context.memberUser.memberUserId, body.movieBasicsId);
  return createApiResponse(null);
});
