import adapter from '@sveltejs/adapter-node';

const config = {
	kit: {
		adapter: adapter(),
		paths: {
			base: '/personal-website'
		}
	}
};

export default config;
