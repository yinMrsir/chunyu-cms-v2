<template>
  <div class="app-container">
    <el-row :gutter="20" class="mb-20px">
      <el-col :span="12">
        <el-card>
          <template #header>
            <div class="flex justify-between items-center">
              <span>创建兑换券</span>
            </div>
          </template>
          <el-form
            ref="formRef"
            :model="createForm"
            :rules="formRules"
            label-width="120px"
            class="max-w-400px"
          >
            <el-form-item label="券码" prop="couponCode">
              <el-input
                v-model="createForm.couponCode"
                placeholder="留空则自动生成"
                clearable
              />
            </el-form-item>
            <el-form-item label="金币数量" prop="goldAmount">
              <el-input-number
                v-model="createForm.goldAmount"
                :min="1"
                :max="10000"
                placeholder="请输入金币数量"
                style="width: 100%"
              />
            </el-form-item>
            <el-form-item label="有效期至" prop="expireTime">
              <el-date-picker
                v-model="createForm.expireTime"
                type="datetime"
                placeholder="选择过期时间"
                format="YYYY-MM-DD HH:mm:ss"
                value-format="YYYY-MM-DD HH:mm:ss"
                style="width: 100%"
              />
            </el-form-item>
            <el-form-item>
              <el-button type="primary" @click="handleCreate">创建</el-button>
              <el-button @click="resetForm">重置</el-button>
            </el-form-item>
          </el-form>
        </el-card>
      </el-col>
      <el-col :span="12">
        <el-card>
          <template #header>
            <div class="flex justify-between items-center">
              <span>批量创建兑换券</span>
            </div>
          </template>
          <el-form
            ref="batchFormRef"
            :model="batchForm"
            :rules="batchFormRules"
            label-width="120px"
            class="max-w-400px"
          >
            <el-form-item label="金币数量" prop="goldAmount">
              <el-input-number
                v-model="batchForm.goldAmount"
                :min="1"
                :max="10000"
                placeholder="请输入金币数量"
                style="width: 100%"
              />
            </el-form-item>
            <el-form-item label="生成数量" prop="count">
              <el-input-number
                v-model="batchForm.count"
                :min="1"
                :max="100"
                placeholder="请输入生成数量"
                style="width: 100%"
              />
            </el-form-item>
            <el-form-item label="有效期(天)" prop="expireDays">
              <el-input-number
                v-model="batchForm.expireDays"
                :min="1"
                :max="365"
                placeholder="不填则永不过期"
                style="width: 100%"
              />
            </el-form-item>
            <el-form-item>
              <el-button
                type="primary"
                @click="handleBatchCreate"
                :loading="batchLoading"
              >
                批量创建
              </el-button>
              <el-button @click="resetBatchForm">重置</el-button>
            </el-form-item>
          </el-form>
        </el-card>
      </el-col>
    </el-row>

    <el-card>
      <template #header>
        <div class="flex justify-between items-center">
          <span>兑换券列表</span>
        </div>
      </template>
      <table-pro
        ref="tableRef"
        :columns="columns"
        :table-request-fn="getCouponList"
        :delete-fn="deleteCoupon"
      ></table-pro>
    </el-card>

    <!-- 批量创建结果对话框 -->
    <el-dialog v-model="batchResultVisible" title="批量创建结果" width="600px">
      <div class="mb-16px">
        <p>
          成功创建
          <span class="text-green-600 font-bold">
            {{ couponCodes?.length }}
          </span>
          个兑换券
        </p>
      </div>
      <el-input
        v-model="couponCodesText"
        type="textarea"
        :rows="10"
        placeholder="兑换券列表"
        readonly
      />
      <div class="mt-16px">
        <el-button type="primary" @click="copyToClipboard"
          >复制到剪贴板</el-button
        >
        <el-button @click="exportToFile">导出文件</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script setup>
import {
  getCouponList,
  createCoupon,
  updateCoupon,
  deleteCoupon,
  batchCreateCoupons,
} from "./services";
import { ElMessage } from "element-plus";

const tableRef = ref();
const formRef = ref();
const batchFormRef = ref();
const editFormRef = ref();

// 创建表单
const createForm = ref({
  couponCode: "",
  goldAmount: 100,
  expireTime: "",
});

const formRules = {
  goldAmount: [
    { required: true, message: "请输入金币数量", trigger: "blur" },
    { type: "number", min: 1, message: "金币数量最少为1", trigger: "blur" },
  ],
};

// 批量创建表单
const batchForm = ref({
  goldAmount: 100,
  count: 10,
  expireDays: undefined,
});

const batchFormRules = {
  goldAmount: [
    { required: true, message: "请输入金币数量", trigger: "blur" },
    { type: "number", min: 1, message: "金币数量最少为1", trigger: "blur" },
  ],
  count: [
    { required: true, message: "请输入生成数量", trigger: "blur" },
    { type: "number", min: 1, message: "生成数量最少为1", trigger: "blur" },
  ],
};

// 列表列配置
const columns = ref([
  {
    title: "券码",
    field: "couponCode",
    props: { minWidth: "120px" },
    search: true,
  },
  { title: "金币数量", field: "goldAmount", props: { width: "100px" } },
  {
    title: "状态",
    field: "status",
    props: { width: "100px" },
    type: "select",
    options: [
      { label: "未使用", value: "0", elTagType: "info" },
      { label: "已使用", value: "1", elTagType: "success" },
      { label: "已过期", value: "2", elTagType: "danger" },
    ],
    search: true,
  },
  {
    title: "使用者",
    field: "usedBy",
    props: { width: "100px" },
    render: (row) => row.memberUser?.nickname,
  },
  {
    title: "使用时间",
    field: "usedTime",
    type: "dateTime",
    props: { minWidth: "160px" },
  },
  {
    title: "过期时间",
    field: "expireTime",
    type: "dateTime",
    props: { minWidth: "160px" },
  },
  {
    title: "创建时间",
    field: "createTime",
    type: "dateTime",
    props: { minWidth: "160px" },
  },
  { title: "创建者", field: "createBy", props: { width: "100px" } },
  {
    title: "操作",
    field: "action",
    props: { width: "120px", fixed: "right" },
    actions: [{ type: "delete" }],
  },
]);

// 对话框状态
const batchResultVisible = ref(false);
const couponCodes = ref([]);
const couponCodesText = computed(() => couponCodes.value.join("\n"));

// 加载状态
const batchLoading = ref(false);

// 创建单个兑换券
async function handleCreate() {
  if (!formRef.value) return;

  await formRef.value.validate(async (valid) => {
    if (valid) {
      const data = { ...createForm.value };
      const result = await createCoupon(data);
      if (result.couponCode) {
        ElMessage.success(`创建成功！券码：${result.couponCode}`);
      } else {
        ElMessage.success("创建成功");
      }
      resetForm();
      tableRef.value?.getList();
    }
  });
}

// 批量创建兑换券
async function handleBatchCreate() {
  if (!batchFormRef.value) return;

  await batchFormRef.value.validate(async (valid) => {
    if (valid) {
      batchLoading.value = true;
      try {
        const result = await batchCreateCoupons(batchForm.value);
        couponCodes.value = result.data.couponCodes;
        batchResultVisible.value = true;
        ElMessage.success(`成功创建 ${result.count} 个兑换券`);
        resetBatchForm();
        tableRef.value?.getList();
      } finally {
        batchLoading.value = false;
      }
    }
  });
}

// 重置表单
function resetForm() {
  if (formRef.value) {
    formRef.value.resetFields();
  }
  createForm.value = {
    couponCode: "",
    goldAmount: 100,
    expireTime: "",
  };
}

function resetBatchForm() {
  if (batchFormRef.value) {
    batchFormRef.value.resetFields();
  }
  batchForm.value = {
    goldAmount: 100,
    count: 10,
    expireDays: undefined,
  };
}

// 复制到剪贴板
function copyToClipboard() {
  if (navigator.clipboard) {
    navigator.clipboard.writeText(couponCodesText.value).then(() => {
      ElMessage.success("已复制到剪贴板");
    });
  } else {
    const textArea = document.createElement("textarea");
    textArea.value = couponCodesText.value;
    document.body.appendChild(textArea);
    textArea.select();
    document.execCommand("copy");
    document.body.removeChild(textArea);
    ElMessage.success("已复制到剪贴板");
  }
}

// 导出到文件
function exportToFile() {
  const content = couponCodesText.value;
  const blob = new Blob([content], { type: "text/plain" });
  const url = URL.createObjectURL(blob);
  const a = document.createElement("a");
  a.href = url;
  a.download = `兑换券_${new Date().toISOString().slice(0, 10)}.txt`;
  document.body.appendChild(a);
  a.click();
  document.body.removeChild(a);
  URL.revokeObjectURL(url);
  ElMessage.success("文件已导出");
}
</script>

<style scoped>
.mb-20px {
  margin-bottom: 20px;
}
.max-w-400px {
  max-width: 400px;
}
.mb-16px {
  margin-bottom: 16px;
}
.mt-16px {
  margin-top: 16px;
}
</style>
