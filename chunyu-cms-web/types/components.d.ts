import type { NuxtApp } from '#app';

declare module '*.vue' {
  import type { DefineComponent } from 'vue';
  const component: DefineComponent<{}, {}, any>;
  export default component;
}

declare module '#app' {
  interface NuxtApp {
    $t: (key: string, values?: Record<string, any>) => string;
  }
}

declare module 'vue' {
  interface ComponentCustomProperties {
    $t: (key: string, values?: Record<string, any>) => string;
  }
}
