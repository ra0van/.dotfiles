-- Sampled from https://github.com/amitds1997/dotfiles/tree/main/dot_config/nvim
-- https://github.com/amitds1997/dotfiles/blob/main/dot_config/nvim/lua/plugins/lsp-config.lua
local lsp_config = function()
  local lspconfig = require("lspconfig")
  -- local python_interpreter_path = vim.fn.exepath("python")
  local mason_lspconfig = require("mason-lspconfig")
  local lsp_protocol_methods = vim.lsp.protocol.Methods

  require("lspconfig.ui.windows").default_options.border = "rounded"

  local ensure_installed = {
    "bashls",
    "clangd",
    "dockerls",
    "docker_compose_language_service",
    "lua_ls",
    "jsonls",
    "marksman",
    "yamlls",
    "rust_analyzer",
    "texlab",
    "ruby_ls",
    "omnisharp"
  }

  local ensure_lsp_installed = {
    node = { "eslint", "tsserver", "pyright" },
    go = { "gopls" },
  }

  for binary, lsp in pairs(ensure_lsp_installed) do
    if vim.fn.executable(binary) == 1 then
      for _, lsp_name in ipairs(lsp) do
        table.insert(ensure_installed, lsp_name)
      end
    end
  end

  ---Function to execute on LSP getting attached
  ---@param client vim.lsp.Client
  ---@param bufnr any
  local function on_attach(client, bufnr)
    print "Lsp Attach test"
    vim.api.nvim_set_option_value("omnifunc", "v:lua.vim.lsp.omnifunc", { buf = bufnr })

    if client.supports_method(lsp_protocol_methods.textDocument_inlayHint) then
      vim.lsp.inlay_hint.enable(bufnr, true)
    end

    if client.supports_method(lsp_protocol_methods.textDocument_codeLens) then
      vim.lsp.codelens.refresh()
      vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "InsertLeave" }, {
        buffer = bufnr,
        callback = vim.lsp.codelens.refresh,
      })
    end

    local bufopts = { buffer = bufnr }
    local wk, lsp_buf = package.loaded["which-key"], vim.lsp.buf
    
    local wk_maps = {
      {"<leader>l", group = "LSP"},
      {"<leader>lh", lsp_buf.hover, desc = "Show symbol hover info"},

      {"<leader>ls", group = "Symbol actions"},
      {"<leader>lsa", "<cmd>Lspsaga finder<CR>", desc = "Show all symbol details" },
      {"<leader>lsc", "<cmd>Lspsaga finder dec<CR>", desc = "Show symbol declaration" },
      {"<leader>lsd", "<cmd>Lspsaga finder def<CR>", desc = "Show symbol definition" },
      {"<leader>lsi", "<cmd>Lspsaga finder imp<CR>", desc = "Show symbol implementations" },
      {"<leader>lsr", "<cmd>Lspsaga finder ref<CR>", desc = "Show symbol references" },

      {"<leader>lg", group = "Go to definition"},
      {"<leader>lgd", "<cmd>Lspsaga goto_definition<CR>", desc = "Go to definition" },
      {"<leader>lgt", "<cmd>Lspsaga goto_type_definition<CR>", desc = "Go to type definition" },

      {"<leader>lp", group = "Peek definition"},
      {"<leader>lpd", "<cmd>Lspsaga peek_definition<CR>", desc = "Peek symbol definition" },
      {"<leader>lpt", "<cmd>Lspsaga peek_type_definition<CR>", desc = "Peek symbol type definition" },

      {"<leader>lc", group = "Code action + Call hierarchy"},
      {"<leader>lca", "<cmd>Lspsaga code_action<CR>", desc = "Show possible code actions" },
      {"<leader>lci", "<cmd>Lspsaga incoming_calls<CR>", desc = "Show all incoming calls" },
      {"<leader>lco", "<cmd>Lspsaga outgoing_calls<CR>", desc = "Show all outgoing calls" },

      {"<leader>ld", group = "Document actions"},
      {"<leader>ldo", "<cmd>Lspsaga outline<CR>", desc = "Show document symbol outline" },
      {"<leader>lds", "<cmd>Telescope lsp_document_symbols<CR>", desc = "Search document symbols" },

      {"<leader>le", group  = "Extras"},
      {"<leader>leo", require("lspconfig.ui.lspinfo"), desc ="Display attached, active, and configured LSP servers" },
      {"<leader>lec", vim.lsp.codelens.run, desc = "Run codelens on the line" },

      {"<leader>lr",
        function ()
          return ":IncRename " .. vim.fn.expand("<cword>")
        end,
        desc = "Rename symbol"
      },

      {"<leader>lw", group = "Workspace actions"},
      {"<leader>lwa", lsp_buf.add_workspace_folder, desc = "Add workspace folder" },
      {"<leader>lwl",
        function ()
          vim.notify(vim.inspect(lsp_buf.list_workspace_folders))
        end,
        desc = "Remove workspace folder"
      },
    }

    --wk.register(wk_maps, bufopts)
  end

  local capabilities = require("cmp_nvim_lsp").default_capabilities()
  mason_lspconfig.setup({
    ensure_installed = ensure_installed,
    automatic_installation = true,
    handlers = {
      function(server)
        lspconfig[server].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      gopls = function()
        lspconfig.gopls.setup({
          on_attach = on_attach,
          capabilities = capabilities,
          settings = require("plugins.lsp.server-config.gopls"),
        })
      end,
      jsonls = function()
        lspconfig.jsonls.setup({
          on_attach = on_attach,
          capabilities = capabilities,
          settings = require("plugins.lsp.server-config.jsonls"),
        })
      end,
      yamlls = function()
        lspconfig.yamlls.setup({
          on_attach = on_attach,
          capabilities = capabilities,
          settings = require("plugins.lsp.server-config.yamlls"),
        })
      end,
      lua_ls = function()
        lspconfig.lua_ls.setup({
          on_attach = on_attach,
          capabilities = capabilities,
          settings = require("plugins.lsp.server-config.lua_ls"),
        })
      end,
      ruby_ls = function()
        lspconfig.ruby_ls.setup({
        on_attach = function(client, bufnr)
          -- Custom on_attach logic for ruby_ls
          on_attach(client, bufnr)
          -- Additional ruby-specific keybindings or settings
        end,
        capabilities = capabilities,
        settings = require("plugins.lsp.server-config.ruby_ls"),
        -- You can add more ruby_ls specific settings here
        root_dir = lspconfig.util.root_pattern("Gemfile", ".git", ".")
        })
      end,
      omnisharp = function()
        lspconfig.omnisharp.setup({
          on_attach = on_attach,
          capabilities = capabilities,
          settings = require("plugins.lsp.server-config.omnisharp"),
          handlers = {
            ["textDocument/definition"] = require('omnisharp_extended').handler,
          },
        })
      end,
    },
  })
end
return {
  {
    "neovim/nvim-lspconfig",
    config = lsp_config,
    event = { "BufNewFile", "BufReadPre" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "smjonas/inc-rename.nvim",
      "nvimdev/lspsaga.nvim",
      "b0o/schemastore.nvim", -- Enable schemas availability for JSON and YAML
      "hrsh7th/cmp-nvim-lsp",
    },
  }
}
