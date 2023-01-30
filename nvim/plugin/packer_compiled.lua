-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/vanjarapu.rajasekhar/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/vanjarapu.rajasekhar/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/vanjarapu.rajasekhar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/vanjarapu.rajasekhar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/vanjarapu.rajasekhar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["Sakura.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/Sakura.nvim",
    url = "https://github.com/numToStr/Sakura.nvim"
  },
  ["aerial.nvim"] = {
    config = { "\27LJ\2\n™\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vlayout\1\0\4\16show_guides\2\14placement\tedge\17manage_folds\2\23highlight_on_hover\2\1\0\1\22default_direction\17prefer_right\nsetup\vaerial\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\n∆\4\0\0\a\0!\00036\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\5\0009\4\6\0049\4\a\4'\6\b\0B\4\2\2'\5\t\0&\4\5\4=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\0034\4\0\0=\4\20\0034\4\0\0=\4\21\0034\4\0\0=\4\22\0034\4\0\0=\4\23\0034\4\0\0=\4\24\0034\4\0\0=\4\25\0034\4\0\0=\4\26\0034\4\0\0=\4\27\0034\4\0\0=\4\28\3=\3\29\0024\3\0\0=\3\30\0024\3\0\0=\3\31\0024\3\0\0=\3 \2B\0\2\1K\0\1\0\24highlight_overrides\20color_overrides\17integrations\vstyles\14operators\ntypes\15properties\rbooleans\fnumbers\14variables\fstrings\rkeywords\14functions\nloops\17conditionals\1\2\0\0\vitalic\rcomments\1\0\0\1\2\0\0\vitalic\17dim_inactive\1\0\3\nshade\tdark\15percentage\4≥ÊÃô\3≥Êå˛\3\fenabled\2\fcompile\tpath\16/catppuccin\ncache\fstdpath\afn\bvim\1\0\1\fenabled\1\1\0\2\27transparent_background\1\16term_colors\1\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n≠\5\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\ndelay\3d\18virt_text_pos\beol\nsigns\1\0\1!current_line_blame_formatter@   ¬∑ <author>, <author_time:%R> | <summary> (<abbrev_sha>)\17changedelete\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ttext\b‚ñè\14topdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ttext\b‚Äæ\vdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ttext\b‚ñÅ\vchange\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ttext\b‚ñè\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ttext\b‚ñè\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["goto-preview"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/goto-preview",
    url = "https://github.com/rmagatti/goto-preview"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kanagawa.nvim"] = {
    config = { "\27LJ\2\n´\3\0\0\4\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0024\3\0\0=\3\v\0025\3\f\0=\3\r\0024\3\0\0=\3\14\0024\3\0\0=\3\15\2B\0\2\0016\0\16\0009\0\17\0'\2\18\0B\0\2\1K\0\1\0\25colorscheme kanagawa\bcmd\bvim\14overrides\vcolors\25variablebuiltinStyle\1\0\1\vitalic\2\14typeStyle\19statementStyle\1\0\1\tbold\2\17keywordStyle\1\0\1\vitalic\2\18functionStyle\17commentStyle\1\0\1\vitalic\2\1\0\b\14undercurl\2\ntheme\nlight\19terminalColors\2\17globalStatus\2\16dimInactive\2\16transparent\1\21specialException\2\18specialReturn\2\nsetup\rkanagawa\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-zero.nvim"] = {
    config = { "\27LJ\2\nÏ\5\0\2\t\0\"\0w5\2\0\0=\1\1\0029\3\2\0\a\3\3\0X\3\6Ä6\3\4\0009\3\5\0039\3\6\3'\5\3\0B\3\2\1K\0\1\0006\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\4\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\4\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0006\a\4\0009\a\v\a9\a\f\a9\a\17\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\18\0006\a\4\0009\a\19\a9\a\20\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\21\0006\a\4\0009\a\19\a9\a\22\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\23\0006\a\4\0009\a\19\a9\a\24\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\25\0006\a\4\0009\a\v\a9\a\f\a9\a\26\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\27\0006\a\4\0009\a\v\a9\a\f\a9\a\28\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\29\0006\a\4\0009\a\v\a9\a\f\a9\a\30\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\31\0'\6 \0006\a\4\0009\a\v\a9\a\f\a9\a!\a\18\b\2\0B\3\5\1K\0\1\0\19signature_help\n<C-h>\6i\vrename\16<leader>vrn\15references\16<leader>vrr\16code_action\16<leader>vca\14goto_prev\a]d\14goto_next\a[d\15open_float\15diagnostic\15<leader>vd\21workspace_symbol\16<leader>vws\nhover\6K\15definition\bbuf\blsp\agd\6n\bset\vkeymap\fLspStop\bcmd\bvim\veslint\tname\vbuffer\1\0\1\nremap\1°\5\1\0\t\0%\0;6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0005\3\5\0B\1\2\0016\1\0\0'\3\6\0B\1\2\0025\2\t\0009\3\a\0019\3\b\3=\3\n\0029\3\v\0009\3\f\0035\5\15\0009\6\r\0019\6\14\6\18\b\2\0B\6\2\2=\6\16\0059\6\r\0019\6\17\6\18\b\2\0B\6\2\2=\6\18\0059\6\r\0019\6\19\0065\b\20\0B\6\2\2=\6\21\0059\6\r\0019\6\22\6B\6\1\2=\6\23\5B\3\2\0029\4\24\0005\6\25\0=\3\r\6B\4\2\0019\4\26\0005\6\27\0005\a\28\0=\a\29\6B\4\2\0019\4\30\0003\6\31\0B\4\2\0019\4 \0B\4\1\0016\4!\0009\4\"\0049\4#\0045\6$\0B\4\2\1K\0\1\0\1\0\1\17virtual_text\2\vconfig\15diagnostic\bvim\nsetup\0\14on_attach\15sign_icons\1\0\4\tinfo\6I\nerror\6E\thint\6H\twarn\6W\1\0\1\24suggest_lsp_servers\1\20set_preferences\1\0\0\19setup_nvim_cmp\14<C-space>\rcomplete\n<C-y>\1\0\1\vselect\2\fconfirm\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\17cmp_mappings\rdefaults\rbehavior\1\0\0\vSelect\19SelectBehavior\bcmp\1\6\0\0\16sumneko_lua\18rust_analyzer\ngopls\17intelephense\14csharp_ls\21ensure_installed\16recommended\vpreset\rlsp-zero\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  lualine = {
    config = { "\27LJ\2\nµ\6\0\0\a\0'\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\r\0004\4\3\0005\5\n\0005\6\v\0=\6\f\5>\5\1\4=\4\14\0034\4\3\0005\5\15\0>\5\1\0045\5\16\0>\5\2\4=\4\17\0034\4\3\0005\5\18\0>\5\1\0045\5\19\0>\5\2\4=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0034\4\3\0005\5\25\0005\6\26\0=\6\f\5>\5\1\4=\4\27\3=\3\28\0025\3 \0004\4\3\0005\5\29\0005\6\30\0=\6\31\5>\5\1\4=\4\14\0034\4\3\0005\5!\0005\6\"\0=\6#\5>\5\1\4=\4\27\3=\3$\0025\3%\0=\3&\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\rquickfix\14nvim-tree\ftabline\15tabs_color\1\0\1\vactive\21lualine_b_normal\1\2\0\0\ttabs\1\0\0\18buffers_color\1\0\1\vactive\21lualine_b_normal\1\2\2\0\fbuffers\23show_filename_only\2\tmode\3\2\rsections\14lualine_z\1\0\1\bgui\tbold\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rfiletype\15fileformat\rfilesize\14lualine_c\1\2\0\0\16diagnostics\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\1\0\tdiff\fcolored\2\1\2\0\0\vbranch\14lualine_a\1\0\0\ncolor\1\0\1\bgui\tbold\1\2\0\0\tmode\foptions\1\0\0\25component_separators\1\0\2\tleft\bÓÇ±\nright\bÓÇ≥\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\1\0\3\18icons_enabled\2\17globalstatus\2\ntheme\14spaceduck\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/lualine",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["material.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n/\0\2\4\1\2\0\a9\2\1\1=\2\0\1-\2\0\0009\3\1\0018\2\3\2=\2\1\1L\1\2\0\2¿\tkind\tmenu1\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1¿\tbody\19expand_snippet©\b\1\0\v\0.\0R6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0025\2\3\0009\3\4\0005\5\n\0005\6\6\0005\a\5\0=\a\a\0063\a\b\0=\a\t\6=\6\v\0055\6\r\0003\a\f\0=\a\14\6=\6\15\0055\6\18\0009\a\16\0009\a\17\aB\a\1\2=\a\19\0069\a\16\0009\a\20\aB\a\1\2=\a\21\0069\a\16\0009\a\22\a)\t¸ˇB\a\2\2=\a\23\0069\a\16\0009\a\22\a)\t\4\0B\a\2\2=\a\24\0069\a\16\0009\a\25\aB\a\1\2=\a\26\0069\a\16\0009\a\27\aB\a\1\2=\a\28\0069\a\16\0009\a\29\a5\t \0009\n\30\0009\n\31\n=\n!\tB\a\2\2=\a\"\6=\6\16\0054\6\b\0005\a#\0>\a\1\0065\a$\0>\a\2\0065\a%\0>\a\3\0065\a&\0>\a\4\0065\a'\0>\a\5\0065\a(\0>\a\6\0065\a)\0>\a\a\6=\6*\0055\6+\0=\6,\5B\3\2\0016\3\0\0'\5-\0B\3\2\0029\3\4\0034\5\0\0B\3\2\0012\0\0ÄK\0\1\0\17cmp_nvim_lsp\17experimental\1\0\1\15ghost_text\2\fsources\1\0\1\tname\vsnippy\1\0\1\tname\bgit\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\1\0\1\tname\tpath\1\0\1\tname\vcrates\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-t>\21select_next_item\n<C-s>\1\0\0\21select_prev_item\fmapping\fsnippet\vexpand\1\0\0\0\15formatting\1\0\0\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\nsetup\1\0\25\rConstant\bÔ£ø\fSnippet\bÔô∞\vStruct\bÔ≠Ñ\fKeyword\bÔ®ã\nEvent\bÔÉß\tEnum\bÔÖù\rOperator\bÔöî\nValue\bÔ¢ü\18TypeParameter\5\tUnit\bÔ•¨\rProperty\bÔ∞†\vModule\bÔ£í\14Interface\bÔÉ®\nClass\bÔ¥Ø\rVariable\bÔúõ\nField\bÔ∞†\16Constructor\b‚åò\15EnumMember\bÔÖù\rFunction\bÔûî\vFolder\bÔÅª\vMethod\bÔö¶\14Reference\bÔúÜ\tText\bÔÉâ\tFile\bÔúò\nColor\bÔ£ó\vsnippy\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-snippy"] = {
    config = { "\27LJ\2\n´\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\rmappings\ais\1\0\0\1\0\2\f<S-Tab>\rprevious\n<Tab>\22expand_or_advance\1\0\1\17snippet_dirs\28~/.config/nvim/snippets\nsetup\vsnippy\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-snippy",
    url = "https://github.com/dcampos/nvim-snippy"
  },
  ["nvim-tree"] = {
    config = { "\27LJ\2\nˆ\2\0\0\a\0\22\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\6\0005\4\5\0=\4\a\0035\4\b\0005\5\t\0004\6\0\0=\6\n\5=\5\v\4=\4\f\0035\4\17\0005\5\14\0005\6\r\0=\6\15\0054\6\0\0=\6\16\5=\5\18\0045\5\19\0=\5\20\4=\4\21\3B\1\2\1K\0\1\0\rrenderer\19indent_markers\1\0\1\venable\2\nicons\1\0\0\vglyphs\tshow\1\0\0\1\0\4\bgit\2\17folder_arrow\2\tfile\2\vfolder\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\2\vnumber\2\19relativenumber\2\24update_focused_file\1\0\0\1\0\1\venable\2\nsetup\14nvim-tree\23nvim_tree_callback\21nvim-tree.config\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-tree",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\næ\6\0\0\a\0\"\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\16\0005\5\v\0005\6\f\0=\6\r\0055\6\14\0=\6\15\5=\5\17\4=\4\18\3=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0005\4\27\0=\4\28\3=\3\29\0025\3\30\0=\3\31\0025\3 \0=\3!\2B\0\2\1K\0\1\0\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\fautotag\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgnn\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\1\0\1\venable\2\16textobjects\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\rrenderer\nicons\nglyph\1\0\0\vfolder\1\0\2\fdefault\bÓóø\topen\bÓóæ\bgit\1\0\5\runstaged\b‚úó\14untracked\b‚òÖ\frenamed\b‚ûú\runmerged\bÓúß\vstaged\b‚úì\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\15show_icons\1\0\3\bgit\2\tfile\2\vfolder\2\19indent_markers\1\0\2\17higlight_git\2\25root_folder_modifier\a:.\1\0\1\venable\2\21ensure_installed\1\t\0\0\blua\trust\ago\rmarkdown\20markdown_inline\tbash\fc_sharp\tjson\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\nö\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\6\22min_window_height\3\0\tmode\vcursor\15trim_scope\nouter\14max_lines\3\n\venable\2\14separator\b‚îÄ\nsetup\23treesitter-context\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fautotag\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["persistence.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\16persistence\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/opt/persistence.nvim",
    url = "https://github.com/folke/persistence.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  spaceduck = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/spaceduck",
    url = "https://github.com/pineapplegiant/spaceduck"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n·\5\0\0\t\0 \1=6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\18\0005\4\4\0004\5\0\0=\5\5\0045\5\6\0=\5\a\0045\5\15\0005\6\t\0009\a\b\0=\a\n\0069\a\v\0=\a\f\0069\a\r\0=\a\14\6=\6\16\5=\5\17\4=\4\19\0035\4\21\0005\5\20\0=\5\22\0044\5\3\0006\6\0\0'\b\23\0B\6\2\0029\6\24\0064\b\0\0B\6\2\0?\6\0\0=\5\25\4=\4\26\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\27\1'\3\25\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\27\1'\3\22\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\27\1'\3\28\0B\1\2\0016\1\29\0009\1\30\1'\3\31\0B\1\2\1K\0\1\0<autocmd FileType TelescopePrompt inoremap <C-W> <C-S-W>\bcmd\bvim\fharpoon\19load_extension\15extensions\14ui-select\17get_dropdown\21telescope.themes\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\rdefaults\1\0\0\rmappings\6i\1\0\0\n<tab>\18add_selection\n<c-t>\24move_selection_next\n<c-s>\1\0\0\28move_selection_previous\17path_display\1\2\0\0\rtruncate\18layout_config\1\0\3\21sorting_strategy\14ascending\17initial_mode\vinsert\18prompt_prefix\n ‚ùØ \nsetup\14telescope\22telescope.actions\frequire\3ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["true-zen.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rtrue-zen\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/true-zen.nvim",
    url = "https://github.com/Pocco81/true-zen.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^persistence"] = "persistence.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: Sakura.nvim
time([[Config for Sakura.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "Sakura.nvim")
time([[Config for Sakura.nvim]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
try_loadstring("\27LJ\2\nÏ\5\0\2\t\0\"\0w5\2\0\0=\1\1\0029\3\2\0\a\3\3\0X\3\6Ä6\3\4\0009\3\5\0039\3\6\3'\5\3\0B\3\2\1K\0\1\0006\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\4\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\4\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0006\a\4\0009\a\v\a9\a\f\a9\a\17\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\18\0006\a\4\0009\a\19\a9\a\20\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\21\0006\a\4\0009\a\19\a9\a\22\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\23\0006\a\4\0009\a\19\a9\a\24\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\25\0006\a\4\0009\a\v\a9\a\f\a9\a\26\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\27\0006\a\4\0009\a\v\a9\a\f\a9\a\28\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\t\0'\6\29\0006\a\4\0009\a\v\a9\a\f\a9\a\30\a\18\b\2\0B\3\5\0016\3\4\0009\3\a\0039\3\b\3'\5\31\0'\6 \0006\a\4\0009\a\v\a9\a\f\a9\a!\a\18\b\2\0B\3\5\1K\0\1\0\19signature_help\n<C-h>\6i\vrename\16<leader>vrn\15references\16<leader>vrr\16code_action\16<leader>vca\14goto_prev\a]d\14goto_next\a[d\15open_float\15diagnostic\15<leader>vd\21workspace_symbol\16<leader>vws\nhover\6K\15definition\bbuf\blsp\agd\6n\bset\vkeymap\fLspStop\bcmd\bvim\veslint\tname\vbuffer\1\0\1\nremap\1°\5\1\0\t\0%\0;6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0005\3\5\0B\1\2\0016\1\0\0'\3\6\0B\1\2\0025\2\t\0009\3\a\0019\3\b\3=\3\n\0029\3\v\0009\3\f\0035\5\15\0009\6\r\0019\6\14\6\18\b\2\0B\6\2\2=\6\16\0059\6\r\0019\6\17\6\18\b\2\0B\6\2\2=\6\18\0059\6\r\0019\6\19\0065\b\20\0B\6\2\2=\6\21\0059\6\r\0019\6\22\6B\6\1\2=\6\23\5B\3\2\0029\4\24\0005\6\25\0=\3\r\6B\4\2\0019\4\26\0005\6\27\0005\a\28\0=\a\29\6B\4\2\0019\4\30\0003\6\31\0B\4\2\0019\4 \0B\4\1\0016\4!\0009\4\"\0049\4#\0045\6$\0B\4\2\1K\0\1\0\1\0\1\17virtual_text\2\vconfig\15diagnostic\bvim\nsetup\0\14on_attach\15sign_icons\1\0\4\tinfo\6I\nerror\6E\thint\6H\twarn\6W\1\0\1\24suggest_lsp_servers\1\20set_preferences\1\0\0\19setup_nvim_cmp\14<C-space>\rcomplete\n<C-y>\1\0\1\vselect\2\fconfirm\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\17cmp_mappings\rdefaults\rbehavior\1\0\0\vSelect\19SelectBehavior\bcmp\1\6\0\0\16sumneko_lua\18rust_analyzer\ngopls\17intelephense\14csharp_ls\21ensure_installed\16recommended\vpreset\rlsp-zero\frequire\0", "config", "lsp-zero.nvim")
time([[Config for lsp-zero.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n·\5\0\0\t\0 \1=6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\18\0005\4\4\0004\5\0\0=\5\5\0045\5\6\0=\5\a\0045\5\15\0005\6\t\0009\a\b\0=\a\n\0069\a\v\0=\a\f\0069\a\r\0=\a\14\6=\6\16\5=\5\17\4=\4\19\0035\4\21\0005\5\20\0=\5\22\0044\5\3\0006\6\0\0'\b\23\0B\6\2\0029\6\24\0064\b\0\0B\6\2\0?\6\0\0=\5\25\4=\4\26\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\27\1'\3\25\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\27\1'\3\22\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\27\1'\3\28\0B\1\2\0016\1\29\0009\1\30\1'\3\31\0B\1\2\1K\0\1\0<autocmd FileType TelescopePrompt inoremap <C-W> <C-S-W>\bcmd\bvim\fharpoon\19load_extension\15extensions\14ui-select\17get_dropdown\21telescope.themes\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\rdefaults\1\0\0\rmappings\6i\1\0\0\n<tab>\18add_selection\n<c-t>\24move_selection_next\n<c-s>\1\0\0\28move_selection_previous\17path_display\1\2\0\0\rtruncate\18layout_config\1\0\3\21sorting_strategy\14ascending\17initial_mode\vinsert\18prompt_prefix\n ‚ùØ \nsetup\14telescope\22telescope.actions\frequire\3ÄÄ¿ô\4\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n∆\4\0\0\a\0!\00036\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\5\0009\4\6\0049\4\a\4'\6\b\0B\4\2\2'\5\t\0&\4\5\4=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\0034\4\0\0=\4\20\0034\4\0\0=\4\21\0034\4\0\0=\4\22\0034\4\0\0=\4\23\0034\4\0\0=\4\24\0034\4\0\0=\4\25\0034\4\0\0=\4\26\0034\4\0\0=\4\27\0034\4\0\0=\4\28\3=\3\29\0024\3\0\0=\3\30\0024\3\0\0=\3\31\0024\3\0\0=\3 \2B\0\2\1K\0\1\0\24highlight_overrides\20color_overrides\17integrations\vstyles\14operators\ntypes\15properties\rbooleans\fnumbers\14variables\fstrings\rkeywords\14functions\nloops\17conditionals\1\2\0\0\vitalic\rcomments\1\0\0\1\2\0\0\vitalic\17dim_inactive\1\0\3\nshade\tdark\15percentage\4≥ÊÃô\3≥Êå˛\3\fenabled\2\fcompile\tpath\16/catppuccin\ncache\fstdpath\afn\bvim\1\0\1\fenabled\1\1\0\2\27transparent_background\1\16term_colors\1\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\n™\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vlayout\1\0\4\16show_guides\2\14placement\tedge\17manage_folds\2\23highlight_on_hover\2\1\0\1\22default_direction\17prefer_right\nsetup\vaerial\frequire\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\nö\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\6\22min_window_height\3\0\tmode\vcursor\15trim_scope\nouter\14max_lines\3\n\venable\2\14separator\b‚îÄ\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: material.nvim
time([[Config for material.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "material.nvim")
time([[Config for material.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n/\0\2\4\1\2\0\a9\2\1\1=\2\0\1-\2\0\0009\3\1\0018\2\3\2=\2\1\1L\1\2\0\2¿\tkind\tmenu1\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1¿\tbody\19expand_snippet©\b\1\0\v\0.\0R6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0025\2\3\0009\3\4\0005\5\n\0005\6\6\0005\a\5\0=\a\a\0063\a\b\0=\a\t\6=\6\v\0055\6\r\0003\a\f\0=\a\14\6=\6\15\0055\6\18\0009\a\16\0009\a\17\aB\a\1\2=\a\19\0069\a\16\0009\a\20\aB\a\1\2=\a\21\0069\a\16\0009\a\22\a)\t¸ˇB\a\2\2=\a\23\0069\a\16\0009\a\22\a)\t\4\0B\a\2\2=\a\24\0069\a\16\0009\a\25\aB\a\1\2=\a\26\0069\a\16\0009\a\27\aB\a\1\2=\a\28\0069\a\16\0009\a\29\a5\t \0009\n\30\0009\n\31\n=\n!\tB\a\2\2=\a\"\6=\6\16\0054\6\b\0005\a#\0>\a\1\0065\a$\0>\a\2\0065\a%\0>\a\3\0065\a&\0>\a\4\0065\a'\0>\a\5\0065\a(\0>\a\6\0065\a)\0>\a\a\6=\6*\0055\6+\0=\6,\5B\3\2\0016\3\0\0'\5-\0B\3\2\0029\3\4\0034\5\0\0B\3\2\0012\0\0ÄK\0\1\0\17cmp_nvim_lsp\17experimental\1\0\1\15ghost_text\2\fsources\1\0\1\tname\vsnippy\1\0\1\tname\bgit\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\1\0\1\tname\tpath\1\0\1\tname\vcrates\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-t>\21select_next_item\n<C-s>\1\0\0\21select_prev_item\fmapping\fsnippet\vexpand\1\0\0\0\15formatting\1\0\0\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\nsetup\1\0\25\rConstant\bÔ£ø\fSnippet\bÔô∞\vStruct\bÔ≠Ñ\fKeyword\bÔ®ã\nEvent\bÔÉß\tEnum\bÔÖù\rOperator\bÔöî\nValue\bÔ¢ü\18TypeParameter\5\tUnit\bÔ•¨\rProperty\bÔ∞†\vModule\bÔ£í\14Interface\bÔÉ®\nClass\bÔ¥Ø\rVariable\bÔúõ\nField\bÔ∞†\16Constructor\b‚åò\15EnumMember\bÔÖù\rFunction\bÔûî\vFolder\bÔÅª\vMethod\bÔö¶\14Reference\bÔúÜ\tText\bÔÉâ\tFile\bÔúò\nColor\bÔ£ó\vsnippy\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lualine
time([[Config for lualine]], true)
try_loadstring("\27LJ\2\nµ\6\0\0\a\0'\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\r\0004\4\3\0005\5\n\0005\6\v\0=\6\f\5>\5\1\4=\4\14\0034\4\3\0005\5\15\0>\5\1\0045\5\16\0>\5\2\4=\4\17\0034\4\3\0005\5\18\0>\5\1\0045\5\19\0>\5\2\4=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0034\4\3\0005\5\25\0005\6\26\0=\6\f\5>\5\1\4=\4\27\3=\3\28\0025\3 \0004\4\3\0005\5\29\0005\6\30\0=\6\31\5>\5\1\4=\4\14\0034\4\3\0005\5!\0005\6\"\0=\6#\5>\5\1\4=\4\27\3=\3$\0025\3%\0=\3&\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\rquickfix\14nvim-tree\ftabline\15tabs_color\1\0\1\vactive\21lualine_b_normal\1\2\0\0\ttabs\1\0\0\18buffers_color\1\0\1\vactive\21lualine_b_normal\1\2\2\0\fbuffers\23show_filename_only\2\tmode\3\2\rsections\14lualine_z\1\0\1\bgui\tbold\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rfiletype\15fileformat\rfilesize\14lualine_c\1\2\0\0\16diagnostics\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\1\0\tdiff\fcolored\2\1\2\0\0\vbranch\14lualine_a\1\0\0\ncolor\1\0\1\bgui\tbold\1\2\0\0\tmode\foptions\1\0\0\25component_separators\1\0\2\tleft\bÓÇ±\nright\bÓÇ≥\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\1\0\3\18icons_enabled\2\17globalstatus\2\ntheme\14spaceduck\nsetup\flualine\frequire\0", "config", "lualine")
time([[Config for lualine]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n≠\5\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\ndelay\3d\18virt_text_pos\beol\nsigns\1\0\1!current_line_blame_formatter@   ¬∑ <author>, <author_time:%R> | <summary> (<abbrev_sha>)\17changedelete\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ttext\b‚ñè\14topdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ttext\b‚Äæ\vdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ttext\b‚ñÅ\vchange\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ttext\b‚ñè\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ttext\b‚ñè\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: kanagawa.nvim
time([[Config for kanagawa.nvim]], true)
try_loadstring("\27LJ\2\n´\3\0\0\4\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0024\3\0\0=\3\v\0025\3\f\0=\3\r\0024\3\0\0=\3\14\0024\3\0\0=\3\15\2B\0\2\0016\0\16\0009\0\17\0'\2\18\0B\0\2\1K\0\1\0\25colorscheme kanagawa\bcmd\bvim\14overrides\vcolors\25variablebuiltinStyle\1\0\1\vitalic\2\14typeStyle\19statementStyle\1\0\1\tbold\2\17keywordStyle\1\0\1\vitalic\2\18functionStyle\17commentStyle\1\0\1\vitalic\2\1\0\b\14undercurl\2\ntheme\nlight\19terminalColors\2\17globalStatus\2\16dimInactive\2\16transparent\1\21specialException\2\18specialReturn\2\nsetup\rkanagawa\frequire\0", "config", "kanagawa.nvim")
time([[Config for kanagawa.nvim]], false)
-- Config for: nvim-snippy
time([[Config for nvim-snippy]], true)
try_loadstring("\27LJ\2\n´\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\rmappings\ais\1\0\0\1\0\2\f<S-Tab>\rprevious\n<Tab>\22expand_or_advance\1\0\1\17snippet_dirs\28~/.config/nvim/snippets\nsetup\vsnippy\frequire\0", "config", "nvim-snippy")
time([[Config for nvim-snippy]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: spaceduck
time([[Config for spaceduck]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "spaceduck")
time([[Config for spaceduck]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\næ\6\0\0\a\0\"\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\16\0005\5\v\0005\6\f\0=\6\r\0055\6\14\0=\6\15\5=\5\17\4=\4\18\3=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0005\4\27\0=\4\28\3=\3\29\0025\3\30\0=\3\31\0025\3 \0=\3!\2B\0\2\1K\0\1\0\26context_commentstring\1\0\2\19enable_autocmd\1\venable\2\fautotag\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgnn\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\1\0\1\venable\2\16textobjects\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\rrenderer\nicons\nglyph\1\0\0\vfolder\1\0\2\fdefault\bÓóø\topen\bÓóæ\bgit\1\0\5\runstaged\b‚úó\14untracked\b‚òÖ\frenamed\b‚ûú\runmerged\bÓúß\vstaged\b‚úì\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\15show_icons\1\0\3\bgit\2\tfile\2\vfolder\2\19indent_markers\1\0\2\17higlight_git\2\25root_folder_modifier\a:.\1\0\1\venable\2\21ensure_installed\1\t\0\0\blua\trust\ago\rmarkdown\20markdown_inline\tbash\fc_sharp\tjson\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: true-zen.nvim
time([[Config for true-zen.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rtrue-zen\frequire\0", "config", "true-zen.nvim")
time([[Config for true-zen.nvim]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fautotag\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-tree
time([[Config for nvim-tree]], true)
try_loadstring("\27LJ\2\nˆ\2\0\0\a\0\22\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\6\0005\4\5\0=\4\a\0035\4\b\0005\5\t\0004\6\0\0=\6\n\5=\5\v\4=\4\f\0035\4\17\0005\5\14\0005\6\r\0=\6\15\0054\6\0\0=\6\16\5=\5\18\0045\5\19\0=\5\20\4=\4\21\3B\1\2\1K\0\1\0\rrenderer\19indent_markers\1\0\1\venable\2\nicons\1\0\0\vglyphs\tshow\1\0\0\1\0\4\bgit\2\17folder_arrow\2\tfile\2\vfolder\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\2\vnumber\2\19relativenumber\2\24update_focused_file\1\0\0\1\0\1\venable\2\nsetup\14nvim-tree\23nvim_tree_callback\21nvim-tree.config\frequire\0", "config", "nvim-tree")
time([[Config for nvim-tree]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'persistence.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
