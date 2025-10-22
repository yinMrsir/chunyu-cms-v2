<template>
  <div>
    <div
      class="w-full h-100vh overflow-hidden relative"
      @mousedown="handleMouseDown"
      @mousemove="handleMouseMove"
      @mouseup="handleMouseUp"
      @mouseleave="handleMouseUp"
      @wheel="handleWheel"
      @touchstart="handleTouchStart"
      @touchmove="handleTouchMove"
      @touchend="handleTouchEnd"
    >
      <div
        class="absolute top-15px left-15px z-11 flex justify-center items-center color-white cursor-pointer"
        @click.stop="router.push({ path: '/' })"
        @touchstart.stop="router.push({ path: '/' })"
      >
        <ElIconBack class="w-24px" />
      </div>
      <div
        class="absolute top-15px right-15px z-11 flex justify-center items-center color-white cursor-pointer"
        @click.stop="handleCancelMuted"
        @touchstart.stop="handleCancelMuted"
      >
        取消静音
      </div>
      <div class="shorts-wrapper">
        <div v-for="(short, index) in shorts" :key="index" class="h-100vh relative">
          <div
            v-if="isShowPlayButton"
            class="opacity-65 absolute top-50% left-50% translate-x--50% translate-y--50% w-80px h-80px border-rd-50% flex justify-center items-center"
          >
            <i class="i-el-caret-right color-white w-40px h-40px block"></i>
          </div>
          <video
            class="short-video"
            :poster="short.poster"
            :src="short.videoUrl"
            :autoplay="index === 0"
            loop
            :muted="isMuted"
            preload="metadata"
            controlslist="nodownload"
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
  import { useAsyncData } from '#app';
  import { WEB_TOKEN } from '#shared/cookiesName';
  import { obfuscateId } from '~~/app/utils/obfuscator';

  definePageMeta({
    layout: false
  });

  const token = useCookie(WEB_TOKEN);
  const router = useRouter();
  const currentIndex = ref(0);
  const previousIndex = ref(0);
  const isDragging = ref(false);
  const startY = ref(0);
  const initialOffset = ref(0);
  const threshold = 100;
  const isShowPlayButton = ref(false);
  const shorts = ref([]);
  const isMuted = ref(true);
  const pageNum = ref(1);
  const currUserShortInfo = ref({
    isLike: false,
    isCollection: false
  });

  // 使用通用短视频操作composable
  const { getShortUserStatus } = useShortActions();

  const { data, refresh } = await useAsyncData(`data:${pageNum.value}`, () => {
    return $fetch(`/api/web/short/list?pageNum=${pageNum.value}&limit=6`);
  });
  shorts.value = shorts.value.concat(data.value);

  const currentShort = computed(() => {
    return shorts.value[currentIndex.value];
  });

  watch(
    () => currentShort.value,
    short => {
      if (token.value) {
        getCurrentShortInfo(short.shortId);
      }
    }
  );

  if (token.value) {
    getCurrentShortInfo(currentShort.value.shortId);
  }
  async function getCurrentShortInfo(shortId) {
    const status = await getShortUserStatus(shortId);
    currUserShortInfo.value = { ...status };
  }

  const scrollToShort = async index => {
    if (isDragging.value) return;
    const offset = -index * 100;
    const shortsWrapper = document.querySelector('.shorts-wrapper');
    shortsWrapper.style.transform = `translateY(${offset}vh)`;

    window.history.pushState({}, '', `/shorts/${obfuscateId(shorts.value[index].shortId)}`);

    if (previousIndex.value !== index) {
      isShowPlayButton.value = false;
      shorts.value.forEach((_, i) => {
        const video = document.querySelectorAll('.short-video')[i];
        if (i === index) {
          video.play();
        } else {
          video.pause();
        }
      });
      if (index === shorts.value.length - 1) {
        pageNum.value++;
        await refresh();
        if (data.value.length) {
          shorts.value = shorts.value.concat(data.value);
        } else {
          pageNum.value = 0;
        }
      }
    } else {
      const currentVideo = document.querySelectorAll('.short-video')[currentIndex.value];
      if (currentVideo.paused) {
        currentVideo.play();
        isShowPlayButton.value = false;
      } else {
        currentVideo.pause();
        isShowPlayButton.value = true;
      }
    }
    previousIndex.value = index;
  };

  const handleMouseDown = event => {
    isDragging.value = true;
    startY.value = event.clientY;
    initialOffset.value = -currentIndex.value * 100;
    const shortsWrapper = document.querySelector('.shorts-wrapper');
    shortsWrapper.style.transition = 'none';
  };

  const handleMouseMove = event => {
    if (!isDragging.value) return;
    const deltaY = event.clientY - startY.value;
    const newOffset = initialOffset.value + (deltaY / window.innerHeight) * 100;
    const shortsWrapper = document.querySelector('.shorts-wrapper');
    shortsWrapper.style.transform = `translateY(${newOffset}vh)`;
  };

  const handleMouseUp = event => {
    event.preventDefault(); // 阻止默认行为
    event.stopPropagation(); // 阻止事件冒泡
    if (!isDragging.value) return;
    isDragging.value = false;
    const endY = event.clientY;
    const deltaY = endY - startY.value;
    const shortsWrapper = document.querySelector('.shorts-wrapper');
    shortsWrapper.style.transition = 'transform 0.3s ease-in-out';
    if (deltaY < -threshold && currentIndex.value < shorts.value.length - 1) {
      currentIndex.value++;
    } else if (deltaY > threshold && currentIndex.value > 0) {
      currentIndex.value--;
    }
    scrollToShort(currentIndex.value);
  };

  const handleWheel = event => {
    const delta = event.deltaY;
    if (delta > 0 && currentIndex.value < shorts.value.length - 1) {
      currentIndex.value++;
      scrollToShort(currentIndex.value);
    } else if (delta < 0 && currentIndex.value > 0) {
      currentIndex.value--;
      scrollToShort(currentIndex.value);
    }
  };

  const handleTouchStart = event => {
    isDragging.value = true;
    startY.value = event.touches[0].clientY;
    initialOffset.value = -currentIndex.value * 100;
    const shortsWrapper = document.querySelector('.shorts-wrapper');
    shortsWrapper.style.transition = 'none';
  };

  const handleTouchMove = event => {
    if (!isDragging.value) return;
    const deltaY = event.touches[0].clientY - startY.value;
    const newOffset = initialOffset.value + (deltaY / window.innerHeight) * 100;
    const shortsWrapper = document.querySelector('.shorts-wrapper');
    shortsWrapper.style.transform = `translateY(${newOffset}vh)`;
  };

  const handleTouchEnd = event => {
    event.preventDefault(); // 阻止默认行为
    event.stopPropagation(); // 阻止事件冒泡
    if (!isDragging.value) return;
    isDragging.value = false;
    const endY = event.changedTouches[0].clientY;
    const deltaY = endY - startY.value;
    const shortsWrapper = document.querySelector('.shorts-wrapper');
    shortsWrapper.style.transition = 'transform 0.3s ease-in-out';
    if (deltaY < -threshold && currentIndex.value < shorts.value.length - 1) {
      currentIndex.value++;
    } else if (deltaY > threshold && currentIndex.value > 0) {
      currentIndex.value--;
    }
    scrollToShort(currentIndex.value);
  };

  function handleCancelMuted(e) {
    e.target.remove();
    setTimeout(() => {
      isMuted.value = false;
      const currentVideo = document.querySelectorAll('.short-video')[currentIndex.value];
      currentVideo.play();
      isShowPlayButton.value = false;
    }, 1000);
  }
</script>

<style lang="scss"></style>
