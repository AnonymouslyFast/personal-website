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
    {
        name: "Campbell's Soup Advertisement Redesign",
        path: base + "/imageediting/Campbell-Soup-Redesign.jpg",
        date: "September 3rd, 2025",
        description: "This was a assignment to redesign the vintage Campbell's Tomato soup advertisement." +
            "I made this by taking the original image which I got from a amazon listing image, then I removed the original"
        + "Text from the image, then created my own text with a more modern color, and font, lastly I got the Campbell's logo" +
            "from their website, and added it to the image."
    },
    {
        name: "Polaroid Collage",
        path: base + "/imageediting/Polaroid-Collage.jpg",
        date: "September 5th, 2025",
        description: "This assignment was to make a collage of `polaroids` on a image, this let me learn masking and" +
            " other techniques in photoshop. I made this image by first setting up the layers as: background, black, and " +
            "visible, then mask the image inside of the visible layer, then create a new layer called `border` which is " +
            "the border of the polaroid. I the duplicate layer of background, black layer, and border layer all in a group" +
            ". After that I could just copy and paste the group, then move the group somewhere else to create this image."
    },
    {
        name: "Fruit Bowl",
        path: base + "/imageediting/FruitBowl_project.jpg",
        date: "September 16th, 2025",
        description: "This assignment was to take a bowl and a assortment of fruits and use layer masking, and layers " +
            "to make a fruit bowl. I made this by taking the bowl image which I got from a stock photos website, and " +
            "I copied and masked out the front of the bowl, and put it as the top layer. After that I just got the fruit" +
            " photos I got from the same source as the bowl, and masked them out and put them behind the front of the bowl."
    },
];