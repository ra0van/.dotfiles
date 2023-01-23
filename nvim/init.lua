-- Configuration Sections 
-- Defaults
-- Global options
-- Autocommands
-- Packages are loaded. The list of packages is in lua/pkgs & & each 
-- package can have their config in lua/pkg/<pkg_name>. 
-- Statusline.

-- Better defaults
local opt = vim.opt

opt.title = true -- report window title
opt.textwidth = 120
opt.wrap = false
opt.hidden = true -- prevent buffers from getting lost when closed
opt.cursorline = true -- show the current line number highlighted for the cursor
opt.termguicolors = true
opt.updatetime = 10 -- time to wait before updating things (typically, gutter / diagnostics ) -- TODO : Understand this better
opt.expandtab = false
opt.swapfile = false
opt.mouse = 'nvi' -- mouse support (normal, visual, insert)
opt.showmode = false -- disable show mode, as we use the colorscheme to show it
opt.ruler = true -- show the ruler
opt.inccommand = 'nosplit' -- do not split and show matches when searching
opt.fillchars = 'vert:│' -- various fill chars
opt.timeout = false
opt.timeoutlen = 0
opt.completeopt = 'menuone,noselect' -- completions options
opt.shortmess = 'filmxoOstTIc' -- it really is a mess

-- Number of screen lines to keep above and below the cursor
opt.scrolloff = 10

-- Editor UI
opt.tabstop = 4
opt.number = true
opt.numberwidth = 5
opt.relativenumber = true
opt.shiftwidth = 2 -- indentation level
opt.shiftwidth = 2
opt.ignorecase = true
opt.smartcase = true
opt.virtualedit = 'onemore'
opt.laststatus = 3
opt.cindent = true
opt.softtabstop = -1 -- If negatvie, shiftwidth value is used
opt.list = true
--
-- Remember 50 items in commandline history
opt.history = 50

-- Makes neovim and os clipboard nice with each other
opt.clipboard = 'unnamedplus'

-- Better folding
opt.foldenable = true
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.foldenable = false


-- Undo and backup options
opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.swapfile = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

--Better buffer splitting
opt.splitright = true
opt.splitbelow = true

opt.hlsearch = true
opt.incsearch = true

opt.signcolumn = 'yes:1'

require("ravan")

