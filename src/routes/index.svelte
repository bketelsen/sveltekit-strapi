<script context="module">
  export const prerender = true;
  export async function load({ page: { params }, fetch }) {
    const res = await fetch(`https://content.brian.dev/articles?featured=true`);
    const articles = await res.json();

    return {
      props: { articles },
    };
  }
</script>

<script>
  import ArticleList from "$components/ArticleList.svelte";

  import "../global.css";
  export let articles;
</script>

<main>
  <ArticleList
    {articles}
    title="Featured Articles"
    subtitle="Recent and Popular Posts"
  />
</main>

<style lang="postcss">
</style>
