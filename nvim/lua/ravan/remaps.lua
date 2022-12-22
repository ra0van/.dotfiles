local keymap = require("ravan.keymap");

local nnoremap = keymap.nnoremap;
local vnoremap = keymap.vnoremap;

vim.g.mapleader = " ";
nnoremap("<leader>pv", "<cmd>ex<cr>");

vnoremap("J", ":m '>+1<cr>gv=gv");
vnoremap("K", ":m '<-2<cr>gv=gv");

-- vim.keymap.set("n", "J", "mzJ`z")

-- Easy buffer switching
nnoremap("<leader>b", ":ls<CR>:b<Space>")
nnoremap("<leader><tab>", ":bnext<CR>")
nnoremap("<leader><tab><tab>", ":bprevious<CR>")
