<template>
  <a class="text-green-500 font-bold" target="_blank" :href="url">
    <slot />
  </a>
</template>

<script>
export default {
  name: 'TheLink',
  props: {
    url: {
      type: String,
      required: true,
    },
  },
}
</script>
