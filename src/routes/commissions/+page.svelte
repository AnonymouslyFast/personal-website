<script>
    import Navbar from "$lib/Navbar.svelte";
</script>


<div id="container">
    <Navbar />
</div>

<style>
    :global(body) {
        width: 100%;
        height: 100%;
        margin: 0;
        font-family: "Comfortaa", sans-serif;
        color: #cccccc;
        background: radial-gradient(circle 100vw at center, #323232 0%, #211b1b 100%);
    }

    @view-transition {
        navigation: auto;
    }
</style>
