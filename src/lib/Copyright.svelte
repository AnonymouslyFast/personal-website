<script>
    const year = new Date().getFullYear();
</script>

<footer>
    © {year} Caleb Shearer. All rights reserved.
</footer>

<style>
   footer {
       justify-self: center;
       align-self: center;
       font-size: small;
       padding: 1rem;
       grid-area: footer;
   }

   @media (max-width: 900px) {
       footer {
           margin-top: 1rem;
           justify-self: center;
           align-self: center;
           font-size: small;
           padding: 1rem;
           grid-area: footer;
       }
   }
</style>