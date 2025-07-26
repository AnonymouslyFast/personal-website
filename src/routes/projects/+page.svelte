<script>
    import Navbar from "$lib/Navbar.svelte";
    import ProjectList from "$lib/ProjectList.svelte";
    import ProjectContent from "$lib/ProjectContent.svelte";
</script>


<div id="container">
    <Navbar />

    <div id="main-container">
        <div id="main-content">
            <div id="list-container">
                <ProjectList />
            </div>

            <div id="project-container">
                <ProjectContent />
            </div>
        </div>
    </div>
</div>

<style>
    :global(body) {
        width: 100vw;
        height: 100vh;
        margin: 0;
        font-family: "Comfortaa", sans-serif;
        color: #cccccc;
        background: radial-gradient(circle 100vw at center, #323232 0%, #211b1b 100%);
    }

    @view-transition {
        navigation: auto !important;
    }

    @media(max-width: 800px) {
        #list-container {
            width: 80% !important;
            height: 20% !important;
        }

        #project-container {
            width: 80% !important;
            margin: 0 !important;
        }
    }

    #container {
        width: 100%;
        height: 100%;
    }

    #main-container {
        width: inherit;
        height: auto;
        margin-top: 5vw;
        display: flex;
        flex-direction: column;
    }

    #main-content {
        width: inherit;
        height: auto;
        margin: auto;
        gap: 2rem;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
    }

    #list-container {
        background: #323232;
        border-radius: 5vw;
        width: 30%;
        height: 60%;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px, rgba(0, 0, 0, 0.09)
                0 -3px 5px;
    }

    #project-container {
        background: #323232;
        border-radius: 5vw;
        width: 60%;
        height: auto;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px, rgba(0, 0, 0, 0.09)
                0 -3px 5px;
    }

</style>
