return {
  -- Git related plugins
  {
    'tpope/vim-fugitive'
  },
  {
    'tpope/vim-rhubarb'
  },

  -- Detect tabstop and shiftwidth automatically
  {
   'tpope/vim-sleuth'
  },

  {
   'jlcrochet/vim-ruby'
  },

  {
   'kyazdani42/nvim-web-devicons',
    dependencies = {
      "yamatsum/nvim-nonicons",
    },
    lazy = true,
    config = function()
      local all_icons = require("nvim-web-devicons").get_icons()
      local nonicons = require("nvim-nonicons.mapping")

      local user_icons = {}
      for key, val in pairs(all_icons) do
        if nonicons[key] ~= nil then
          user_icons[key] = val
          user_icons[key]["icon"] = require("nvim-nonicons").get(key)
        end
      end

      require("nvim-web-devicons").setup({
        override = user_icons,
      })
    end,
  },

   -- "gc" to comment visual regions/lines
  {
   'numToStr/Comment.nvim',
    opts = {}
  },

  {
   'stevearc/dressing.nvim'
  },
  {
    "Hoffs/omnisharp-extended-lsp.nvim",
    ft = { "cs", "vb" },
  },
}
