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
        color: inherit;
        font-family: inherit;
        font-size: inherit;
        font-weight: initial;
        justify-content: center;
        width: 50%;
        padding: 2%;
        display: flex;
        border-radius: 0.5vw;
        margin-top: 1rem;
        box-shadow: var(--shadow-card);
        border: hidden;
    }

    .list-item:hover {
        cursor: pointer;
        border: 1px solid var(--color-border-subtle);
    }

    .active {
        border: 1px solid var(--color-border);
        box-shadow: none;
    }


</style>