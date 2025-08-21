<script lang="ts">
    import {base} from "$app/paths";
    import {selectedImage} from "$lib/stores/selectedImage";
    import {type IEPhoto, IEPhotos} from "$lib/imageediting/index";
    import {onDestroy} from "svelte";
    let photoIndex: number = 0;
    const unsubscribe = selectedImage.subscribe(num => photoIndex = num);

    onDestroy(unsubscribe);

    function selectImage(num: number) {
        console.log("selectImage", num);
        if (IEPhotos.at(num) === undefined || num < 0) return;
        selectedImage.set(num)
    }
</script>

<div id="card">
    <div id="content">
        <div id="content-header">
            <button class:disable={IEPhotos.at(photoIndex-1) === undefined || photoIndex-1 < 0}
                    class="arrow-btn"  on:click={() => selectImage(photoIndex -1)}>
                &#60
            </button>
            <div id="title">Gallery</div>
            <button class:disable={IEPhotos.at(photoIndex+1) === undefined || photoIndex+1 > IEPhotos.length-1}
                    class="arrow-btn" on:click={() => selectImage(photoIndex+1)}>
                &#62
            </button>
        </div>

        <div id="image-container">
            <div class="image">
                <a href={IEPhotos.at(photoIndex)?.path}>
                    <img src={IEPhotos.at(photoIndex)?.path} alt="Photo of {IEPhotos.at(photoIndex)?.name}, created my me."/>
                </a>
            </div>
        </div>

        <div id="image-content">
            <h2>{IEPhotos.at(photoIndex)?.name}</h2>
            <p id="image-date">{IEPhotos.at(photoIndex)?.date}</p>

            <hr>
            <p id="image-description">
                {IEPhotos.at(photoIndex)?.description}
            </p>
        </div>
    </div>
</div>

<style>
    @media (max-width: 800px) {
        #card {
            width: 60% !important;
        }

        #content-header {
            gap: 5% !important;
        }

        .arrow-btn {
            flex: 0 !important;
            height: 5vw !important;
            margin: 0 !important;
        }

        #title {
            font-size: 1rem !important;
            margin: 0 !important;
        }
    }

    #card {
        transition: all 0.5s linear;
        display: flex;
        flex-direction: column;
        width: 60vw;
        padding: 3vw;
        justify-self: center;
        justify-items: center;
        margin-top: 3rem;
        background: #323232;
        border-radius: 5vw;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px,
                rgba(0, 0, 0, 0.09) 0 -3px 5px;
    }

    #title {
        display: flex;
        justify-items: center;
        text-align: center;
        margin: 0;
        padding: 0;
        font-weight: bolder;
        font-size: 2.5rem;
    }

    #content {
        transition: all 0.5s linear;
        width: 100%;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        gap: 2rem;
    }

    #image-container {
        max-width: 35%;
        margin-left: 2%;
        background-color: #212121;
        border-radius: 2vw;
        padding-top: 2%;
        padding-bottom: 2%;
        display: flex;
        justify-self: left;
        aspect-ratio: 16/20;
        justify-content: center;
    }

    #content-header {
        width: 100%;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
        gap: 2rem;
    }

    .image {
        transition: 0.3s ease-in-out;
        width: 85%;
        border-radius: 2vw;
        display: flex;
        flex-direction: column;
        justify-content: center;
        overflow: hidden;
    }

    .image img {
        width: 100%;
        object-fit: cover; /* fills box, may crop */
        border-radius: 2vw;
        justify-self: center;
    }

    .image:hover {
        transition: 0.5s ease-in-out;
        width: 95%;
        cursor: pointer;
    }

    img {
        width: 100%;
        border-radius: 2vw;
    }

    #image-content {
        width: 50%;
    }

    h2 {
        font-size: 2rem;
    }

    #image-date {
        font-size: 0.8rem;
        font-weight: lighter;
        margin-top: -1rem;
    }

    #image-description {
        width: 100%;
        font-size: 0.9rem;
        margin: 0;
        font-weight: normal;
    }

    .arrow-btn {
        cursor: pointer;
        flex: 1;
        background: inherit;
        border: none;
        color: inherit;
        display: flex;
        height: 100%;
        width: 20%;
        font-size: 2rem;
        flex-direction: column;
        justify-self: center;
        justify-content: center;
        border-radius: 2vw;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px,
                rgba(0, 0, 0, 0.09) 0 -3px 5px;
    }

    .arrow-btn:hover {
        transition: ease-in 0.2s;
        box-shadow:
                rgba(84, 84, 84, 0.25) 0 54px 55px,
                rgba(84, 84, 84, 0.12) 0 -12px 30px,
                rgba(84, 84, 84, 0.12) 0 4px 6px,
                rgba(84, 84, 84, 0.17) 0 12px 13px,
                rgba(84, 84, 84, 0.09) 0 -3px 5px;
    }

    .disable {
        cursor: initial;
        color: #232323;
    }

    .disable:hover {
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px,
                rgba(0, 0, 0, 0.09) 0 -3px 5px;
    }

</style>