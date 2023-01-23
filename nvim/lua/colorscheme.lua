local function set_hl(group, tbl)
  vim.api.nvim_set_hl(0, group, tbl)
end

local colors = {
  bg = '#111111',
  bg2 = '#2A2A2A',
  dimmed_grey = '#505050',
  white = '#CCCCCC',
  dimmed_white = '#AAAAAA',
  grey = '#666666',
  blue = '#427BFF',
  pink = '#DC4DEB',
  pink2 = '#D43B7C',
  red = '#FF549E',
  orange = '#F57B78',
  violet = '#8B62EB',
  violet2 = '#5245F7',
  cyan = '#31CAD4',
  green = '#41EBAE',
  green2 = '#80EB95',
}

-- colorscheme
set_hl('StatusLine', { bg = colors.bg2 })
set_hl('StatusLineNC', { bg = colors.bg })
set_hl('StatusLineBg', { bg = colors.bg2, fg = colors.white })
set_hl('StatusLineDeli', { bg = colors.bg2, fg = colors.dimmed_grey })
set_hl('StatusLineLineNb', { bg = colors.bg2, fg = colors.violet })
set_hl('StatusLineColNb', { bg = colors.bg2, fg = colors.violet2 })
set_hl('StatusLinePercent', { bg = colors.bg2, fg = colors.blue })
set_hl('StatusLineCount', { bg = colors.bg2, fg = colors.dimmed_grey})
set_hl('StatusLineGitBranchSymbol', { bg = colors.bg2, fg = colors.orange })
set_hl('StatusLineGitBranchName', { bg = colors.bg2, fg = colors.orange })
set_hl('StatusLineGitDiffNone', { bg = colors.bg2, fg = colors.dimmed_grey })
set_hl('StatusLineGitDiffAdd', { bg = colors.bg2, fg = colors.green2 })
set_hl('StatusLineGitDiffMod', { bg = colors.bg2, fg = colors.violet })
set_hl('StatusLineGitDiffDel', { bg = colors.bg2, fg = colors.red })
set_hl('StatusLineNormalMode', { bg = colors.bg2, fg = colors.red, reverse = true })
set_hl('StatusLineInsertMode', { bg = colors.bg2, fg = colors.green, reverse = true })
set_hl('StatusLineReplaceMode', { bg = colors.bg2, fg = colors.orange, reverse = true })
set_hl('StatusLineVisualMode', { bg = colors.bg2, fg = colors.blue, reverse = true })
set_hl('StatusLineSelectMode', { bg = colors.bg2, fg = colors.blue, reverse = true })
set_hl('StatusLineSelectLineMode', { bg = colors.bg2, fg = colors.blue, reverse = true })
set_hl('StatusLineSelectBlockMode', { bg = colors.bg2, fg = colors.blue, reverse = true })
set_hl('StatusLineCommandMode', { bg = colors.bg2, fg = colors.grey, reverse = true })
set_hl('StatusLineHitEnterPromptMode', { bg = colors.bg2, fg = colors.grey, reverse = true })

