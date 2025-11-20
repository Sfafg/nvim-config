require("custom")
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost" }, {
  pattern = "*",
  command = "silent! wall",
})
vim.api.nvim_create_autocmd({"FocusGained", "BufEnter"}, {command = "checktime"})
vim.api.nvim_create_autocmd("User", {
    pattern = "CMakeToolsLoaded",
    callback = function()
        vim.api.nvim_create_autocmd("DirChanged", {
          pattern = "*",
          callback = function()
              _G.init()
          end,
    })
    end,
})

if vim.g.neovide then
    vim.o.guifont = "JetBrainsMono Nerd Font Mono:h12"
    vim.g.neovide_opacity = 0.94
    vim.g.neovide_cursor_animation_length = 0.07
    vim.g.neovide_cursor_trail_size = 0
    vim.g.neovide_cursor_animate_in_insert_mode = false
    vim.g.neovide_cursor_animate_command_line = false

    vim.g.neovide_position_animation_length = 0.1
    vim.g.neovide_scroll_animation_length = 0.1
    vim.g.neovide_scroll_animation_far_lines = 0.1
    vim.g.neovide_frameless = true
end
