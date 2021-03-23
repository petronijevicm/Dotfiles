#!/bin/bash
cd $HOME
sudo pacman -Syu

sudo apt insall fish git browser tlp tcc ostree libappstream-glib appstream-glib


chsh -s /bin/fish
sudo tlp start

cat /tmp/configuration/init.vim > ~/.config/nvim/init.vim

flatpak install flathub com.github.johnfactotum.Foliate -y --user
flatpak install flathub com.github.tchx84.Flatseal -y --user
flatpak install flathub com.microsoft.Teams -y --user
flatpak install flathub com.obsproject.Studio -y --user
flatpak install flathub com.transmissionbt.Transmission -y --user
flatpak install flathub com.tutanota.Tutanota -y --user
flatpak install flathub com.vscodium.codium -y --user
flatpak install flathub fr.romainvigier.MetadataCleaner -y --user
flatpak install flathub io.github.liberodark.OpenDrive -y --user
flatpak install flathub org.blender.Blender -y --user
flatpak install flathub org.glimpse_editor.Glimpse -y --user
flatpak install flathub org.gnome.Totem -y --user
flatpak install flathub org.gnome.meld -y --user
flatpak install flathub org.onlyoffice.desktopeditors -y --user

cd ~/Pictures
git clone https://github.com/eallion/Big-Sur-Ubuntu.git

mkdir ~/Git && cd Git
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
git clone https://github.com/refi64/pakitheme.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
sudo auto-cpufreq --install

