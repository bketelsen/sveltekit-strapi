<script>
  import Card from "./Card.svelte";

  import Header from "./Header.svelte";

  export let articles;
  export let title;
  export let subtitle;
</script>

<div
  class="relative bg-gray-50 pt-12 pb-12 px-4 sm:px-6 lg:pt-12 lg:pb-28 lg:px-8"
>
  <div class="absolute inset-0">
    <div class="bg-white h-1/3 sm:h-2/3" />
  </div>
  <div class="relative max-w-7xl mx-auto">
    <Header {title} {subtitle} />
    <div class="mt-12 max-w-lg mx-auto grid gap-5 lg:grid-cols-3 lg:max-w-none">
      {#each articles as article}
        <Card {article} />
      {/each}
    </div>
  </div>
</div>

<style lang="postcss">
</style>
