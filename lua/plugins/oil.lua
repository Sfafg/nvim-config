return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			skip_confirm_for_simple_edits = false,
			prompt_save_on_select_new_entry = false,
			watch_for_changes = true,
			view_options = {
				show_hidden = false,
				is_hidden_file = function(name, bufnr)
					local m = name:match("^%.")
					return m ~= nil
				end,
				natural_order = "fast",
				case_insensitive = false,
				sort = {
					{ "type", "asc" },
					{ "name", "asc" },
				},
				highlight_filename = function(entry, is_hidden, is_link_target, is_link_orphan)
					return nil
				end,
			},
			keymaps = {
				["<CR>"] = "actions.select",
				["-"] = { "actions.parent", mode = "n" },
				["_"] = { "actions.open_cwd", mode = "n" },
				["gx"] = "actions.open_external",
				["g."] = { "actions.toggle_hidden", mode = "n" },
				["g\\"] = { "actions.toggle_trash", mode = "n" },
			},
			use_default_keymaps = false,
		})
		vim.keymap.set("n", "<leader>ff", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}
