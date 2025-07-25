<script>
    import Navbar from "$lib/Navbar.svelte";
    import ProjectList from "$lib/ProjectList.svelte";
    import ProjectContent from "$lib/ProjectContent.svelte";
    import '$lib/app.css'
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
    }

    #list-container {
        background: #323232;
        border-radius: 5vw;
        width: 40%;
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
        width: 100%;
        height: auto;
        justify-content: center;
        justify-items: center;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px, rgba(0, 0, 0, 0.09)
                0 -3px 5px;
    }

</style>
