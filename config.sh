#!/bin/bash
cd ~
sudo pacman -Syu
sudo pacman -S coreutils entr pulseaudio git zsh yay ansible neovim brave qemu virt-manager ghidra tmux htop tlp 
clear

chsh -s /bin/zsh

cat /tmp/configuration/alacritty.yml > ~/.config/alacritty/alacritty.yml
cat /tmp/configuration/config.fish > ~/.config/fish/config.fish
cat /tmp/configuration/init.vim > ~/.config/nvim/init.vim
clear && echo Finished with confihuration
