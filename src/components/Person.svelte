<script>
  import Header from "./Header.svelte";
  export let first_name;
  export let age;
</script>

<main>
  <div
    class="relative bg-gray-50 pt-12 pb-12 px-4 sm:px-6 lg:pt-12 lg:pb-28 lg:px-8"
  >
    <div class="absolute inset-0">
      <div class="bg-white h-1/3 sm:h-2/3" />
    </div>
    <div class="relative max-w-7xl mx-auto">
      <Header title={first_name} subtitle={age} />
      <div class="mt-6 prose prose-indigo prose-lg text-gray-500 mx-auto">
        <slot />
      </div>
    </div>
  </div>
</main>
