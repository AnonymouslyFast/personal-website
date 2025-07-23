<script>
    import BackGround from "$lib/BackGround.svelte";
    import Navbar from "$lib/Navbar.svelte";
    import FloatingContainer from "$lib/FloatingContainer.svelte";
</script>

<BackGround />

<div id="container">
    <Navbar />

    <div id="main">
        <FloatingContainer>
            <div id="image-container">
                <img id="title-image" src="unformal-image.jpeg" alt="Unformal selfie of me (Caleb Shearer) visibly wearing glasses and a green shirt."/>
            </div>
            <div id="title-container">
                <h1 id="title">Hello, I'm Caleb Shearer</h1>
                <h3 id="description">I'm a high school senior planning to major in Computer Engineering or Computer Science. In the future I'm planning to become a game developer, and I'm working hard to get to that goal.</h3>
                <div id="connections-container">
                    <a href="https://github.com/AnonymouslyFast" class="connection-btn"><img src="github-mark.svg" alt="Github icon"></a>
                    <a href="https://www.youtube.com/@AnonymouslyFast" class="connection-btn"><img src="youtube-icon.svg" alt="Youtube icon"></a>
                    <a href="mailto:fastskating12@gmail.com" class="connection-btn"><img src="email-icon.svg" alt="Email icon"></a>
                </div>
            </div>
        </FloatingContainer>
    </div>

</div>

<style>
    #main {
        display: flex;
        flex-direction: column;
        width: 60vw;
        height: 60vh;
        justify-self: center;
        margin-top: 5vh;
    }

    #image-container {
        min-width: 0;
        min-height: 0;
        flex: 1;
        position: relative;
        top: 7vh;
        left: 3vw;
        width: 50vw;
        padding-left: 2vw;
    }

    #title-image {
        width: 30%;
        border-radius: 2vw;
        box-shadow:
                rgba(147, 147, 147, 0.4) -5px 5px,
                rgba(147, 147, 147, 0.3) -10px 10px,
                rgba(147, 147, 147, 0.2) -15px 15px,
                rgba(147, 147, 147, 0.1) -20px 20px,
                rgba(147, 147, 147, 0.05) -25px 25px;
    }

    #title-container {
        min-width: 0;
        min-height: 0;
        flex: 2;
        width: 50%;
        position: relative;
        top: -27vh;
        left: 25vw;
        text-align: center;
    }

    #title {
        font-size: clamp(1rem, 3vw, 1.5rem);
        font-weight: bold
    }

    #description {
        font-size: clamp(0.5rem, 1.5vw, 1rem);
        font-weight: lighter;
    }

    #connections-container {
        display: inline-flex;
        justify-content: space-evenly;
        margin-top: 3vh;
        width: 100%;
    }

    .connection-btn {
        width: 4vw;
        height: 5vh;
        border-radius: 5vw;
        box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
        justify-content: center;
        background: #323232;
    }

    .connection-btn:hover {
        transition: ease-in 0.2s;
        box-shadow: rgba(84, 84, 84, 0.25) 0px 54px 55px, rgba(84, 84, 84, 0.12) 0px -12px 30px, rgba(84, 84, 84, 0.12) 0px 4px 6px, rgba(84, 84, 84, 0.17) 0px 12px 13px, rgba(84, 84, 84, 0.09) 0px -3px 5px;
    }

    .connection-btn img {
        width: 30%;
        margin-top: 1vh;
    }

</style>



