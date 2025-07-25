// File Imports
import type {SvelteComponent} from "svelte";

// Projects imports
import PersonalWebsite from "$lib/projects/PersonalWebsite.svelte";
import EcoZero from "$lib/projects/EcoZero.svelte";


export interface Project {
    name: string;
    component: typeof SvelteComponent<any>;
    type: string;
}

export const projects: Project[] = [
    { name: "Personal Website",  component: PersonalWebsite, type: "Website"},
    { name: "EcoZero",  component: EcoZero, type: "Video Game"}
];