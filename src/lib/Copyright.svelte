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
           display: flex;
           width: 100%;
           margin-top: 1rem;
           justify-content: center;
           align-content: center;
           font-size: small;
           padding: 1rem;
           grid-area: footer;
       }
   }
</style>