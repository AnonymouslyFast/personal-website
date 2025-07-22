<script>
    import { page } from '$app/stores';
    $: current = $page.url.pathname;
    import { base } from '$app/paths';
</script>

<style>
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
         box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
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
         box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
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
        <a class="nav-item" class:active={current === '${base}/'} href="{base}/"><p>Home</p></a>
        <a class="nav-item" class:active={current === '${base}/projects'} href="{base}/projects"><p>Projects</p></a>
        <a class="nav-item" class:active={current === '${base}/commissions'} href="{base}/commissions"><p>Commissions</p></a>
    </div>
</nav>