<template>
  <div class="pt-0 md:pt-45px">
    <Head>
      <Title>{{ $titleRender(`最新${columnInfo?.name}在线观看`) }}</Title>
      <Meta name="description" :content="`最新最全的${columnInfo?.name}在线观看尽在淳渔影视。`" />
    </Head>

    <section v-for="item in genres" :key="item.id" class="p-x-12px">
      <div class="flex justify-between items-center m-y-24px">
        <a class="text-22px">{{ item.name }}</a>
        <div class="genre flex gap-x-20px">
          <nuxt-link
            :to="`/column/${route.params.columnValue}/show?gid=${item.id}`"
            class="color-#999 flex items-center"
          >
            {{ t('more') }} <el-icon><ElIconArrowRight /></el-icon>
          </nuxt-link>
        </div>
      </div>
      <div class="video-list">
        <ul>
          <li v-for="v in item.movies" :key="v.movieBasicsId">
            <nuxt-link :to="`/column/${item.columnValue}/detail/${v.movieBasicsId}`">
              <div class="relative">
                <NuxtImg format="webp" loading="lazy" :alt="v.movieBasics?.title" :src="v.movieBasics?.poster" />
                <span v-if="v.movieBasics.movieRate?.rateUserCount" class="rate">
                  {{ v.movieBasics.movieRate.rate.toFixed(1) }}
                </span>
                <span
                  v-if="v.movieBasics.isPay === 1"
                  class="absolute right-0 top-0 z-10 text-12px md:text-14px p-x-8px bg-orange"
                >
                  {{ t('pay') }}
                </span>
              </div>
              <div class="p-y-8px p-x-8px md:p-y-14px md:p-y-12px">
                <h3>{{ v.movieBasics?.title }}</h3>
                <p>
                  <template v-for="actor in v.movieBasics?.casts || []"> {{ actor.actor?.name }}&nbsp; </template>
                  <span v-if="!v.movieBasics?.casts.length">-</span>
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
  import type { WebColumnGenre } from '~~/types/api/webColumnGenre';
  import type { WebColumn } from '~~/types/api/webColumn';

  const { t } = useI18n();
  const route = useRoute();

  const [{ data: genres }, { data: columnInfo }] = await Promise.all([
    useFetch<WebColumnGenre>(`/api/web/column/genre/${route.params.columnValue}`, {
      getCachedData: (key: string) => localCacheData(key)
    }),
    useFetch<WebColumn>(`/api/web/column/${route.params.columnValue}`, {
      pick: ['name'],
      getCachedData: key => localCacheData(key)
    })
  ]);
</script>
