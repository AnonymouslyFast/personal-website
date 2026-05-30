<script>
    import Navbar from "$lib/Navbar.svelte";
    import ProjectList from "$lib/ProjectList.svelte";
    import ProjectContent from "$lib/ProjectContent.svelte";
    import Copyright from "$lib/Copyright.svelte";
</script>

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

<Copyright/>

<style>


    #main-container {
        width: 100vw;
        height: 80vh;
        display: flex;
        grid-area: content;
        justify-content: center;
        align-items: center;
    }

    #main-content {
        gap: 2rem;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
    }

    #list-container {
        background: var(--color-bg-card);
        border-radius: 1vw;
        width: 30%;
        height: 60vh;
        box-shadow: var(--shadow-card);
        overflow-y: auto;
        overflow-x: hidden;
        scrollbar-width: auto;
        scrollbar-color: var(--color-border) var(--color-bg-page);
    }

    #project-container {
        background: var(--color-bg-card);
        border-radius: 1vw;
        width: 60%;
        height: 60vh;
        box-shadow: var(--shadow-card);
        overflow-y: auto;
        overflow-x: hidden;
        scrollbar-width: auto;
        scrollbar-color: var(--color-border) var(--color-bg-page);
    }

</style>
