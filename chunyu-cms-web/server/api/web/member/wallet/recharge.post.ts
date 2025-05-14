import { MemberWalletServices } from '~/server/services/member/memberWallet.services';

const memberWalletServices = new MemberWalletServices();

/**
 * 充值
 */
export default defineEventHandler(async event => {
  const body = await readBody(event);
  await memberWalletServices.recharge(event.context.memberUser.memberUserId, Number(body.gold));
  return createApiResponse(null);
});
