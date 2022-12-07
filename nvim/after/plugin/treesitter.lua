local opt = vim.opt
local nnoremap = require("ravan.keymap").nnoremap

opt.foldlevel = 20
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"


nnoremap("<leader>ts", "<cmd>TSPlaygroundToggle<CR>");
