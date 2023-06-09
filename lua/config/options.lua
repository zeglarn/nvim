-- This file is automatically loaded by plugins.config

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.backup = false                          -- creates a backup file
opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
opt.conceallevel = 0                        -- so that `` is visible in markdown files
opt.fileencoding = "utf-8"                  -- the encoding written to a file
opt.hlsearch = true                         -- highlight all matches on previous search pattern
opt.ignorecase = true                       -- ignore case in search patterns
opt.mouse = "a"                             -- allow the mouse to be used in neovim
opt.showtabline = 0                         -- always show tabs
opt.splitbelow = true                       -- force all horizontal splits to go below current window
opt.splitright = true                       -- force all vertical splits to go to the right of current window
opt.swapfile = false                        -- creates a swapfile
opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
opt.undofile = true                         -- enable persistent undo
opt.updatetime = 300                        -- faster completion (4000ms default)
opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.number = true                           -- set numbered lines
opt.laststatus = 3                          -- only the last window will always have a status line
opt.showcmd = false                         -- hide (partial) command in the last line of the screen (for performance)
opt.ruler = false                           -- hide the line and column number of the cursor position
opt.numberwidth = 4                         -- minimal number of columns to use for the line number {default 4}
opt.scrolloff = 8                           -- minimal number of screen lines to keep above and below the cursor
opt.sidescrolloff = 8                       -- minimal number of screen columns to keep to the left and right of the cursor if wrap is `false`
opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
opt.fillchars.eob=" "                       -- show empty lines at the end of a buffer as ` ` {default `~`}
opt.whichwrap:append("<,>,[,],h,l")         -- keys allowed to move to the previous/next line when the beginning/end of line is reached
opt.iskeyword:append("-")                   -- treats words with `-` as single words
opt.formatoptions:remove({ "c", "r", "o" }) -- This is a sequence of letters which describes how automatic formatting is to be done
opt.linebreak = true

opt.autowrite = true -- Enable auto write
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.completeopt = {"menu","menuone","noselect"}
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = true -- Use spaces instead of tabs
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.inccommand = "nosplit" -- preview incremental substitute
opt.list = true -- Show some invisible characters (tabs...
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.relativenumber = false -- Relative line numbers
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.shortmess:append { W = true, I = true, c = true }
opt.showmode = false -- Dont show mode since we have a statusline
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.undolevels = 10000
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap

if vim.fn.has("nvim-0.9.0") == 1 then
  opt.splitkeep = "screen"
  opt.shortmess:append { C = true }
end

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0
