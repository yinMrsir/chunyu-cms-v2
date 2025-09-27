<template>
  <div class="app-container" style="position: relative">
    <el-button
      type="primary"
      class="resource-add-btton"
      @click="dialogVisible = true"
    >
      新增资源
    </el-button>
    <el-tabs v-model="activeName" type="card">
      <el-tab-pane
        :label="value.label"
        :name="value.value"
        v-for="value in videoResourcesSource"
        :key="value.value"
      ></el-tab-pane>
    </el-tabs>
    <table-pro
      ref="tableProRef"
      :columns="columns"
      :table-request-fn="getVideoResourceList"
      :delete-fn="deleteVideoResource"
      :table-params="{ resources: activeName, movieId: route.query.id }"
    ></table-pro>

    <el-dialog title="新增资源" v-model="dialogVisible" width="800px">
      <el-form ref="formRef" :model="form" :rules="rules" label-width="100px">
        <el-form-item label="资源来源类型">
          <el-select v-model="activeName" disabled="true" placeholder="请选择">
            <el-option
              v-for="item in videoResourcesSource"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            >
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="资源信息" prop="content">
          格式示例(多个换行)：
          第1集$https://play.xxx.com/20240921/1WzwEt10/index.m3u8
          <el-input
            v-model="form.content"
            type="textarea"
            :rows="10"
            placeholder="请输入资源信息"
          ></el-input>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitForm"> 确 定 </el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { useTemplateRef, watch } from "vue";
import {
  getVideoResourceList,
  createVideoResource,
  deleteVideoResource,
} from "./services";

const route = useRoute();
const { proxy } = getCurrentInstance();
const { video_resources_source: videoResourcesSource } = proxy.useDict(
  "video_resources_source"
);
const tableProRef = useTemplateRef("tableProRef");

const activeName = ref("1");
const columns = ref([
  { title: "标题", field: "title" },
  { title: "资源地址", field: "url", type: "text" },
  {
    title: "创建时间",
    field: "createTime",
    type: "dateTime",
    props: { width: "160px" },
  },
  {
    title: "操作",
    field: "action",
    actions: [
      {
        type: "delete",
        onClick: (row) => handleDelete(row),
      },
    ],
    props: { width: "80px" },
  },
]);
const dialogVisible = ref(false);
const formRef = ref(null);
const form = ref({
  content: "",
});
const rules = ref({
  content: [{ required: true, message: "请输入资源信息", trigger: "blur" }],
});

watch(
  () => dialogVisible.value,
  (newVal) => {
    if (!newVal) {
      form.value.content = "";
      formRef.value.clearValidate();
    }
  }
);

function submitForm() {
  formRef.value.validate(async (valid) => {
    if (valid) {
      //
      const contentList = form.value.content.split("\n");
      const list = [];
      contentList.forEach((element) => {
        const title = element.split("$")[0];
        const url = element.split("$")[1];
        list.push({
          movieId: route.query.id,
          title,
          url,
          resources: activeName.value,
        });
      });
      await createVideoResource({ list });
      proxy.$message.success("新增成功");
      tableProRef.value.getList();
      dialogVisible.value = false;
    }
  });
}
</script>

<style scoped>
.resource-add-btton {
  position: absolute;
  right: 20px;
  top: 20px;
  z-index: 1;
}
</style>
