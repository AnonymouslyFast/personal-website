import {base} from "$app/paths";

export interface IEPhoto {
    name: string;
    path: string;
    date: string;
    description?: string;
}

export const IEPhotos: IEPhoto[] = [
    {
        name: "Digital Painting",
        path: base + "/imageediting/Digital-painting.jpg",
        date: "August 12th, 2025",
        description: "This is my first project on Photoshop, the subject is my dog Cooper."
           + " This was made by taking a image of him, and using the eye dropper tool to"
           + " copy the colors and using the smudge tool to smudge in the colors."
    },
    {
        name: "Layers Project",
        path: base + "/imageediting/LayersProject.jpg",
        date: "August 15th, 2025",
        description: "This is a project on the layers on Photoshop, the subject is a random dude on the internet," +
            " and background is random landscape on the internet."
    },
    {
        name: "Layers Test",
        path: base + "/imageediting/LayerTest.jpg",
        date: "August 26th, 2025",
        description: "This was a test given to grade how well we did with layers on Photoshop." +
            "I followed a set of directions given, then I added noise to the text and the `2025` text at the bottom right."
    },
];