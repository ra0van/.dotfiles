-- Only required if you have packer configured as `opt`packer
--vim.cmd([[packadd packer.nvim]])

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

        use{'numToStr/Sakura.nvim', opt = true}
        use{"ellisonleao/gruvbox.nvim", opt = true}
        use{'Tsuzat/NeoSolarized.nvim', opt = true}
        use{'marko-cerovac/material.nvim', opt = true}
        use('pineapplegiant/spaceduck')
        
        use{'dstein64/vim-startuptime', opt = true, cmd = 'StartupTime'}

        use({
            {
                'nvim-lualine/lualine.nvim',
                after = 'gruvbox.nvim',
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
            {
                'nvim-telescope/telescope-media-files.nvim',
                after = 'telescope.nvim',
                config = function()
                    require('ravan.setup.telescope')
                end,
            },
        })

        --- Markdown preview plugin--
        use ({
            "iamcco/markdown-preview.nvim",
            run = function() vim.fn["mkdp#util#install"]() end,
        })

        -- Treesitter: Better Highlights --
        -----------------------------------

        use({
            {
                'nvim-treesitter/nvim-treesitter',
                event = 'CursorHold',
                run = ':TSUpdate',
                config = function()
                    require('ravan.setup.treesitter')
                end,
                requires = {'nvim-treesitter/playground'}
            },
            { 'nvim-treesitter/playground', after = 'nvim-treesitter' },
            { 'nvim-treesitter/nvim-treesitter-textobjects', after = 'nvim-treesitter' },
            { 'nvim-treesitter/nvim-treesitter-refactor', after = 'nvim-treesitter' },
            { 'windwp/nvim-ts-autotag', after = 'nvim-treesitter' },
            { 'JoosepAlviste/nvim-ts-context-commentstring', after = 'nvim-treesitter' },
        })

        -- undo tree--
        use('mbbill/undotree')
        use('tpope/vim-fugitive')

        -- LSP --
        use {
            'VonHeikemen/lsp-zero.nvim',
            requires = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},
                {'williamboman/mason.nvim'},
                {'williamboman/mason-lspconfig.nvim'},

                -- Autocompletion
                {'hrsh7th/nvim-cmp'},
                {'hrsh7th/cmp-buffer'},
                {'hrsh7th/cmp-path'},
                {'saadparwaiz1/cmp_luasnip'},
                {'hrsh7th/cmp-nvim-lsp'},
                {'hrsh7th/cmp-nvim-lua'},

                -- Snippets
                {'L3MON4D3/LuaSnip'},
                {'rafamadriz/friendly-snippets'},
            }
        }
    end,

})
