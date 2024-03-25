
local simple_plugins = {
  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  'jlcrochet/vim-ruby',
  'kyazdani42/nvim-web-devicons',
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

  local plugins = vim.tbl_extend('force', simple_plugins, {})

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
