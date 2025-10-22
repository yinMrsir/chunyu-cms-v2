import { MemberWalletServices } from '~~/server/services/member/memberWallet.services';

const memberWalletServices = new MemberWalletServices();

/**
 * 获取钱包信息
 */
export default defineEventHandler(async event => {
  return await memberWalletServices.getByMemberUserId(event.context.memberUser.memberUserId);
});
