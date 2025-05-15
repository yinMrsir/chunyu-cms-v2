import request from "@/utils/request";

export function orderList(query) {
  return request({
    url: '/member/orders/list',
    method: 'get',
    params: query
  });
}

export function orderAsyncPayStatus(outTradeNo) {
  return request({
    url: '/member/orders/asyncPayStatus/' + outTradeNo,
    method: 'get'
  });
}
