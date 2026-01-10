return {
	"ggml-org/llama.vim",
	init = function()
		vim.g.llama_config = {
			show_info = 0,
			n_predict = 8,
			keymap_accept_full = "<C-Enter>",
			keymap_accept_line = "<C-S-Enter>",
			keymap_accept_word = "<C-b>",
		}
	end,
}
