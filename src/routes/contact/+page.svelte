<script lang="ts">
    import Navbar from "$lib/Navbar.svelte";
    import Copyright from "$lib/Copyright.svelte";

    let isHidden: boolean = false;

    function submitForm() : void {
        let form: HTMLFormElement | null = document.getElementById("form");
        if (form == null) return;
        const formData = new FormData(form);
        let subject = formData.get("subject");
        let body = formData.get("body");

        let url = "mailto:caleb@anonymouslyfast.com?subject=" + subject + "&body=" + body;
        open(url, "_blank");
        alert("Success! Mailto link:" + url);
    }
</script>

<Navbar />

<div class="card-container">
    <div class="card">

        <div class="contact-form-container">
            <div class="contact-form-content">
                <h2>Procure an Email</h2>
                <h4>Create an email to send!</h4>

                <div class="form-container">
                    <form id="form" on:submit={submitForm}>
                        <label>
                            Subject
                            <input  name="subject" type="text" placeholder="Question About Your Website" required />
                        </label>

                        <label>
                            Body
                            <textarea id="body" name="body" placeholder="Hey Caleb, how did you make this awesome site?"  required></textarea>
                        </label>

                        <button type="submit">Send Email</button>
                    </form>
                </div>

            </div>
        </div>

        <div class:slide-out={isHidden} class="contact-information">
            <div class="title">
                <h2>Let's Connect</h2>
                <h4>Want to chat? I'd love to hear from you!</h4>
            </div>

            <div class="info">
                <div class="info-item">
                    <span>
                        <img src="Discord-Symbol-White.svg" alt="Discord Logo (White)"/>
                        <p>anonymouslyfast</p>
                    </span>
                </div>
                <div class="info-item">
                    <span>
                        <img src="email-icon.svg" alt="Email Logo (Email)"/>
                        <p>caleb@anonymouslyfast.com</p>
                    </span>
                </div>
            </div>

            <button class="info-button" type="button" on:click={() => isHidden = !isHidden}>
                Procure an email
            </button>
        </div>
    </div>
</div>

<Copyright />

<style>
    .card-container {
        width: 100vw;
        height: 80vh;
        display: flex;
        grid-area: content;
        justify-content: center;
        align-items: center;
    }

    .card {
        position: relative;        /* ← changed */
        width: 60vw;
        height: 60vh;
        background-color: var(--color-bg-subtle);
        border-radius: 1vw;
        box-shadow: var(--shadow-card);
        overflow: hidden;          /* ← added */
    }

    /* Panel B — always fills the card, sits behind */
    .contact-form-container {
        position: absolute;        /* ← changed */
        top: 0; right: 0; bottom: 0; left: 0;
        display: grid;
        width: 100%;
        grid-template-columns: 40% auto;
    }

    .contact-form-content {
        grid-column: 2;
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;

        h2 {
            font-size: xxx-large;
            padding-bottom: 0;
            margin-bottom: 1rem;
        }
        h4 {
            margin: 0;
            padding: 0;
            font-size: 1rem;
            color: var(--color-text-muted);
            font-weight: lighter;
        }


    }

    .form-container {
        width: 100%;
        height: 80%;
        display: flex;
        justify-content: center;
        align-items: center;
        form {
            width: 80%;
            display: flex;
            flex-direction: column;
            border-radius: 0.5vw;
            border: 1px solid var(--color-border);
            padding: 1rem;
            align-items: center;
            justify-content: center;
            gap: 2rem;

            label {
                display: flex;
                flex-direction: column;
                width: 100%;
                font-family: inherit;

                gap: 0.5rem;


                input {
                    height: 2rem;
                    text-box: text;
                    background-color: var(--color-bg-subtle);
                    border: 1px solid var(--color-border);
                    color: var(--color-text-primary);
                    font-size: medium;
                }

                textarea {
                    height: 5rem;
                    width: 100%;
                    resize: none;
                    background-color: var(--color-bg-subtle);
                    border: 1px solid var(--color-border);
                    color: var(--color-text-primary);
                    font-size: medium;
                }

            }

            button {
                background-color: var(--btn-ghost-bg);
                border: 1px solid var(--btn-ghost-border);
                border-radius: 0.5vw;
                color: var(--btn-ghost-text);
                padding: 1rem;
            }

            button:hover {
                background-color: var(--btn-ghost-bg-hover);
                cursor: pointer;
            }

        }
    }

    /* Panel A — sits on top, slides left on toggle */
    .contact-information {
        position: relative;        /* ← added */
        z-index: 2;                /* ← added */
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        border-radius: 1vw;
        overflow: hidden;
        flex-shrink: 0;
        background-color: var(--color-bg-card);  /* ← add so it truly covers */
        border-right: 1px solid var(--color-border);

        transition: width 0.5s cubic-bezier(0.4, 0, 0.2, 1);

        .title {
            text-align: center;
            h2 {
                font-size: xxx-large;
                padding-bottom: 0;
                margin-bottom: 1rem;
            }
            h4 {
                margin: 0;
                padding: 0;
                font-size: 1rem;
                color: var(--color-text-muted);
                font-weight: lighter;
            }
        }
    }

    .contact-information.slide-out {
        width: 40%;
    }

    .info {
        width: 100%;
        height: 50%;
        display: flex;
        flex-direction: column;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        gap: 1.5rem;

        .info-item {
            width: 20vw;
            height: fit-content;
            display: flex;
            flex-direction: row;
            flex-wrap: nowrap;
            border: 1px solid var(--color-border);
            border-radius: 0.5vw;
            padding: 0.5rem;

            span {
                flex: 1;
                display: inline-flex;
                align-items: center;
                font-size: 0.9cqw;

                img {
                    width: 2rem;
                    padding: 1rem;
                    border-right: 1px solid var(--color-border);
                }

                p {
                    width: 100%;
                    justify-self: center;
                    text-align: center;
                }
            }
        }
    }

    .info-button {
        display: flex;
        align-self: center;
        border-radius: 0.5vw;
        width: 15vw;
        padding: 1rem;
        justify-content: center;
        background-color: var(--btn-secondary-bg);
        border: 1px solid var(--btn-secondary-border);
        color: var(--btn-secondary-text);
        box-shadow: var(--shadow-card);
    }

    .info-button:hover {
        background-color: var(--btn-secondary-hover-bg);
        cursor: pointer;
    }
</style>
