local nnoremap = require("ravan.keymap").nnoremap

local builtin = require("telescope.builtin")

nnoremap("<leader>ff", function() builtin.find_files() end)
--nnoremap("<leader>fg", function() builtin.live_grep() end)

require('telescope').load_extension('media_files')

