CONFIGS=$HOME/base/.dotfiles

source $CONFIGS/zsh/init.sh

# FILES=$HOME/dev/configs/zshrc/
# for FILE in $FILES/*; do
# for FILE in $FILES[@]; do
for FILE in $FILES; do
    source $FILE
done



