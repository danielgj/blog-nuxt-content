<template>
  <section class="grid grid-cols-2 gap-4">
    <nuxt-link
      v-for="article in articles"
      :key="article.slug"
      :to="article.path"
      class="px-2 py-4 rounded hover:bg-gray-200"
    >
      <img :src="article.img" :alt="article.title" class="w-56" />
      <h2 class="font-bold text-xl">{{ article.title }}</h2>
      <p>{{ article.description }}</p>
      <Author :author="article.author" />
    </nuxt-link>
  </section>
</template>

<script>
import Author from '@/components/Author'

export default {
  name: 'ListArticles',
  components: {
    Author,
  },
  props: {
    articles: {
      type: Array,
      default: () => [],
    },
  },
}
</script>
