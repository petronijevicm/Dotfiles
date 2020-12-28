#!/bin/bash
cd ~
sudo pacman -Syu
sudo pacman -S coreutils entr git zsh yay ansible neovim brave qemu virt-manager ghidra tmux htop tlp
yay aliasrc

chsh -s /bin/zsh

git clone https://github.com/petronijevicm/Dotfiles /tmp/configuration

cat /tmp/configuration/alacritty.yml > ~/.config/alacritty/alacritty.yml
cat /tmp/configuration/.zshrc > ~/.zshrc
cat /tmp/configuration/init.vim > ~/.config/nvim/init.vim
clear && echo Finished with confihuration

git clone https://github.com/zdharma/fast-syntax-highlighting ~/Git
echo "source ~/Git/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" >> ~/.zshrc
