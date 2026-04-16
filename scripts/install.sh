#!/bin/sh
red=`tput setaf 1`
cyan=`tput setaf 6`
reset=`tput sgr0`

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CONFIG_DIR=$SCRIPT_DIR/../config

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ZIM
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# Brew packages
brew install --cask ghostty
brew install starship
brew install neovim
brew install oven-sh/bun/bun
brew install uv
brew install imagemagick
brew install eza
brew install tmux
brew install lazygit lazydocker

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

# LazyVim

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
