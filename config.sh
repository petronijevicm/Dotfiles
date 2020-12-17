#!/bin/bash
cd ~
sudo pacman -Syu
sudo pacman -Sy coreutils entr git fish yay ansible neovim brave alacritty qemu virt-manager ghidra tmux htop
clear

chsh -s /bin/fish

cat /tmp/configuration/alacritty.yml > ~/.config/alacritty/alacritty.yml
cat /tmp/configuration/config.fish > ~/.config/fish/config.fish
cat /tmp/configuration/init.vim > ~/.config/nvim/init.vim
clear && echo Finished with confihuration
