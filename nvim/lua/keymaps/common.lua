local function buf_switcher()
  local buffers = vim.fn.getbufinfo({ buflisted = 1 })
  if #buffers <= 1 then
    vim.notify("Only one buffer is open")
    return
  end
  require("telescope.builtin").buffers()
end

return {
  ["<ESC>"] = { "<cmd>nohlsearch<CR>", "Remove active search highlight" },
  ["<TAB>"] = { buf_switcher, "Switch buffers using menu", mode = "v" },
  ["<S-TAB>"] = { buf_switcher, "Switch buffers using menu", mode = "v" },
  ["<S-Tab>"] = { "<C-d>", "De-tab", mode = "i" },

  ["<leader>c"] = {
    name = "common-op",

    s = { "<cmd>setlocal spell!<CR>", "Toggle spellcheck" },
    l = { "<cmd>luafile %<CR>", "Run luafile" },
    m = { "<cmd>Mason<CR>", "Open Mason" },
    n = { "<cmd>Noice dismiss<CR>", "Dismiss active notifications" },
    f = {
      function()
        vim.b.disable_autoformat = not (vim.b.disable_autoformat or false)
        if vim.b.disable_autoformat then
          vim.notify("Formatting disabled for the buffer")
        else
          vim.notify("Formatting re-enabled for the buffer")
        end
      end,
      "Toggle formatting status",
    },
    t = { "<cmd>Lspsaga term_toggle<CR>", "Toggle terminal" },
  },

  ["<leader>g"] = {
    name = "git",

    n = {
      function()
        require("neogit").open()
      end,
      "Open Neogit",
    },
  },

  ["<leader>l"] = {
      name = "LSP",
      h = { vim.lsp.buf.hover, "Show symbol"},
      s = {
          name = "Symbol actions",

          a = { "<cmd>Lspsaga finder<CR>", "Show all symbol details" },
          c = { "<cmd>Lspsaga finder dec<CR>", "Show symbol declaration" },
          d = { "<cmd>Lspsaga finder def<CR>", "Show symbol definition" },
          i = { "<cmd>Lspsaga finder imp<CR>", "Show symbol implementations" },
          r = { "<cmd>Lspsaga finder ref<CR>", "Show symbol references" },
        },
  } 
}
