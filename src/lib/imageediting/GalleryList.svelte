<script lang="ts">
    import {IEPhotos} from "$lib/imageediting/index";
    import {selectedImage} from "$lib/stores/selectedImage";
    import {onDestroy} from "svelte";

    let photoIndex: number = 0;
    const unsubscribe = selectedImage.subscribe(num => photoIndex = num);

    onDestroy(unsubscribe);

    function selectPhoto(num: number) {
        if (num != photoIndex) {
            photoIndex = num;
            selectedImage.set(num);
        }
    }

</script>

<div id="galleryListContainer">
    {#each IEPhotos as photo, i }
        <button on:click={() => selectPhoto(i)} class="galleryListItem">
            <div class="galleryListItemContent">
                <div class="galleryItemImage">
                    <img class:active={i === photoIndex} src={photo?.path} alt="">
                </div>
            </div>
        </button>
    {/each}
</div>

<style>
    #galleryListContainer{
        width: 100%;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        gap: 3rem;
        margin-top: 2rem;
        justify-content: center;
    }

    .galleryListItem{
        width: 15%;
        display: flex;
        border-radius: 2vw;
        background: none;
        border: none;
    }

    .galleryListItemContent{
        width: 100%;
        height: auto;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .active {
        transition: all 0.5s linear;
        box-shadow:
                rgba(147, 147, 147, 0.4) 0 5px,
                rgba(147, 147, 147, 0.3) 0 10px,
                rgba(147, 147, 147, 0.2) 0 15px,
                rgba(147, 147, 147, 0.1) 0 20px,
                rgba(147, 147, 147, 0.05) 0 25px;
    }

    img {
        width: 100%;
        border-radius: 2vw;
        transition: all 0.5s linear;
        box-shadow:
                rgba(147, 147, 147, 0.25) 0 54px 55px,
                rgba(147, 147, 147, 0.12) 0 -12px 30px,
                rgba(147, 147, 147, 0.12) 0 4px 6px,
                rgba(147, 147, 147, 0.17) 0 12px 13px,
                rgba(147, 147, 147, 0.09) 0 -3px 5px;
    }

    img:hover {
        transition: 0.3s all ease-in-out;
        cursor: pointer;
        box-shadow:
                rgba(147, 147, 147, 0.4) 0 5px,
                rgba(147, 147, 147, 0.3) 0 10px,
                rgba(147, 147, 147, 0.2) 0 15px,
                rgba(147, 147, 147, 0.1) 0 20px,
                rgba(147, 147, 147, 0.05) 0 25px;
    }

</style>