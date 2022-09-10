#!/bin/sh
red=`tput setaf 1`
cyan=`tput setaf 6`
reset=`tput sgr0`

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CONFIG_DIR=$SCRIPT_DIR/../config

brew install imagemagick
brew install exa
brew install lazygit lazydocker
