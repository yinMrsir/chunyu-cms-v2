import request from "@/utils/request";

// 新增视频
export function createVideo(data) {
  return request({
    url: "/movie/video",
    method: "post",
    data,
  });
}

// 查询视频
export function getVideoList(query) {
  return request({
    url: "/movie/video/list",
    method: "get",
    params: query,
  });
}

// 修改视频
export function updateVideo(data) {
  return request({
    url: "/movie/video",
    method: "put",
    data,
  });
}

// 删除视频
export function deleteVideo(id) {
  return request({
    url: "/movie/video/" + id,
    method: "delete",
  });
}
