local function aerial_config()
  require("aerial").setup({
      on_attach = function(bufnr)
         vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
         vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
      end,
   }) 
end

return {
   'stevearc/aerial.nvim',
   opts = {},
   -- Optional dependencies
   dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
   },
   config = aerial_config
}
