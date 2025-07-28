<script>
    import Navbar from "$lib/Navbar.svelte";
</script>


<div id="container">
    <Navbar />

    <div id="main-container">
        <div id="main-content">
            <div id="contact-container">
                <h3>Want to contact me?</h3>
                <p>If so use one of these communication services to reach me!</p>

                <div id="contact-list">
                    <div class="contact-item">
                        <img src="email-icon.svg" alt="email-icon" />
                        <a href="mailto:fastskating12@gmail.com">fastskating12@gmail.com</a>
                    </div>

                    <div class="contact-item">
                        <img src="Discord-Symbol-White.svg" alt="email-icon" />
                        <p>anonymouslyfast</p>
                    </div>
                </div>
            </div>

            <div id="resume-container">
                <h3>Want to hire me?</h3>
                <p>If so use one of my contacts to reach me, and below is my redacted resume!</p>
                
                <div id="resume">
                    <a href="resume.png"><img src="resume.png" alt="Caleb Shearer's resume"></a>
                </div>
            </div>
        </div>
    </div>


</div>

<style>
    @view-transition {
        navigation: auto !important;

    }

    :global(body) {
        width: 100%;
        height: 100%;
        margin: 0;
        font-family: "Comfortaa", sans-serif;
        color: #cccccc;
        background: radial-gradient(circle 100vw at center, #323232 0%, #211b1b 100%);
    }


    @media (max-width: 800px) {
        #contact-container {
            width: 80% !important;
        }

        #resume-container {
            width: 80% !important;
        }

        .contact-item {
            width: 85% !important;
        }


        #resume {
            width: 80% !important;
        }

    }

    #main-container {
        margin-top: 4rem;
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
    }

    #main-content {
        width: inherit;
        height: inherit;
        display: flex;
        flex-direction: row;
        gap: 3rem;
        flex-wrap: wrap;
        justify-content: center;
    }

    #contact-container {
        width: 40%;
        height: 40%;
        text-align: center;
        display: flex;
        flex-direction: column;
        background: #323232;
        border-radius: 5vw;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px,
                rgba(0, 0, 0, 0.09) 0 -3px 5px;
    }

    #contact-list {
        width: 100%;
        height: auto;
        justify-items: center;
        margin-bottom: 2rem;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .contact-item {
        display: flex;
        width: 50%;
        height: 20%;
        padding: 1rem;
        margin-top: 1rem;
        border-radius: 5vw;
        align-items: center;
        box-shadow:
                rgba(29, 33, 40, 0.4) 0 0 0 2px,
                rgba(29, 33, 40, 0.65) 0 4px 6px -1px,
                rgba(255, 255, 255, 0.08) 0px 1px 0px inset;
    }

    .contact-item img {
        width: 10%;
        justify-self: flex-start !important;
    }

    .contact-item a, p {
        margin: 0;
        padding: 0;
        width: 100%;
        text-decoration: none;
        color: inherit;
        justify-self: flex-end;
    }

    #resume-container {
        width: 50%;
        text-align: center;
        background: #323232;
        border-radius: 5vw;
        display: flex;
        flex-direction: column;
        align-items: center;
        box-shadow:
                rgba(0, 0, 0, 0.25) 0 54px 55px,
                rgba(0, 0, 0, 0.12) 0 -12px 30px,
                rgba(0, 0, 0, 0.12) 0 4px 6px,
                rgba(0, 0, 0, 0.17) 0 12px 13px,
                rgba(0, 0, 0, 0.09) 0 -3px 5px;
    }


    #resume {
        margin-top: 2rem;
        border-radius: 3rem;
        padding: 2%;
        width: 70%;
        margin-bottom: 2rem;
        box-shadow:
                rgba(29, 33, 40, 0.4) 0 0 0 2px,
                rgba(29, 33, 40, 0.65) 0 4px 6px -1px,
                rgba(255, 255, 255, 0.08) 0px 1px 0px inset;
    }

    #resume img {
        width: 90%;
        border-radius: 2rem;
        box-shadow:
                rgba(29, 33, 40, 0.4) 0 0 0 2px,
                rgba(29, 33, 40, 0.65) 0 4px 6px -1px,
                rgba(255, 255, 255, 0.08) 0px 1px 0px inset;
    }

    #resume img:hover {
        transition: 0.3s;
        width: 95%;
    }



</style>
