import { MemberCouponServices } from '~~/server/services/admin/member/memberCoupon.services';
import { createApiResponse } from '~~/server/utils/apiResponse';

const memberCouponServices = new MemberCouponServices();

export default defineEventHandler(async event => {
  const body = await readBody(event);

  // 如果券码为空，自动生成
  if (!body.couponCode || body.couponCode.trim() === '') {
    let couponCode: string;
    let existing: any;

    // 确保生成的券码唯一
    do {
      couponCode = memberCouponServices.generateCouponCode();
      existing = await memberCouponServices.getByCouponCode(couponCode);
    } while (existing);

    body.couponCode = couponCode;
  }

  if (body.couponCode.length < 8) {
    return createError({
      statusCode: 400,
      message: '券码长度不能小于8位'
    });
  }

  // 处理日期格式
  if (body.expireTime) {
    // 如果是字符串，转换为Date对象
    if (typeof body.expireTime === 'string') {
      body.expireTime = new Date(body.expireTime);
    }
  } else {
    body.expireTime = undefined;
  }

  // 设置创建时间
  body.createTime = new Date();
  body.updateTime = new Date();
  body.createBy = body.updateBy = event.context.user.userName;

  await memberCouponServices.add(body);
  return createApiResponse({ couponCode: body.couponCode }, 200, '创建成功');
});
