import { defineConfig, presetUno } from 'unocss';
import presetIcons from '@unocss/preset-icons';
import transformerDirectives from '@unocss/transformer-directives';
import transformerVariantGroup from '@unocss/transformer-variant-group';

export default defineConfig({
  presets: [
    presetUno(), // 注意需要把此处加上，不然会导致样式丢失
    presetIcons({
      /* options */
    })
  ],
  transformers: [transformerDirectives(), transformerVariantGroup()]
});
