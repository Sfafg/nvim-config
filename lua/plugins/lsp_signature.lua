return {
    "ray-x/lsp_signature.nvim",
    config = function()
        require('lsp_signature').on_attach({
            bind = true,
            handler_opts = {
                border = "rounded",
            },
        })
    end,
}
