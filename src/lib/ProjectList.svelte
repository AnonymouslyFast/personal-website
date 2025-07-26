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
        width: 40%;
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
        box-shadow:
                rgba(65, 65, 65, 0.25) 0 54px 55px,
                rgba(65, 65, 65, 0.12) 0 -12px 30px,
                rgba(65, 65, 65, 0.12) 0 4px 6px,
                rgba(65, 65, 65, 0.17) 0 12px 13px,
                rgba(65, 65, 65, 0.09) 0 -3px 5px;
    }

    .active {
        box-shadow:
                rgba(65, 65, 65, 0.4) 0 0 0 2px,
                rgba(65, 65, 65, 0.65) 0 4px 6px -1px,
                rgba(65, 65, 65, 0.08) 0 1px 0 inset;
    }


</style>