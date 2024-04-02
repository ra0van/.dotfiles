-- Make sure lazy package manager is installed
local function ensure_lazy_nvim_installed()

  local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
  local state = vim.loop.fs_stat(lazypath)

  if not state then
    vim.fn.system {
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      lazypath,
    }
  end
  vim.opt.rtp:prepend(lazypath)
end


local function bootstrap()
  -- Check lazy.nvim installation
  ensure_lazy_nvim_installed()
  local lazy = require("lazy")

  require("lazy.core.cache").enable()
  require("core.options")

  local lazy_opts = {
    defaults = { lazy = false },
    ui = {
      border = "rounded",
      backdrop = 100,
      title = " Plugin manager ",
      icons = {
        cmd = " ",
        config = " ",
        event = "",
        ft = " ",
        init = "󰅕 ",
        import = "󰋺 ",
        keys = " ",
        lazy = "󰒲 ",
        loaded = "◍",
        not_loaded = "○",
        plugin = " ",
        runtime = " ",
        require = "󰢱 ",
        source = " ",
        start = " ",
        task = "✔",
        list = {
          "●",
          "◍",
          "◌",
          "‒",
        },
      },
    },
    install = {
      missing = true,
      colorscheme = { require("core.vars").colorscheme, "habamax" },
    },
    change_detection = { notify = false },
    checker = { enabled = true, notify = false },
    performance = {
      rtp = {
        disabled_plugins = {
          "2html_plugin",
          "bugreport",
          "compiler",
          "ftplugin",
          "getscript",
          "getscriptPlugin",
          "gzip",
          "logipat",
          "matchit",
          "matchparen",
          "netrw",
          "netrwFileHandlers",
          "netrwPlugin",
          "netrwSettings",
          "optwin",
          "rplugin",
          "rrhelper",
          "spellfile_plugin",
          "synmenu",
          "syntax",
          "tar",
          "tarPlugin",
          "tohtml",
          "tutor",
          "vimball",
          "vimballPlugin",
          "zip",
          "zipPlugin",
        },
      },
    },
  }
  lazy.setup("plugins", lazy_opts)

  local function load_everything_else()
    -- require("core.autocmds")
    require("core.keymaps")
    -- require("core.diagnostics")
  end

  if vim.fn.argc(-1) == 0 then
    -- autocmds and keymaps can wait to load
    vim.api.nvim_create_autocmd("User", {
      group = vim.api.nvim_create_augroup("LazyVim", { clear = true }),
      pattern = "VeryLazy",
      callback = load_everything_else,
    })
  else
    load_everything_else()
  end

end

return {
  bootstrap = bootstrap
}
