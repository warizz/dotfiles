echo_install_text "Oh My Zsh 🐚"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo_install_text "zsh theme"
cp ./warizz.zsh-theme ~/.oh-my-zsh/custom/themes
source ~/.oh-my-zsh/custom/themes/warizz.zsh-theme