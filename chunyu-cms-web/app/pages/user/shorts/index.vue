<template>
  <div class="p-20px pt-74px shorts-center-index">
    <el-tabs v-model="activeTab">
      <el-tab-pane label="作品" name="works">
        <div class="works-box">
          <div class="works-box__item text-40px flex justify-center items-center cursor-pointer relative">
            +
            <input
              type="file"
              text="上传封面"
              class="absolute w-full h-full left-0 top-0 opacity-0 cursor-pointer z-10"
              @change="handleFileChange"
            />
          </div>
          <div
            v-for="(item, index) in shorts"
            :key="index"
            class="works-box__item"
            @click="handlePreviewVideo(item.videoUrl)"
          >
            <NuxtImg size="200px" format="webp" loading="lazy" :src="item.poster" />
            <span class="absolute top-10px right-10px text-14px text-white:80">
              {{ item.status ?? auditStatus[item.status] }}
            </span>
          </div>
        </div>
      </el-tab-pane>
      <el-tab-pane label="喜欢" name="like">
        <div v-if="likes.length" class="works-box">
          <div
            v-for="(item, index) in likes"
            :key="index"
            class="works-box__item"
            @click="handlePreviewVideo(item.videoUrl)"
          >
            <NuxtImg size="200px" format="webp" loading="lazy" :src="item.poster" />
          </div>
        </div>
        <el-empty v-else description="暂无数据" :image-size="60"></el-empty>
      </el-tab-pane>
      <el-tab-pane label="收藏" name="collection">
        <div v-if="collections.length" class="works-box">
          <div
            v-for="(item, index) in collections"
            :key="index"
            class="works-box__item"
            @click="handlePreviewVideo(item.videoUrl)"
          >
            <NuxtImg size="200px" format="webp" loading="lazy" :src="item.poster" />
          </div>
        </div>
        <el-empty v-else description="暂无数据" :image-size="60"></el-empty>
      </el-tab-pane>
    </el-tabs>
    <el-dialog v-model="uploadShortVisible" class="!w-360px !md:w-600px">
      <div v-if="!videoInfo.videoUrl" class="flex justify-center items-center m-y-20px">
        <div id="loading-box" ref="loadingBoxRef">
          <h2 id="number" ref="loadingNumberRef"></h2>
        </div>
      </div>
      <div v-else class="grid grid-cols-[200px_1fr] gap-10px">
        <div class="flex flex-col items-center gap-15px">
          <video
            ref="videoRef"
            class="w-200px h-360px object-contain"
            preload="metadata"
            controls
            :src="videoInfo.videoUrl"
          ></video>
          <el-button size="small" @click="getCurrentTime">截取封面</el-button>
        </div>
        <div class="flex flex-col gap-15px">
          <el-form ref="formRef" :model="form" :rules="rules" label-width="0">
            <el-form-item prop="poster">
              <div class="relative w-110px aspect-3/4 bg-black">
                <div v-if="form.poster" class="poster-box">
                  <img class="w-full h-full object-contain" :src="form.poster" alt="" />
                  <span>修改封面</span>
                </div>
                <div v-else class="w-full h-full flex justify-center items-center">上传封面</div>
                <input
                  type="file"
                  text="上传封面"
                  class="absolute w-full h-full left-0 top-0 opacity-0 cursor-pointer z-10"
                  @change="handleUploadShortPoster"
                />
              </div>
            </el-form-item>
            <el-form-item prop="description">
              <el-input
                v-model="form.description"
                type="textarea"
                :autosize="{ minRows: 6, maxRows: 6 }"
                :input-style="{ fontSize: '14px' }"
                class="text-14px"
                placeholder="请输入作品描述"
              ></el-input>
            </el-form-item>
            <!--            <el-form-item prop="topic">-->
            <!--              <el-input-tag v-model="form.topic" :max="5" placeholder="请输入话题" aria-label="输入后请按回车键" />-->
            <!--            </el-form-item>-->
          </el-form>
        </div>
      </div>
      <template #footer>
        <span v-if="videoInfo.videoUrl" class="dialog-footer">
          <el-button @click="uploadShortVisible = false">取 消</el-button>
          <el-button type="primary" @click="handleSubmitUploadShort">确 定</el-button>
        </span>
      </template>
    </el-dialog>
    <el-dialog v-model="previewVideoVisible" class="!w-360px !md:w-600px">
      <video v-if="previewVideo" :src="previewVideo" controls class="w-full h-400px object-contain"></video>
    </el-dialog>
  </div>
</template>

<script setup lang="ts">
  import { createToken } from '~~/app/utils/request';
  import { WEB_TOKEN, WEB_USER_INFO } from '~~/shared/cookiesName';
  import type { CookieUserInfo } from '~~/types/hooks';
  import type { WebMemberShortList, WebMemberShortListItem } from '~~/types/api/webMemberShortList';
  import type { adminCommonMergeChunks } from '~~/types/api/adminCommonMergeChunks';
  import type { adminCommonUpload } from '~~/types/api/adminCommonUpload';
  import type { WebMemberShortLikeListItem } from '~~/types/api/webMemberShortLikeList';
  import type { WebMemberShortCollectionListItem } from '~~/types/api/webMemberShortCollectionList';

  interface VideoInfo {
    videoUrl?: string;
    size?: number;
    mimeType?: string;
    duration?: number;
    width?: number;
    height?: number;
  }

  definePageMeta({
    layout: 'user-center',
    middleware: 'auth'
  });

  const uploadShortVisible = ref(false);
  const formRef = useTemplateRef('formRef');
  const form = ref<{ poster?: string; description?: string }>({
    poster: undefined,
    description: undefined
  });
  const rules = ref({
    poster: [
      {
        required: true,
        message: '请上传或截取封面',
        trigger: 'blur'
      }
    ],
    description: [
      {
        required: true,
        message: '请输入作品描述',
        trigger: 'change'
      }
    ]
  });
  const activeTab = ref('works');
  const videoRef = useTemplateRef('videoRef');
  const videoInfo = ref<VideoInfo>({});
  const loadingBoxRef = useTemplateRef('loadingBoxRef');
  const loadingNumberRef = useTemplateRef('loadingNumberRef');
  const shorts = ref<WebMemberShortListItem[]>([]);
  const auditStatus = ref({
    '0': '审核中',
    '1': '',
    '2': '审核不通过'
  });
  const previewVideo = ref('');
  const previewVideoVisible = ref(false);
  const likes = ref<WebMemberShortLikeListItem[]>([]);
  const collections = ref<WebMemberShortCollectionListItem[]>([]);

  watch(
    () => uploadShortVisible.value,
    value => {
      if (!value) {
        videoInfo.value = {};
        form.value = {};
      }
    }
  );

  const pageNum = ref(1);
  const { data: shortData, refresh } = await useAsyncData(() => {
    return $fetch<WebMemberShortList>(`/api/web/member/short/list?pageNum=${pageNum.value}&limit=12`, {
      headers: {
        Token: createToken()
      }
    });
  });
  shorts.value = shorts.value.concat(shortData.value?.rows ?? []);

  watch(
    () => activeTab.value,
    async () => {
      if (activeTab.value === 'like') {
        pageNum.value = 1;
        likes.value = [];
        const data: { rows: WebMemberShortLikeListItem[]; total: number } = await request({
          url: `/api/web/member/short/like/list?pageNum=${pageNum.value}&limit=12`
        });
        likes.value = likes.value.concat(data.rows);
      } else if (activeTab.value === 'collection') {
        pageNum.value = 1;
        collections.value = [];
        const data: { rows: WebMemberShortCollectionListItem[]; total: number } = await request({
          url: `/api/web/member/short/collection/list?pageNum=${pageNum.value}&limit=12`
        });
        collections.value = collections.value.concat(data.rows);
      }
    }
  );

  // 新增短视频
  async function handleSubmitUploadShort() {
    await formRef.value?.validate();
    await request({
      url: '/api/web/member/short',
      method: 'post',
      body: {
        ...form.value,
        ...videoInfo.value
      }
    });
    uploadShortVisible.value = false;
    ElMessage.success('上传成功');
    pageNum.value = 1;
    shorts.value = [];
    await refresh();
    shorts.value = shorts.value.concat(shortData.value?.rows ?? []);
  }

  const file = ref<File | null>(null);
  const chunkSize = 1024 * 1024 * 2; // 2MB per chunk

  const handleFileChange = async (e: Event) => {
    const target = e.target as HTMLInputElement;
    // 判断上传的文件是不是视频文件
    if (!target.files || target.files.length === 0 || !target.files[0]?.type.includes('video')) {
      ElMessage.error('请上传视频文件');
      return;
    }
    if (target.files && target.files.length > 0) {
      file.value = target.files[0];
      await upload();
      target.value = '';
    }
  };

  // 分片上传文件
  const upload = async () => {
    if (!file.value) return;

    uploadShortVisible.value = true;
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
        await $fetch('/api/admin/common/uploadChunk', {
          method: 'POST',
          body: formData
        });
        const percentCompleted = Math.round(((i + 1) * 100) / totalChunks);
        if (loadingBoxRef.value) {
          loadingBoxRef.value.style.background = `conic-gradient(#f5036c ${percentCompleted}%, #333 0%)`;
        }
        if (loadingNumberRef.value) {
          loadingNumberRef.value.innerHTML = `${percentCompleted >= 100 ? '99.9' : percentCompleted}<span>%</span>`;
        }
      } catch (error) {
        ElMessage.error('上传失败');
        uploadShortVisible.value = false;
        return;
      }
    }

    // 所有分片上传完成后请求合并
    const response = await $fetch<adminCommonMergeChunks>('/api/admin/common/mergeChunks', {
      method: 'POST',
      body: {
        fileId,
        fileName: file.value.name
      }
    });

    videoInfo.value.videoUrl = response.data.url;
    videoInfo.value.size = response.data.size;
    videoInfo.value.mimeType = response.data.mimeType;
    await nextTick();
    if (videoRef.value) {
      videoRef.value.onloadedmetadata = () => {
        // 视频信息
        videoInfo.value.duration = videoRef.value?.duration;
        videoInfo.value.width = videoRef.value?.videoWidth;
        videoInfo.value.height = videoRef.value?.videoHeight;
      };
    }
  };

  // 生成唯一文件ID
  const generateUUID = () => {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
      const r = (Math.random() * 16) | 0;
      const v = c === 'x' ? r : (r & 0x3) | 0x8;
      return v.toString(16);
    });
  };

  // 上传封面
  async function handleUploadShortPoster(e: Event) {
    const target = e.target as HTMLInputElement;
    // 判断上传的文件是不是图片
    if (!target.files || target.files.length === 0 || !target.files[0]?.type.includes('image')) {
      ElMessage.error('请上传图片');
      return;
    }
    try {
      const file = target.files[0];
      const formData = new FormData();
      formData.append('file', file);
      const data = await $fetch<adminCommonUpload>('/api/admin/common/upload', {
        headers: {
          contentType: 'multipart/form-data'
        },
        method: 'POST',
        body: formData
      });
      if (data.code === 200) {
        form.value.poster = data.data.url;
      } else {
        ElMessage.error('上传失败');
      }
    } catch (error) {
      ElMessage.error('上传失败');
    } finally {
      target.value = '';
    }
  }

  // 截取封面
  function getCurrentTime() {
    const currentTime = videoRef.value?.currentTime || 1;
    let dataURL = '';
    const video = document.createElement('video');
    videoInfo.value.videoUrl && video.setAttribute('src', videoInfo.value.videoUrl);
    videoInfo.value.width && video.setAttribute('width', String(videoInfo.value.width));
    videoInfo.value.height && video.setAttribute('height', String(videoInfo.value.height));
    video.setAttribute('controls', 'controls');
    video.setAttribute('crossOrigin', 'anonymous');
    video.currentTime = currentTime; // 截取的时长
    video.addEventListener('loadeddata', async () => {
      const canvas = document.createElement('canvas');
      const width = video.width; // canvas的尺寸和图片一样
      const height = video.height;
      canvas.width = width;
      canvas.height = (4 * width) / 3;
      canvas.getContext('2d')?.drawImage(video, 0, 0, width, height); // 绘制canvas
      dataURL = canvas.toDataURL('image/jpeg', 0.8); // 转换为base64

      // 1. 从 Base64 提取 MIME 类型和数据
      const matches = dataURL.match(/^data:([A-Za-z-+/]+);base64,(.+)$/);
      if (!matches || matches.length !== 3) {
        throw new Error('Invalid Base64 string');
      }

      // 2. 转换为 Blob 对象
      const mime = matches[1];
      const b64 = matches[2];
      if (!b64) {
        throw new Error('Base64 data is missing');
      }
      const bin = atob(b64);
      const buffer = new ArrayBuffer(bin.length);
      const uint8Array = new Uint8Array(buffer);

      for (let i = 0; i < bin.length; i++) {
        uint8Array[i] = bin.charCodeAt(i);
      }

      const blob = new Blob([uint8Array], { type: mime });

      // 创建 FormData
      const formData = new FormData();
      formData.append('file', blob, 'file.' + mime?.split('/')[1]); // 设置文件名

      const data = await $fetch<adminCommonUpload>('/api/admin/common/upload', {
        headers: {
          contentType: 'multipart/form-data'
        },
        method: 'POST',
        body: formData
      });
      if (data.code === 200) {
        form.value.poster = data.data.url;
      } else {
        ElMessage.error('上传失败');
      }
    });
  }

  function handlePreviewVideo(videoUrl: string) {
    previewVideo.value = videoUrl;
    previewVideoVisible.value = true;
  }
</script>

<style lang="scss">
  .shorts-center-index {
    .works-box {
      @apply grid gap-15px grid-cols-2 md:grid-cols-4 lg:grid-cols-6 md:gap-x-20px;
      &__item {
        position: relative;
        background: #1c1d1f;
        border-radius: 10px;
        overflow: hidden;
        aspect-ratio: 3 / 4;
        img {
          width: 100%;
          height: 100%;
          object-fit: cover;
          overflow: hidden;
        }
      }
    }
    .poster-box {
      @apply w-full h-full relative;
      span {
        @apply absolute bg-black/80 w-full left-0 bottom-0 flex justify-center items-center;
      }
    }

    #loading-box {
      position: relative;
      width: 200px;
      height: 200px;
      background: conic-gradient(#333 0%, #333 100%);
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      cursor: pointer;
      user-select: none;
      overflow: hidden;
      &.done {
        background: #0f0 !important;
      }
      &::before {
        content: '';
        inset: 15px;
        border-radius: 50%;
        position: absolute;
        background: #222;
        opacity: 0.9;
      }
      &.done #number {
        font-size: 5em;
        line-height: 1em;
        i {
          transform: translateY(-10%);
        }
        small {
          position: absolute;
          top: 10px;
          font-size: 0.2em;
          text-transform: uppercase;
          white-space: nowrap;
          font-weight: 500;
          letter-spacing: 0.05em;
          transform: translate(-50%, 30%);
        }
      }
    }
    #number {
      position: relative;
      color: #ffffff;
      z-index: 100;
      font-size: 3em;
      text-align: center;
      span {
        font-size: 0.5em;
      }
    }
    .download {
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      color: #03a9f5;
      font-size: 4em;
      transition: 0.5s;
      &.active {
        transform: translateY(150%);
      }
    }
  }
</style>
