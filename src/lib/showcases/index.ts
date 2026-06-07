import Navbar from "$lib/Navbar.svelte";
import LunarDiscordShowCase from "$lib/showcases/LunarDiscordShowCase.svelte";
import PersonalWebsiteShowcase from "$lib/showcases/PersonalWebsiteShowcase.svelte";
import EcoZeroServerShowcase from "$lib/showcases/EcoZeroServerShowcase.svelte";

export const showcases = [
    {
        name: "Personal Website",
        description: "The website you're viewing right now! Went through two redesigns until I fell upon this design!" +
            " Website is hosted on my bare metal server, and the code is all on my github.",
        categories: "web",
        component: PersonalWebsiteShowcase,
    },
    {
        name: "LunarDiscord",
        description: "Minecraft plugin for paper 1.21+ servers. Introduces Discord to Minecraft account linkage, and rewards.",
        categories: "Minecraft",
        component: LunarDiscordShowCase
    },
    {
        name: "EcoZero",
        description: "Minecraft server that I am actively developing to be a unqiue Minehut Skymine server",
        categories: "Minecraft",
        component: EcoZeroServerShowcase
    }

];