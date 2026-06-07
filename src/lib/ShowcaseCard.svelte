<script>
    let {name = "Undefinded", description = "A simple, yet weird description.", onToggle} = $props();
</script>

<div class="container">
    <div class="content">
        <h4>{name}</h4>
        <p>{description}</p>
        <div class="button-container">
            <button onclick={() => onToggle(name)}>
                Explore
            </button>
        </div>
    </div>
</div>


<style>
    .container {
        width: 30%;
        height: 90%;
        background-color: var(--color-bg-card);
        border: 1px solid var(--color-border);
        border-radius: 1vw;
        box-shadow: var(--shadow-card);
        flex-shrink: 0;

        display: flex;
        flex-direction: column;
        overflow: hidden;
    }

    .container .content {
        width: 100%;
        height: 100%;
        display: grid;
        grid-template-rows: auto 0.8fr auto;

        h4 {
            padding: 1rem;
            margin: 0;
            border-bottom: 1px solid var(--color-border);
            display: flex;
            align-items: center;
        }

        p {
            overflow-y: auto;
            overflow-x: hidden;
            padding: 0.5rem 0.5rem 1rem 1rem;
            overflow-wrap: break-word;
        }
    }

    .button-container {
        width: 100%;
        height: 100%;
        border-top: 1px solid var(--color-border);

        display: flex;
        justify-content: center;
        align-items: center;

        button {
            width: 50%;
            height: 70%;
            background-color: var(--btn-ghost-bg);
            border-radius: 0.5vw;
            border: 1px solid var(--btn-ghost-border);
            color: var(--btn-ghost-text);
        }

        button:hover {
            background-color: var(--btn-ghost-bg-hover);
            width: 45%;
            transition: ease-in-out 0.2s;
            cursor: pointer;
        }

        button:active {
            height: 60%;
        }
    }
</style>