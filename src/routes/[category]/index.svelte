<script context="module">
  export const prerender = true;

  export async function load({ page: { params }, fetch }) {
    const res = await fetch(
      `https://content.brian.dev/categories/${params.category}`
    );
    const category = await res.json();

    const ares = await fetch(
      `https://content.brian.dev/articles?category=${category.id}`
    );
    const articles = await ares.json();

    return {
      props: { category, articles },
    };
  }
</script>

<script>
  import ArticleList from "$components/ArticleList.svelte";

  export let category;
  export let articles;
</script>

<main>
  <ArticleList
    {articles}
    title={category.plural}
    subtitle={category.description}
  />
</main>
