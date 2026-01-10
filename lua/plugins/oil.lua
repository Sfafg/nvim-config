return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			skip_confirm_for_simple_edits = false,
		})
		vim.keymap.set("n", "<leader>ff", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}
