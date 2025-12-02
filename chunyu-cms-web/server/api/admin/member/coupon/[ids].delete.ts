import { MemberCouponServices } from '~~/server/services/admin/member/memberCoupon.services';
import { createApiResponse } from '~~/server/utils/apiResponse';

const memberCouponServices = new MemberCouponServices();

export default defineEventHandler(async event => {
  const ids = getRouterParam(event, 'ids');
  if (!ids) {
    throw createError({ statusCode: 400, message: '参数错误' });
  }
  await memberCouponServices.delete(ids.split(','));
  return createApiResponse(null, 200, '删除成功');
});
