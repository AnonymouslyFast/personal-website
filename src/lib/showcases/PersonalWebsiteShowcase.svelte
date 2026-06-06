<script>
    import '$lib/styles/showcase-styles.css'
    import ShowcaseGoBackButton from "$lib/showcases/ShowcaseGoBackButton.svelte";
</script>

<div class="back-card-content-container">
    <div class="header">
        <h1>Personal Website</h1>
        <h2>Website</h2>
    </div>

    <div class="content">
        <h4>
            Introduction
        </h4>
        <p>
            This is the current website you're viewing! I started coding websites back in 2024 when I was 14, and even
            though I don't plan to continue with website development for my career it was a nice learning experience.
            This website shows my current skills, and I hope you enjoy this little haven I built for myself.
        </p>

        <h4>
            Specifics
        </h4>
        <p>
            I am currently hosting this on my Ubuntu bare-metal home server. I originally built this in summer of 2025,
            but refactored and changed up design in the summer of 2026. All code for this is plubic, and avalible on my
            github <a href="https://github.com/AnonymouslyFast/personal-website/" target="_blank">https://github.com/AnonymouslyFast/personal-website/</a>.

        </p>
    </div>

    <ShowcaseGoBackButton/>
</div>