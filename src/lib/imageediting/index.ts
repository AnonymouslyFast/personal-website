import {base} from "$app/paths";

export interface IEPhoto {
    name: string;
    path: string;
}

export const IEPhotos: IEPhoto[] = [
    { name: "Digital Painting", path: base + "/imageediting/Digital-painting.jpg" }
];