local nnoremap = require("ravan.keymap").nnoremap

local ui = require("harpoon.ui")
local mark = require("harpoon.mark")

nnoremap("<leader>a", function() mark.add_file() end)
nnoremap("<leader>e", function() ui.toggle_quick_menu() end)
nnoremap("<C-1>", function() ui.nav_file(1) end)
nnoremap("<C-2>", function() ui.nav_file(2) end)
nnoremap("<C-3>", function() ui.nav_file(3) end)
nnoremap("<C-4>", function() ui.nav_file(4) end)

