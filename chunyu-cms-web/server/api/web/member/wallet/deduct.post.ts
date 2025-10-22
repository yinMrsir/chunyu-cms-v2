import { MemberWalletServices } from '~~/server/services/member/memberWallet.services';

const memberWalletServices = new MemberWalletServices();

/**
 * 扣除
 */
export default defineEventHandler(async event => {
  const body = await readBody(event);
  await memberWalletServices.deduct(event.context.memberUser.memberUserId, body.gold);
  return createApiResponse(null);
});
