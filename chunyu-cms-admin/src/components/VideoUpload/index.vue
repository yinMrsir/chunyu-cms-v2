<template>
  <div class="upload-wrapper">
    <div class="upload-container">
      <div v-if="uploadPercent" class="progress">
        <div class="thumb" :style="`width: ${uploadPercent}%`">
          <span class="tool-tip">{{ uploadPercent }}%</span>
        </div>
      </div>

      <!-- 视频预览 -->
      <div v-if="url" class="video-wrapper">
        <video ref="videoRef" controls class="video" preload="auto">
          <source :src="url" type="video/mp4" />
        </video>
      </div>

      <!-- 选择视频 -->
      <div v-else class="choose-btn">
        <el-button type="primary" icon="Camera" @click="chosenFileHandle">
          选择视频
        </el-button>
        <p>视频大小不超过{{ maxSize }}MB</p>
        <p>当前只支持 {{ acceptTypeStr }} 格式视频</p>
      </div>

      <!-- 文件选择器 -->
      <input
        ref="fileInput"
        type="file"
        name="file"
        accept="video/*"
        class="upload-input"
        @change="fileChangeHandle"
      />
    </div>

    <div class="tool">
      <el-button
        v-if="isUploadSuccess"
        type="primary"
        size="small"
        @click="getCurrentTime()"
        >设置当前画面为封面</el-button
      >

      <!-- 上传与取消按钮组 -->
      <template v-if="file">
        <el-button
          v-if="!isUploading"
          type="primary"
          size="small"
          @click="startUpload()"
          >开始上传</el-button
        >
        <el-button v-else type="warning" size="small" @click="cancleUpload()"
          >取消上传</el-button
        >
      </template>
    </div>
  </div>
</template>

<script setup>
import { computed } from "vue";
import request from "@/utils/request";
const { proxy } = getCurrentInstance();

const props = defineProps({
  // 最大尺寸/MB
  maxSize: {
    type: Number,
    default: 2048,
  },
  maxMinute: {
    // 最大时长/分钟
    type: Number,
    default: 15,
  },
  acceptType: {
    type: Array,
    default: () => ["video/mp4"],
  },
  replaceUrl: {
    type: Function,
    default: () => {},
  },
});

const acceptTypeStr = computed(() => {
  return props.acceptType
    .map((value) => value.substring(value.lastIndexOf("/") + 1))
    .join("、");
});

const url = ref("");
const isUploading = ref(false);
const isUploadSuccess = ref(false);
const file = ref(null);
const uploadPercent = ref(0);
const videoInfo = reactive({
  duration: 0,
  width: 0,
  height: 0,
});
const chunkSize = 1024 * 1024 * 2; // 2MB per chunk

// 文件上传事件
function chosenFileHandle() {
  file.value = null;
  const evt = new MouseEvent("click", {
    bubbles: true,
    cancelable: true,
    view: window,
  });
  proxy.$refs.fileInput.dispatchEvent(evt);
}

// 获取本地视频文件
function fileChangeHandle(evt) {
  if (!evt.target.files || !evt.target.files[0]) return;
  const _file = evt.target.files[0];

  if (_file.size > props.maxSize * 1024 * 1024) {
    proxy.$modal.msgWarning(`视频大小不超过${props.maxSize}MB`);
    return;
  }
  if (!props.acceptType.includes(_file.type)) {
    proxy.$modal.msgWarning(`只能上传 ${acceptTypeStr.value} 格式视频!`);
    return;
  }

  url.value = URL.createObjectURL(_file);

  proxy.$nextTick(() => {
    const video = proxy.$refs.videoRef;

    video.preload = "metadata";

    video.onloadedmetadata = () => {
      window.URL.revokeObjectURL(video.src);
      if (video.duration < 1) {
        proxy.$modal.msgWarning("Invalid Video! video is less than 1 second");
        return;
      }
      if (video.duration > proxy.maxMinute * 60) {
        proxy.$modal.msgWarning(`视频时长不能超过${proxy.maxMinute}分钟`);
      } else {
        // 视频信息
        videoInfo.duration = video.duration;
        videoInfo.width = video.videoWidth;
        videoInfo.height = video.videoHeight;
        file.value = _file;
      }
    };
  });
}

// 开始上传
function startUpload() {
  isUploadSuccess.value = false;
  handleFileUpload();
}

// 取消上传
function cancleUpload() {
  isUploading.value = false;
  uploadPercent.value = 0;
}

// 分片上传文件
const handleFileUpload = async () => {
  if (!file.value) return;

  const totalChunks = Math.ceil(file.value.size / chunkSize);
  const fileId = generateUUID(); // 唯一标识一个文件上传任务

  for (let i = 0; i < totalChunks; i++) {
    const start = i * chunkSize;
    const end = Math.min(start + chunkSize, file.value.size);
    const chunk = file.value.slice(start, end);

    const formData = new FormData();
    formData.append('file', chunk);
    formData.append('fileId', fileId);
    formData.append('chunkIndex', i.toString());
    formData.append('totalChunks', totalChunks.toString());
    formData.append('fileName', file.value.name);

    try {
      await request({
        url: '/common/uploadChunk',
        method: 'POST',
        headers: { "Content-Type": "application/x-www-form-urlencoded", repeatSubmit: false },
        data: formData
      });
      uploadPercent.value = Math.round(((i + 1) * 100) / totalChunks);
    } catch (error) {
      console.log(error)
      proxy.$modal.msgError('上传失败');
      return;
    }
  }

  // 所有分片上传完成后请求合并
  const { data } = await request({
    url: '/common/mergeChunks',
    method: 'POST',
    data: {
      fileId,
      fileName: file.value.name
    }
  });

  url.value = data.url;
  props.replaceUrl && (url.value = props.replaceUrl(url.value));
  isUploadSuccess.value = true;
  proxy.$emit("on-success", {
    ...data,
    ...videoInfo,
  });

  proxy.$refs.fileInput.value = "";
};

// 生成唯一文件ID
const generateUUID = () => {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
    const r = (Math.random() * 16) | 0;
    const v = c === 'x' ? r : (r & 0x3) | 0x8;
    return v.toString(16);
  });
}

function getCurrentTime() {
  const videoDom = proxy.$refs.videoRef;
  const currentTime = videoDom.currentTime || 1;
  let dataURL = "";
  const video = document.createElement("video");
  video.setAttribute("src", url.value);
  video.setAttribute("width", videoInfo.width);
  video.setAttribute("height", videoInfo.height);
  video.setAttribute("controls", "controls");
  video.setAttribute("crossOrigin", "anonymous");
  video.currentTime = currentTime; // 截取的时长
  video.addEventListener("loadeddata", function () {
    const canvas = document.createElement("canvas");
    const width = video.width; // canvas的尺寸和图片一样
    const height = video.height;
    canvas.width = width;
    canvas.height = height;
    canvas.getContext("2d").drawImage(video, 0, 0, width, height); // 绘制canvas
    dataURL = canvas.toDataURL("image/jpeg", 0.8); // 转换为base64
    proxy.$emit("on-poster-change", dataURL);
  });
}

/* 重置 */
function reset() {
  url.value = "";
  file.value = null;
  isUploading.value = false;
  isUploadSuccess.value = false;
  uploadPercent.value = 0;
}

defineExpose({
  reset,
});
</script>

<style scoped lang="scss">
.upload-wrapper {
  position: relative;
  width: 100%;

  .upload-container {
    width: 100%;
    height: 230px;
    position: relative;
    border: 1px solid #dcdfe6;
    border-radius: 4px;
    .progress {
      z-index: 1;
      position: absolute;
      left: 0;
      right: 0;
      top: -2px;
      height: 2px;
      font-size: 16px;
      border-radius: 5px;
      .thumb {
        background: #409eff;
        height: 100%;
        position: relative;
        &::after {
          position: absolute;
          bottom: -4px;
          right: -5px;
          width: 10px;
          height: 10px;
          content: "";
          background: #fff;
          border-radius: 50%;
          border: 2px solid #409eff;
          box-sizing: border-box;
        }
        .tool-tip {
          position: absolute;
          right: -23px;
          bottom: 14px;
          display: inline-block;
          padding: 2px 6px;
          min-width: 34px;
          text-align: center;
          line-height: 20px;
          color: #fff;
          font-size: 12px;
          border-radius: 4px;
          background: #409eff;
          letter-spacing: 1px;
          &::after {
            position: absolute;
            bottom: -12px;
            left: 0;
            right: 0;
            width: 1px;
            margin: 0 auto;
            content: "";
            border-width: 6px;
            border-style: solid;
            border-color: #409eff transparent transparent transparent;
          }
        }
      }
    }

    .video-wrapper {
      height: 100%;
      .video {
        width: 100%;
        height: 100%;
      }
    }
    .choose-btn {
      position: absolute;
      left: 50%;
      top: 55%;
      transform: translate(-50%, -50%);
      display: flex;
      align-items: center;
      flex-direction: column;
      > p {
        padding-top: 10px;
        text-align: center;
        font-size: 12px;
        color: #777;
        height: 24px;
        line-height: 24px;
      }
    }

    .upload-input {
      display: none;
    }
  }

  .tool {
    padding: 5px 0;
    text-align: right;
  }
}
</style>
