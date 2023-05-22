vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Recommended settings by NvimTree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- "" for Normal, Visual, Select, Operator-pending mode
-- “n” for Normal mode
-- “v” for Visual and Select mode
-- “s” for Select mode
-- “x” for Visual mode
-- “o” for Operator-pending mode
-- “i” for Insert mode
-- “t” for Terminal mode
-- “!” for Insert Insert and Command-line mode

local map = vim.keymap.set

local opts = { noremap = true, silent = true }

map("n", "<leader>qq", "<CMD>quit<CR>", { desc = "Quit", noremap = true, silent = true })
map("n", "<leader>w", "<CMD>write<CR>", { desc = "Write/save", noremap = true, silent = true })
map("n", "<leader>h", "<CMD>nohlsearch<CR>", { desc = "nohlsearch", noremap = true, silent = true })
map("n", "<leader>c", "<CMD>bdelete<CR>", { desc = "Close buffer", noremap = true, silent = true })

-- Move between windows
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Move between buffers
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)


map("v", "p", '"_dP', opts)
