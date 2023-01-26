return {
  run = ':TSUpdate',
  config = function()
    require'nvim-treesitter.configs'.setup {
	  auto_install = true,
	  ensure_installed = {
		'lua',
		'rust',
		'go',
		'markdown',
		'markdown_inline',
		'bash',
		'c_sharp',
		'json',
	  },
	  renderer = {
		indent_markers = {
		  enable = true,
		},

		root_folder_modifier = ':.',

		show_icons = {
		  git = true,
		  folder = true,
		  file = true,
		},


		icons = {
		  glyph = {
			default = '',
			symlink = '',
			git = {
			  unstaged = '✗',
			  staged = '✓',
			  unmerged = '',
			  renamed = '➜',
			  untracked = '★'
			},
			folder = {
			  default = '',
			  open = ''
			},
		  },
		},

		higlight_git = true,
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

	  textobjects = {
		enable = true,
	  },

	  incremental_selection = {
		enable = true,
		keymaps = {
		  init_selection = "gnn",
		  node_incremental = "grn",
		  scope_incremental = "grc",
		  node_decremental = "grm",
		},
	  },

	  autotag = {
		enable = true,
	  },

	  context_commentstring = {
        enable = true,
        enable_autocmd = false,
	  },
	}
  end,
}
