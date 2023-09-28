#!/bin/bash

## Install Xcode Tools
xcode-select --install

## Install Home brew
if test ! $(which brew); then
	echo "Installing homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile

	echo "Restarting the script"
	./$(basename $0) && exit
fi

install_brew_packages=0

if [ $install_brew_packages -eq 1 ]; then
	## Install required applications and packages
	## Supporting Packages
	brew install coreutils
	brew install ripgrep
	brew install fd
	
	## dev tools
	brew install git
	brew install tmux
	brew install jq
	brew install go@1.19
	brew install dotnet
	brew install ripgrep
	
	## IDE
	brew install zsh
	brew install zsh-autocomplete
	brew install fzf
	brew install --cask alacritty
	brew install neovim
	brew install --cask visual-studio
	
	
	# Dev Apps
	brew install redis
	brew install maxwell
	brew install sqlite
	brew install mysql@8
	brew install --cask postman
	brew install docker
	brew install kubernetes-cli
	brew install --cask discord
	
	# WM
	brew install yabai
	brew install skhd
	
	# Keyboard
	brew install --cask karabiner-elements ## MS 4000 Ergo
	brew install wally ## Ergo KB
	
	# Misc
	brew install --cask slack
	brew install --cask google-chrome
	brew install --cask sublime-text
	brew install --cask obsidian
	brew install --cask zoom
	brew install --cask todoist
	
	
	## 2FA
	brew install --cask authy 
	
	## Nerd fonts
	brew tap homebrew/cask-fonts
	brew install font-hack-nerd-font
fi

