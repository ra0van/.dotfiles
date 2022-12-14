local o = vim.o
local wo = vim.wo


-- Number of screen lines to keep above and below the cursor
o.scrolloff = 10

-- Better editor UI
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.signcolumn = 'yes:1'
o.cursorline = true

-- Better editiing experience
o.expandtab = true
o.cindent = true
wo.wrap = true
o.textwidth = 300
o.tabstop = 4
o.shiftwidth = 0
o.softtabstop = -1 -- If negative, shidwidth value is used
o.list = true

-- Makes neovim and os clipboard nice with each other
o.clipboard = 'unnamedplus'

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Remember 50 items in commandline history
o.history = 50

--Better buffer splitting
o.splitright = true
o.splitbelow = true

o.hlsearch = true
o.incsearch = true

o.ignorecase = true
o.smartcase = true

o.termguicolors = true
