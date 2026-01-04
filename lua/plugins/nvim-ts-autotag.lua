return {
	"windwp/nvim-ts-autotag",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	ft = { "javascriptreact", "typescriptreact", "javascript", "typescript", "jsx", "tsx" },
	opts = {
		filetypes = {
			"html",
			"javascript",
			"typescript",
			"javascriptreact",
			"typescriptreact",
			"jsx",
			"tsx",
			"svelte",
			"vue",
			"rescript",
			"xml",
			"php",
			"markdown",
		},
	},
	config = function(_, opts)
		require("nvim-ts-autotag").setup(opts)
	end,
}
