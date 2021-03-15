<script>
  export let categories;
</script>

<div class="mb-2 text-gray-800 bg-white">
  <div
    class="flex flex-col md:flex-row px-4 font-medium items-center tracking-wide"
  >
    <div class="flex md:mt-0 mt-4 items-center">
      <svg
        viewBox="0 0 32 32"
        stroke="currentColor"
        stroke-width="4"
        stroke-linecap="round"
        class="w-8 h-8"
      >
        <path
          d="M28 11v11M22 3v26M16 11v11M10 3v26M4 11v11"
          transform="translate(16, 16) rotate(45) scale(.75, 1) translate(-16, -16)"
        />
      </svg>
      <a class="md:my-4 md:mr-4 px-2 rounded text-2xl" href="/"
        >Brian Ketelsen</a
      >
    </div>
    <ul
      class="flex flex-col md:flex-row mx-auto md:mt-0 mt-2 md:mb-0 mb-2 md:ml-auto list-disc md:list-none"
    >
      {#each categories as cat}
        <li class="md:mx-3 md:py-6 pb-2">
          <a
            sveltekit:prefetch
            href={`/${cat.slug}`}
            class="hover:text-gray-500 focus:text-gray-800 bg-white"
          >
            {cat.plural}
          </a>
        </li>
      {/each}
    </ul>
    <button
      class="absolute top-0 right-0 m-5 px-1 md:hidden rounded hover:text-gray-900 focus:text-gray-200 text-gray-700"
    >
      <svg
        viewBox="0 0 24 24"
        fill="none"
        stroke="currentColor"
        stroke-width="2"
        stroke-linecap="round"
        stroke-linejoin="round"
        class="w-6 h-6"
      >
        <line x1="3" y1="12" x2="21" y2="12" />
        <line x1="3" y1="6" x2="21" y2="6" />
        <line x1="3" y1="18" x2="21" y2="18" />
      </svg>
    </button>
  </div>
</div>

<style lang="postcss">
</style>
