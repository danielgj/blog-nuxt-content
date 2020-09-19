<template>
  <article class="article-wrapper">
    <h1 class="font-bold text-2xl">{{ page.title }}</h1>
    <p>{{ page.description }}</p>
    <hr class="w-full my-4" />
    <nuxt-content :document="page" />
    <nuxt-link to="/" class="mt-10 text-blue-800 font-bold">Go back</nuxt-link>
  </article>
</template>

<script>
export default {
  async asyncData({ $content, params }) {
    const page = await $content(`/blog/${params.slug}`).fetch()

    return {
      page,
    }
  },
}
</script>

<style scoped>
.article-wrapper {
  @apply min-h-screen flex justify-center flex-col p-10;
}
</style>
