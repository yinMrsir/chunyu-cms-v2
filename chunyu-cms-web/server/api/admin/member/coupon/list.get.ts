import { MemberCouponServices } from '~~/server/services/admin/member/memberCoupon.services';
import { createApiResponse } from '~~/server/utils/apiResponse';

const memberCouponServices = new MemberCouponServices();

export default defineEventHandler(async event => {
  const query = getQuery(event);
  const result = await memberCouponServices.list(query);
  return createApiResponse(result, 200, '获取成功');
});
