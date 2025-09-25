<template>
  <table-pro
    ref="table"
    dialog-title="家长引导"
    :columns="columns"
    :table-params="formParams"
    :table-request-fn="getMovieLevelList"
    :create-fn="createFn"
    :update-fn="updateFn"
    :delete-fn="deleteMovieLevel"
    :is-auto-fetch="false"
  />
</template>

<script setup>
import {
  getMovieLevelList,
  getCountryLevelAll,
  createMovieLevel,
  updateMovieLevel,
  deleteMovieLevel,
} from "../services";

const data = inject("data");
const { proxy } = getCurrentInstance();
const formParams = { movieId: data.id };

function replaceField(arr) {
  arr.forEach((value) => {
    if (value.children && value.children.length > 0) {
      replaceField(value.children);
    }
    value.value = value.levelId;
    value.label = value.level || value.name;
  });
  return arr;
}

const columns = ref([
  { title: "所属国家", field: "level.country.name" },
  {
    title: "引导等级",
    field: "level",
    type: "cascader",
    options: [],
    add: [{ required: true, message: "请选择引导等级" }],
    render: ({ level }) => level.level,
  },
  { title: "引导等级中文", field: "level.levelZh", props: { width: "120px" } },
  { title: "引导详情", field: "level.description", props: { width: "600" } },
  {
    props: {
      width: "160px",
      fixed: "right",
    },
    actions: [
      {
        type: "edit",
        beforeCallback: (item) => {
          return {
            id: item.id,
            level: [item.countryId, item.levelId],
          };
        },
      },
      { type: "delete" },
    ],
  },
]);

onMounted(async () => {
  const { data } = await getCountryLevelAll();
  columns.value.find((value) => value.field === "level").options =
    replaceField(data);
});

function createFn(params) {
  return createMovieLevel({
    movieId: data.id,
    levelId: +params.level[params.level.length - 1],
  });
}

function updateFn(params) {
  return updateMovieLevel({
    id: params.id,
    movieId: data.id,
    levelId: +params.level[params.level.length - 1],
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
