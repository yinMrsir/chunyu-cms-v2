<template>
  <table-pro
    ref="table"
    dialog-title="演员"
    :form-params="params"
    :table-params="params"
    :columns="columns"
    :table-request-fn="getMovieCastList"
    :create-fn="createMovieCastProfessionMethod"
    :update-fn="updateMovieCastProfessionMethod"
    :delete-fn="deleteMovieCast"
    :is-auto-fetch="false"
  />
</template>

<script setup>
import {
  createMovieCast,
  getMovieCastList,
  updateMovieCast,
  deleteMovieCast,
} from "../services";
import { getProfessionAll } from "@/views/basic/profession/services";

const data = inject("data");
const { proxy } = getCurrentInstance();
const { sex_type } = proxy.useDict("sex_type");
const params = ref({
  movieId: data.id,
});

const columns = ref([
  {
    title: "头像",
    field: "actor.avatar",
    type: "img",
    render: ({ actor }) => actor?.avatar,
  },
  { title: "中文名", field: "actor.name" },
  { title: "职务", field: "profession.name" },
  {
    title: "性别",
    field: "actor.gender",
    type: "radio",
    options: sex_type,
    render: ({ actor }) => (+actor?.gender === 1 ? "男" : "女"),
  },
  {
    title: "国家/地区",
    field: "actor.country.name",
  },
  {
    title: "出生日期",
    field: "actor.birthday",
    type: "date",
    render: ({ actor }) => actor?.birthday,
  },
  {
    title: "影人名称",
    field: "actorId",
    type: "actor",
    add: true,
    hidden: true,
  },
  {
    title: "影人职务",
    field: "professionId",
    type: "cascader",
    options: [],
    formProps: { props: { label: "name", value: "id" } },
    add: true,
    hidden: true,
  },
  { title: "饰演", field: "role", add: true },
  {
    props: { width: "120px", fixed: "right" },
    actions: [
      {
        type: "edit",
        beforeCallback: (row) => {
          return {
            ...row,
            professionId: row.profession?.mpath
              .split(".")
              .map((value) => Number(value))
              .filter(Boolean),
            actor: {
              id: row.actor.actorId,
              name: row.actor.name,
              avatar: row.actor.avatar,
            },
          };
        },
      },
      { type: "delete" },
    ],
  },
]);

onMounted(async () => {
  const { data } = await getProfessionAll();
  columns.value.find((value) => value.field === "professionId").options =
    proxy.handleTree(data, "id");
});

function createMovieCastProfessionMethod(params) {
  return createMovieCast({
    ...params,
    professionId: +params.professionId[params.professionId.length - 1],
    movieId: data.id,
  });
}

function updateMovieCastProfessionMethod(params) {
  return updateMovieCast({
    ...params,
    professionId: +params.professionId[params.professionId.length - 1],
    movieId: data.id,
  });
}

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
