--vim.keymap.set('n', '<C-n>', '<CMD>NvimTreeToggle<CR>')
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_create_autocmd('FileType', {
    group = vim.api.nvim_create_augroup('NVIM_TREE', { clear = true }),
    pattern = 'NvimTree',
    callback = function()
        vim.api.nvim_win_set_option(0, 'wrap', false)
    end,
})
