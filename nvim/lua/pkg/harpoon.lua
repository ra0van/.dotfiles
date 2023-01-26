return {
  keybindings = {
	n = {
	  {
		key = '<leader>hm',
		lua = function()
		  require('harpoon.ui').toggle_quick_menu()
		end
	  },
	  {
	    key = '<leader>ha',
	    lua = "require'harpoon.mark'.add_file()"
	  },
	  {
	    key = '<leader>h1',
	    lua = "require'harpoon.ui'.nav_file(1)"
	  },
	  {
	    key = '<leader>h2',
	    lua = "require'harpoon.ui'.nav_file(2)"
	  },
	  {
	    key = '<leader>h3',
	    lua = "require'harpoon.ui'.nav_file(3)"
	  },
	  {
	    key = '<leader>h4',
	    lua = "require'harpoon.ui'.nav_file(4)"
	  },
	}
  }
}

