#!/bin/bash
cd ~
sudo pacman -Syu
sudo pacman -S coreutils entr git zsh yay ansible neovim brave qemu virt-manager calcurse tmux htop tlp zathura mpv youtube-dl youtube-viewer newsboat sxiv foliate meld
yay aliasrc

chsh -s /bin/zsh
sudo tlp start

cat /tmp/configuration/alacritty.yml > ~/.config/alacritty/alacritty.yml
ln -s ~/.config/zsh/.zshrc ~/.zshrc
cat /tmp/configuration/.zshrc > ~/.config/zsh/.zshrc
cat /tmp/configuration/init.vim > ~/.config/nvim/init.vim
ln -s ~/.config/zsh/.zshrc ~/.config/aliasrc/.aliasrc
cat /tmp/configuration/.aliasrc > ~/.aliasrc
cat /tmp/configuration/config >~/.config/newsboat
clear && echo Finished with confihuration

git clone https://github.com/zdharma/fast-syntax-highlighting ~/Git
echo "source ~/Git/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" >> ~/.zshrc

echo "exec dwm" >> $HOME/.xinitrc
