<template>
  <div class="app-container">
    <table-pro
      :columns="columns"
      :is-show-button-list="false"
      :table-request-fn="getMemberUserList"
      :delete-fn="deleteMemberUser"
    ></table-pro>
  </div>
</template>

<script setup lang="ts">
import { getMemberUserList, deleteMemberUser } from "./services";

const columns = ref([
  { title: "头像", field: "avatar", type: "img", props: { width: "90px" } },
  { title: "昵称", field: "nickname", search: true, props: { width: "100px" } },
  { title: "邮箱", field: "email", props: { minWidth: "160px" }, search: true },
  { title: "手机号", field: "phonenumber", props: { minWidth: "120px" } },
  { title: "金币", field: "memberWallet.gold", props: { width: "120px" } },
  { title: "最后登录IP", field: "loginIp", props: { minWidth: "160px" } },
  {
    title: "最后登录时间",
    field: "loginDate",
    type: "dateTime",
    props: { minWidth: "160px" },
  },
  {
    title: "注册时间",
    field: "createTime",
    type: "dateTime",
    props: { minWidth: "160px" },
  },
  { title: "备注", field: "remark", props: { minWidth: "100px" } },
  {
    title: "操作",
    field: "action",
    props: { width: "100px", fixed: "right" },
    actions: [{ type: "delete" }],
  },
]);
</script>
