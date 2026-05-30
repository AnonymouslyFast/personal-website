<script>
    import { page } from '$app/state';
    import { base } from '$app/paths';
</script>

<div id="container">
    <div id="navbar">
        <a class="nav-item" class:active={page.url.pathname === base + '/'} href='{base}/'><p>Home</p></a>
        <a class="nav-item" class:active={page.url.pathname === base + '/projects'} href='{base}/projects'><p>Projects</p></a>
        <a class="nav-item school-btn" class:active={page.url.pathname.includes("/education")} href='{base}/education'><p>Education</p></a>
        <a class="nav-item" class:active={page.url.pathname === base + '/contact'} href='{base}/contact'><p>Contact</p></a>
    </div>
</div>

<style>

    #container {
        width: 100vw;
        height: fit-content;
        display: flex;
        justify-content: center;
        margin: 0;
        padding: 0;
        z-index: 0;
    }

     #navbar {
         margin-top: 2vh;
         width: 50vw;
         height: fit-content;
         display: inline-flex;
         gap: 1rem;
         justify-content: space-evenly;
         grid-area: nav;
     }

    .nav-item {
        font-size: 1.4vw;
        width: 25%;
        background: var(--btn-secondary-bg);
        box-shadow: var(--shadow-card);
        color: var(--btn-secondary-text);
        border-radius: var(--btn-border-radius);
        text-align: center;
    }

    a {
        text-decoration: none;
        color: inherit;
    }

     .active {
         background-color: var(--btn-secondary-bg-hover);
     }

     .nav-item:hover {
         transition: ease-in 0.2s;
         background-color: var(--btn-secondary-bg-hover);
     }

</style>



