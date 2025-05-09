import request from "@/utils/request";

export function getShortList(query) {
  return request({
    url: "/short/list",
    method: "get",
    params: query,
  });
}

export function editStatus(data) {
  return request({
    url: "/short/editStatus",
    method: "put",
    data,
  });
}
