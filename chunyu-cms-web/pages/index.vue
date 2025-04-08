<template>
  <div class="container index">
    <div class="banner">
      <el-carousel :interval="5000" arrow="always">
        <el-carousel-item v-for="item in banner" :key="item.id">
          <nuxt-link v-if="+item.urlType === 0" :to="item.url">
            <el-image :src="item.img" style="width: 100%" fit="cover" />
          </nuxt-link>
          <a v-else :href="item.url">
            <el-image :src="item.img" style="width: 100%" fit="cover" />
          </a>
        </el-carousel-item>
      </el-carousel>
    </div>
    <movie-box v-for="item in movie" :key="item.value" type="index" :category-item="item" />
    <div class="friendly-link flex items-center mt-20">
      <img src="../assets/images/icon_26.png" alt="友情链接" />
      友情链接
    </div>
    <div class="friendly-link__content">
      <a v-for="item in links?.data" :key="item.id" :href="item.url" target="_blank">{{ item.text }}</a>
    </div>
  </div>
</template>

<script setup lang="ts">
  const links = { data: [] };

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
  .index {
    padding-top: 20px;

    .banner {
      .el-carousel__container {
        height: 380px;
      }

      .el-image {
        height: 380px;
      }

      @media (max-width: 768px) {
        .el-carousel__container {
          height: 200px;
        }

        .el-image {
          height: 200px;
        }
      }
    }

    .friendly-link {
      border-bottom: #eee solid 1px;
      padding: 10px 0;
      font-size: 18px;
      > img {
        margin-right: 10px;
      }
      &__content {
        padding: 20px 0;
        a {
          padding-right: 15px;
        }
      }
    }
  }

  .demonstration {
    color: var(--el-text-color-secondary);
  }

  .col-pd {
    li {
      a {
        font-size: 14px;
        padding: 10px 0 10px;
        border-bottom: dotted 1px #eeeeee;

        .badge {
          display: inline-block;
          margin-right: 10px;
          width: 18px;
          height: 18px;
          text-align: center;
          line-height: 18px;
          border-radius: 2px;
          font-size: 12px;
          background-color: #eee;
          color: #333;
        }

        .text-muted {
          color: #999;
        }
      }

      &:nth-child(1) {
        .badge {
          background-color: #ff4a4a;
          color: #fff;
        }
      }

      &:nth-child(2) {
        .badge {
          background-color: #ff7701;
          color: #fff;
        }
      }

      &:nth-child(3) {
        .badge {
          background-color: #ffb400;
          color: #fff;
        }
      }
    }
  }
</style>
