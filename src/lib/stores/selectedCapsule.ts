import {writable} from "svelte/store";

export const selectedCapsule = writable<number | null>(null);
selectedCapsule.set(0);