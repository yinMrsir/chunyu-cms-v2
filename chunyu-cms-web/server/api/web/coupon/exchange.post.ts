import { MemberCouponServices } from '~~/server/services/admin/member/memberCoupon.services';
import { MemberWalletServices } from '~~/server/services/member/memberWallet.services';
import { MemberWalletLogServices } from '~~/server/services/member/memberWalletLog.services';
import { createApiResponse } from '~~/server/utils/apiResponse';

const memberCouponServices = new MemberCouponServices();
const memberWalletServices = new MemberWalletServices();
const memberWalletLogServices = new MemberWalletLogServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const { couponCode } = body;

  if (!couponCode) {
    return createApiResponse(null, 400, '兑换券码不能为空');
  }

  // 从中间件中获取用户信息
  const memberUser = event.context.memberUser;
  const memberUserId = memberUser.memberUserId;

  try {
    // 兑换券兑换
    const goldAmount = await memberCouponServices.exchange(couponCode, memberUserId);

    // 给用户充值金币
    await memberWalletServices.recharge(memberUserId, goldAmount, '兑换券兑换');

    return createApiResponse({ goldAmount }, 200, '兑换成功');
  } catch (error: any) {
    return createApiResponse(null, 400, error.message);
  }
});
