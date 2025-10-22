import { MemberOrderServices } from '~~/server/services/member/memberOrder.services';

const memberOrderServices = new MemberOrderServices();

export default defineEventHandler(async event => {
  const body = await readBody<{ outTradeNo: string }>(event);
  try {
    const data = await memberOrderServices.asyncPayStatus(body.outTradeNo);
    return createApiResponse(data);
  } catch (error: any) {
    return createApiResponse(null, 400, error.message);
  }
});
