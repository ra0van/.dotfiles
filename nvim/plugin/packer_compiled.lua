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
  ["aerial.nvim"] = {
    config = { "\27LJ\2\n™\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vlayout\1\0\4\14placement\tedge\16show_guides\2\17manage_folds\2\23highlight_on_hover\2\1\0\1\22default_direction\17prefer_right\nsetup\vaerial\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\nâ\5\0\0\a\0$\0:6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\5\0009\4\6\0049\4\a\4'\6\b\0B\4\2\2'\5\t\0&\4\5\4=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\0034\4\0\0=\4\20\0034\4\0\0=\4\21\0034\4\0\0=\4\22\0034\4\0\0=\4\23\0034\4\0\0=\4\24\0034\4\0\0=\4\25\0034\4\0\0=\4\26\0034\4\0\0=\4\27\0034\4\0\0=\4\28\3=\3\29\0024\3\0\0=\3\30\0024\3\0\0=\3\31\0024\3\0\0=\3 \2B\0\2\0016\0\5\0009\0!\0'\2\"\0B\0\2\0016\0\0\0'\2#\0B\0\2\1K\0\1\0\16colorscheme\27colorscheme catppuccin\bcmd\24highlight_overrides\20color_overrides\17integrations\vstyles\14operators\ntypes\15properties\rbooleans\fnumbers\14variables\fstrings\rkeywords\14functions\nloops\17conditionals\1\2\0\0\vitalic\rcomments\1\0\0\1\2\0\0\vitalic\17dim_inactive\1\0\3\nshade\tdark\15percentage\4≥ÊÃô\3≥Êå˛\3\fenabled\2\fcompile\tpath\16/catppuccin\ncache\fstdpath\afn\bvim\1\0\1\fenabled\1\1\0\2\16term_colors\1\27transparent_background\1\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-git"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/cmp-git",
    url = "https://github.com/petertriho/cmp-git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
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
  ["cmp-snippy"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/cmp-snippy",
    url = "https://github.com/dcampos/cmp-snippy"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/colorbuddy.vim",
    url = "https://github.com/tjdevries/colorbuddy.vim"
  },
  ["crates.nvim"] = {
    after_files = { "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/opt/crates.nvim/after/plugin/cmp_crates.lua" },
    config = { "\27LJ\2\n_\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\npopup\1\0\0\1\0\1\22show_version_date\2\nsetup\vcrates\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/opt/crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  ctags = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/ctags",
    url = "https://github.com/universal-ctags/ctags"
  },
  ["dhall-vim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/dhall-vim",
    url = "https://github.com/vmchale/dhall-vim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\n^\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\ttext\1\0\0\1\0\1\fspinner\15dots_pulse\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n≠\5\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\18virt_text_pos\beol\ndelay\3d\nsigns\1\0\1!current_line_blame_formatter@   ¬∑ <author>, <author_time:%R> | <summary> (<abbrev_sha>)\17changedelete\1\0\4\ttext\b‚ñè\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\b‚Äæ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\b‚ñÅ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\ttext\b‚ñè\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\b‚ñè\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["goto-preview"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17goto-preview\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/goto-preview",
    url = "https://github.com/rmagatti/goto-preview"
  },
  harpoon = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["incline.nvim"] = {
    config = { "\27LJ\2\nã\6\0\0\6\0!\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\r\0005\4\t\0005\5\b\0=\5\n\0045\5\v\0=\5\f\4=\4\14\3=\3\15\0025\3\16\0004\4\0\0=\4\17\3=\3\18\0025\3\20\0005\4\19\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\27\0005\5\26\0=\5\28\0045\5\29\0=\5\30\4=\4\31\3=\3 \2B\0\2\1K\0\1\0\vwindow\17winhighlight\rinactive\1\0\3\vNormal\20InclineNormalNC\16EndOfBuffer\tNone\vSearch\tNone\vactive\1\0\0\1\0\3\vNormal\18InclineNormal\16EndOfBuffer\tNone\vSearch\tNone\14placement\1\0\2\15horizontal\nright\rvertical\btop\foptions\1\0\2\twrap\1\15signcolumn\ano\vmargin\1\0\4\nwidth\bfit\vzindex\0032\17padding_char\6 \fpadding\3\1\1\0\2\15horizontal\3\1\rvertical\3\0\vignore\14filetypes\1\0\4\18floating_wins\2\rbuftypes\fspecial\rwintypes\fspecial\21unlisted_buffers\2\14highlight\vgroups\1\0\0\20InclineNormalNC\1\0\2\ngroup\16NormalFloat\fdefault\2\18InclineNormal\1\0\0\1\0\2\ngroup\16NormalFloat\fdefault\2\thide\1\0\3\16focused_win\2\ronly_win\2\15cursorline\2\23debounce_threshold\1\0\1\vrender\nbasic\1\0\2\vrising\3\n\ffalling\0032\nsetup\fincline\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/incline.nvim",
    url = "https://github.com/b0o/incline.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n^\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\19use_treesitter\2\tchar\b‚îÇ\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kanagawa.nvim"] = {
    config = { "\27LJ\2\nÄ\3\0\0\4\0\16\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0024\3\0\0=\3\v\0025\3\f\0=\3\r\0024\3\0\0=\3\14\0024\3\0\0=\3\15\2B\0\2\1K\0\1\0\14overrides\vcolors\25variablebuiltinStyle\1\0\1\vitalic\2\14typeStyle\19statementStyle\1\0\1\tbold\2\17keywordStyle\1\0\1\vitalic\2\18functionStyle\17commentStyle\1\0\1\vitalic\2\1\0\b\ntheme\fdefault\14undercurl\2\19terminalColors\2\17globalStatus\2\16dimInactive\2\16transparent\1\21specialException\2\18specialReturn\2\nsetup\rkanagawa\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["neo-tree-diagnostics.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/opt/neo-tree-diagnostics.nvim",
    url = "https://github.com/mrbjarksen/neo-tree-diagnostics.nvim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neogit = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n/\0\2\4\1\2\0\a9\2\1\1=\2\0\1-\2\0\0009\3\1\0018\2\3\2=\2\1\1L\1\2\0\2¿\tkind\tmenu1\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1¿\tbody\19expand_snippet©\b\1\0\v\0.\0R6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0025\2\3\0009\3\4\0005\5\n\0005\6\6\0005\a\5\0=\a\a\0063\a\b\0=\a\t\6=\6\v\0055\6\r\0003\a\f\0=\a\14\6=\6\15\0055\6\18\0009\a\16\0009\a\17\aB\a\1\2=\a\19\0069\a\16\0009\a\20\aB\a\1\2=\a\21\0069\a\16\0009\a\22\a)\t¸ˇB\a\2\2=\a\23\0069\a\16\0009\a\22\a)\t\4\0B\a\2\2=\a\24\0069\a\16\0009\a\25\aB\a\1\2=\a\26\0069\a\16\0009\a\27\aB\a\1\2=\a\28\0069\a\16\0009\a\29\a5\t \0009\n\30\0009\n\31\n=\n!\tB\a\2\2=\a\"\6=\6\16\0054\6\b\0005\a#\0>\a\1\0065\a$\0>\a\2\0065\a%\0>\a\3\0065\a&\0>\a\4\0065\a'\0>\a\5\0065\a(\0>\a\6\0065\a)\0>\a\a\6=\6*\0055\6+\0=\6,\5B\3\2\0016\3\0\0'\5-\0B\3\2\0029\3\4\0034\5\0\0B\3\2\0012\0\0ÄK\0\1\0\17cmp_nvim_lsp\17experimental\1\0\1\15ghost_text\2\fsources\1\0\1\tname\vsnippy\1\0\1\tname\bgit\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\1\0\1\tname\tpath\1\0\1\tname\vcrates\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-t>\21select_next_item\n<C-s>\1\0\0\21select_prev_item\fmapping\fsnippet\vexpand\1\0\0\0\15formatting\1\0\0\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\nsetup\1\0\25\nClass\bÔ¥Ø\rConstant\bÔ£ø\rVariable\bÔúõ\vStruct\bÔ≠Ñ\nField\bÔ∞†\nEvent\bÔÉß\16Constructor\b‚åò\15EnumMember\bÔÖù\rFunction\bÔûî\vFolder\bÔÅª\vMethod\bÔö¶\14Reference\bÔúÜ\tText\bÔÉâ\tFile\bÔúò\rOperator\bÔöî\nColor\bÔ£ó\18TypeParameter\5\fSnippet\bÔô∞\fKeyword\bÔ®ã\tEnum\bÔÖù\nValue\bÔ¢ü\tUnit\bÔ•¨\rProperty\bÔ∞†\vModule\bÔ£í\14Interface\bÔÉ®\vsnippy\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\ng\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvim¥\3\1\0\5\0\17\0\0286\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0005\4\6\0B\1\3\0016\1\2\0009\1\3\0019\1\4\1'\3\a\0005\4\b\0B\1\3\0019\1\t\0005\2\v\0=\2\n\0019\1\f\0004\2\3\0005\3\r\0003\4\14\0=\4\15\0034\4\0\0=\4\16\3>\3\1\2=\2\n\1K\0\1\0\targs\fprogram\0\1\0\5\frequest\vlaunch\bcwd\23${workspaceFolder}\tname\vLaunch\16stopOnEntry\1\ttype\tlldb\19configurations\1\0\3\fcommand\25/usr/bin/lldb-vscode\tname\tlldb\ttype\15executable\trust\radapters\1\0\4\vtexthl\rErrorMsg\nnumhl\5\vlinehl\5\ttext\b‚ûî\15DapStopped\1\0\4\vtexthl\vString\nnumhl\5\vlinehl\5\ttext\b‚¨§\18DapBreakpoint\16sign_define\afn\bvim\bdap\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ndapui\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26nvim-dap-virtual-text\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-gps"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nÉ\14\0\2\t\1*\0©\1-\2\0\0\n\2\0\0X\2\bÄ-\2\0\0009\2\0\2\n\2\0\0X\2\4Ä-\2\0\0009\2\0\2\15\0\2\0X\3\6Ä6\2\1\0009\2\2\0029\2\3\2'\4\4\0+\5\1\0B\2\3\0016\2\1\0009\2\2\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0B\2\4\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\n\0'\a\v\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\f\0'\a\r\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\14\0'\a\15\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\16\0'\a\17\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\18\0'\a\19\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\20\0'\a\21\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\22\0'\a\23\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\24\0'\a\25\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\26\0'\a\27\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\28\0'\a\29\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\30\0'\a\31\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6 \0'\a!\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\"\0'\a#\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5$\0'\6\14\0'\a%\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5&\0'\6'\0'\a(\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5&\0'\6)\0'\a\21\0004\b\0\0B\2\6\1K\0\1\0\0¿\n<C-h>;<cmd>Telescope lsp_code_actions theme=get_dropdown<cr>\n<C-a>\6iA<cmd>Telescope lsp_range_code_actions theme=get_dropdown<cr>\6x\27<cmd>TroubleToggle<cr>\15<leader>cx/<cmd>lua vim.lsp.buf.type_definition()<cr>\15<leader>ctI<cmd>Telescope lsp_dynamic_workspace_symbols theme=get_dropdown <cr>\15<leader>cs&<cmd>lua vim.lsp.buf.rename()<cr>\15<leader>cr,<cmd>lua vim.diagnostic.goto_prev()<cr>\15<leader>cp,<cmd>lua vim.diagnostic.goto_next()<cr>\15<leader>cn?<cmd>Telescope lsp_implementations theme=get_dropdown <cr>\15<leader>ci.<cmd>lua vim.lsp.buf.signature_help()<cr>\15<leader>ch:<cmd>Telescope lsp_references theme=get_dropdown <cr>\15<leader>cD*<cmd>lua vim.lsp.buf.definition()<cr>\15<leader>cd+<cmd>lua vim.lsp.buf.code_action()<cr>\15<leader>caC<cmd>lua vim.lsp.stop_client(vim.lsp.get_active_clients())<cr>\16<leader>clr%<cmd>lua vim.lsp.buf.hover()<cr>\6S\6n\24nvim_buf_set_keymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option©\1          augroup lsp_formatting_sync\n          autocmd! * <buffer>\n          autocmd BufWritePre <buffer> lua vim.lsp.buf.format()\n          augroup END\n          \14nvim_exec\bapi\bvim\vformat\20\1\1\2\0\1\0\0033\1\0\0002\0\0ÄL\1\2\0\0ÿ\b\0\2\t\1\29\0W6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0'\a\5\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\6\0'\a\a\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\b\0'\a\t\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\n\0'\a\v\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\f\0'\a\r\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\14\0'\a\15\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\16\0'\a\17\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\18\0'\a\19\0004\b\0\0B\2\6\0016\2\0\0009\2\20\0025\3\23\0005\4\22\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\3=\3\21\2-\2\0\0B\2\1\2\18\4\0\0\18\5\1\0D\2\3\0\5¿\6r\1\0\3\6d\14debug run\6r\16release run\tname\t+run\6d\1\0\4\6d\24document everything\6b\18open the book\6s#standard library documentation\tname\19+documentation\6b\1\0\0\1\0\4\6c\ncheck\6b\nbuild\6r\20build (release)\tname\v+build\24which_key_local_map\6g8<cmd>belowright 10sp | term cargo run --release<cr>\20<localleader>rr.<cmd>belowright 10sp | term cargo run<cr>\20<localleader>rd5<cmd>belowright 10sp | term rustup doc --std<cr>\20<localleader>ds5<cmd>belowright 10sp | term cargo doc --open<cr>\20<localleader>dd6<cmd>belowright 10sp | term rustup doc --book<cr>\20<localleader>db:<cmd>belowright 10sp | term cargo build --release<cr>\20<localleader>br0<cmd>belowright 10sp | term cargo check<cr>\20<localleader>bc0<cmd>belowright 10sp | term cargo build<cr>\20<localleader>bb\6n\24nvim_buf_set_keymap\bapi\bvimó\16\1\0\r\0Q\0î\0016\0\0\0009\0\1\0'\2\2\0B\0\2\2\14\0\0\0X\1\1Ä'\0\3\0006\1\4\0009\1\5\1'\3\6\0\18\4\0\0B\1\3\0024\2\5\0005\3\a\0>\3\1\0025\3\b\0>\3\2\0025\3\t\0>\3\3\0025\3\n\0>\3\4\0026\3\v\0\18\5\2\0B\3\2\4X\6\nÄ6\b\f\0009\b\r\b9\b\14\b9\n\15\a5\v\16\0009\f\15\a=\f\17\v9\f\18\a=\f\18\vB\b\3\1E\6\3\3R\6Ù\1276\3\f\0009\3\19\3'\5\20\0B\3\2\0016\3\f\0009\3\21\0039\3\22\0035\5\24\0005\6\23\0=\6\25\0055\6\26\0=\6\27\5B\3\2\0016\3\28\0'\5\29\0B\3\2\0026\4\f\0009\4\30\0049\4\31\0049\4 \4B\4\1\0026\5\28\0'\a!\0B\5\2\0029\5\"\5\18\a\4\0B\5\2\2\18\4\5\0003\5#\0009\6$\0039\6%\0065\b&\0=\4'\b5\tA\0005\n)\0005\v(\0=\v*\n5\v+\0=\v,\n5\v-\0=\v.\n5\v/\0=\v0\n5\v1\0005\f2\0=\f3\v5\f4\0=\f5\v=\v6\n5\v7\0=\v8\n5\v9\0=\v:\n5\v;\0=\v<\n5\v=\0=\v>\n5\v?\0=\v@\n=\nB\t=\tC\b3\tD\0=\tE\bB\6\2\0019\6F\0039\6%\0065\bG\0=\4'\b\18\t\5\0004\v\0\0B\t\2\2=\tE\bB\6\2\0019\6H\0039\6%\0065\bI\0=\4'\b\18\t\5\0004\v\0\0B\t\2\2=\tE\bB\6\2\0019\6J\0039\6%\0065\bK\0=\4'\b\18\t\5\0005\vL\0B\t\2\2=\tE\bB\6\2\0019\6M\0039\6%\0065\bN\0=\4'\b\18\t\5\0004\v\0\0B\t\2\2=\tE\bB\6\2\0019\6O\0039\6%\0065\bP\0=\4'\b\18\t\5\0004\v\0\0B\t\2\2=\tE\bB\6\2\0012\0\0ÄK\0\1\0\1\0\0\ngopls\1\0\0\17purescriptls\1\0\1\vformat\1\1\0\0\nvuels\1\0\0\vclangd\1\0\0\bhls\14on_attach\0\rsettings\18rust-analyzer\1\0\0\14procMacro\1\0\1\venable\2\18notifications\1\0\1\22cargoTomlNotFound\2\tlens\1\0\6\venable\2\15references\2\21methodReferences\2\brun\2\20implementations\2\ndebug\2\17hoverActions\1\0\6\16gotoTypeDef\2\brun\2\venable\2\17linksInHover\2\20implementations\2\ndebug\2\16diagnostics\1\0\2\venable\2\23enableExperimental\2\15completion\15autoimport\1\0\1\venable\2\fpostfix\1\0\1\venable\2\1\0\2\23addCallParenthesis\2\28addCallArgumentSnippets\2\16checkOnSave\1\0\2\venable\2\16allFeatures\2\ncargo\1\0\3\15autoreload\2\16allFeatures\2\25loadOutDirsFromCheck\2\rcallInfo\1\0\1\tfull\2\vassist\1\0\0\1\0\3\16importGroup\2\17importPrefix\ncrate\22importGranularity\ncrate\17capabilities\1\0\0\nsetup\18rust_analyzer\0\25default_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\14lspconfig\frequire\nfloat\1\0\2\vsource\valways\vheader\1\17virtual_text\1\0\3\nsigns\1\21update_in_insert\1\14underline\1\1\0\3\fspacing\3\6\vprefix\b¬ª \vsource\valways\vconfig\15diagnosticÀ\2    hi StatusLineLinNbr guibg=#23272e guifg=#51afef\n    hi StatusLineLSPOk guibg=#23272e guifg=#98be65\n    hi StatusLineLSPErrors guibg=#23272e guifg=#ff6c6b\n    hi StatusLineLSPWarnings guibg=#23272e guifg=#ECBE7B\n    hi StatusLineLSPInfo guibg=#23272e guifg=#51afef\n    hi StatusLineLSPHints guibg=#23272e guifg=#c678dd\n    \bcmd\ttext\vtexthl\1\0\1\nnumhl\5\tname\16sign_define\afn\bvim\vipairs\1\0\2\ttext\bÔÅô\tname\23DiagnosticSignInfo\1\0\2\ttext\bÔÅö\tname\23DiagnosticSignHint\1\0\2\ttext\bÔÅ±\tname\23DiagnosticSignWarn\1\0\2\ttext\bÔÅó\tname\24DiagnosticSignError\f%s/foss\vformat\vstring\t/tmp\tHOME\vgetenv\aos\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\na\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\0016\1\4\0=\0\1\1K\0\1\0\bvim\1\0\1\22background_colour\f#000000\nsetup\vnotify\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-snippy"] = {
    config = { "\27LJ\2\n´\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\rmappings\ais\1\0\0\1\0\2\f<S-Tab>\rprevious\n<Tab>\22expand_or_advance\1\0\1\17snippet_dirs\28~/.config/nvim/snippets\nsetup\vsnippy\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-snippy",
    url = "https://github.com/dcampos/nvim-snippy"
  },
  ["nvim-tree"] = {
    config = { "\27LJ\2\nÀ\t\0\0\v\0J\0≥\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\6\0005\4\5\0=\4\a\0035\4G\0005\5\b\0004\6\21\0005\a\n\0005\b\t\0=\b\v\a\18\b\0\0'\n\f\0B\b\2\2=\b\r\a>\a\1\0065\a\15\0005\b\14\0=\b\v\a\18\b\0\0'\n\16\0B\b\2\2=\b\r\a>\a\2\0065\a\18\0005\b\17\0=\b\v\a\18\b\0\0'\n\19\0B\b\2\2=\b\r\a>\a\3\0065\a\21\0005\b\20\0=\b\v\a\18\b\0\0'\n\22\0B\b\2\2=\b\r\a>\a\4\0065\a\24\0005\b\23\0=\b\v\a\18\b\0\0'\n\25\0B\b\2\2=\b\r\a>\a\5\0065\a\27\0005\b\26\0=\b\v\a\18\b\0\0'\n\28\0B\b\2\2=\b\r\a>\a\6\0065\a\30\0005\b\29\0=\b\v\a\18\b\0\0'\n\28\0B\b\2\2=\b\r\a>\a\a\0065\a \0005\b\31\0=\b\v\a\18\b\0\0'\n!\0B\b\2\2=\b\r\a>\a\b\0065\a#\0005\b\"\0=\b\v\a\18\b\0\0'\n$\0B\b\2\2=\b\r\a>\a\t\0065\a&\0005\b%\0=\b\v\a\18\b\0\0'\n'\0B\b\2\2=\b\r\a>\a\n\0065\a)\0005\b(\0=\b\v\a\18\b\0\0'\n*\0B\b\2\2=\b\r\a>\a\v\0065\a,\0005\b+\0=\b\v\a\18\b\0\0'\n-\0B\b\2\2=\b\r\a>\a\f\0065\a/\0005\b.\0=\b\v\a\18\b\0\0'\n0\0B\b\2\2=\b\r\a>\a\r\0065\a2\0005\b1\0=\b\v\a\18\b\0\0'\n3\0B\b\2\2=\b\r\a>\a\14\0065\a5\0005\b4\0=\b\v\a\18\b\0\0'\n6\0B\b\2\2=\b\r\a>\a\15\0065\a8\0005\b7\0=\b\v\a\18\b\0\0'\n9\0B\b\2\2=\b\r\a>\a\16\0065\a;\0005\b:\0=\b\v\a\18\b\0\0'\n<\0B\b\2\2=\b\r\a>\a\17\0065\a>\0005\b=\0=\b\v\a\18\b\0\0'\n?\0B\b\2\2=\b\r\a>\a\18\0065\aA\0005\b@\0=\b\v\a\18\b\0\0'\nB\0B\b\2\2=\b\r\a>\a\19\0065\aD\0005\bC\0=\b\v\a\18\b\0\0'\nE\0B\b\2\2=\b\r\a>\a\20\6=\6F\5=\5H\4=\4I\3B\1\2\1K\0\1\0\tview\rmappings\1\0\0\tlist\nclose\1\0\0\1\2\0\0\6q\vdir_up\1\0\0\1\2\0\0\6c\npaste\1\0\0\1\2\0\0\6p\tcopy\1\0\0\1\2\0\0\6y\bcut\1\0\0\1\2\0\0\6x\16full_rename\1\0\0\1\2\0\0\n<C-r>\vrename\1\0\0\1\2\0\0\6r\vremove\1\0\0\1\2\0\0\6d\vcreate\1\0\0\1\2\0\0\6a\frefresh\1\0\0\1\2\0\0\6R\20toggle_dotfiles\1\0\0\1\2\0\0\6.\19toggle_ignored\1\0\0\1\2\0\0\6I\fpreview\1\0\0\1\2\0\0\n<Tab>\1\0\0\1\2\0\0\v<S-CR>\15close_node\1\0\0\1\2\0\0\t<BS>\vtabnew\1\0\0\1\2\0\0\n<C-t>\nsplit\1\0\0\1\2\0\0\n<C-o>\vvsplit\1\0\0\1\2\0\0\n<C-v>\acd\1\0\0\1\2\0\0\6o\acb\tedit\bkey\1\0\0\1\3\0\0\t<CR>\n<TAB>\1\0\1\16custom_only\2\24update_focused_file\1\0\0\1\0\1\venable\2\nsetup\14nvim-tree\23nvim_tree_callback\21nvim-tree.config\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-tree",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÄ\5\0\0\a\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\r\0005\5\b\0005\6\t\0=\6\n\0055\6\v\0=\6\f\5=\5\14\4=\4\15\3=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0005\4\25\0=\4\26\3=\3\27\0025\3\28\0=\3\29\2B\0\2\1K\0\1\0\fautotag\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\19init_selection\bgnn\1\0\1\venable\2\16textobjects\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\rrenderer\1\0\0\nicons\nglyph\1\0\0\vfolder\1\0\2\topen\bÓóæ\fdefault\bÓóø\bgit\1\0\5\runmerged\bÓúß\vstaged\b‚úì\runstaged\b‚úó\14untracked\b‚òÖ\frenamed\b‚ûú\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\15show_icons\1\0\3\vfolder\2\tfile\2\bgit\2\19indent_markers\1\0\2\17higlight_git\2\25root_folder_modifier\a:.\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\nö\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\6\tmode\vcursor\14separator\b‚îÄ\22min_window_height\3\0\venable\2\15trim_scope\nouter\14max_lines\3\n\nsetup\23treesitter-context\frequire\0" },
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
  ["purescript-vim"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/purescript-vim",
    url = "https://github.com/purescript-contrib/purescript-vim"
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
    config = { "\27LJ\2\n¸\4\0\0\t\0 \00176\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\19\0005\4\5\0005\5\4\0=\5\6\0045\5\16\0005\6\b\0009\a\a\0=\a\t\0069\a\n\0=\a\v\0069\a\f\0=\a\r\0069\a\14\0=\a\15\6=\6\17\5=\5\18\4=\4\20\0035\4\22\0005\5\21\0=\5\23\0044\5\3\0006\6\0\0'\b\24\0B\6\2\0029\6\25\0064\b\0\0B\6\2\0?\6\0\0=\5\26\4=\4\27\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\28\1'\3\26\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\28\1'\3\23\0B\1\2\0016\1\29\0009\1\30\1'\3\31\0B\1\2\1K\0\1\0<autocmd FileType TelescopePrompt inoremap <C-W> <C-S-W>\bcmd\bvim\19load_extension\15extensions\14ui-select\17get_dropdown\21telescope.themes\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\nclose\n<tab>\18add_selection\n<c-t>\24move_selection_next\n<c-s>\1\0\0\28move_selection_previous\17path_display\1\0\0\1\2\0\0\rtruncate\nsetup\14telescope\22telescope.actions\frequire\3ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
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
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-glsl"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/vim-glsl",
    url = "https://github.com/petrbroz/vim-glsl"
  },
  ["vim-helm"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/vim-helm",
    url = "https://github.com/towolf/vim-helm"
  },
  ["vim-markdown-toc"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/vim-markdown-toc",
    url = "https://github.com/mzlogin/vim-markdown-toc"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-terraform"] = {
    loaded = true,
    path = "/Users/vanjarapu.rajasekhar/.local/share/nvim/site/pack/packer/start/vim-terraform",
    url = "https://github.com/hashivim/vim-terraform"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^neo%-tree%.sources%.diagnostics"] = "neo-tree-diagnostics.nvim",
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

-- Config for: nvim-dap-virtual-text
time([[Config for nvim-dap-virtual-text]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26nvim-dap-virtual-text\frequire\0", "config", "nvim-dap-virtual-text")
time([[Config for nvim-dap-virtual-text]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\nö\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\6\tmode\vcursor\14separator\b‚îÄ\22min_window_height\3\0\venable\2\15trim_scope\nouter\14max_lines\3\n\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: incline.nvim
time([[Config for incline.nvim]], true)
try_loadstring("\27LJ\2\nã\6\0\0\6\0!\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\r\0005\4\t\0005\5\b\0=\5\n\0045\5\v\0=\5\f\4=\4\14\3=\3\15\0025\3\16\0004\4\0\0=\4\17\3=\3\18\0025\3\20\0005\4\19\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\27\0005\5\26\0=\5\28\0045\5\29\0=\5\30\4=\4\31\3=\3 \2B\0\2\1K\0\1\0\vwindow\17winhighlight\rinactive\1\0\3\vNormal\20InclineNormalNC\16EndOfBuffer\tNone\vSearch\tNone\vactive\1\0\0\1\0\3\vNormal\18InclineNormal\16EndOfBuffer\tNone\vSearch\tNone\14placement\1\0\2\15horizontal\nright\rvertical\btop\foptions\1\0\2\twrap\1\15signcolumn\ano\vmargin\1\0\4\nwidth\bfit\vzindex\0032\17padding_char\6 \fpadding\3\1\1\0\2\15horizontal\3\1\rvertical\3\0\vignore\14filetypes\1\0\4\18floating_wins\2\rbuftypes\fspecial\rwintypes\fspecial\21unlisted_buffers\2\14highlight\vgroups\1\0\0\20InclineNormalNC\1\0\2\ngroup\16NormalFloat\fdefault\2\18InclineNormal\1\0\0\1\0\2\ngroup\16NormalFloat\fdefault\2\thide\1\0\3\16focused_win\2\ronly_win\2\15cursorline\2\23debounce_threshold\1\0\1\vrender\nbasic\1\0\2\vrising\3\n\ffalling\0032\nsetup\fincline\frequire\0", "config", "incline.nvim")
time([[Config for incline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n¸\4\0\0\t\0 \00176\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\19\0005\4\5\0005\5\4\0=\5\6\0045\5\16\0005\6\b\0009\a\a\0=\a\t\0069\a\n\0=\a\v\0069\a\f\0=\a\r\0069\a\14\0=\a\15\6=\6\17\5=\5\18\4=\4\20\0035\4\22\0005\5\21\0=\5\23\0044\5\3\0006\6\0\0'\b\24\0B\6\2\0029\6\25\0064\b\0\0B\6\2\0?\6\0\0=\5\26\4=\4\27\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\28\1'\3\26\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\28\1'\3\23\0B\1\2\0016\1\29\0009\1\30\1'\3\31\0B\1\2\1K\0\1\0<autocmd FileType TelescopePrompt inoremap <C-W> <C-S-W>\bcmd\bvim\19load_extension\15extensions\14ui-select\17get_dropdown\21telescope.themes\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\rdefaults\1\0\0\rmappings\6i\1\0\0\n<esc>\nclose\n<tab>\18add_selection\n<c-t>\24move_selection_next\n<c-s>\1\0\0\28move_selection_previous\17path_display\1\0\0\1\2\0\0\rtruncate\nsetup\14telescope\22telescope.actions\frequire\3ÄÄ¿ô\4\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\ng\0\0\5\0\a\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0006\3\0\0009\3\1\0039\3\4\3B\3\1\2'\4\5\0&\3\4\3'\4\6\0D\0\4\0\tfile\6/\vgetcwd\25Path to executable: \ninput\afn\bvim¥\3\1\0\5\0\17\0\0286\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0005\4\6\0B\1\3\0016\1\2\0009\1\3\0019\1\4\1'\3\a\0005\4\b\0B\1\3\0019\1\t\0005\2\v\0=\2\n\0019\1\f\0004\2\3\0005\3\r\0003\4\14\0=\4\15\0034\4\0\0=\4\16\3>\3\1\2=\2\n\1K\0\1\0\targs\fprogram\0\1\0\5\frequest\vlaunch\bcwd\23${workspaceFolder}\tname\vLaunch\16stopOnEntry\1\ttype\tlldb\19configurations\1\0\3\fcommand\25/usr/bin/lldb-vscode\tname\tlldb\ttype\15executable\trust\radapters\1\0\4\vtexthl\rErrorMsg\nnumhl\5\vlinehl\5\ttext\b‚ûî\15DapStopped\1\0\4\vtexthl\vString\nnumhl\5\vlinehl\5\ttext\b‚¨§\18DapBreakpoint\16sign_define\afn\bvim\bdap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\19use_treesitter\2\tchar\b‚îÇ\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ndapui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: kanagawa.nvim
time([[Config for kanagawa.nvim]], true)
try_loadstring("\27LJ\2\nÄ\3\0\0\4\0\16\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0024\3\0\0=\3\v\0025\3\f\0=\3\r\0024\3\0\0=\3\14\0024\3\0\0=\3\15\2B\0\2\1K\0\1\0\14overrides\vcolors\25variablebuiltinStyle\1\0\1\vitalic\2\14typeStyle\19statementStyle\1\0\1\tbold\2\17keywordStyle\1\0\1\vitalic\2\18functionStyle\17commentStyle\1\0\1\vitalic\2\1\0\b\ntheme\fdefault\14undercurl\2\19terminalColors\2\17globalStatus\2\16dimInactive\2\16transparent\1\21specialException\2\18specialReturn\2\nsetup\rkanagawa\frequire\0", "config", "kanagawa.nvim")
time([[Config for kanagawa.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÄ\5\0\0\a\0\30\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\r\0005\5\b\0005\6\t\0=\6\n\0055\6\v\0=\6\f\5=\5\14\4=\4\15\3=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0005\4\25\0=\4\26\3=\3\27\0025\3\28\0=\3\29\2B\0\2\1K\0\1\0\fautotag\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\19init_selection\bgnn\1\0\1\venable\2\16textobjects\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\rrenderer\1\0\0\nicons\nglyph\1\0\0\vfolder\1\0\2\topen\bÓóæ\fdefault\bÓóø\bgit\1\0\5\runmerged\bÓúß\vstaged\b‚úì\runstaged\b‚úó\14untracked\b‚òÖ\frenamed\b‚ûú\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\15show_icons\1\0\3\vfolder\2\tfile\2\bgit\2\19indent_markers\1\0\2\17higlight_git\2\25root_folder_modifier\a:.\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
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
-- Config for: nvim-tree
time([[Config for nvim-tree]], true)
try_loadstring("\27LJ\2\nÀ\t\0\0\v\0J\0≥\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\6\0005\4\5\0=\4\a\0035\4G\0005\5\b\0004\6\21\0005\a\n\0005\b\t\0=\b\v\a\18\b\0\0'\n\f\0B\b\2\2=\b\r\a>\a\1\0065\a\15\0005\b\14\0=\b\v\a\18\b\0\0'\n\16\0B\b\2\2=\b\r\a>\a\2\0065\a\18\0005\b\17\0=\b\v\a\18\b\0\0'\n\19\0B\b\2\2=\b\r\a>\a\3\0065\a\21\0005\b\20\0=\b\v\a\18\b\0\0'\n\22\0B\b\2\2=\b\r\a>\a\4\0065\a\24\0005\b\23\0=\b\v\a\18\b\0\0'\n\25\0B\b\2\2=\b\r\a>\a\5\0065\a\27\0005\b\26\0=\b\v\a\18\b\0\0'\n\28\0B\b\2\2=\b\r\a>\a\6\0065\a\30\0005\b\29\0=\b\v\a\18\b\0\0'\n\28\0B\b\2\2=\b\r\a>\a\a\0065\a \0005\b\31\0=\b\v\a\18\b\0\0'\n!\0B\b\2\2=\b\r\a>\a\b\0065\a#\0005\b\"\0=\b\v\a\18\b\0\0'\n$\0B\b\2\2=\b\r\a>\a\t\0065\a&\0005\b%\0=\b\v\a\18\b\0\0'\n'\0B\b\2\2=\b\r\a>\a\n\0065\a)\0005\b(\0=\b\v\a\18\b\0\0'\n*\0B\b\2\2=\b\r\a>\a\v\0065\a,\0005\b+\0=\b\v\a\18\b\0\0'\n-\0B\b\2\2=\b\r\a>\a\f\0065\a/\0005\b.\0=\b\v\a\18\b\0\0'\n0\0B\b\2\2=\b\r\a>\a\r\0065\a2\0005\b1\0=\b\v\a\18\b\0\0'\n3\0B\b\2\2=\b\r\a>\a\14\0065\a5\0005\b4\0=\b\v\a\18\b\0\0'\n6\0B\b\2\2=\b\r\a>\a\15\0065\a8\0005\b7\0=\b\v\a\18\b\0\0'\n9\0B\b\2\2=\b\r\a>\a\16\0065\a;\0005\b:\0=\b\v\a\18\b\0\0'\n<\0B\b\2\2=\b\r\a>\a\17\0065\a>\0005\b=\0=\b\v\a\18\b\0\0'\n?\0B\b\2\2=\b\r\a>\a\18\0065\aA\0005\b@\0=\b\v\a\18\b\0\0'\nB\0B\b\2\2=\b\r\a>\a\19\0065\aD\0005\bC\0=\b\v\a\18\b\0\0'\nE\0B\b\2\2=\b\r\a>\a\20\6=\6F\5=\5H\4=\4I\3B\1\2\1K\0\1\0\tview\rmappings\1\0\0\tlist\nclose\1\0\0\1\2\0\0\6q\vdir_up\1\0\0\1\2\0\0\6c\npaste\1\0\0\1\2\0\0\6p\tcopy\1\0\0\1\2\0\0\6y\bcut\1\0\0\1\2\0\0\6x\16full_rename\1\0\0\1\2\0\0\n<C-r>\vrename\1\0\0\1\2\0\0\6r\vremove\1\0\0\1\2\0\0\6d\vcreate\1\0\0\1\2\0\0\6a\frefresh\1\0\0\1\2\0\0\6R\20toggle_dotfiles\1\0\0\1\2\0\0\6.\19toggle_ignored\1\0\0\1\2\0\0\6I\fpreview\1\0\0\1\2\0\0\n<Tab>\1\0\0\1\2\0\0\v<S-CR>\15close_node\1\0\0\1\2\0\0\t<BS>\vtabnew\1\0\0\1\2\0\0\n<C-t>\nsplit\1\0\0\1\2\0\0\n<C-o>\vvsplit\1\0\0\1\2\0\0\n<C-v>\acd\1\0\0\1\2\0\0\6o\acb\tedit\bkey\1\0\0\1\3\0\0\t<CR>\n<TAB>\1\0\1\16custom_only\2\24update_focused_file\1\0\0\1\0\1\venable\2\nsetup\14nvim-tree\23nvim_tree_callback\21nvim-tree.config\frequire\0", "config", "nvim-tree")
time([[Config for nvim-tree]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\n^\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\ttext\1\0\0\1\0\1\fspinner\15dots_pulse\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nÉ\14\0\2\t\1*\0©\1-\2\0\0\n\2\0\0X\2\bÄ-\2\0\0009\2\0\2\n\2\0\0X\2\4Ä-\2\0\0009\2\0\2\15\0\2\0X\3\6Ä6\2\1\0009\2\2\0029\2\3\2'\4\4\0+\5\1\0B\2\3\0016\2\1\0009\2\2\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0B\2\4\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\n\0'\a\v\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\f\0'\a\r\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\14\0'\a\15\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\16\0'\a\17\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\18\0'\a\19\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\20\0'\a\21\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\22\0'\a\23\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\24\0'\a\25\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\26\0'\a\27\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\28\0'\a\29\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\30\0'\a\31\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6 \0'\a!\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5\t\0'\6\"\0'\a#\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5$\0'\6\14\0'\a%\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5&\0'\6'\0'\a(\0004\b\0\0B\2\6\0016\2\1\0009\2\2\0029\2\b\2\18\4\1\0'\5&\0'\6)\0'\a\21\0004\b\0\0B\2\6\1K\0\1\0\0¿\n<C-h>;<cmd>Telescope lsp_code_actions theme=get_dropdown<cr>\n<C-a>\6iA<cmd>Telescope lsp_range_code_actions theme=get_dropdown<cr>\6x\27<cmd>TroubleToggle<cr>\15<leader>cx/<cmd>lua vim.lsp.buf.type_definition()<cr>\15<leader>ctI<cmd>Telescope lsp_dynamic_workspace_symbols theme=get_dropdown <cr>\15<leader>cs&<cmd>lua vim.lsp.buf.rename()<cr>\15<leader>cr,<cmd>lua vim.diagnostic.goto_prev()<cr>\15<leader>cp,<cmd>lua vim.diagnostic.goto_next()<cr>\15<leader>cn?<cmd>Telescope lsp_implementations theme=get_dropdown <cr>\15<leader>ci.<cmd>lua vim.lsp.buf.signature_help()<cr>\15<leader>ch:<cmd>Telescope lsp_references theme=get_dropdown <cr>\15<leader>cD*<cmd>lua vim.lsp.buf.definition()<cr>\15<leader>cd+<cmd>lua vim.lsp.buf.code_action()<cr>\15<leader>caC<cmd>lua vim.lsp.stop_client(vim.lsp.get_active_clients())<cr>\16<leader>clr%<cmd>lua vim.lsp.buf.hover()<cr>\6S\6n\24nvim_buf_set_keymap\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option©\1          augroup lsp_formatting_sync\n          autocmd! * <buffer>\n          autocmd BufWritePre <buffer> lua vim.lsp.buf.format()\n          augroup END\n          \14nvim_exec\bapi\bvim\vformat\20\1\1\2\0\1\0\0033\1\0\0002\0\0ÄL\1\2\0\0ÿ\b\0\2\t\1\29\0W6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0'\a\5\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\6\0'\a\a\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\b\0'\a\t\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\n\0'\a\v\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\f\0'\a\r\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\14\0'\a\15\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\16\0'\a\17\0004\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\18\0'\a\19\0004\b\0\0B\2\6\0016\2\0\0009\2\20\0025\3\23\0005\4\22\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\3=\3\21\2-\2\0\0B\2\1\2\18\4\0\0\18\5\1\0D\2\3\0\5¿\6r\1\0\3\6d\14debug run\6r\16release run\tname\t+run\6d\1\0\4\6d\24document everything\6b\18open the book\6s#standard library documentation\tname\19+documentation\6b\1\0\0\1\0\4\6c\ncheck\6b\nbuild\6r\20build (release)\tname\v+build\24which_key_local_map\6g8<cmd>belowright 10sp | term cargo run --release<cr>\20<localleader>rr.<cmd>belowright 10sp | term cargo run<cr>\20<localleader>rd5<cmd>belowright 10sp | term rustup doc --std<cr>\20<localleader>ds5<cmd>belowright 10sp | term cargo doc --open<cr>\20<localleader>dd6<cmd>belowright 10sp | term rustup doc --book<cr>\20<localleader>db:<cmd>belowright 10sp | term cargo build --release<cr>\20<localleader>br0<cmd>belowright 10sp | term cargo check<cr>\20<localleader>bc0<cmd>belowright 10sp | term cargo build<cr>\20<localleader>bb\6n\24nvim_buf_set_keymap\bapi\bvimó\16\1\0\r\0Q\0î\0016\0\0\0009\0\1\0'\2\2\0B\0\2\2\14\0\0\0X\1\1Ä'\0\3\0006\1\4\0009\1\5\1'\3\6\0\18\4\0\0B\1\3\0024\2\5\0005\3\a\0>\3\1\0025\3\b\0>\3\2\0025\3\t\0>\3\3\0025\3\n\0>\3\4\0026\3\v\0\18\5\2\0B\3\2\4X\6\nÄ6\b\f\0009\b\r\b9\b\14\b9\n\15\a5\v\16\0009\f\15\a=\f\17\v9\f\18\a=\f\18\vB\b\3\1E\6\3\3R\6Ù\1276\3\f\0009\3\19\3'\5\20\0B\3\2\0016\3\f\0009\3\21\0039\3\22\0035\5\24\0005\6\23\0=\6\25\0055\6\26\0=\6\27\5B\3\2\0016\3\28\0'\5\29\0B\3\2\0026\4\f\0009\4\30\0049\4\31\0049\4 \4B\4\1\0026\5\28\0'\a!\0B\5\2\0029\5\"\5\18\a\4\0B\5\2\2\18\4\5\0003\5#\0009\6$\0039\6%\0065\b&\0=\4'\b5\tA\0005\n)\0005\v(\0=\v*\n5\v+\0=\v,\n5\v-\0=\v.\n5\v/\0=\v0\n5\v1\0005\f2\0=\f3\v5\f4\0=\f5\v=\v6\n5\v7\0=\v8\n5\v9\0=\v:\n5\v;\0=\v<\n5\v=\0=\v>\n5\v?\0=\v@\n=\nB\t=\tC\b3\tD\0=\tE\bB\6\2\0019\6F\0039\6%\0065\bG\0=\4'\b\18\t\5\0004\v\0\0B\t\2\2=\tE\bB\6\2\0019\6H\0039\6%\0065\bI\0=\4'\b\18\t\5\0004\v\0\0B\t\2\2=\tE\bB\6\2\0019\6J\0039\6%\0065\bK\0=\4'\b\18\t\5\0005\vL\0B\t\2\2=\tE\bB\6\2\0019\6M\0039\6%\0065\bN\0=\4'\b\18\t\5\0004\v\0\0B\t\2\2=\tE\bB\6\2\0019\6O\0039\6%\0065\bP\0=\4'\b\18\t\5\0004\v\0\0B\t\2\2=\tE\bB\6\2\0012\0\0ÄK\0\1\0\1\0\0\ngopls\1\0\0\17purescriptls\1\0\1\vformat\1\1\0\0\nvuels\1\0\0\vclangd\1\0\0\bhls\14on_attach\0\rsettings\18rust-analyzer\1\0\0\14procMacro\1\0\1\venable\2\18notifications\1\0\1\22cargoTomlNotFound\2\tlens\1\0\6\venable\2\15references\2\21methodReferences\2\brun\2\20implementations\2\ndebug\2\17hoverActions\1\0\6\16gotoTypeDef\2\brun\2\venable\2\17linksInHover\2\20implementations\2\ndebug\2\16diagnostics\1\0\2\venable\2\23enableExperimental\2\15completion\15autoimport\1\0\1\venable\2\fpostfix\1\0\1\venable\2\1\0\2\23addCallParenthesis\2\28addCallArgumentSnippets\2\16checkOnSave\1\0\2\venable\2\16allFeatures\2\ncargo\1\0\3\15autoreload\2\16allFeatures\2\25loadOutDirsFromCheck\2\rcallInfo\1\0\1\tfull\2\vassist\1\0\0\1\0\3\16importGroup\2\17importPrefix\ncrate\22importGranularity\ncrate\17capabilities\1\0\0\nsetup\18rust_analyzer\0\25default_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\14lspconfig\frequire\nfloat\1\0\2\vsource\valways\vheader\1\17virtual_text\1\0\3\nsigns\1\21update_in_insert\1\14underline\1\1\0\3\fspacing\3\6\vprefix\b¬ª \vsource\valways\vconfig\15diagnosticÀ\2    hi StatusLineLinNbr guibg=#23272e guifg=#51afef\n    hi StatusLineLSPOk guibg=#23272e guifg=#98be65\n    hi StatusLineLSPErrors guibg=#23272e guifg=#ff6c6b\n    hi StatusLineLSPWarnings guibg=#23272e guifg=#ECBE7B\n    hi StatusLineLSPInfo guibg=#23272e guifg=#51afef\n    hi StatusLineLSPHints guibg=#23272e guifg=#c678dd\n    \bcmd\ttext\vtexthl\1\0\1\nnumhl\5\tname\16sign_define\afn\bvim\vipairs\1\0\2\ttext\bÔÅô\tname\23DiagnosticSignInfo\1\0\2\ttext\bÔÅö\tname\23DiagnosticSignHint\1\0\2\ttext\bÔÅ±\tname\23DiagnosticSignWarn\1\0\2\ttext\bÔÅó\tname\24DiagnosticSignError\f%s/foss\vformat\vstring\t/tmp\tHOME\vgetenv\aos\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\n™\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vlayout\1\0\4\14placement\tedge\16show_guides\2\17manage_folds\2\23highlight_on_hover\2\1\0\1\22default_direction\17prefer_right\nsetup\vaerial\frequire\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-snippy
time([[Config for nvim-snippy]], true)
try_loadstring("\27LJ\2\n´\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\2B\0\2\1K\0\1\0\rmappings\ais\1\0\0\1\0\2\f<S-Tab>\rprevious\n<Tab>\22expand_or_advance\1\0\1\17snippet_dirs\28~/.config/nvim/snippets\nsetup\vsnippy\frequire\0", "config", "nvim-snippy")
time([[Config for nvim-snippy]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: goto-preview
time([[Config for goto-preview]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17goto-preview\frequire\0", "config", "goto-preview")
time([[Config for goto-preview]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n≠\5\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\2B\0\2\1K\0\1\0\28current_line_blame_opts\1\0\2\18virt_text_pos\beol\ndelay\3d\nsigns\1\0\1!current_line_blame_formatter@   ¬∑ <author>, <author_time:%R> | <summary> (<abbrev_sha>)\17changedelete\1\0\4\ttext\b‚ñè\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\b‚Äæ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\b‚ñÅ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\ttext\b‚ñè\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\b‚ñè\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nâ\5\0\0\a\0$\0:6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\5\0009\4\6\0049\4\a\4'\6\b\0B\4\2\2'\5\t\0&\4\5\4=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\17\0=\4\18\0034\4\0\0=\4\19\0034\4\0\0=\4\20\0034\4\0\0=\4\21\0034\4\0\0=\4\22\0034\4\0\0=\4\23\0034\4\0\0=\4\24\0034\4\0\0=\4\25\0034\4\0\0=\4\26\0034\4\0\0=\4\27\0034\4\0\0=\4\28\3=\3\29\0024\3\0\0=\3\30\0024\3\0\0=\3\31\0024\3\0\0=\3 \2B\0\2\0016\0\5\0009\0!\0'\2\"\0B\0\2\0016\0\0\0'\2#\0B\0\2\1K\0\1\0\16colorscheme\27colorscheme catppuccin\bcmd\24highlight_overrides\20color_overrides\17integrations\vstyles\14operators\ntypes\15properties\rbooleans\fnumbers\14variables\fstrings\rkeywords\14functions\nloops\17conditionals\1\2\0\0\vitalic\rcomments\1\0\0\1\2\0\0\vitalic\17dim_inactive\1\0\3\nshade\tdark\15percentage\4≥ÊÃô\3≥Êå˛\3\fenabled\2\fcompile\tpath\16/catppuccin\ncache\fstdpath\afn\bvim\1\0\1\fenabled\1\1\0\2\16term_colors\1\27transparent_background\1\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\na\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\0016\1\4\0=\0\1\1K\0\1\0\bvim\1\0\1\22background_colour\f#000000\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n/\0\2\4\1\2\0\a9\2\1\1=\2\0\1-\2\0\0009\3\1\0018\2\3\2=\2\1\1L\1\2\0\2¿\tkind\tmenu1\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1¿\tbody\19expand_snippet©\b\1\0\v\0.\0R6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0025\2\3\0009\3\4\0005\5\n\0005\6\6\0005\a\5\0=\a\a\0063\a\b\0=\a\t\6=\6\v\0055\6\r\0003\a\f\0=\a\14\6=\6\15\0055\6\18\0009\a\16\0009\a\17\aB\a\1\2=\a\19\0069\a\16\0009\a\20\aB\a\1\2=\a\21\0069\a\16\0009\a\22\a)\t¸ˇB\a\2\2=\a\23\0069\a\16\0009\a\22\a)\t\4\0B\a\2\2=\a\24\0069\a\16\0009\a\25\aB\a\1\2=\a\26\0069\a\16\0009\a\27\aB\a\1\2=\a\28\0069\a\16\0009\a\29\a5\t \0009\n\30\0009\n\31\n=\n!\tB\a\2\2=\a\"\6=\6\16\0054\6\b\0005\a#\0>\a\1\0065\a$\0>\a\2\0065\a%\0>\a\3\0065\a&\0>\a\4\0065\a'\0>\a\5\0065\a(\0>\a\6\0065\a)\0>\a\a\6=\6*\0055\6+\0=\6,\5B\3\2\0016\3\0\0'\5-\0B\3\2\0029\3\4\0034\5\0\0B\3\2\0012\0\0ÄK\0\1\0\17cmp_nvim_lsp\17experimental\1\0\1\15ghost_text\2\fsources\1\0\1\tname\vsnippy\1\0\1\tname\bgit\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\1\0\1\tname\tpath\1\0\1\tname\vcrates\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-t>\21select_next_item\n<C-s>\1\0\0\21select_prev_item\fmapping\fsnippet\vexpand\1\0\0\0\15formatting\1\0\0\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\nsetup\1\0\25\nClass\bÔ¥Ø\rConstant\bÔ£ø\rVariable\bÔúõ\vStruct\bÔ≠Ñ\nField\bÔ∞†\nEvent\bÔÉß\16Constructor\b‚åò\15EnumMember\bÔÖù\rFunction\bÔûî\vFolder\bÔÅª\vMethod\bÔö¶\14Reference\bÔúÜ\tText\bÔÉâ\tFile\bÔúò\rOperator\bÔöî\nColor\bÔ£ó\18TypeParameter\5\fSnippet\bÔô∞\fKeyword\bÔ®ã\tEnum\bÔÖù\nValue\bÔ¢ü\tUnit\bÔ•¨\rProperty\bÔ∞†\vModule\bÔ£í\14Interface\bÔÉ®\vsnippy\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead Cargo.toml ++once lua require("packer.load")({'crates.nvim'}, { event = "BufRead Cargo.toml" }, _G.packer_plugins)]]
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
