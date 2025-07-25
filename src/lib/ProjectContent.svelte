<script lang="ts">
    import { selectedProject } from '$lib/stores/selectedProject';
    import { onDestroy } from 'svelte';
    import type { Project } from '$lib/projects/';

    let project: Project | null = null;

    const unsubscribe = selectedProject.subscribe(p => project = p);
    onDestroy(unsubscribe);
</script>

{#if project}
    <h2>{project.name}</h2>
    <p style="font-weight: lighter; margin-top: -1rem !important; margin-bottom: 2rem;">{project.type}</p>
    <svelte:component this={project.component} />
{/if}

