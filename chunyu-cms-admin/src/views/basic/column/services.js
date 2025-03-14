import request from "@/utils/request";

// 获取栏目列表
export const getColumnList = (query) => {
  return request({
    url: "/basic/column/list",
    method: "get",
    params: query,
  });
};

// 获取所有栏目列表
export const getColumnAll = (query) => {
  return request({
    url: "/basic/column/all",
    method: "get",
    params: query,
  });
};

// 新增栏目
export function createColumn(data) {
  return request({
    url: "/basic/column",
    method: "post",
    data,
  });
}

// 修改栏目
export function updateColumn(data) {
  return request({
    url: "/basic/column",
    method: "put",
    data,
  });
}

// 删除栏目
export function deleteColumn(id) {
  return request({
    url: "/basic/column/" + id,
    method: "delete",
  });
}
