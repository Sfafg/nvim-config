vim.g.mapleader = " "
vim.keymap.set("n", "<leader>v", "Vyp")

vim.keymap.set("n", "<Tab>", ":bprev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", ":bnext<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>j", ":cnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", ":cprev<CR>", { noremap = true, silent = true })

vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")

vim.keymap.set("n", "<C-v>", '"+p', { noremap = true, silent = true })
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.keymap.set("v", "<C-v>", '"+p', { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":w!<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>ss", ":SessionSearch<CR>", { noremap = true, silent = true })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
