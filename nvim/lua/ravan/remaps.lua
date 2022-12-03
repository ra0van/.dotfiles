local keymap = require("ravan.keymap");

local nnoremap = keymap.nnoremap;

vim.g.mapleader = " ";
nnoremap("<leader>pv", "<cmd>Ex<CR>");
