<template>
  <div class="app-container">
    <el-tabs v-model="currTab" tab-position="top" type="border-card">
      <el-tab-pane label="基本信息" name="基本信息">
        <basic @success="setId" />
      </el-tab-pane>
      <el-tab-pane v-if="data.id" label="上映时间">
        <pub-date v-if="+currTab === 1" ref="pub-date" />
      </el-tab-pane>
      <el-tab-pane v-if="data.id" label="家长引导">
        <level v-if="+currTab === 2" />
      </el-tab-pane>
      <el-tab-pane v-if="data.id" label="影人列表">
        <cast v-if="+currTab === 3" />
      </el-tab-pane>
      <el-tab-pane v-if="data.id" label="相关视频">
        <videos v-if="+currTab === 4" />
      </el-tab-pane>
      <el-tab-pane v-if="data.id" label="影片相册">
        <photos v-if="+currTab === 5" />
      </el-tab-pane>
    </el-tabs>
  </div>
</template>

<script setup>
import Basic from "./components/Basic";
import PubDate from "./components/PubDate";
import Level from "./components/Level";
import Videos from "./components/Videos";
import Photos from "./components/Photos";
import Cast from "./components/Cast";
import tab from "@/plugins/tab";

defineOptions({
  name: "Movieadd",
});
const route = useRoute();

const data = ref({ id: route.query?.id });
const currTab = ref("基本信息");

provide("data", data.value);

onMounted(() => {
  setTitle();
});

onActivated(() => {
  data.value.id = route.query?.id;
  currTab.value = "基本信息";
  setTitle();
});

watch(
  () => route.fullPath,
  () => {
    if (data.value.id !== route.query?.id) {
      currTab.value = "基本信息";
    }
  }
);

function setTitle() {
  // 创建精确的当前路由对象，确保只更新当前页面的tab
  const currentView = {
    path: route.path,
    query: route.query,
    name: route.name,
    title: data.value.id ? "编辑影视" : "新增影视",
  };
  tab.updatePage(currentView);
}

function setId(id) {
  data.value.id = id;
}
</script>
