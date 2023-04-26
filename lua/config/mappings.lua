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

function map(mode, key_comb, command, opts)
  vim.keymap.set(mode, key_comb, command, opts)
end

local opts = { noremap = true, silent = true }

map("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)
