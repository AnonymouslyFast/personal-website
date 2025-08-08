<script lang="ts">
    import Navbar from "$lib/Navbar.svelte";
    import {base} from "$app/paths";
    import {selectedCapsule} from "$lib/stores/selectedCapsule";

    function select(num: number) {
        selectedCapsule.set(num);
    }
</script>

<div id="container">
    <Navbar />

    <div id="title-container">
        <div id="title-content">
            <div id="back-btn">
                <a href='{base}/school'><p>Go Back</p></a>
            </div>
            <h1 id="title">Image Editing</h1>
            <p id="description">
                Image Editing is a class I am currently taking as of August 4th, 2025. This class is a introduction to
                Adobe Photoshop, and creating, designing, and printing graphics on various items. These items are things
                like: T-shirts, cups, patches, and posters.
            </p>

            <hr>

            <div id="selector">
                <button class="selector-item" class:active={$selectedCapsule === 0} on:click={() => select(0)}>
                    About
                </button>
                <button class="selector-item"  class:active={$selectedCapsule === 1}  on:click={() => select(1)}>
                    Projects
                </button>
            </div>

        </div>
    </div>
</div>

<style>

    @media (max-width: 800px) {
        #back-btn {
            width: 60% !important;
            padding-left: 5vw !important;
            padding-right: 5vw !important;
            justify-self: center !important;
            margin-top: 1vh !important;
            margin-bottom: 3vh !important;
        }

        #description {
            width: 100% !important;
        }
    }

    #title-container {
        display: flex;
        flex-direction: column;
        width: 60vw;
        padding: 3vw;
        justify-self: center;
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

    #back-btn {
        width: 10vw;
        margin-top: -2vw;
        display: flex;
        justify-content: center;
        justify-self: flex-start;
        border-radius: 5vw;
        z-index: 0;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px, rgba(0, 0, 0, 0.09)
                0 -3px 5px;
    }

    a {
        text-decoration: none;
        color: inherit;
    }


    #back-btn:hover {
        transition: ease-in 0.2s;
        box-shadow:
                rgba(84, 84, 84, 0.25) 0 54px 55px,
                rgba(84, 84, 84, 0.12) 0 -12px 30px,
                rgba(84, 84, 84, 0.12) 0 4px 6px,
                rgba(84, 84, 84, 0.17) 0 12px 13px,
                rgba(84, 84, 84, 0.09) 0 -3px 5px;
    }

    hr {
        width: 70%;
    }

    #title-content {
        z-index: 1;
        width: 100%;
        text-align: center;
    }

    #title {
        margin-top: -3vw;
    }

    #description {
        width: 50%;
        justify-self: center;
        font-size: 1rem;
        font-weight: lighter;
    }

    #selector {
        width: 70%;
        display: inline-flex;
        flex-direction: row;
        flex-wrap: wrap;
        gap: 1rem;
        justify-content: center;
    }

    .selector-item {
        background: inherit;
        border: none;
        color: inherit;
        font-family: inherit;
        font-size: inherit;
        font-weight: initial;
        justify-content: center;
        width: 40%;
        padding: 2%;
        display: flex;
        border-radius: 2vw;
        margin-top: 1rem;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px,
                rgba(0, 0, 0, 0.09) 0 -3px 5px;
    }

    .selector-item:hover {
        transition: ease-in 0.25s;
        cursor: pointer;
        box-shadow:
                rgba(65, 65, 65, 0.25) 0 54px 55px,
                rgba(65, 65, 65, 0.12) 0 -12px 30px,
                rgba(65, 65, 65, 0.12) 0 4px 6px,
                rgba(65, 65, 65, 0.17) 0 12px 13px,
                rgba(65, 65, 65, 0.09) 0 -3px 5px;
    }

    .active {
        box-shadow:
                rgba(65, 65, 65, 0.4) 0 0 0 2px,
                rgba(65, 65, 65, 0.65) 0 4px 6px -1px,
                rgba(65, 65, 65, 0.08) 0 1px 0 inset;
    }


</style>