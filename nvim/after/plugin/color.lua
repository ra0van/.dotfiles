function ColorMyPencils(color)
    color = color or color
    if color == "Sakura" then
        require('Sakura').load()
    end
    vim.cmd.colorscheme(color)

end

vim.g.material_style = "darker"
ColorMyPencils("spaceduck")

