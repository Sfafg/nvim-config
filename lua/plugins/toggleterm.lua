return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 20, -- terminal height (for horizontal) or width (for vertical)
				open_mapping = [[<C-t>]], -- default toggle key
				direction = "horizontal", -- "horizontal", "vertical", "tab", "float"
				close_on_exit = true,
			})
		end,
	},
}
