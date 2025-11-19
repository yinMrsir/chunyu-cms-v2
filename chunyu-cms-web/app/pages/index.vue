<template>
  <div class="pt-0 md:pt-45px">
    <div class="banner">
      <div class="banner__left"></div>
      <div class="banner__right"></div>
      <div class="banner__top"></div>
      <div class="banner__bottom"></div>
      <nuxt-link :to="btnLink" class="swiper-slide__play-btn">
        <el-icon><ElIconCaretRight /></el-icon>
        {{ $t('play') }}
      </nuxt-link>
      <div>
        <swiper
          loop
          :autoplay="{
            pauseOnMouseEnter: true,
            delay: 15000
          }"
          :modules="[Pagination, Autoplay]"
          :pagination="{ clickable: true }"
          :slides-per-view="1"
          :space-between="50"
          @slide-change="onSlideChange"
        >
          <swiper-slide v-for="(item, index) in banner" :key="item.id">
            <video
              muted
              :autoplay="index === 0"
              preload="metadata"
              :poster="item.img"
              :src="item.videoUrl"
              class="banner-video h-40vh w-full object-cover md:h-70vh"
              alt=""
            />
          </swiper-slide>
        </swiper>
      </div>
    </div>
    <section v-for="item in columns" :key="item.id" class="p-x-12px">
      <div class="flex justify-between items-center m-y-24px">
        <a class="text-22px">{{ item.name }}</a>
        <div class="genre flex gap-x-20px">
          <nuxt-link
            v-for="gen in item.genre"
            :key="gen.genreId"
            :to="`/column/${item.value}/show?gid=${gen.genreId}`"
            class="hidden lg:inline-block"
          >
            {{ gen.name }}
          </nuxt-link>
          <nuxt-link :to="`/column/${item.value}`" class="color-#999 flex items-center">
            {{ $t('more') }} <el-icon><ElIconArrowRight /></el-icon>
          </nuxt-link>
        </div>
      </div>
      <div class="video-list">
        <ul>
          <li v-for="v in item.movies" :key="v.movieBasicsId">
            <nuxt-link :to="`/column/${v.columnValue}/detail/${v.movieBasicsId}`">
              <div class="relative">
                <NuxtImg size="200px" format="webp" loading="lazy" :alt="v?.title" :src="v.poster ?? ''" />
                <span v-if="v.movieRate?.rateUserCount" class="rate"> {{ v.movieRate.rate.toFixed(1) }} </span>
                <span v-if="v.isPay === 1" class="absolute right-0 top-0 z-10 text-12px md:text-14px p-x-8px bg-orange">
                  {{ $t('pay') }}
                </span>
              </div>
              <div class="p-y-8px p-x-8px md:p-y-14px md:p-y-12px">
                <h3>{{ v.title }}</h3>
                <p>
                  <template v-for="actor in v.casts"> {{ actor.actor.name }}&nbsp; </template>
                  <span v-if="!v.casts.length">-</span>
                </p>
              </div>
            </nuxt-link>
          </li>
        </ul>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
  import { Swiper, SwiperSlide } from 'swiper/vue';
  import 'swiper/css';
  import 'swiper/css/pagination';
  import type { Swiper as SwiperClass } from 'swiper/types';
  import { Pagination, Autoplay } from 'swiper/modules';
  import type { WebIndexList } from '~~/types/api/webIndex';

  const currIndex = ref(0);
  const [{ data: banner }, { data: columns }] = await Promise.all([
    useFetch('/api/web/basic/banner/list', {
      transform: banner => {
        return banner.map(item => ({
          img: item.img || '',
          url: item.url,
          urlType: item.urlType,
          id: item.id,
          title: item.title,
          videoUrl: item.videoUrl || ''
        }));
      },
      getCachedData: key => localCacheData(key)
    }),
    useFetch<WebIndexList>('/api/web', {
      getCachedData: key => localCacheData(key)
    })
  ]);

  const onSlideChange = (swiper: SwiperClass) => {
    currIndex.value = swiper.activeIndex;
    const videoDom: NodeListOf<HTMLVideoElement> = document.querySelectorAll('.banner-video');
    videoDom.forEach((item, index) => {
      if (index === currIndex.value) {
        item.play();
      } else {
        item.pause();
      }
    });
  };

  const btnLink = computed(() => {
    const currBanner = banner.value;
    if (currBanner && currBanner.length > 0) {
      return currBanner[currIndex.value]?.url ?? '';
    }
    return '';
  });
</script>

<style lang="scss">
  .video-list {
    ul {
      @apply grid gap-15px grid-cols-3 md:grid-cols-4 lg:grid-cols-6 md:gap-x-20px;
      li {
        background: #1c1d1f;
        border-radius: 10px;
        overflow: hidden;
        @apply hover:scale-110 transition-all text-14px;
        img {
          width: 100%;
          aspect-ratio: 4 / 5;
          object-fit: cover;
          overflow: hidden;
        }
        h3 {
          overflow: hidden;
          text-overflow: ellipsis;
          -o-text-overflow: ellipsis;
          white-space: nowrap;
        }
        p {
          color: rgba(255, 255, 255, 0.35);
          @apply text-12px mt-5px truncate;
        }
        .rate {
          @apply text-[#fff] absolute right-10px bottom-10px z-10 text-14px;
          text-shadow:
            -1px -1px 0 #0006,
            1px -1px 0 #0006,
            -1px 1px 0 #0006,
            1px 1px 0 #0006;
        }
      }
    }
  }
  .genre {
    a {
      @apply text-14px relative text-[#999] hover:text-white;
    }
    a:before {
      background: #2d2f3b;
      content: '';
      display: block;
      height: 10px;
      position: absolute;
      right: -10px;
      top: 50%;
      transform: translateY(-50%);
      width: 1px;
    }
    a:last-child:before {
      width: 0;
    }
  }
  .banner {
    position: relative;
    &__left {
      background: linear-gradient(-90deg, rgba(255, 255, 255, 0) 0%, #111214 100%);
      width: 250px;
      height: 100%;
      position: absolute;
      left: 0;
      top: 0;
      z-index: 2;
      @apply hidden md:block;
    }
    &__right {
      background: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, #111214 100%);
      width: 250px;
      height: 100%;
      position: absolute;
      right: 0;
      top: 0;
      z-index: 2;
      @apply hidden md:block;
    }
    &__top {
      background: linear-gradient(0deg, rgba(255, 255, 255, 0) 0%, #111214 100%);
      width: 100%;
      height: 100px;
      position: absolute;
      left: 0;
      top: 0;
      z-index: 2;
    }
    &__bottom {
      background: linear-gradient(180deg, rgba(255, 255, 255, 0) 0%, #111214 100%);
      width: 100%;
      height: 100px;
      position: absolute;
      left: 0;
      bottom: 0;
      z-index: 2;
    }
    .swiper-slide__play-btn {
      color: #fff;
      border: none;
      background-color: rgba(255, 255, 255, 0.1);
      outline: none;
      border-radius: 50px;
      padding: 6px 20px;
      -webkit-backdrop-filter: blur(5px);
      backdrop-filter: blur(5px);
      @apply flex items-center justify-center gap-x-6px cursor-pointer z-3 absolute left-20px bottom-50px text-18px lg:left-50px;
      &:hover {
        background: #ffffff;
        color: #111214;
      }
    }
  }
</style>
