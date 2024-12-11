local dap_config = function()
  local dap, dapui = require("dap"), require("dapui")

  -- Get current buffer's filetype
  local function get_current_buf_filetype()
    return vim.bo[vim.api.nvim_get_current_buf()].filetype
  end

  -- Launch debugging session
  local function launch_debugging_session()
    local buf_filetype = get_current_buf_filetype()

    if buf_filetype == "lua" then
      require("osv").run_this()
    else
      dap.continue()
    end
  end

  -- Restart debugging session
  local function restart_debugging_session()
    local buf_filetype = get_current_buf_filetype()

    if dap.session() ~= nil and buf_filetype == "lua" then
      dap.terminate()
      launch_debugging_session()
    else
      dap.restart()
    end
  end

  -- DAP continue session
  local function dap_continue()
    local buf_filetype = get_current_buf_filetype()

    if buf_filetype == "lua" and dap.session() == nil then
      launch_debugging_session()
    else
      dap.continue()
    end
  end

  local bufopts = { buffer = bufnr }
  local wk, lsp_buf = package.loaded["which-key"], vim.lsp.buf


  local wk_maps = {
    {"<leader>b", group = "debugger"},

    -- Session management
    {"<leader>bs", group = "debugging-session"},
    {"<leader>bsl", launch_debugging_session(), desc = "Launch debugging session" },
    {"<leader>bsr", restart_debugging_session(), desc = "Restart current debugging session" },
    {"<leader>bst",
      function()
        dap.terminate()
      end,
      desc = "Terminate debugging session",
    },
    -- Breakpoint
    {"<leader>bb",
      function()
        dap.toggle_breakpoint()
      end,
      desc = "Toggle breakpoint",
    },
    {"<leader>bC",
      function()
        dap.set_breakpoint(nil, nil, vim.fn.input("Condition: "))
      end,
      desc = "Set conditional breakpoint",
    },

    -- Operation
    {"<leader>bc", dap_continue, desc = "Continue execution"},
    {"<leader>bo",
      function()
        dap.step_over()
      end,
      desc = "Step over"
    },
    {"<leader>bi",
      function()
        dap.step_into()
      end,
      desc = "Step into",
    },
    {"<leader>bR",
      function()
        dap.run_to_cursor()
      end,
      desc = "Run till cursor location",
    },

    -- Debugger UI
    {"<leader>bu",
      function()
        dapui.toggle()
      end,
      desc = "Toggle debugger UI",
    },
  }
  --wk.register(wk_maps, bufopts)


  require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
    sources = {
      { name = "dap" },
    },
  })
end

return {
  "mfussenegger/nvim-dap",
  -- event = "LspAttach",
  config = dap_config,
}
