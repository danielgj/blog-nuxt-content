<template>
  <div class="inline-flex">
    Author:
    <address class="pl-2">{{ author.name }}</address>
  </div>
</template>

<script>
export default {
  name: 'Author',
  props: {
    author: {
      type: Object,
      default: () => ({}),
    },
  },
}
</script>
