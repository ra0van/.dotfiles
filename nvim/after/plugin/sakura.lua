require('Sakura').setup({
    disable_background = true
})

require('Sakura').load()
function ColorMyPencils(color) 
	color = color or "Sakura"
	vim.cmd.colorscheme(color)

end

ColorMyPencils()
