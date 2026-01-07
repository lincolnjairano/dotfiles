local opt = vim.opt

-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Make line numbers default and relative
opt.number = true
opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
opt.showmode = false
-- Sync clipboard between OS and Neovim.
vim.schedule(function() opt.clipboard = 'unnamedplus' end)

-- Enable break indent
opt.breakindent = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = 'yes'

-- Decrease mapped sequence wait time
opt.timeoutlen = 1000

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Notice listchars is set using `opt` instead of `opt`.
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Code Styling
opt.tabstop = 2 -- How many spaces are shown per Tab
opt.shiftwidth = 2 -- Amount to indent with << and >>
opt.softtabstop = 2 -- How many spaces are applied when pressing Tab
opt.expandtab = true -- Convert tabs to spaces
opt.smarttab = true
opt.smartindent = true
opt.autoindent = true -- Keep identation from previous line
