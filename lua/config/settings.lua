-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showcmd = true
vim.opt.ruler = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.wrap = false
vim.opt.backspace = "indent,eol,start"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.showtabline = 2  -- Always show tabline


-- Folding settings
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldlevel = 99
-- vim.opt.foldlevelstart = 99
-- vim.opt.foldnestmax = 10
-- vim.opt.foldminlines = 3  -- Increased from 1 to avoid small folds
-- vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"

-- OPTION 2: OR Use manual folding (simpler)
vim.opt.foldmethod = "manual"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- Load folding config
require("config.folding").setup()