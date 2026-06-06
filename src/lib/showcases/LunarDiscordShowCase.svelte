<script>
    import '$lib/styles/showcase-styles.css'
    import ShowcaseGoBackButton from "$lib/showcases/ShowcaseGoBackButton.svelte";
</script>

<div class="back-card-content-container">
    <div class="header">
        <h1>LunarDiscord</h1>
        <h2>Minecraft Plugin</h2>
    </div>

    <div class="content">
        <h4>
            Introduction
        </h4>
        <p>
            LunarDiscord is a Minecraft plugin that supports paper 1.21.11+ servers. Originally made for a client, which
            turned into a side-project I've enjoyed making. This plugin is free to download, but I don't plan to maintain
            it unless it become popular of course.
        </p>

        <h4>
            About the Project
        </h4>
        <p>
            LunarDiscord was challenging to make as it has 2 storage provider (Skript variables, and SQLite), and I had
            to meet client needs as well. It's coded in Java like most Minecraft plugin, and uses gradle, which is my 
            usually development stack for developing Minecraft plugins. If you'd like to download the plugin or delve
            into the not-so wonderful code, it's on my github. <a href="https://github.com/AnonymouslyFast/LunarDiscord" target="_blank">https://github.com/AnonymouslyFast/LunarDiscord</a>
        </p>
    </div>

    <ShowcaseGoBackButton/>
</div>