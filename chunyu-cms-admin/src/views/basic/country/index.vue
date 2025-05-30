<template>
  <div class="app-container">
    <el-form
      v-show="showSearch"
      ref="queryRef"
      :model="queryParams"
      :inline="true"
      label-width="68px"
    >
      <el-form-item label="中文简称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入中文简称"
          clearable
          style="width: 240px"
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery"
          >搜索</el-button
        >
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button type="primary" plain icon="Plus" @click="handleAdd"
          >新增</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          >修改</el-button
        >
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          >删除</el-button
        >
      </el-col>
      <right-toolbar
        v-model:show-search="showSearch"
        @query-table="getList"
      ></right-toolbar>
    </el-row>

    <el-table
      v-loading="loading"
      :data="list"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column prop="flag" width="130px" label="国旗/区旗">
        <template #default="scope">
          <el-image
            :src="scope.row.flag"
            style="width: 100px; height: 86px"
            fit="contain"
          >
          </el-image>
        </template>
      </el-table-column>
      <el-table-column prop="countryId" min-width="100" label="ID" />
      <el-table-column prop="name" min-width="100" label="中文简称" />
      <el-table-column prop="continent" width="80" label="大洲" sortable />
      <el-table-column prop="code" width="80" label="国家代码" />
      <el-table-column prop="fullName" min-width="100" label="中文全称" />
      <el-table-column prop="nameEn" min-width="100" label="英文简称" />
      <el-table-column prop="fullNameEn" min-width="110" label="英文全称" />
      <el-table-column prop="beginDate" min-width="100" label="成立时间" />
      <el-table-column prop="endDate" min-width="100" label="消失时间" />
      <el-table-column prop="movieCount" min-width="100" label="影片数量" />
      <el-table-column
        align="left"
        prop="brief"
        label="简介"
        min-width="180"
        show-overflow-tooltip
      />
      <el-table-column fixed="right" label="操作" width="130" align="center">
        <template #default="scope">
          <el-button link type="primary" @click="handleUpdate(scope.row)"
            >编辑</el-button
          >
          <el-button link type="primary" @click="handleDelete(scope.row)"
            >删除</el-button
          >
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total > 0"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      :total="total"
      @pagination="getList"
    />

    <el-dialog v-model="open" :title="title" width="800px" append-to-body>
      <el-form ref="countryRef" :model="form" label-width="100px">
        <el-row :gutter="10">
          <el-col :span="12">
            <el-form-item label="中文简称：" prop="name">
              <el-input v-model="form.name" placeholder="请输入国家/地区简称" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="编码：" prop="code">
              <el-input v-model="form.code" placeholder="请输入国家/地区编码" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="类型：" prop="type">
              <el-radio-group v-model="form.type">
                <el-radio :label="0">国家</el-radio>
                <el-radio :label="1">地区</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="中文全称：" prop="fullName">
              <el-input
                v-model="form.fullName"
                placeholder="请输入国家/地区全称"
              />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="所属大洲：" prop="continent">
              <el-select
                v-model="form.continent"
                style="width: 100%"
                placeholder="请选择所属大洲"
              >
                <el-option
                  v-for="item in continents"
                  :key="item.value"
                  :label="item.label"
                  :value="item.value"
                />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="英文简称：" prop="name_en">
              <el-input
                v-model="form.nameEn"
                placeholder="请输入国家/地区英文简称"
              />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="英文全称：" prop="fullNameEn">
              <el-input
                v-model="form.fullNameEn"
                placeholder="请输入国家/地区英文全称"
              />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="原名简称：" prop="originalName">
              <el-input
                v-model="form.originalName"
                placeholder="请输入国家/地区原名简称"
              />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="原名全称：" prop="originalFullName">
              <el-input
                v-model="form.originalFullName"
                placeholder="请输入国家/地区原名全称"
              />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="成立日期：" prop="begin_date">
              <el-date-picker
                v-model="form.beginDate"
                style="width: 100%"
                type="date"
                value-format="YYYY-MM-DD"
                placeholder="请选择成立日期"
              />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="消失日期：" prop="end_date">
              <el-date-picker
                v-model="form.endDate"
                style="width: 100%"
                type="date"
                value-format="YYYY-MM-DD"
                placeholder="请选择消失日期"
              />
            </el-form-item>
          </el-col>
          <el-col>
            <el-form-item label="国旗/区旗：" prop="flag">
              <image-upload
                v-model:model-value="form.flag"
                type="flag"
                :limit="1"
              />
              <el-input v-model="form.flag" style="display: none" />
            </el-form-item>
          </el-col>
          <el-col>
            <el-form-item label="简介：" prop="brief">
              <el-input
                v-model="form.brief"
                type="textarea"
                :autosize="{ minRows: 4, maxRows: 8 }"
                maxlength="600"
                show-word-limit
                placeholder="国家/地区简介"
              />
            </el-form-item>
          </el-col>
        </el-row>
      </el-form>
      <template #footer>
        <span class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </span>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import {
  getCountryList,
  createCountry,
  updateCountry,
  deleteCountry,
} from "./services";

defineOptions({
  name: "Country",
});

const { proxy } = getCurrentInstance();

const list = ref([]);
const countryIds = ref([]);
const single = ref(true);
const multiple = ref(true);
const loading = ref(true);
const showSearch = ref(true);
const total = ref(0);
const title = ref("");
const open = ref(false);
const continents = [
  { label: "亚洲", value: "亚洲" },
  { label: "欧洲", value: "欧洲" },
  { label: "南美洲", value: "南美洲" },
  { label: "北美洲", value: "北美洲" },
  { label: "大洋洲", value: "大洋洲" },
  { label: "非洲", value: "非洲" },
];
const data = reactive({
  form: {},
  queryParams: {
    keyword: undefined,
    pageNum: 1,
    pageSize: 10,
  },
});

const { queryParams, form } = toRefs(data);

/** 查询国家列表 */
async function getList() {
  loading.value = true;
  const { data } = await getCountryList(queryParams.value);
  list.value = data.rows;
  total.value = data.total;
  loading.value = false;
}
/** 取消按钮 */
function cancel() {
  open.value = false;
  reset();
}
/** 表单重置 */
function reset() {
  form.value = {
    name: undefined,
    code: undefined,
    type: undefined,
    fullName: undefined,
    continent: undefined,
    nameEn: undefined,
    fullNameEn: undefined,
    originalName: undefined,
    originalFullName: undefined,
    beginDate: null,
    endDate: null,
    countryId: null,
    flag: undefined,
    brief: undefined,
  };
  proxy.resetForm("countryRef");
}
/** 搜索按钮操作 */
function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
}
/** 重置按钮操作 */
function resetQuery() {
  proxy.resetForm("queryRef");
  handleQuery();
}
/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加国家";
}
/** 多选框选中数据 */
function handleSelectionChange(selection) {
  countryIds.value = selection.map((item) => item.countryId);
  single.value = selection.length !== 1;
  multiple.value = !selection.length;
}
/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const countryId = row.countryId || countryIds.value[0];
  open.value = true;
  form.value = row.countryId
    ? { ...row }
    : { ...list.value.find((value) => value.countryId === countryId) };
  title.value = "修改国家";
}
/** 提交按钮 */
function submitForm() {
  proxy.$refs.countryRef.validate((valid) => {
    if (valid) {
      if (form.value.countryId) {
        updateCountry(form.value).then(() => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        createCountry(form.value).then(() => {
          proxy.$modal.msgSuccess("新增成功");
          open.value = false;
          getList();
        });
      }
    }
  });
}
/** 删除按钮操作 */
function handleDelete(row) {
  const countryId = row.countryId || countryIds.value;
  proxy.$modal
    .confirm('是否确认删除"' + countryId + '"的数据项？')
    .then(async () => {
      await deleteCountry(countryId);
      getList();
      proxy.$modal.msgSuccess("删除成功");
    });
}
getList();
</script>
