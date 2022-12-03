-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup({
    function(use)
        -- package manager--
        use("wbthomason/packer.nvim")

        -- required plugins--
        use("nvim-lua/plenary.nvim")
        use("theprimeagen/harpoon")

        --- Themes, Icons, Statusbar, Bufferbar -- 

        use({
            'kyazdani42/nvim-web-devicons',
            config = function()
                require('nvim-web-devicons').setup()
            end,
        })

        use('numToStr/Sakura.nvim')

        use({
            {
                'nvim-lualine/lualine.nvim',
                after = 'Sakura.nvim',
                event = 'BufEnter',
                config = function()
                    require('ravan.setup.lualine')
                end,
            },
            {
                'j-hui/fidget.nvim',
                after = 'lualine.nvim',
            },
        })

        -- Navigation and Fuzzy Search --
        use({
            'nvim-tree/nvim-tree.lua',
            config = function()
                require('ravan.setup.nvim-tree')
            end,
        })

        use({
            {
                'nvim-telescope/telescope.nvim',
                config = function()
                    require('ravan.setup.telescope')
                end,
            },
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                after = 'telescope.nvim',
                run = 'make',
                config = function()
                    require('telescope').load_extension('fzf')
                end,
            },
            {
                'nvim-telescope/telescope-symbols.nvim',
                after = 'telescope.nvim',
            },
        })
    end,
})
--
