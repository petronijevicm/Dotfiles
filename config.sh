#!/bin/bash
cd $HOME
sudo pacman -Syu
#sudo pacman -S git zsh yay bspwm sxhkd brave calcurse newsboat tlp youtube-dl youtube-viewer
#sudo pacman -S zathura sxiv mpv foliate neovim
#sudo pacman -S qemu virt-manager tmux htop ansible meld entr tcc

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
echo "source ~/Git/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" >> ~/.config/zsh/.zshrc
