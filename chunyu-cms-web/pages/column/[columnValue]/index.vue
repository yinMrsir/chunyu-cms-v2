<template>
  <div class="pt-0 md:pt-55px">
    <section v-for="item in data" :key="item.id" class="p-x-12px">
      <div class="flex justify-between items-center m-y-24px">
        <a class="text-22px">{{ item.name }}</a>
        <div class="genre flex gap-x-20px">
          <a href="#" class="color-#999 flex items-center">
            更多 <el-icon><ElIconArrowRight /></el-icon>
          </a>
        </div>
      </div>
      <div class="video-list">
        <ul>
          <li v-for="v in item.movies" :key="v.id">
            <nuxt-link to="/">
              <img :src="v.movieBasics.poster" />
              <div class="p-y-8px p-x-8px md:p-y-14px md:p-y-12px">
                <h3>{{ v.movieBasics.title }}</h3>
                <p>
                  <template v-for="actor in v.movieBasics.casts"> {{ actor.actor.name }}&nbsp; </template>
                  <span v-if="!v.movieBasics.casts.length">-</span>
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
  const route = useRoute();
  const { data } = await useFetch(`/api/web/column/${route.params.columnValue}`);
</script>
