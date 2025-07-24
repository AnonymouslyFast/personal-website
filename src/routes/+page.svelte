<script>
    import BackGround from "$lib/BackGround.svelte";
    import Navbar from "$lib/Navbar.svelte";
</script>

<BackGround />

<div id="container">
    <Navbar />

    <div id="main">
            <div id="main-content">
                <div id="image-container">
                    <img
                            src="unformal-selfie.jpeg"
                            alt="Unformal selfie of me (Caleb Shearer) visibly wearing glasses and a black shirt at my desk."
                            id="title-image"
                    />
                </div>

                <div id="title-container">
                    <h1 id="title-head">
                        Hello, I'm Caleb Shearer
                    </h1>
                    <p id="description-para">
                        I'm a high school senior planning to major in Computer Engineering or Computer Science.
                        In the future I'm planning to become a game developer, and I'm working hard to get to that goal.
                    </p>

                    <div id="connections-container">
                        <a href="https://github.com/AnonymouslyFast" class="connection-btn">
                            <img src="github-mark.svg" alt="GitHub" />
                        </a>
                        <a href="https://www.youtube.com/@AnonymouslyFast" class="connection-btn">
                            <img src="youtube-icon.svg" alt="YouTube" />
                        </a>
                        <a href="mailto:fastskating12@gmail.com" class="connection-btn">
                            <img src="email-icon.svg" alt="Email" />
                        </a>
                    </div>
                </div>
            </div>
    </div>
</div>

<style>
    
    @media (max-width: 800px) {

        html {
            width: 100vw;
            justify-content: center;
        }

        #container {
            width: 100vw !important;
            justify-content: center !important;
            align-items: center !important;
        }

        #main {
            display: flex !important;
            justify-content: center !important;
            align-items: center !important;
            width: 80vw !important;
            gap: unset !important;
        }

        #main-content {
            width: inherit !important;
            justify-content: center !important;
        }

        #image-container {
            justify-content: center !important;
            margin-top: 4vw;
        }

        #title-image {
            width: 40vw !important;
            height: auto !important;
            justify-self: center !important;
            box-shadow:
                    rgba(147, 147, 147, 0.4) 0 5px,
                    rgba(147, 147, 147, 0.3) 0 10px,
                    rgba(147, 147, 147, 0.2) 0 15px,
                    rgba(147, 147, 147, 0.1) 0 20px,
                    rgba(147, 147, 147, 0.05) 0 25px !important;
        }

        #title-container {
            max-width: 85vw !important;
            justify-self: center !important;
            justify-content: center !important;
            margin: 0 !important;
        }

        #connections-container {
            margin-left: 0 !important;
            margin-top: 3vw !important;
            width: 100% !important;
            justify-self: center !important;
        }

        .connection-btn{
            width: 20vw !important;
            height: 8vw !important;
            margin-right: 5% !important;
        }

        .connection-btn img {
            width: 4vw !important;
        }

        #title-head {
            justify-self: center !important;
            width: inherit !important;
            font-size: 1rem !important;
        }

        #description-para {
            justify-self: center !important;
            width: inherit !important;
            font-size: 0.9rem !important;
        }


    }
    
    #container {
        width: 100%;
        height: 100%;
    }

    #main {
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
        height: 100%;
        flex: 1;
        gap: 3rem;
        display: flex;
        flex-direction: row;
        justify-content: center;
        flex-wrap: wrap;
        position: relative;
    }

    #image-container {
        margin-left: 3%;
        display: flex;
        flex: 1;
        position: relative;
    }

    #title-image {
        width: 15vw;
        height: 20vw;
        border-radius: 2vw;
        box-shadow:
                rgba(147, 147, 147, 0.4) -5px 5px,
                rgba(147, 147, 147, 0.3) -10px 10px,
                rgba(147, 147, 147, 0.2) -15px 15px,
                rgba(147, 147, 147, 0.1) -20px 20px,
                rgba(147, 147, 147, 0.05) -25px 25px;
    }

    #title-container {
        max-height: 100%;
        flex: 1;
        max-width: 50%;
        margin-top: 5%;
        margin-right: 15%;
        text-align: center;
    }

    #title-head {
        font-size: clamp(0.5rem, 1.4rem, 1.4rem);
        font-weight: bold
    }

    #description-para {
        font-size: clamp(0.5rem, 1rem, 1rem);
        font-weight: lighter;
    }

    #connections-container {
        display: inline-flex;
        justify-content: space-evenly;
        margin-top: 1rem;
        width: 100%;
    }

    .connection-btn {
        margin-left: 1vw;
        width: 3vw;
        height: 2vw;
        border-radius: 5vw;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px,
                rgba(0, 0, 0, 0.09) 0 -3px 5px;
        justify-content: center;
        background: #323232;
    }

    .connection-btn:hover {
        transition: ease-in 0.2s;
        box-shadow:
                rgba(84, 84, 84, 0.25) 0 54px 55px,
                rgba(84, 84, 84, 0.12) 0 -12px 30px,
                rgba(84, 84, 84, 0.12) 0 4px 6px,
                rgba(84, 84, 84, 0.17) 0 12px 13px,
                rgba(84, 84, 84, 0.09) 0 -3px 5px;
    }

    .connection-btn img {
        margin-top: 0.4vw;
        width: 40%;
    }
</style>
