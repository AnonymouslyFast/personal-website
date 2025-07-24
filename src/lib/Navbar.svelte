<script>
    import { page } from '$app/state';
    import { base } from '$app/paths';
</script>

<style>
    @media (max-width: 800px) {
        #navbar {
            width: 100vw !important;
            height: auto !important;
        }

        .nav-item {
            width: 30vw !important;
        }

        .nav-item p {
            width: 100% !important;
            font-size: 0.8rem !important;
            height: 100% !important;
            align-self: center;
        }
    }

     #navbar {
         margin-top: 2vh;
         width: 50vw;
         height: 4vw;
         padding-left: 2vw;
         padding-right: 2vw;
         display: inline-flex;
         justify-items: center;
         justify-content: space-evenly;
     }

     .active {
         box-shadow: rgba(0, 0, 0, 0.4) 0 2px 4px, rgba(0, 0, 0, 0.3) 0 7px 13px -3px, rgba(0, 0, 0, 0.2) 0 -3px 0 inset;
     }

     .nav-item {
         font-size: 1.4vw;
         width: 28%;
         background: #424242;
         backdrop-filter: blur(5px);
         border-radius: 2vw;
     }

     .nav-item:hover {
         transition: ease-in 0.2s;
         box-shadow: rgba(0, 0, 0, 0.4) 0 2px 4px, rgba(0, 0, 0, 0.3) 0 7px 13px -3px, rgba(0, 0, 0, 0.2) 0 -3px 0 inset;
     }

     a {
         text-decoration: none;
         color: inherit;
     }

     .nav-item p {
         text-align: center;
     }
</style>


<nav style="justify-self: center;">
    <div id="navbar">
        <a class="nav-item" class:active={'.' +page.url.pathname === base + '/'} href='{base}/'><p>Home</p></a>
        <a class="nav-item" class:active={'.' + page.url.pathname === base + '/projects'} href='{base}/projects'><p>Projects</p></a>
        <a class="nav-item" class:active={'.' + page.url.pathname === base + '/commissions'} href='{base}/commissions'><p>Commissions</p></a>
    </div>
</nav>
