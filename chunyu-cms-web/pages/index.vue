<template>
  <div>
    <div class="banner">
      <div class="banner__left"></div>
      <div class="banner__right"></div>
      <div class="banner__top"></div>
      <div class="banner__bottom"></div>
      <div>
        <swiper
          loop
          :autoplay="{
            pauseOnMouseEnter: true,
            delay: 20000
          }"
          :modules="[Pagination, Autoplay]"
          :pagination="{ clickable: true }"
          :slides-per-view="1"
          :space-between="50"
        >
          <swiper-slide v-for="item in banner" :key="item.id">
            <img :src="item.img" class="h-40vh w-full object-cover md:h-50vh" alt="" />
          </swiper-slide>
        </swiper>
      </div>
    </div>
    <section v-for="item in movie" :key="item.id" class="p-x-12px">
      <div class="flex justify-between items-center m-y-24px">
        <a class="text-22px">{{ item.name }}</a>
        <a href="#" class="color-#999 flex items-center">
          更多 <el-icon><ElIconArrowRight /></el-icon>
        </a>
      </div>
      <div class="video-list">
        <ul>
          <li v-for="v in item.rows" :key="v.id">
            <nuxt-link to="/">
              <img :src="v.poster" />
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
  import { Pagination, Autoplay } from 'swiper/modules';

  const [{ data: banner }, { data: movie }] = await Promise.all([
    useFetch('/api/web/basic/banner/list', {
      transform: banner => {
        return banner.map(item => ({
          img: item.img,
          url: item.url,
          urlType: item.urlType,
          id: item.id,
          title: item.title
        }));
      }
    }),
    useFetch('/api/web')
  ]);
</script>

<style lang="scss">
  .video-list {
    ul {
      @apply grid gap-15px grid-cols-3 md:grid-cols-5 lg:grid-cols-6 xl:grid-cols-7 md:gap-x-20px;
      li {
        background: #252632;
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
          @apply text-12px mt-5px;
        }
      }
    }
  }
  .banner {
    position: relative;
    &__left {
      background: linear-gradient(-90deg, rgba(255, 255, 255, 0) 0%, #161823 100%);
      width: 250px;
      height: 100%;
      position: absolute;
      left: 0;
      top: 0;
      z-index: 2;
      @apply hidden md:block;
    }
    &__right {
      background: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, #161823 100%);
      width: 250px;
      height: 100%;
      position: absolute;
      right: 0;
      top: 0;
      z-index: 2;
    }
    &__top {
      background: linear-gradient(0deg, rgba(255, 255, 255, 0) 0%, #161823 100%);
      width: 100%;
      height: 100px;
      position: absolute;
      left: 0;
      top: 0;
      z-index: 2;
    }
    &__bottom {
      background: linear-gradient(180deg, rgba(255, 255, 255, 0) 0%, #161823 100%);
      width: 100%;
      height: 100px;
      position: absolute;
      left: 0;
      bottom: 0;
      z-index: 2;
    }
  }
</style>
