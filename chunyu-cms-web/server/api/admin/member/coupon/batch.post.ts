import { MemberCouponServices } from '~~/server/services/admin/member/memberCoupon.services';
import { createApiResponse } from '~~/server/utils/apiResponse';

const memberCouponServices = new MemberCouponServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const { goldAmount, count, expireDays } = body;

  if (!goldAmount || !count || count <= 0) {
    return createApiResponse(null, 400, '金币数量和生成数量不能为空且数量必须大于0');
  }

  const couponCodes = await memberCouponServices.batchCreate(
    Number(goldAmount),
    Number(count),
    expireDays ? Number(expireDays) : undefined
  );

  return createApiResponse({ couponCodes, count: couponCodes.length }, 200, '批量创建成功');
});
