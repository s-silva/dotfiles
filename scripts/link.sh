#!/bin/sh
red=`tput setaf 1`
cyan=`tput setaf 6`
reset=`tput sgr0`

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
CONFIG_DIR=$(cd -- "$SCRIPT_DIR/../config" &> /dev/null && pwd)


# links
ln -sF $CONFIG_DIR/nvim $HOME/.config/nvim

mkdir $HOME/projects
ln -sF $CONFIG_DIR/nvim/bitstream $HOME/projects/bitstream
ln -sF $CONFIG_DIR/ghostty/config.ghostty "$HOME/Library/Application Support/com.mitchellh.ghostty/config.ghostty"

# tmux
ln -sF $CONFIG_DIR/tmux/.tmux.conf $HOME/.tmux.conf

# zsh
ln -sF $CONFIG_DIR/zsh/.zshrc $HOME/.zshrc

# starship
ln -sF $CONFIG_DIR/starship/starship.toml $HOME/.config/starship.toml

# lazygit
ln -sF $CONFIG_DIR/lazygit/config.yml "$HOME/Library/Application Support/lazygit/config.yml"


# completed
echo "${cyan}[link.sh]${reset} created links"