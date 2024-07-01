# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

CONFIGS=$HOME/base/.dotfiles

source $CONFIGS/zsh/init.sh
source $CONFIGS/zsh/path.sh
source $CONFIGS/zsh/alias.sh

export PATH="/usr/local/opt/ruby/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/opt/homebrew/opt/ruby@3.2/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

source $CONFIGS/ubuntu/zsh.ubuntu
