import request from "@/utils/request";

// 查询列表
export function fileConfig(query) {
  return request({
    url: "/system/fileConfig/list",
    method: "get",
    params: query,
  });
}

// 新增
export function addFileConfig(data) {
  return request({
    url: "/system/fileConfig",
    method: "post",
    data,
  });
}

// 修改
export function updateFileConfig(data) {
  return request({
    url: "/system/fileConfig",
    method: "put",
    data,
  });
}

// 删除
export function delFileConfig(configId) {
  return request({
    url: "/system/fileConfig/" + configId,
    method: "delete",
  });
}
