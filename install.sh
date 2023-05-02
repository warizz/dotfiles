#!/bin/sh
source ./echo.sh


echo "${LIGHT_RED}warizz${DEFAULT}'s dotfiles installation"

. "install/brew.sh" # This line must always be the first.
. "install/zsh.sh"

echo_install_text "zsh 🐚"
brew install zsh
cp homedir/.zshrc ~

echo_install_text "Oh My Zsh 🐚"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo_install_text "zsh theme"
cp zsh/warizz.zsh-theme ~/.oh-my-zsh/custom/themes
source ~/.oh-my-zsh/custom/themes/warizz.zsh-theme
