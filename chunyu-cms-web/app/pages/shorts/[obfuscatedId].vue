<template>
  <div>
    <div class="w-full h-100vh overflow-hidden relative">
      <client-only>
        <div
          class="absolute top-15px left-15px z-11 flex justify-center items-center color-white cursor-pointer"
          @click.stop="handleBackOrHome"
        >
          <ElIconBack class="w-24px" />
        </div>
      </client-only>

      <div
        class="absolute top-15px right-15px z-11 flex justify-center items-center color-white cursor-pointer"
        @click.stop="handleCancelMuted"
      >
        取消静音
      </div>
      <div class="shorts-wrapper">
        <div class="h-100vh relative">
          <video
            class="short-video"
            :poster="short.poster"
            :src="short.videoUrl"
            autoplay
            loop
            :muted="isMuted"
            preload="metadata"
            controlslist="nodownload"
            controls
          ></video>
          <div class="video-info">
            <h3>{{ short.description }}</h3>
          </div>
          <ShortVideoActions
            :short="short"
            :initial-status="currUserShortInfo"
            @update:status="currUserShortInfo = $event"
          />
        </div>
      </div>
    </div>
    <Login />
  </div>
</template>

<script setup>
  import { deObfuscateId } from '~~/app/utils/obfuscator';
  import { WEB_TOKEN } from '#shared/cookiesName';

  definePageMeta({
    layout: false
  });

  const route = useRoute();
  const router = useRouter();
  const token = useCookie(WEB_TOKEN);

  const isMuted = ref(true);
  const currUserShortInfo = ref({
    isLike: false,
    isCollection: false
  });

  // 使用通用短视频操作composable
  const { getShortUserStatus } = useShortActions();

  const shortId = computed(() => {
    return deObfuscateId(Number(route.params.obfuscatedId));
  });

  const { data: short } = await useFetch(`/api/web/short/${shortId.value}`);

  // 获取用户交互状态
  if (token.value) {
    const status = await getShortUserStatus(shortId.value);
    currUserShortInfo.value = { ...status };
  }

  function handleBackOrHome() {
    router.back();
  }

  function handleCancelMuted(e) {
    e.target.remove();
    setTimeout(() => {
      isMuted.value = false;
      const currentVideo = document.querySelector('.short-video');
      currentVideo.play();
    }, 1000);
  }
</script>
