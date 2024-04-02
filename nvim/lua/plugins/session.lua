return {
   {
     "folke/persistence.nvim",
     event = "BufReadPre", -- this will only start session saving when an actual file was opened
     opts = {
       -- add any custom options here
      -- Persistenc (Session Manager) Setup 
      vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {}),

      -- restore the last session 
      vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {}),

      -- stop Persistence => session won't be saved on exit
      vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistenc").stop()<cr>]], {})

    }
  }
}
