return {
    "williamboman/mason.nvim",
    dependencies = { "jay-babu/mason-nvim-dap.nvim" },
    config = function()
        require("mason").setup()
        require("mason-nvim-dap").setup({
            ensure_installed = { "cppdbg" },
            automatic_installation = true,
        })
    end,
}
