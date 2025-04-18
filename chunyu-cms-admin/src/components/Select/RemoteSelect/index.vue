<template>
  <el-select
    class="remote-select"
    :loading="loading"
    :popper-append-to-body="false"
    :model-value="modelValue"
    :size="size"
    :disabled="disabled"
    filterable
    clearable
    remote
    :multiple="multiple"
    :remote-method="remoteSearch"
    :placeholder="placeholder"
    @change="onChange"
  >
    <el-option
      v-for="item in list"
      :key="item.id"
      :label="item.name || item.title"
      :value="item.id"
    >
      <!-- 影视 -->
      <div v-if="type === 'movie'" class="custom-option movie">
        <img :src="item.poster" alt="" />
        <div class="content">
          <span>
            {{ item.title }}
            <span v-if="item.rating" class="rating">
              ({{ item.rating }}分)
            </span>
          </span>
          <div class="label">
            {{ item.year }} {{ item.countries }} {{ item.genres }}
          </div>
        </div>
      </div>

      <!-- 影人/角色 -->
      <div
        v-else-if="type === 'actor' || type === 'role'"
        class="custom-option"
      >
        <img :src="item.avatar" alt="" />
        <div class="content">
          <span>{{ item.name }}</span>
        </div>
      </div>

      <!-- 国家/地区 -->
      <div v-else-if="type === 'country'" class="custom-option country">
        <div class="flag">
          <img :src="item.flag" alt="" />
        </div>
        <div class="name">
          <span>{{ item.name }}</span>
          <label>{{ item.fullname }}</label>
        </div>
      </div>

      <!-- 公司 -->
      <div v-else-if="type === 'company'" class="custom-option company">
        <div class="content">
          <span>{{ item.name }}</span>
          <label>{{ item.name_en }}</label>
        </div>
      </div>
    </el-option>

    <template #empty>
      <slot name="empty"></slot>
    </template>
  </el-select>
</template>

<script setup>
import {
  getActorList,
  getCountryList,
  getLanguageList,
  getRoleList,
} from "./services";

defineOptions({
  name: "RemoteSelect",
});
const emit = defineEmits(["update:modelValue", "on-change"]);
const props = defineProps({
  // 搜索类型
  type: {
    required: true,
    type: String,
    validator(val) {
      return [
        "movie",
        "actor",
        "role",
        "country",
        "company",
        "language",
      ].includes(val);
    },
  },

  disabled: {
    type: Boolean,
    default: false,
  },

  options: {
    type: Array,
    default: () => [],
  },

  multiple: {
    type: Boolean,
    default: false,
  },

  // 传入值
  modelValue: {
    type: [String, Object, Array, Number],
    default: "",
  },

  //
  size: {
    type: String,
    default: "default",
  },

  placeholder: {
    type: String,
    default: "请填写关键字",
  },

  // 返回条数
  perPage: {
    type: Number,
    default: 20,
  },
});

const loading = ref(false);
const list = ref([]);

watch(
  () => props.modelValue,
  (val) => {
    if (!val) {
      list.value = [];
    }
  },
);

watch(
  () => props.options,
  (nVal) => {
    list.value = nVal;
  },
  {
    deep: true,
    immediate: true,
  },
);

async function remoteSearch(keyword) {
  if (!keyword) {
    list.value = [];
    return;
  }

  let request = null;

  switch (props.type) {
    case "movie":
      request = () => {};
      break;

    case "actor":
      request = getActorList;
      break;

    case "role":
      request = getRoleList;
      break;

    case "country":
      request = getCountryList;
      break;

    case "company":
      request = () => {};
      break;

    case "language":
      request = getLanguageList;
      break;
  }

  const params = {
    pageSize: props.perPage,
    keyword,
  };

  loading.value = true;
  const {
    code,
    data: { rows },
  } = await request(params);
  loading.value = false;

  console.log(code, rows);

  if (code === 200) {
    if (["language"].includes(props.type)) {
      rows.map((item) => (item.id = item.name));
    }

    if (["movie"].includes(props.type)) {
      rows.map((item) => (item.genres = item.genres.join(",")));
      // data.map(item => item.countries = item.countries.join(','))
    }

    list.value = rows;
  }
}

function onChange(val) {
  emit("update:modelValue", val);
  emit("on-change", val);
}
</script>

<style scoped lang="scss">
.remote-select {
  width: 100%;
}

.el-select-dropdown__item {
  height: auto;
  padding: 4px 14px;
}

.custom-option {
  display: flex;
  height: 56px;
  .content {
    margin-left: 10px;
    line-height: 26px;
    .rating {
      margin-left: 4px;
      color: #aaa;
      font-size: 12px;
    }
    .label {
      color: #888;
      font-size: 12px;
    }
  }
  > img {
    width: 37px;
    height: 52px;
    background: #f5f5f5;
  }
  &.country {
    display: flex;
    height: 40px;
    line-height: 40px;
    .flag {
      display: flex;
      align-items: center;
      justify-content: center;
      width: 62px;
      img {
        width: auto;
        height: auto;
        max-width: 62px;
        max-height: 40px;
      }
    }
    .name {
      margin-left: 10px;
      display: flex;
      flex-direction: column;
      line-height: 20px;
      label {
        font-size: 12px;
        font-weight: normal;
      }
    }
  }
  &.company {
    display: flex;
    .content {
      display: flex;
      height: 56px;
      flex-direction: column;
      > span {
        margin-left: 0;
        height: 30px;
        line-height: 30px;
      }
      > label {
        height: 22px;
        line-height: 22px;
        color: #999;
      }
    }
  }
}
</style>
