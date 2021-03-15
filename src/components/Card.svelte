<script>
  import ArticleList from "./ArticleList.svelte";

  export let article;
  console.log(article.image);
</script>

<div class="flex flex-col rounded-lg shadow-lg overflow-hidden">
  <div class="flex-shrink-0">
    <img
      class="h-48 w-full object-cover"
      src={article.image.formats.small.url}
      width={article.image.formats.small.width}
      height={article.image.formats.small.height}
      alt=""
    />
  </div>
  <div class="flex-1 bg-white p-6 flex flex-col justify-between">
    <div class="flex-1">
      <p class="text-sm font-medium text-indigo-600">
        <a href={article.category.slug} class="hover:underline">
          {article.category.name}
        </a>
      </p>
      <a href="/{article.category.slug}/{article.slug}" class="block mt-2">
        <p class="text-xl font-semibold text-gray-900">
          {article.title}
        </p>
        <p class="mt-3 text-base text-gray-500">
          {article.description}
        </p>
      </a>
    </div>
    <div class="mt-6 flex items-center">
      <div class="flex-shrink-0">
        <a href="#">
          <span class="sr-only">{article.author.name}</span>
          <img
            class="h-10 w-10 rounded-full"
            src={article.author.picture.formats.thumbnail.url}
            width={article.author.picture.formats.thumbnail.width}
            height={article.author.picture.formats.thumbnail.height}
            alt={article.author.name}
          />
        </a>
      </div>
      <div class="ml-3">
        <p class="text-sm font-medium text-gray-900">
          <a href="#" class="hover:underline"> {article.author.name} </a>
        </p>
        <div class="flex space-x-1 text-sm text-gray-500">
          <time datetime="2020-03-10"> Mar 10, 2020 </time>
          <span aria-hidden="true"> &middot; </span>
          <span> 4 min read </span>
        </div>
      </div>
    </div>
  </div>
</div>

<style lang="postcss">
</style>
