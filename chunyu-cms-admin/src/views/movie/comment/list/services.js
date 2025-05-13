import request from "@/utils/request";

// 查询
export function getCommentList(query) {
  return request({
    url: "/movie/comment/list",
    method: "get",
    params: query,
  });
}

// 删除视频
export function deleteComment(id) {
  return request({
    url: "/movie/comment/" + id,
    method: "delete",
  });
}
