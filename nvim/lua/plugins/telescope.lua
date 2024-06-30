local telescope_config = function ()
  local telescope = require("telescope")
  local actions = require("telescope.actions")
  local lga_actions = require("telescope-live-grep-args.actions")

  telescope.setup({
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      },
      live_grep_args = {
        auto_quoting = true, -- enable/disable auto-quoting
        -- define mappings, e.g.
        mappings = { -- extend mappings
          i = {
            ["<C-k>"] = lga_actions.quote_prompt(),
            ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
          },
        },
        -- ... also accepts theme settings, for example:
        -- theme = "dropdown", -- use dropdown theme
        -- theme = { }, -- use own theme spec
        -- layout_config = { mirror=true }, -- mirror preview pane
      }
    },
    defaults = {
      preview = {
        filesize_limit = 0.1,
      },
      initial_mode = "insert",
      prompt_prefix = " " .. require("nvim-nonicons").get("telescope") .. "  ",
      layout_strategy = "horizontal",
      path_display = { "absolute" },
      file_ignore_patterns = { ".git/", "node_modules/", ".cache", "*.pdf", "*.zip" },
      results_title = false,
      selection_caret = "  ",
      layout_width = {
        horizontal = {
          preview_width = 0.5,
        },
      },
      pickers = {
        keymaps = {
          theme = "dropdown",
        },
      },
    },
    pickers = {
      colorscheme = {
        initial_mode = "normal",
        enable_preview = true,
      },
      find_files = {
        -- find_command = { "fd", "--type", "f", "--strip-cwd-prefix", "--no-require-git" },
        hidden = true,
      },
      buffers = {
        initial_mode = "normal",
        layout_strategy = "vertical",
        layout_config = {
          mirror = true,
          prompt_position = "top",
        },
        sort_mru = true,
        sort_lastused = true,
        mappings = {
          i = {
            ["<c-d>"] = actions.delete_buffer + actions.move_to_top,
          },
          n = {
            ["q"] = actions.close,
            ["d"] = function(bufnr)
              local current_picker = require("telescope.actions.state").get_current_picker(bufnr)
              current_picker:delete_selection(function(selection)
                local force = vim.api.nvim_get_option_value("buftype", {
                  buf = selection.bufnr,
                }) == "terminal"
                require("mini.bufremove").delete(selection.bufnr, force)
              end)
            end,
            ["<S-Tab>"] = actions.move_selection_previous,
          },
        },
      },
    },
  })
  -- Enable telescope fzf native, if installed
  -- pcall(require('telescope').load_extension, 'fzf')

  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end, { desc = '[/] Fuzzily search in current buffer' })


  local built_in = require("telescope.builtin")
  telescope.load_extension("live_grep_args")

  require("which-key").register({
    ["<leader>t"] = {
      name = "telescope",
      b = { built_in.buffers, "[b] Select from open buffers" },
      -- c = { built_in.colorscheme, "[c] Change colorscheme" },
      d = { built_in.diagnostics, "[d] Diagnostics" },
      f = { built_in.find_files, "[f] Find file" },
      g = { built_in.git_files, "[g] Find file in git repo" },
      h = { built_in.help_tags, "[h] Find help"},
      k = { built_in.keymaps, "[k] Open keymap window" },
      o = { built_in.oldfiles, "[o] Open previously opened files" },
      -- p = { telescope.extensions.projects.projects, "[p] Open projects window" },
      r = { built_in.resume, "[r] Resume last telescope operation" },
      t = { "<cmd>Telescope<CR>", "[t] Open telescope" },
      c = { built_in.grep_string, "[c] Search current word" },
      w = { telescope.extensions.live_grep_args.live_grep_args, "[w] Find word" },
      [":"] = { built_in.command_history, "[:] Show commands executed recently and run them on <CR>" },
      ["/"] = { built_in.current_buffer_fuzzy_find, "[/] Fuzzy find in the current buffer" },
    },
  })
end



return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    "folke/which-key.nvim",
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    },
  },

  config = telescope_config
}
