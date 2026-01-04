return {
    "terrortylor/nvim-comment",
    config = function()
        require("nvim_comment").setup({
            marker_padding = true,
            comment_empty = false,
            comment_empty_trim_whitespace = true,
            create_mappings = true,
            line_mapping = "gcc",
            operator_mapping = "gc",
            comment_chunk_textobject = "ic",
            hook = function()
                if vim.bo.filetype == "cpp" then
                    vim.bo.commentstring = "// %s"
                end
            end,
        })
    end,
}
