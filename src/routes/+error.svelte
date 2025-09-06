<script>
    export let error;
</script>


<div id="container">
    <h2>{error?.status ?? "NULL"}</h2>
    <hr>
    <p>{error?.message ?? "Something went wrong!"}</p>

    <a href="../">Okay</a>
</div>

<div id="copyright">
    © 2025 Caleb Shearer. All rights reserved.
</div>

<style>

    #copyright{
        width: 100%;
        text-align: center;
        position: absolute;
        bottom: 2%;
        font-size: 0.7rem;
    }

    :global(html),
    :global(body) {
        margin: 0;
        height: 100%;
        background: radial-gradient(circle 100vw at center, #323232 0%, #211b1b 100%);
        color: #cccccc;
        font-family: "Comfortaa", sans-serif;
    }

    /* Paint the gradient as a fixed layer behind everything */
    :global(body)::before {
        content: "";
        position: fixed;
        inset: 0;
        z-index: -1;
        pointer-events: none;
        background: radial-gradient(circle 100vw at center, #323232 0%, #211b1b 100%);
    }

    body {
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    #container {
        position: absolute;
        top: 25%;
        width: fit-content;
        height: auto;
        justify-self: center;
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    h2 {
        font-size: 4rem;
        margin-bottom: 0;
        font-weight: bolder;
        padding: 0;
    }

    hr {
        margin-top: -0.5%;
        width: 100%;
    }

    p {
        padding: 0;
        margin-top: 0.5rem;
        font-size: 1rem;
        margin-bottom: 3rem;
        max-width: 80%;
        font-weight: lighter;
    }

    a {
        text-decoration: none;
        color: inherit;
        background: #424242;
        padding: 1rem 4rem;
        border-radius: 2vw;
        backdrop-filter: blur(5px);
        &:hover {
            scale: 98%;
        }
        &:active {
            scale: 95%;
        }
    }


</style>