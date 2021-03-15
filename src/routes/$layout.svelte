<script context="module">
  export async function load({ page: { params }, fetch }) {
    const res = await fetch(`https://content.brian.dev/categories`);
    const categories = await res.json();

    return {
      props: { categories },
    };
  }
</script>

<script>
  import "../global.css";
  import Navigation from "$components/Navigation.svelte";
  import Footer from "$components/Footer.svelte";
  export let categories;
</script>

<Navigation {categories} />
<slot />
<Footer />
