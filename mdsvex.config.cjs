const path = require("path");


const person_layout = path.join(__dirname, "./src/components/Person.svelte");


module.exports = {
	extensions: [".svx", ".md"],
	smartypants: {
		dashes: "oldschool",
	},
	layout: {
		person: person_layout,
	},
	remarkPlugins: [
		// [require("remark-github"), {
		// 	repository: "https://github.com/svelte-add/mdsvex.git", // (use your own repository)
		// }],
		// require("remark-abbr"),
	],
	rehypePlugins: [
		// require("rehype-slug"),
		// [require("rehype-autolink-headings"), {
		// 	behavior: "wrap",
		// }],
	],
};
