<template>
  <div class="videos-list">
    <table-pro
      ref="table"
      dialog-title="相关视频"
      :columns="columns"
      :table-params="tableParams"
      :form-params="tableParams"
      :table-request-fn="getMovieVideosList"
      :create-fn="createMovieVideos"
      :update-fn="updateMovieVideos"
      :delete-fn="deleteMovieVideos"
      :is-auto-fetch="false"
    />
  </div>
</template>

<script setup>
import {
  createMovieVideos,
  getMovieVideosList,
  updateMovieVideos,
  deleteMovieVideos,
} from "../services";
import { getVideoList } from "@/views/movie/video/list/services";

const data = inject("data");
const { proxy } = getCurrentInstance();
const { videos_type: videosType, sys_normal_disable: sysNormalDisable } =
  proxy.useDict("videos_type", "sys_normal_disable");

const columns = ref([
  {
    title: "视频封面",
    field: "cover",
    type: "img",
    add: true,
    style: { width: "120px", height: "60px" },
    render: (row) => {
      return row.cover || row.video?.poster;
    },
  },
  {
    title: "标题",
    field: "title",
    add: [{ required: true, message: "请输入标题", trigger: "blur" }],
  },
  {
    title: "所属分类",
    field: "typeId",
    type: "select",
    options: videosType,
    search: true,
    add: [{ required: true, message: "请选择分类" }],
    change: (value) => {
      const videoId = columns.value.find((item) => item.field === "videoId");
      const link = columns.value.find((item) => item.field === "link");
      if (+value === 5) {
        videoId.add = false;
        link.add = [
          { required: true, message: "请输入视频地址", trigger: "blur" },
        ];
      } else {
        videoId.add = [{ required: true, message: "请输入视频名称查询" }];
        link.add = false;
      }
    },
  },
  {
    title: "关联视频",
    field: "videoId",
    add: [{ required: true, message: "请输入视频名称查询" }],
    type: "select",
    options: [],
    render: (row) => row.video?.title,
    formProps: {
      placeholder: "请输入视频名称查询",
      filterable: true,
      remote: true,
      style: "width: 100%",
      remoteMethod: async (query) => {
        const currItem = columns.value.find(
          (value) => value.field === "videoId"
        );
        if (query) {
          const { data } = await getVideoList({ title: query });
          currItem.options = data.rows.map((value) => ({
            label: value.title,
            value: value.id,
          }));
        } else {
          currItem.options = [];
        }
      },
    },
  },
  {
    title: "视频地址",
    field: "link",
    add: false,
    props: { width: "170px" },
  },
  {
    title: "状态",
    field: "status",
    add: true,
    type: "select",
    options: sysNormalDisable,
    search: true,
  },
  {
    title: "排序",
    field: "sort",
    add: [{ required: true, message: "请输入排序", trigger: "change" }],
    type: "number",
  },
  {
    actions: [
      {
        type: "edit",
        beforeCallback: (row) => {
          const currItem = columns.value.find(
            (value) => value.field === "videoId"
          );
          currItem.options = [
            { label: row.video.title, value: row.video.videoId },
          ];
          return row;
        },
      },
      { type: "delete" },
    ],
  },
]);
const tableParams = ref({
  movieId: data.id,
});
const isMounted = ref(false);

onMounted(async () => {
  isMounted.value = true;
  await proxy.$refs.table.getList();
  isMounted.value = false;
});

onActivated(() => {
  if (isMounted.value) {
    return;
  }
  if (data.id) {
    proxy.$nextTick(() => {
      proxy.$refs.table?.getList({ movieId: data.id });
    });
  }
});
</script>

<style scoped lang="scss">
.videos-list {
  height: calc(100vh - 200px);
  padding: 10px;
  overflow: auto;
}
</style>
