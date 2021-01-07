#!/bin/bash
cd ~
sudo pacman -Syu
sudo pacman -S coreutils entr git zsh yay ansible neovim brave qemu virt-manager calcurse tmux htop tlp zathura mpv youtube-dl youtube-viewer newsboat
yay aliasrc

chsh -s /bin/zsh

cat /tmp/configuration/alacritty.yml > ~/.config/alacritty/alacritty.yml
cat /tmp/configuration/.zshrc > ~/.zshrc
cat /tmp/configuration/init.vim > ~/.config/nvim/init.vim
cat /tmp/configuration/.aliasrc > ~/.aliasrc
clear && echo Finished with confihuration

git clone https://github.com/zdharma/fast-syntax-highlighting ~/Git
echo "source ~/Git/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" >> ~/.zshrc
