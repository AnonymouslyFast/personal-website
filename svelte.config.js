import adapter from '@sveltejs/adapter-static';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	kit: {
		adapter: adapter({
			fallback: undefined, // TODO: Change to a file path once made.
		})
	},

	path: {
		base: "/personal-website"
	}
};

export default config;
