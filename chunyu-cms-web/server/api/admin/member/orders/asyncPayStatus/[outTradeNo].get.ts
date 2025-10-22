import { MemberOrderServices } from '~~/server/services/member/memberOrder.services';

const memberOrderServices = new MemberOrderServices();

export default defineEventHandler(async event => {
  const outTradeNo = getRouterParam(event, 'outTradeNo');
  if (!outTradeNo) {
    return createError({
      statusCode: 400,
      message: '订单号不能为空'
    });
  }
  try {
    await memberOrderServices.asyncPayStatus(outTradeNo);
    return createApiResponse(null);
  } catch (e) {
    return createError({
      statusCode: 400,
      message: (e as any).message
    });
  }
});
