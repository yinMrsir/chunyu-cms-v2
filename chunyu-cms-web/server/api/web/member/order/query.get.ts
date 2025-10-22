import { MemberOrderServices } from '~~/server/services/member/memberOrder.services';

const memberOrderServices = new MemberOrderServices();

/**
 * 查询订单
 */
export default defineEventHandler(async event => {
  const query = getQuery(event);
  if (!query.outTradeNo) {
    return createApiResponse({ status: 400, message: '订单号不能为空' });
  }
  const data = await memberOrderServices.getByOrderNo(query.outTradeNo as string);
  return createApiResponse(data);
});
