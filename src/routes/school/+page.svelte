<script>
    import Navbar from "$lib/Navbar.svelte";
    import { base } from '$app/paths';
</script>

<div id="container">
    <Navbar />

    <div id="main-container">
        <div id="main-content">
            <div id="title-container">
                <h1 id="title">Courses</h1>
                <p id="desc">Learn about my education by clicking a course I've taken!</p>
            </div>
            <hr>

            <div id="course-list">
                <div class="course-container">
                    <h4 class="course-title">Image Editing 1</h4>
                    <p class="course-desc">
                        This course is a introduction to Adobe Photoshop, and designing and creating products or graphics.
                    </p>
                    <a class="course-btn" href='{base}/school/imageediting/'>Click to learn more!</a>
                </div>
            </div>


        </div>
    </div>
</div>

<style>

    @view-transition {
        navigation: auto;
    }

    :global(html) {
        margin: 0;
        font-family: "Comfortaa", sans-serif;
        color: #cccccc;
        background: radial-gradient(circle 100vw at center, #323232 0%, #211b1b 100%);
    }

    @media (max-width: 800px) {
        .course-container {
            width: 80% !important;
        }

        hr {
            width: 90% !important;
        }
    }

    #main-container {
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

    #main-content {
        width: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    #title-container {
        text-align: center;
    }

    #title {
        font-size: 1.5rem;
        font-weight: bold;
    }

    #desc {
        font-size: 1rem;
        font-weight: lighter;
    }

    hr {
        width: 70%;
    }

    #course-list {
        margin-top: 2rem;
        display: flex;
        flex-direction: row;
        width: 100%;
        flex-wrap: wrap;
        justify-content: center;
    }

    .course-container {
        width: 40%;
        border-radius: 2vw;
        height: auto;
        display: flex;
        flex-direction: column;
        justify-content: center;
        text-align: center;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px,
                rgba(0, 0, 0, 0.09) 0 -3px 5px;
    }

    .course-title {
        width: 80%;
        font-weight: bolder;
        margin: 1em auto;
        font-size: 1.1rem;
    }

    .course-desc {
        font-weight: lighter;
        font-size: 0.9rem;
        margin: 0 auto;
        width: 80%;
    }

    .course-btn {
        width: 60%;
        margin: 1em auto;
        padding: 0.5rem 1rem;
        border-radius: 5vw;
        text-decoration: none;
        color: #b4b2b2;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px,
                rgba(0, 0, 0, 0.09) 0 -3px 5px;
        justify-content: center;
    }

    .course-btn:hover {
        transition: ease-in 0.2s;
        box-shadow:
                rgba(84, 84, 84, 0.25) 0 54px 55px,
                rgba(84, 84, 84, 0.12) 0 -12px 30px,
                rgba(84, 84, 84, 0.12) 0 4px 6px,
                rgba(84, 84, 84, 0.17) 0 12px 13px,
                rgba(84, 84, 84, 0.09) 0 -3px 5px;
    }

</style>