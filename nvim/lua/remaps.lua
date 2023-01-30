local keymap = require("keymap");

local nnoremap = keymap.nnoremap;
local vnoremap = keymap.vnoremap;
local inoremap = keymap.inoremap;

-- nnoremap("<leader>pv", "<cmd>ex<cr>");

vnoremap("J", ":m '>+1<cr>gv=gv");
vnoremap("K", ":m '<-2<cr>gv=gv");

-- Easy buffer switching
-- nnoremap("<leader>b<Space>", ":ls<cr>:b<Space>")
-- nnoremap("<leader>bb", ":bnext<cr>")
-- nnoremap("<leader>bp", ":bprevious<cr>")
nnoremap('<leader>bd', '<cmd>bdel<cr>')
-- nnoremap('<leader>bD', '<cmd>bdel!<cr>')
-- nnoremap('<leader>bnw', '<cmd>new<cr>')
-- nnoremap('<leader>bv', '<cmd>vnew<cr>')
-- nnoremap('<leader>bc', '<cmd>tabp<cr>')
-- nnoremap('<leader>br', '<cmd>tabn<cr>')
-- nnoremap('<leader>bs', '<cmd>w<cr>')
-- nnoremap('<leader>bS', '<cmd>w!<cr>')
-- nnoremap('<leader>bt', '<cmd>tabnew<cr>')

inoremap('jk', '<ESC>')
inoremap('jk', '<ESC>')
inoremap('JK', '<ESC>')
inoremap('Jk', '<ESC>')
vnoremap('jk', '<ESC>')
vnoremap('JK', '<ESC>')
vnoremap('Jk', '<ESC>')
vnoremap('jK', '<ESC>')
