import { MemberOrderServices } from '~~/server/services/member/memberOrder.services';
import { SharedServices } from '~~/server/services/admin/share/shared.services';
import { WxPayServices } from '~~/server/services/wxPay/wxPay.services';

const runtimeConfig = useRuntimeConfig();
const memberOrderServices = new MemberOrderServices();
const sharedServices = new SharedServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);
  const outTradeNo = sharedServices.generateOrderNumber();
  const totalAmount = Number(body.gold);
  const description = `购买金币 ${totalAmount}`;
  const memberOrderId = await memberOrderServices.add({
    memberUserId: event.context.memberUser.memberUserId,
    outTradeNo,
    totalAmount: body.gold,
    description,
    createTime: new Date()
  });
  const params = {
    description,
    out_trade_no: outTradeNo,
    notify_url: `${runtimeConfig.public.serverHost}/api/web/member/wallet/recharge`,
    amount: {
      total: totalAmount
    },
    scene_info: {
      payer_client_ip: 'ip'
    }
  };
  // # { status: 200, code_url: 'weixin://wxpay/bizpayurl?pr=9xFPmlUzz' }
  const data: any = await WxPayServices.getInstance().transactions_native(params as any);
  if (data.status !== 200) {
    await memberOrderServices.delete(memberOrderId);
    console.log(data.error);
    return createError({ statusCode: 400, message: data.error });
  }
  return createApiResponse({ codeUrl: data.code_url, outTradeNo });
});
