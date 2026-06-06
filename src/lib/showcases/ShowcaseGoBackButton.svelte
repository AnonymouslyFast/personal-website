<script>
    import {goto} from "$app/navigation";
</script>

<div class="container">
    <button onclick={() => goto('?')}>
        Go Back
    </button>
</div>


<style>
    .container{
        width: 100%;
        height: 10%;
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        flex-shrink: 0;
        margin-top: 3rem;
    }

    .container button {
        width: 20%;
        height: 100%;
        background-color: var(--btn-ghost-bg);
        border: 1px solid var(--btn-ghost-border);
        border-radius: 0.5vw;
        color: var(--btn-ghost-text);
    }

    .container button:hover {
        background-color: var(--btn-ghost-bg-hover);
        cursor: pointer;
    }
</style>
