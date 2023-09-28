-- Better defaults
local opt = vim.opt

opt.title = true -- report window title
opt.textwidth = 120
opt.wrap = true
opt.hidden = true -- prevent buffers from getting lost when closed
opt.cursorline = true -- show the current line number highlighted for the cursor
opt.termguicolors = true
opt.updatetime = 10 -- time to wait before updating things (typically, gutter / diagnostics ) -- TODO : Understand this better
opt.expandtab = true
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
opt.shiftwidth = 0 -- indentation level
opt.ignorecase = true
opt.smartcase = true
opt.virtualedit = 'onemore'
opt.laststatus = 3
opt.cindent = false
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


-- leader defaluts
local g = vim.g
g.rust_recommended_style = 0
g.mapleader = ' '
g.maplocalleader = ','
--

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- remove trailing whitespaces & highlight yank
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = { '*' },
  callback = function()
    vim.api.nvim_command [[%s/\s\+$//e]]
  end
})

vim.api.nvim_create_autocmd({ 'TextYankPost' }, {
  pattern = { '*' },
  callback = function()
    vim.highlight.on_yank()
  end
})

-- package setup
vim.cmd [[packadd packer.nvim]]
require'packer'.startup(function(use)
  -- Load a package in a smarter way.
  local load_pkg = function(uid, name)
    local ok, pkg_cfg = pcall(require, 'pkg.' .. name)
    if not ok then
      pkg_cfg = {}
    end

    -- init; code that runs before the plugin is loaded
    if not pkg_cfg.disable and pkg_cfg.init ~= nil then
      pkg_cfg.init()
      pkg_cfg.init = nil
    end

    -- extract the keybindings, if any, because this config option is not recognized by packer
    local keybindings = pkg_cfg.keybindings or {}
    pkg_cfg.keybindings = nil

    pkg_cfg = vim.tbl_extend('keep', { uid }, pkg_cfg)


    if not pkg_cfg.disable then
      use(pkg_cfg)

      -- set keybindings
      for mode, bindings in pairs(keybindings) do
        for _, binding in ipairs(bindings) do
          local lhs = binding.key
          local rhs

          if binding.cmd ~= nil then
            rhs = '<cmd>' .. binding.cmd .. '<cr>'
          elseif binding.lua ~= nil then
            local t = type(binding.lua)
            if t == 'string' then
              rhs = ':lua ' .. binding.lua .. '<cr>'
            elseif t == 'function' then
              rhs = binding.lua
            end
          end

          vim.keymap.set(mode, lhs, rhs, { silent = true, noremap = true })
          -- vim.api.nvim_set_keymap(mode, lhs, rhs, { silent = true, noremap = true })
        end
      end
    end
  end

  for uid, name in pairs(require'pkgs') do
    load_pkg(uid, name)
  end
end)

require('remaps')
