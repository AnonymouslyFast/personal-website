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

<div id="listContainer">
    <div id="listContent">

        <div id="title">
            <h2>All Images</h2>
        </div>

        <div id="items-container">
            <div id="items-content">

                {#each IEPhotos as photo, i}
                    <button on:click={() => selectPhoto(i)} class="photo-container">
                        <div class="photo-content">
                            <img
                                    class:active={i === photoIndex}
                                    src="{photo?.path.replace('.jpg', '.webp').replace('imageediting/', 'imageediting/webp/')}"
                                    alt=""
                            />
                        </div>
                    </button>
                {/each}

            </div>
        </div>
    </div>
</div>

<style>
    #listContainer{
        width: 100%;
        height: auto;
        display: flex;
        flex-direction: column;
    }

    #listContent{
        width: 100%;
        height: auto;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
    }

    #title {
        flex: 1;
        margin-top: 2%;
        text-align: center;
    }

    #items-container {
        width: 100%;
        display: flex;
        justify-content: center;
    }

    #items-content{
        width: 60vw;
        display: flex;
        flex-direction: row;
        padding: 2vw;
        flex-wrap: wrap;
        gap: 1.5rem;
        justify-content: center;
        border-radius: 2vw;
        border: #cccccc 2px solid;
    }

    .photo-container {
        border-radius: 2vw;
        width: 30%;
        height: fit-content;
        background: none;
        border: none;
        display: flex;
    }

    .photo-container {
        border-radius: 2vw;
        width: 30%;
        height: fit-content;
        background: none;
        border: none;
        display: flex;
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

    .photo-content {
        width: 100%;
    }

    img {
        border-radius: 2vw;
        width: 100%;
        transition: all 0.5s linear;
        box-shadow:
                rgba(147, 147, 147, 0.25) 0 54px 55px,
                rgba(147, 147, 147, 0.12) 0 -12px 30px,
                rgba(147, 147, 147, 0.12) 0 4px 6px,
                rgba(147, 147, 147, 0.17) 0 12px 13px,
                rgba(147, 147, 147, 0.09) 0 -3px 5px;
    }

    img:hover {
        transition: all 0.5s linear;
        box-shadow:
                rgba(147, 147, 147, 0.4) 0 5px,
                rgba(147, 147, 147, 0.3) 0 10px,
                rgba(147, 147, 147, 0.2) 0 15px,
                rgba(147, 147, 147, 0.1) 0 20px,
                rgba(147, 147, 147, 0.05) 0 25px;
    }
</style>