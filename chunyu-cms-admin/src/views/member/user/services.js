import request from "@/utils/request";

// 查询列表
export function getMemberUserList(query) {
  return request({
    url: "/member/user/list",
    method: "get",
    params: query,
  });
}

export function deleteMemberUser(id) {
  return request({
    url: "/member/user/" + id,
    method: "delete",
  });
}
