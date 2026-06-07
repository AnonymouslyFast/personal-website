<script lang="ts">
    import Navbar from "$lib/Navbar.svelte";
    import Copyright from "$lib/Copyright.svelte";
    import ShowcaseCard from "$lib/ShowcaseCard.svelte";
    import { showcases } from "$lib/showcases";
    import {page} from "$app/state";
    import {goto} from "$app/navigation";

    let selected = $derived(page.url.searchParams.get('selected'));
    let showcase = $derived(showcases.find(s => s.name === selected));
    let ActiveComponent = $derived(showcase?.component);


    let isToggled: boolean = $derived(selected !== null);

    function toggle(name: string) {
        if (showcases.find(s => s.name === name) === undefined) return;
        goto(`?selected=${encodeURIComponent(name)}`)
        isToggled = !isToggled;
    }
</script>


<Navbar/>

<div class="card-container">
    <div class="card">
        <!-- Content of the selected showcase -->
        <div class="card-back">
            <div class="card-back-content">
                {#if showcase}
                    <ActiveComponent />
                {/if}
            </div>
        </div>

        <!-- Showcase Browse -->
        <div class:slide-up={isToggled} class="card-forward">
            <div class="content">
                <div class="top">
                   <div class="left">
                       <h1>Showcase Browser</h1>
                   </div>
                    <div class="right">
                        <p>Select a showcase to begin exploring!</p>
                    </div>
                </div>

                <div class="showcases-container">
                    <div class="showcases-list">
                        {#each showcases as showcase}
                            <ShowcaseCard
                                   name={showcase.name}
                                   description={showcase.description}
                                   onToggle={() => toggle(showcase.name)}
                            />
                        {/each}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<Copyright/>

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
        position: relative;
        width: 60vw;
        height: 60vh;
        background-color: var(--color-bg-subtle);
        border-radius: 1vw;
        box-shadow: var(--shadow-card);
        overflow: auto;
        overflow-x: hidden;
        scrollbar-width: auto;
        scrollbar-color: var(--color-border) var(--color-bg-page);
    }

    .card-forward {
        position: relative;
        width: 100%;
        height: inherit;

        display: flex;

        overflow: hidden;

        background-color: var(--color-bg-card);
        transition:  height 0.5s cubic-bezier(0.4, 0, 0.2, 1);

        &.slide-up {
            height: 0;
        }
    }

    .card-forward .content {
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
       .top {
           display: grid;
           grid-template-columns: 40% auto;
           padding: 1rem;
           width: 100%;
           height: fit-content;
           border-bottom: 3px solid var(--color-border);

           .left {
               width: inherit;
               display: flex;
               justify-content: center;
               align-items: center;
               border-right: 1px solid var(--color-border);
           }

           .right {
               width: inherit;
               display: flex;
               justify-content: center;
               align-items: center;
               color: var(--color-text-muted);
               font-size: larger;

           }

       }
    }

    .showcases-container {
        width: 100%;
        height: 80%;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;

        .showcases-list {
            width: 90%;
            height: 70%;
            display: flex;
            flex-direction: row;
            flex-wrap: nowrap;

            gap: 3rem;
            overflow-x: auto;
            overflow-y: hidden;

            align-items: center;
            padding: 2rem;
            background-color: var(--color-bg-subtle);
            border-radius: 0.5vw;
            border: 2px solid var(--color-border);

            scrollbar-width: thin;
            scrollbar-color: var(--color-border-subtle) var(--color-bg-page);


        }
    }



    .card-back {
        position: absolute;
        top: 0; right: 0; bottom: 0; left: 0;
        width: 100%;

    }

    .card-back-content {
        margin: 1rem;
        width: 100%;
        height: 95%;
        overflow: scroll;
        overflow-x: hidden;
        overflow-y: auto;
        scrollbar-width: thin;
        scrollbar-color: var(--color-border) var(--color-bg-page);
    }

    /* ====== Mobile Support ====== */

    @media (max-width: 900px) {
        .card {
            width: 90%;
            height: 85%;
        }

        .card-forward {
            position: relative;
            width: 100%;
            height: 100%    ;

            display: flex;

            overflow: hidden;

            background-color: var(--color-bg-card);
            transition:  height 0.5s cubic-bezier(0.4, 0, 0.2, 1);

            &.slide-up {
                height: 0;
            }
        }

        .card-forward .content {
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            .top {
                display: grid;
                grid-template-columns: unset;
                grid-template-rows: auto auto;
                padding: 1rem;
                width: 100%;
                height: fit-content;
                border-bottom: 3px solid var(--color-border);

                .left {
                    width: 100%;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    border-right: none;
                    border-bottom: 1px solid var(--color-border);
                }

                .right {
                    width: 100%;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    color: var(--color-text-muted);
                    font-size: medium;

                }

            }
        }

        .showcases-container {
            width: 100%;
            height: 70%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;

            .showcases-list {
                width: 75%;
                height: 70%;
                display: flex;
                flex-direction: row;
                flex-wrap: nowrap;

                gap: 3rem;
                overflow-x: auto;
                overflow-y: hidden;

                align-items: center;
                padding: 2rem;
                background-color: var(--color-bg-subtle);
                border-radius: 0.5vw;
                border: 2px solid var(--color-border);

                scrollbar-width: thin;
                scrollbar-color: var(--color-border-subtle) var(--color-bg-page);


            }
        }



        .card-back {
            position: absolute;
            top: 0; right: 0; bottom: 0; left: 0;
            width: 100%;

        }

        .card-back-content {
            margin: 1rem;
            width: 100%;
            height: 95%;
            overflow: scroll;
            overflow-x: hidden;
            overflow-y: auto;
            scrollbar-width: thin;
            scrollbar-color: var(--color-border) var(--color-bg-page);
        }
    }

    /* ====== Mobile Support ====== */


</style>