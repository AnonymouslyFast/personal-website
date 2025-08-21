<script lang="ts">
    import { projects } from '$lib/projects';
    import { selectedProject } from '$lib/stores/selectedProject';
    import type { Project } from '$lib/projects/';

    function select(project: Project) {
        console.log(project.name);
        selectedProject.set(project);
    }
</script>

<div id="content">
    <h2>Project Selector</h2>

    {#each projects as project}
        <button class="list-item" class:active={project === $selectedProject} on:click={() => select(project)}>
            {project.name}
        </button>
    {/each}
</div>
<style>
    @media (max-width: 800px) {
        .list-item {
            width: 70% !important;
        }
    }

    #content {
        margin-bottom: 2rem;
        width: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    h2 {
        width: inherit;
        text-align: center;
        margin-bottom: 0;
    }


    .list-item {
        background: inherit;
        border: none;
        color: inherit;
        font-family: inherit;
        font-size: inherit;
        font-weight: initial;
        justify-content: center;
        width: 50%;
        padding: 2%;
        display: flex;
        border-radius: 2vw;
        margin-top: 1rem;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px,
                rgba(0, 0, 0, 0.09) 0 -3px 5px;
    }

    .list-item:hover {
        transition: ease-in 0.25s;
        cursor: pointer;
        box-shadow:
                rgba(65, 65, 65, 0.25) 0 54px 55px,
                rgba(65, 65, 65, 0.12) 0 -12px 30px,
                rgba(65, 65, 65, 0.12) 0 4px 6px,
                rgba(65, 65, 65, 0.17) 0 12px 13px,
                rgba(65, 65, 65, 0.09) 0 -3px 5px;
    }

    .active {
        box-shadow:
                rgba(147, 147, 147, 0.4) 0 5px,
                rgba(147, 147, 147, 0.3) 0 10px,
                rgba(147, 147, 147, 0.2) 0 15px,
                rgba(147, 147, 147, 0.1) 0 20px,
                rgba(147, 147, 147, 0.05) 0 25px !important;
    }


</style>