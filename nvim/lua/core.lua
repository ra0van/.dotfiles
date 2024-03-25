-- Define the list of simple plugins with options if needed
local simple_plugins = {
  -- Git related plugins
  { name = 'tpope/vim-fugitive' },
  { name = 'tpope/vim-rhubarb' },

  -- Detect tabstop and shiftwidth automatically
  { name = 'tpope/vim-sleuth' },

  { name = 'jlcrochet/vim-ruby' },

  { name = 'kyazdani42/nvim-web-devicons' },

  -- Useful plugin to show you pending keybinds.
  -- { name = 'folke/which-key.nvim', opts = {} },  -- example with opts
}

local disable_plugins = {

}

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

local function is_plugin_disabled(name)
  for _, disabled_name in ipairs(disable_plugins) do
    if name:match(disabled_name) then
      return true
    end
  end

  return false
end

local function load_plugin_config(file)
  local ok, plugin_config = pcall(dofile, file)
  if not ok then
    print("Error loading plugin config:" .. file)
    return {}
  end

  return plugin_config
end

local function bootstrap()
  -- Check lazy.nvim installation
  ensure_lazy_nvim_installed()

  local plugins = {}

  -- Add simple plugins to the plugins list, checking for options
  for _, plugin in ipairs(simple_plugins) do
    if not is_plugin_disabled(plugin.name) then
      if plugin.opts then
        table.insert(plugins, { plugin.name, opts = plugin.opts })
      else
        table.insert(plugins, plugin.name)
      end
    end
  end


  -- Add plugins from /lua/plugins directory
  local plugin_dir = vim.fn.stdpath('config') .. '/lua/plugins'
  local glob_pattern = plugin_dir .. '/*.lua'
  local plugin_files_str = vim.fn.glob(glob_pattern, 0, 0)
  local plugin_files = vim.split(plugin_files_str, "\n")

  print(#plugin_files)

  for _, file in ipairs(plugin_files) do
    print("Loading plugin " .. file)

    local plugin_config = load_plugin_config(file)
    for _, plugin in ipairs(plugin_config) do
      if not is_plugin_disabled(plugin[1]) then
        table.insert(plugins, plugin)
      end
    end
  end

  require('lazy').setup(plugins)
end

return {
  bootstrap = bootstrap
}
