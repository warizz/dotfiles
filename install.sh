#!/bin/sh
BOLD='\033[1m'
CYAN='\033[0;36m'
LIGHT_RED='\033[1;31m'
GREEN='\033[0;32m'
DEFAULT='\033[0m'

echo_install_text()
{
  echo "${CYAN}==>${DEFAULT} ${BOLD}Installing ${GREEN}$1${DEFAULT}"
}

echo "${LIGHT_RED}warizz${DEFAULT}'s dotfiles installation"

echo_install_text "Homebrew 🍺"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo_install_text "git"
brew install git

echo_install_text "vim"
brew install vim

echo_install_text ".vimrc"
cp homedir/.vimrc ~

echo_install_text "zsh 🐚"
brew install zsh
cp homedir/.zshrc ~

echo_install_text "Oh My Zsh 🐚"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo_install_text "zsh theme"
cp zsh/warizz.zsh-theme ~/.oh-my-zsh/custom/themes
source ~/.oh-my-zsh/custom/themes/warizz.zsh-theme

echo_install_text "atom"
brew cask install atom
echo_install_text "atom packages"
apm install --packages-file homedir/.atom/package-list.txt
echo_install_text "atom configurations"
mkdir -p ~/.atom
cp homedir/.atom/config.cson ~/.atom
cp homedir/.atom/snippets.cson ~/.atom

echo_install_text "sublime-merge"
brew cask install sublime-merge
