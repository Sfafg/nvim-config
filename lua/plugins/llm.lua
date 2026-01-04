return {
	"huggingface/llm.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
	config = function()
		local llm = require("llm")

		llm.setup({
			api_token = nil, -- not needed for local models
			model = "/home/slawek/Downloads/llama.cpp/models/qwen2.5-3b-instruct-q4_k_m.gguf", -- local model filename
			backend = "llamacpp", -- local Ollama backend
			url = "http://127.0.0.1:8081", -- REST API endpoint of the local server
			tokens_to_clear = { "<|endoftext|>" }, -- remove unwanted tokens
			request_body = { -- parameters for generation
				parameters = {
					max_new_tokens = 60,
					temperature = 0.2,
					top_p = 0.95,
				},
			},
			fim = { -- fill-in-the-middle support
				enabled = true,
				prefix = "<fim_prefix>",
				middle = "<fim_middle>",
				suffix = "<fim_suffix>",
			},
			debounce_ms = 150,
			accept_keymap = "<Tab>", -- accept inline suggestion
			dismiss_keymap = "<S-Tab>", -- dismiss suggestion
			tls_skip_verify_insecure = false,
			lsp = { -- LLM-LS settings (optional)
				bin_path = nil,
				host = nil,
				port = nil,
				cmd_env = nil,
				version = "0.5.3",
			},
			tokenizer = nil,
			context_window = 1024, -- max tokens in context
			enable_suggestions_on_startup = true, -- show inline suggestions automatically
			enable_suggestions_on_files = "*", -- all files
			disable_url_path_completion = false,
		})
	end,
}
