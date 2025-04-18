<template>
  <div class="app-container">
    <table-pro
      dialog-title="文件配置"
      :columns="columns"
      form-label-position="top"
      :table-request-fn="fileConfig"
      :create-fn="addFileConfig"
      :update-fn="updateFileConfig"
      :delete-fn="delFileConfig"
    ></table-pro>
  </div>
</template>

<script setup>
import TablePro from "@/components/TablePro/index.vue";
import {
  delFileConfig,
  addFileConfig,
  fileConfig,
  updateFileConfig,
} from "@/api/system/fileConfig";

const columns = ref([
  {
    title: "配置名",
    field: "name",
    add: [{ required: true, message: "请输入配置名" }],
  },
  {
    title: "配置值",
    field: "value",
    add: [{ required: true, message: "请输入配置值" }],
  },
  {
    title: "节点地址, 如：oss-cn-hangzhou",
    field: "region",
    hidden: true,
    add: [{ required: true, message: "请输入配置值" }],
  },
  {
    title: "存储 bucket",
    field: "bucket",
    hidden: true,
    add: [{ required: true, message: "请输入配置值" }],
  },
  {
    title: "accessKeyId",
    field: "accessKeyId",
    hidden: true,
    add: [{ required: true, message: "请输入配置值" }],
  },
  {
    title: "accessKeySecret",
    field: "accessKeySecret",
    hidden: true,
    add: [{ required: true, message: "请输入配置值" }],
  },
  {
    title: "是否使用自定义域名",
    field: "cname",
    type: "radio",
    options: [
      {
        label: "否",
        value: "0",
      },
      {
        label: "是",
        value: "1",
      },
    ],
    hidden: true,
    add: true,
  },
  {
    title: "自定义域名",
    field: "endpoint",
    hidden: true,
    add: true,
  },
  {
    title: "操作",
    field: "actions",
    actions: [{ type: "edit" }, { type: "delete" }],
  },
]);
</script>
