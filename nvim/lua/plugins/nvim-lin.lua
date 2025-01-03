-- The entire logic is borrowed from https://github.com/LazyVim/LazyVim/blob/879e29504d43e9f178d967ecc34d482f902e5a91/lua/lazyvim/plugins/linting.lua
local function debounce(ms, fn)
  local timer = vim.loop.new_timer()
  return function(...)
    local argv = { ... }
    timer:start(ms, 0, function()
      timer:stop()
      vim.schedule_wrap(fn)(unpack(argv))
    end)
  end
end

local function nvim_lint()
  -- Use nvim-lint's logic first:
  -- * checks if linters exist for the full filetype first
  -- * otherwise will split filetype by "." and add all those linters
  -- * this differs from conform.nvim which only uses the first filetype that has a formatter
  local lint = require("lint")
  local names = lint._resolve_linter_by_ft(vim.bo.filetype)

  -- Add fallback linters.
  if #names == 0 then
    vim.list_extend(names, lint.linters_by_ft["_"] or {})
  end

  -- Add global linters.
  vim.list_extend(names, lint.linters_by_ft["*"] or {})

  -- Filter out linters that don't exist or don't match the condition.
  local ctx = { filename = vim.api.nvim_buf_get_name(0) }
  ctx.dirname = vim.fn.fnamemodify(ctx.filename, ":h")
  names = vim.tbl_filter(function(name)
    local linter = lint.linters[name]
    if not linter then
      vim.notify("Linter not found: " .. name, vim.log.levels.WARN, { title = "nvim-lint" })
    end
    return linter and not (type(linter) == "table" and linter.condition and not linter.condition(ctx))
  end, names)

  -- Run linters.
  if #names > 0 then
    lint.try_lint(names)
  end
end

local function nvim_lint_config(_, opts)
  local lint = require("lint")
  lint.linters_by_ft = opts.linters_by_ft

  vim.api.nvim_create_autocmd(opts.events, {
    group = vim.api.nvim_create_augroup("nvim-lint", { clear = true }),
    callback = debounce(100, nvim_lint),
  })
end

return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPost", "BufNewFile", "BufWritePost" },
  opts = {
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      lua = { "selene" },
      python = { "vulture" },
      markdown = { "markdownlint" },
      sh = { "shellcheck" },
      dockerfile = { "hadolint" },
      json = { "jsonlint" },
      go = { "golangcilint" },
      sql = { "sqlfluff" },
      yaml = { "yamllint" },
      css = { "stylelint" },
    },
  },
  config = nvim_lint_config,
}