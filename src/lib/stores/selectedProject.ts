import {writable} from "svelte/store";
import type { Project } from '$lib/projects/';
import {projects} from "$lib/projects/";

export const selectedProject = writable<Project | null>(null);
selectedProject.set(projects.at(0) as Project);