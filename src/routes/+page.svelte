<script>
    import Navbar from "$lib/Navbar.svelte";
    import Copyright from "$lib/Copyright.svelte";
</script>

<div>
    <Navbar/>
    <div class="container">
        <div class="card">
            <div class="card-content">
                <div class="card-photo">
                    <img
                            src="webp/unformal-selfie.webp"
                            alt="Unformal selfie of me (Caleb Shearer) visibly wearing glasses and a black shirt at my desk."
                            id="title-image"
                    />
                </div>
                <div class="card-text">
                    <h1>Hello, I'm Caleb Shearer</h1>
                    <p>I'm an aspiring software engineer & game developer, with multiple years of Minecraft plugin development, and Unity game development, at my side.</p>

                    <div class="connections-container">
                        <a href="https://github.com/AnonymouslyFast" target="_blank" class="connections-item">
                        <span class="connections-item-content">
                            <img src="github-mark.svg" alt="Github logo">
                            Github
                        </span>
                        </a>
                        <a href="https://www.youtube.com/@AnonymouslyFast" target="_blank" class="connections-item">
                        <span class="connections-item-content">
                            <img src="youtube-icon.svg" alt="YouTube" />
                            Youtube
                        </span>
                        </a>
                        <a href="mailto:caleb.shearer@anonymouslyfast.com" target="_blank" class="connections-item">
                        <span class="connections-item-content">
                            <img src="email-icon.svg" alt="Email" />
                            Email
                        </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<Copyright />

<style>
    /* ====== Card Set Up ====== */
    .container {
        width: 100vw;
        height: 80vh;
        display: flex;
        justify-content: center;
        align-items: center;
        grid-area: content;
    }

    .card {
        width: 60vw;
        height: 60vh;
        background-color: var(--color-bg-card);
        border-radius: 2rem;
        box-shadow: var(--shadow-card);
        transition: ease-in-out 0.3s;
    }

    .card-content {
        height: 100%;
        display: flex;
        flex-direction: row;
        gap: 1rem;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
    }
    /* ====== Card Set Up ====== */

    /* ====== Card Content ====== */
    .card-photo {
        position: relative;
        width: 18vw;
        display: flex;
        justify-content: center;

        img {
            width: 100%;
            border-radius: 1vw;
            border: 2px solid var(--color-border-subtle);
            box-shadow: var(--shadow-card);
        }
    }

    .card-text {
        width: 50%;

        h1{
            text-align: left;
            border-bottom: 1px solid var(--color-text-secondary);
            padding-bottom: 0.5rem;
            width: 100%;
            font-size: 1.6vw;
            font-weight: bold;
        }

        p {
            text-align: left;
            font-size: 1.2vw;
            font-weight: normal;
        }
    }

    .connections-container {
        width: 100%;
        position: relative;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: space-evenly;
        gap: 1rem;

        .connections-item {
            border-radius: 1vw;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            background: var(--btn-secondary-bg);
            border: 1px solid var(--color-border);
            width: 25%;
            text-decoration: none;
            color: var(--btn-secondary-text);
            font-family: inherit;
            font-size: 0.8vw;
            font-weight: lighter;
            box-shadow: var(--shadow-card);

            span {
                padding: 0.5rem;
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 10%;

                img {
                    width: 40%;
                }

            }
        }

        .connections-item:hover {
            background-color: var(--btn-secondary-bg-hover);
            transition: ease-in-out 0.3s;

        }

        .connections-item:active {
            box-shadow: 0 0.3rem 1rem rgb(154 154 154);
            transition: ease-in-out 0.3s;
        }
    }


    /* ====== Card Content ====== */




</style>