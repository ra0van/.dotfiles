require('nvim-treesitter.configs').setup({
    -- nvim-treesitter/nvim-treesitter (self config)
    auto_install = true,
    ensure_installed = {
        'c',
        'lua',
        'rust',
        'go',
        'javascript',
        'typescript',
        'tsx',
        'markdown',
        'markdown_inline',
        'html',
        'css',
        'json',
        'bash',
    },
    highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = 'gs',
            -- NOTE: These are visual mode mappings
            node_incremental = 'gs',
            node_decremental = 'gS',
            scope_incremental = '<leader>gc',
        },
    },
    -- nvim-treesitter/nvim-treesitter-textobjects
    textobjects = {
        select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner',
                ['al'] = '@loop.outer',
                ['il'] = '@loop.inner',
                ['aa'] = '@parameter.outer',
                ['ia'] = '@parameter.inner',
                ['uc'] = '@comment.outer',

                -- Or you can define your own textobjects like this
                -- ["iF"] = {
                --     python = "(function_definition) @function",
                --     cpp = "(function_definition) @function",
                --     c = "(function_definition) @function",
                --     java = "(method_declaration) @function",
                -- },
            },
        },
   },
    -- windwp/nvim-ts-autotag
    autotag = {
        enable = true,
    },
    -- nvim-treesitter/playground
    playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
            toggle_query_editor = 'o',
            toggle_hl_groups = 'i',
            toggle_injected_languages = 't',
            toggle_anonymous_nodes = 'a',
            toggle_language_display = 'I',
            focus_language = 'f',
            unfocus_language = 'F',
            update = 'R',
            goto_node = '<cr>',
            show_help = '?',
        },
    },
    -- nvim-treesitter/nvim-treesitter-refactor
    refactor = {
        highlight_definitions = { enable = true },
        -- highlight_current_scope = { enable = false },
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
})
