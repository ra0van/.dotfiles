local keymap = require("ravan.keymap");

local nnoremap = keymap.nnoremap;
local vnoremap = keymap.vnoremap;
local inoremap = keymap.inoremap;

vim.g.mapleader = " ";
nnoremap("<leader>pv", "<cmd>ex<cr>");

vnoremap("J", ":m '>+1<cr>gv=gv");
vnoremap("K", ":m '<-2<cr>gv=gv");

-- vim.keymap.set("n", "J", "mzJ`z")

-- Easy buffer switching
nnoremap("<leader>b", ":ls<CR>:b<Space>")
nnoremap("<leader><tab>", ":bnext<CR>")
nnoremap("<leader><tab><tab>", ":bprevious<CR>")

inoremap('jk', '<ESC>')
inoremap('jk', '<ESC>')
inoremap('JK', '<ESC>')
inoremap('Jk', '<ESC>')
vnoremap('jk', '<ESC>')
vnoremap('JK', '<ESC>')
vnoremap('Jk', '<ESC>')
vnoremap('jK', '<ESC>')
