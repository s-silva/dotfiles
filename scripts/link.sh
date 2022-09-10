#!/bin/sh
red=`tput setaf 1`
cyan=`tput setaf 6`
reset=`tput sgr0`

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CONFIG_DIR=$SCRIPT_DIR/../config

# config links
ln -s $CONFIG_DIR/nvim $HOME/.config/nvim
ln -s $CONFIG_DIR/kitty $HOME/.config/kitty

# tmux
ln -s $CONFIG_DIR/tmux/.tmux.conf $HOME/.tmux.conf

# zsh
ln -s $CONFIG_DIR/zsh/.zshrc $HOME/.zshrc

# starship
ln -s $CONFIG_DIR/starship/starship.toml $HOME/.config/starship.toml

# lazygit
ln -s $CONFIG_DIR/lazygit/config.yml "$HOME/Library/Application Support/lazygit/config.yml"

echo "${cyan}[link.sh]${reset} created links"