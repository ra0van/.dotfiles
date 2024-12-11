-- Set font for Neovide
if vim.g.neovide then
  vim.o.guifont = "Zed_Mono,Rec_Mono_Duotone,codicon,nonicons,Symbols_Nerd_Font_Mono:h15"
end


require("core.init"):bootstrap()
