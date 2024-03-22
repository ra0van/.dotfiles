-- Make sure lazy package manager is installed
function ensure_lazy_nvim_installed()

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

ensure_lazy_nvim_installed()
