<script setup lang="ts">
  import type { NuxtError } from '#app';

  const props = defineProps({
    error: {
      type: Object as () => NuxtError,
      default: () => ({})
    }
  });

  const message = computed(() => {
    return props.error.statusCode === 404 ? '页面不存在' : props.error.message;
  });

  useHead({
    title: `${props.error.statusCode} | 淳渔`
  });
</script>

<template>
  <div
    class="antialiased bg-white dark:bg-black dark:text-white font-sans grid min-h-screen overflow-hidden place-content-center text-black"
  >
    <div class="fixed left-0 right-0 spotlight z-10"></div>
    <div class="max-w-520px text-center z-20">
      <h1 class="font-medium mb-8 sm:text-10xl text-8xl" v-text="error.statusCode" />
      <p class="font-light leading-tight mb-16 px-8 sm:px-0 sm:text-4xl text-xl" v-text="message" />
      <div class="flex items-center justify-center w-full">
        <NuxtLink
          to="/"
          class="cursor-pointer gradient-border px-4 py-2 sm:px-6 sm:py-3 sm:text-xl text-md decoration-none color-inherit"
        >
          回首页
        </NuxtLink>
      </div>
    </div>
  </div>
</template>

<style scoped>
  .spotlight {
    background: linear-gradient(45deg, #00dc82, #36e4da 50%, #0047e1);
    bottom: -30vh;
    filter: blur(20vh);
    height: 40vh;
  }
  .gradient-border {
    -webkit-backdrop-filter: blur(10px);
    backdrop-filter: blur(10px);
    border-radius: 0.5rem;
    position: relative;
  }
  @media (prefers-color-scheme: light) {
    .gradient-border {
      background-color: hsla(0, 0%, 100%, 0.3);
    }
    .gradient-border:before {
      background: linear-gradient(90deg, #e2e2e2, #e2e2e2 25%, #00dc82 50%, #36e4da 75%, #0047e1);
    }
  }
  @media (prefers-color-scheme: dark) {
    .gradient-border {
      background-color: hsla(0, 0%, 8%, 0.3);
    }
    .gradient-border:before {
      background: linear-gradient(90deg, #303030, #303030 25%, #00dc82 50%, #36e4da 75%, #0047e1);
    }
  }
  .gradient-border:before {
    background-size: 400% auto;
    border-radius: 0.5rem;
    bottom: 0;
    content: '';
    left: 0;
    mask:
      linear-gradient(to bottom, #fff, #fff) content-box,
      linear-gradient(to bottom, #fff, #fff);
    -webkit-mask-composite: xor;
    mask-composite: exclude;
    opacity: 0.5;
    padding: 2px;
    position: absolute;
    right: 0;
    top: 0;
    transition:
      background-position 0.3s ease-in-out,
      opacity 0.2s ease-in-out;
    width: 100%;
  }
  .gradient-border:hover:before {
    background-position: -50% 0;
    opacity: 1;
  }
  .fixed {
    position: fixed;
  }
  .left-0 {
    left: 0;
  }
  .right-0 {
    right: 0;
  }
  .z-10 {
    z-index: 10;
  }
  .z-20 {
    z-index: 20;
  }
  .grid {
    display: grid;
  }
  .mb-16 {
    margin-bottom: 4rem;
  }
  .mb-8 {
    margin-bottom: 2rem;
  }
  .max-w-520px {
    max-width: 520px;
  }
  .min-h-screen {
    min-height: 100vh;
  }
  .w-full {
    width: 100%;
  }
  .flex {
    display: flex;
  }
  .cursor-pointer {
    cursor: pointer;
  }
  .place-content-center {
    place-content: center;
  }
  .items-center {
    align-items: center;
  }
  .justify-center {
    justify-content: center;
  }
  .overflow-hidden {
    overflow: hidden;
  }
  .bg-white {
    --un-bg-opacity: 1;
    background-color: rgb(255 255 255 / var(--un-bg-opacity));
  }
  .px-4 {
    padding-left: 1rem;
    padding-right: 1rem;
  }
  .px-8 {
    padding-left: 2rem;
    padding-right: 2rem;
  }
  .py-2 {
    padding-bottom: 0.5rem;
    padding-top: 0.5rem;
  }
  .text-center {
    text-align: center;
  }
  .text-8xl {
    font-size: 6rem;
    line-height: 1;
  }
  .text-xl {
    font-size: 1.25rem;
    line-height: 1.75rem;
  }
  .text-black {
    --un-text-opacity: 1;
    color: rgb(0 0 0 / var(--un-text-opacity));
  }
  .font-light {
    font-weight: 300;
  }
  .font-medium {
    font-weight: 500;
  }
  .leading-tight {
    line-height: 1.25;
  }
  .font-sans {
    font-family:
      ui-sans-serif,
      system-ui,
      -apple-system,
      BlinkMacSystemFont,
      Segoe UI,
      Roboto,
      Helvetica Neue,
      Arial,
      Noto Sans,
      sans-serif,
      Apple Color Emoji,
      Segoe UI Emoji,
      Segoe UI Symbol,
      Noto Color Emoji;
  }
  .antialiased {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
  }
  @media (prefers-color-scheme: dark) {
    .dark\:bg-black {
      --un-bg-opacity: 1;
      background-color: rgb(0 0 0 / var(--un-bg-opacity));
    }
    .dark\:text-white {
      --un-text-opacity: 1;
      color: rgb(255 255 255 / var(--un-text-opacity));
    }
  }
  @media (min-width: 640px) {
    .sm\:px-0 {
      padding-left: 0;
      padding-right: 0;
    }
    .sm\:px-6 {
      padding-left: 1.5rem;
      padding-right: 1.5rem;
    }
    .sm\:py-3 {
      padding-bottom: 0.75rem;
      padding-top: 0.75rem;
    }
    .sm\:text-4xl {
      font-size: 2.25rem;
      line-height: 2.5rem;
    }
    .sm\:text-xl {
      font-size: 1.25rem;
      line-height: 1.75rem;
    }
  }
</style>
