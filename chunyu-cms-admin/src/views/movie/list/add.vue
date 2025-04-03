<template>
  <div class="app-container">
    <el-tabs v-model="currTab" tab-position="top" type="border-card">
      <el-tab-pane label="基本信息">
        <basic @success="setTitle" />
      </el-tab-pane>
      <el-tab-pane v-if="id" label="上映时间">
        <pub-date v-if="+currTab === 1" ref="pub-date" />
      </el-tab-pane>
      <el-tab-pane v-if="id" label="家长引导">
        <level v-if="+currTab === 2" />
      </el-tab-pane>
      <el-tab-pane v-if="id" label="影人列表">
        <cast v-if="+currTab === 3" />
      </el-tab-pane>
      <el-tab-pane v-if="id" label="相关视频">
        <videos v-if="+currTab === 4" />
      </el-tab-pane>
      <el-tab-pane v-if="id" label="影片相册">
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

const { proxy } = getCurrentInstance();
const id = ref(null);
const currTab = ref(null);
const isMounted = ref(false);

onMounted(() => {
  isMounted.value = true;
  setTitle(proxy.$route.query.id);
  isMounted.value = false;
});

onActivated(() => {
  if (!isMounted.value) {
    setTitle(proxy.$route.query.id);
  }
});

function setTitle(paramId) {
  id.value = paramId || null;
  const obj = Object.assign({}, proxy.$route, {
    title: id.value ? "编辑影视" : "新增影视",
  });
  proxy.$tab.updatePage(obj);
  proxy.$router.replace({ path: proxy.$route.path, query: { id: paramId } });
}
</script>
