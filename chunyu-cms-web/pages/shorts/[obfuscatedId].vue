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
          <div class="video-actions">
            <div
              class="action-icon"
              @click.stop="router.push({ path: `/shorts/user/${short.memberUser?.memberUserId}` })"
            >
              <el-avatar :src="short.memberUser?.avatar" class="border-#fff border-width-1px"></el-avatar>
            </div>
            <div class="action-icon">
              <i
                class="i-el-heart w-28px h-28px"
                :class="[currUserShortInfo?.isLike ? 'color-#FE2C55' : '']"
                @click.stop="e => handleLike(e, short)"
              ></i>
              <span>{{ short.likes }}</span>
            </div>
            <div class="action-icon">
              <i class="i-el-star w-28px h-28px"></i>
              <span>{{ short.collection }}</span>
            </div>
            <div class="action-icon">
              <i class="i-el-comment w-24px h-24px"></i>
              <span>{{ short.comments }}</span>
            </div>
            <div class="action-icon">
              <i class="i-el-share-alt w-28px h-28px"></i>
              <span>{{ short.shareCount }}</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <Login />
  </div>
</template>

<script setup>
  import { deObfuscateId } from '~/utils/obfuscator';
  import { WEB_TOKEN } from '#shared/cookiesName';
  import { useLoginVisible } from '~/composables/states';

  definePageMeta({
    layout: false
  });

  const route = useRoute();
  const router = useRouter();
  const token = useCookie(WEB_TOKEN);
  const loginVisible = useLoginVisible();

  const isMuted = ref(true);
  const currUserShortInfo = ref({
    isLike: false
  });

  const shortId = computed(() => {
    return deObfuscateId(Number(route.params.obfuscatedId));
  });

  const { data: short } = await useFetch(`/api/web/short/${shortId.value}`);

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

  async function handleLike(e, short) {
    if (!token.value) {
      loginVisible.value = true;
      return;
    }
    if (currUserShortInfo.value.isLike) {
      await request({
        url: '/api/web/member/short/like/cancel',
        method: 'POST',
        body: {
          shortId: shortId.value
        }
      });
      currUserShortInfo.value.isLike = false;
      short.likes -= 1;
    } else {
      await request({
        url: '/api/web/member/short/like',
        method: 'POST',
        body: {
          shortId: shortId.value
        }
      });
      currUserShortInfo.value.isLike = true;
      await nextTick();
      e.target.classList.add('animate__bounceIn');
      short.likes += 1;
      setTimeout(() => {
        e.target.classList.remove('animate__bounceIn');
      }, 1000);
    }
  }
</script>
