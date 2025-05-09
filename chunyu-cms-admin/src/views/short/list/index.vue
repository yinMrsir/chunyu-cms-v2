<template>
  <div class="app-container">
    <table-pro ref="tableProRef" :columns="columns" :is-show-button-list="false" :max-height="maxHeight" :table-request-fn="getShortList"></table-pro>
    <el-dialog
        title="审核"
        v-model="dialogVisible"
        width="600px">
      <el-form ref="formRef" :model="form" :rules="rules" label-width="100px">
        <el-form-item prop="status" label="审核结果：">
          <el-select v-model="form.status" placeholder="请选择审核结果">
            <el-option
              v-for="item in statusDict"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            >
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="备注">
          <el-input type="textarea" v-model="form.remark" placeholder="请输入备注"></el-input>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="handleSubmitEditStatus">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>
<script setup>
import TablePro from "@/components/TablePro/index.vue";
import {editStatus, getShortList} from "@/views/short/list/services";
import { ElMessage } from 'element-plus'

const maxHeight = window.innerHeight - 250;
const formRef = ref('formRef')
const tableProRef = ref('tableProRef')
const dialogVisible = ref(false)
const form = ref({})
const rules = ref({
  status: [
    { required: true, message: '请选择审核结果', trigger: 'change' },
  ],
})
const statusDict = [
  { label: '审核中', value: '0' },
  { label: '审核通过', value: '1', elTagType: 'success' },
  { label: '不通过', value: '2', elTagType: 'warning'  },
  { label: '已封禁', value: '3', elTagType: 'danger'  }
]
const columns = ref([
  { title: '封面', field: 'poster', type: 'img', props: { fixed: 'left' } },
  { title: "时长", field: "duration" },
  {
    title: "大小/M",
    field: "size",
    render: ({ size }) =>
        `${parseFloat(String(size / 1024 / 1024)).toFixed(1)}MB`,
  },
  {
    title: "比例",
    field: "wh",
    render: ({ width, height }) => `${width} * ${height}`,
    props: { minWidth: "100px" },
  },
  { title: '视频描述', field: 'description', props: { minWidth: "150px" } },
  { title: '点赞数', field: 'likes', props: { minWidth: "100px" } },
  { title: '评论数', field: 'comments', props: { minWidth: "100px" } },
  { title: '分享数', field: 'shareCount', props: { minWidth: "100px" } },
  { title: '收藏数', field: 'collection', props: { minWidth: "100px" }},
  {
    title: '是否公开',
    field: 'isPublic',
    props: { minWidth: "100px" },
    type: 'select',
    options: [
      { label: '公开', value: '1', elTagType: 'success'  },
      { label: '私密', value: '0', elTagType: 'warning' }
    ]
  },
  {
    title: '状态',
    field: 'status',
    props: { minWidth: "100px" },
    type: 'select',
    options: statusDict
  },
  { title: '发布人', field: 'memberUser.nickname', props: { minWidth: "120px" } },
  { title: '发布时间', field: 'createTime', props: { minWidth: "160px" }, type: 'dateTime' },
  { title: '更新时间', field: 'updateTime', props: { minWidth: "160px" }, type: 'dateTime'  },
  { title: '备注', field: 'remark', props: { minWidth: "100px" } },
  {
    title: '操作',
    field: 'actions',
    actions: [
      {
        text: '审核',
        click: (row) => {
          form.value.shortId = row.shortId
          dialogVisible.value = true
        }
      }
    ],
    props: { minWidth: "100px", fixed: 'right' }
  }
])

async function handleSubmitEditStatus() {
  await formRef.value.validate()
  await editStatus(form.value)
  ElMessage.success('操作成功')
  tableProRef.value.getList()
  await formRef.value.resetFields()
  dialogVisible.value = false
}
</script>
