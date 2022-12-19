local keymap = require("ravan.keymap");

local nnoremap = keymap.nnoremap;
local vnoremap = keymap.vnoremap;

vim.g.mapleader = " ";
nnoremap("<leader>pv", "<cmd>ex<cr>");

vnoremap("j", ":m '>+1<cr>gv=gv");
vnoremap("k", ":m '<-2<cr>gv=gv");

-- vim.keymap.set("n", "J", "mzJ`z")
