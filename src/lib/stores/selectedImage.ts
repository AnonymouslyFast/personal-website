import {writable} from "svelte/store";
import type {IEPhoto} from "$lib/imageediting";
import {IEPhotos} from "$lib/imageediting";

export const selectedImage = writable<number>(0);