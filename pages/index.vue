<template>
  <div class="container">
    <ListArticles :articles="docs" />
  </div>
</template>

<script>
import ListArticles from '@/components/ListArticles'

export default {
  components: {
    ListArticles,
  },
  async asyncData({ $content }) {
    const docs = await $content('blog')
      .without(['body'])
      .sortBy('createdAt', 'asc')
      .fetch()
    return { docs }
  },
}
</script>

<style>
.container {
  @apply min-h-screen flex justify-center items-center text-center mx-auto;
}
</style>
