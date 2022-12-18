local nnoremap = require("ravan.keymap").nnoremap

local builtin = require("telescope.builtin")

nnoremap("<leader>pf", function() builtin.find_files() end)
nnoremap("<C-p>", function() builtin.git_files() end)
nnoremap("<leader>ps", function() 
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


