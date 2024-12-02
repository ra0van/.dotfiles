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
    a = { "<cmd>AerialToggle!<CR>", "Toggle code outline" }
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
      h = { vim.lsp.buf.hover, "Show symbol hover info" },
      s = {
        name = "Symbol actions",

        a = { "<cmd>Lspsaga finder<CR>", "Show all symbol details" },
        c = { "<cmd>Lspsaga finder dec<CR>", "Show symbol declaration" },
        d = { "<cmd>Lspsaga finder def<CR>", "Show symbol definition" },
        i = { "<cmd>Lspsaga finder imp<CR>", "Show symbol implementations" },
        r = { "<cmd>Lspsaga finder ref<CR>", "Show symbol references" },
      },
      g = {
        name = "Go to definition",

        d = { "<cmd>Lspsaga goto_definition<CR>", "Go to definition" },
        t = { "<cmd>Lspsaga goto_type_definition<CR>", "Go to type definition" },
      },
      p = {
        name = "Peek definition",

        d = { "<cmd>Lspsaga peek_definition<CR>", "Peek symbol definition" },
        t = { "<cmd>Lspsaga peek_type_definition<CR>", "Peek symbol type definition" },
      },
      c = {
        name = "Code action + Call hierarchy",

        a = { "<cmd>Lspsaga code_action<CR>", "Show possible code actions" },
        i = { "<cmd>Lspsaga incoming_calls<CR>", "Show all incoming calls" },
        o = { "<cmd>Lspsaga outgoing_calls<CR>", "Show all outgoing calls" },
      },
      d = {
        name = "Document actions",
        o = { "<cmd>Lspsaga outline<CR>", "Show document symbol outline" },
        s = { "<cmd>Telescope lsp_document_symbols<CR>", "Search document symbols" },
      },
      e = {
        name = "Extras",

        o = { require("lspconfig.ui.lspinfo"), "Display attached, active, and configured LSP servers" },
        c = { vim.lsp.codelens.run, "Run codelens on the line" },
      },
      r = {
        function()
          return ":IncRename " .. vim.fn.expand("<cword>")
        end,
        "Rename symbol",
        expr = true,
      },
      w = {
        name = "Workspace actions",

        a = { vim.lsp.buf.add_workspace_folder, "Add workspace folder" },
        r = { vim.lsp.buf.remove_workspace_folder, "Remove workspace folder" },
        l = {
          function()
            vim.notify(vim.inspect(vim.lsp.buf.list_workspace_folders))
          end,
          "List workspace folders",
        },
      },
  }
}
