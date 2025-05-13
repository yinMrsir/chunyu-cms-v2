<template>
  <div class="app-container">
    <table-pro
      dialog-title="评论"
      :columns="columns"
      form-dialog-width="800px"
      :is-show-button-list="false"
      :table-request-fn="getCommentList"
      :delete-fn="deleteComment"
    >
    </table-pro>
  </div>
</template>

<script setup>
import {
  getCommentList,
  deleteComment,
} from "./services";

const columns = ref([
  {
    title: "视频标题",
    field: "video.title",
    props: { minWidth: "150px" },
  },
  {
    title: "内容",
    field: "content",
    props: { minWidth: "150px" },
  },
  {
    title: '是否弹幕',
    field: 'isDm',
    type: 'select',
    options: [
      { label: '否', value:'0', elTagType: 'success' },
      { label: '是', value:'1', elTagType: 'danger' }
    ],
    props: { minWidth: "100px" },
  },
  {
    title: '评论用户',
    field: "memberUser.nickname",
  },
  {
    title: "创建时间",
    field: "createTime",
    type: "dateTime",
    props: { minWidth: "160px" },
  },
  {
    actions: [
      {
        type: "delete",
      },
    ],
    props: {
      width: "200px",
      fixed: "right",
    },
  },
]);

</script>

<style lang="scss" scoped>

</style>
