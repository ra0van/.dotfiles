[ -d "$HOME/base/.dotfiles" ] || git clone git@github.com:ra0van/.dotfiles.git $HOME/base/.dotfiles

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

[ -d "$HOME/.config" ] || mkdir -p "$HOME/.config"

ln -nsf "$HOME/base/.dotfiles/zshrc" "$HOME/.zshrc"

ln -nsf "$HOME/base/.dotfiles/nvim" "$HOME/.config/nvim"

mkdir -p "$HOME/.config/alacritty"
touch "$HOME/.config/alacritty/alacritty.yml"
ln -nsf "$HOME/base/.dotfiles/alacritty/alacritty.yml" "$HOME/.config/alacritty/alacritty.yml"

touch "$HOME/.tmux.conf"
ln -nsf "$HOME/base/.dotfiles/tmux.conf" "$HOME/.tmux.conf"

mkdir -p "$HOME/.config/karabiner"
touch "$HOME/.config/karabiner/karabiner.json"
ln -nsf "$HOME/base/.dotfiles/karabiner.json" "$HOME/.config/karabiner/karabiner.json"

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

 # nvim --headless "+Lazy! sync" +qa
