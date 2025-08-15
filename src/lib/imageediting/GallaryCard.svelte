<script lang="ts">
    import {base} from "$app/paths";
    import {selectedImage} from "$lib/stores/selectedImage";
    import {type IEPhoto, IEPhotos} from "$lib/imageediting/index";
    import {onDestroy} from "svelte";
    let photoIndex: number = 0;
    const unsubscribe = selectedImage.subscribe(num => photoIndex = num);

    onDestroy(unsubscribe);

    function selectImage(num: number) {
        if (IEPhotos.at(num) === undefined || IEPhotos.at(num) === null) return;
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
            <div id="title">{IEPhotos.at(photoIndex)?.name}</div>
            <button class:disable={IEPhotos.at(photoIndex+1) === undefined || photoIndex+1 < 0}
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
                rgba(0, 0, 0, 0.17) 0 12px 13px, rgba(0, 0, 0, 0.09)
                0 -3px 5px;
    }

    #title {
        display: flex;
        justify-items: center;
        text-align: center;
        margin: 0;
        padding: 0;
        font-size: 2rem;
    }

    #content {
        width: 100%;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
        gap: 2rem;
    }

    #image-container {
        width: 50%;
        background-color: #212121;
        border-radius: 2vw;
        justify-self: center;
        padding-top: 1%;
        padding-bottom: 1%;
        display: flex;
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
        width: 60%;
        border-radius: 2vw;
    }

    .image:hover {
        transition: 0.5s ease-in-out;
        width: 80%;
        cursor: pointer;
    }

    img {
        width: 100%;
        border-radius: 2vw;
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