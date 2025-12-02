import request from "@/utils/request";

// 获取兑换券列表
export function getCouponList(params: any) {
  return request({
    url: "/member/coupon/list",
    method: "GET",
    params,
  });
}

// 创建兑换券
export function createCoupon(data: any) {
  return request({
    url: "/member/coupon",
    method: "POST",
    data,
  });
}

// 更新兑换券
export function updateCoupon(id: number, data: any) {
  return request({
    url: `/member/coupon/${id}`,
    method: "PUT",
    data,
  });
}

// 删除兑换券
export function deleteCoupon(id: number) {
  return request({
    url: `/member/coupon/${id}`,
    method: "DELETE",
  });
}

// 批量创建兑换券
export function batchCreateCoupons(data: any) {
  return request({
    url: "/member/coupon/batch",
    method: "POST",
    data,
  });
}
