#!/bin/bash
cd $HOME

#sudo dnf update -y
#sudo dnf insall fish git browser tlp tcc ostree libappstream-glib appstream-glib -y
#sudo dnf install poppler-cpp-devel openssl-devel libcurl-devel
#sudo yum install libjpeg-turbo-devel

sudo apt update
sudo apt insall fish git browser tlp tcc ostree libappstream-glib appstream-glib -y
sudo apt upgrade

sudo tlp start

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


cat /tmp/configuration/init.vim > ~/.config/nvim/init.vim

flatpak install flathub com.github.johnfactotum.Foliate -y --user
flatpak install flathub com.github.tchx84.Flatseal -y --user
flatpak install flathub com.microsoft.Teams -y --user
flatpak install flathub com.obsproject.Studio -y --user
flatpak install flathub com.transmissionbt.Transmission -y --user
flatpak install flathub com.tutanota.Tutanota -y --user
flatpak install flathub com.vscodium.codium -y --user
flatpak install flathub fr.romainvigier.MetadataCleaner -y --user
flatpak install flathub org.blender.Blender -y --user
flatpak install flathub org.glimpse_editor.Glimpse -y --user
flatpak install flathub com.viber.Viber -y --user
flatpak install flathub org.inkscape.Inkscape -y --user
flatpak install flathub org.ardour.Ardour -y --user
flatpak install flathub org.libreoffice.LibreOffice -y --user


flatpak install flathub org.gimp.GIMP -y --user
flatpak install org.gimp.GIMP.Plugin.Resynthesizer org.gimp.GIMP.Plugin.LiquidRescale org.gimp.GIMP.Plugin.Lensfun org.gimp.GIMP.Plugin.GMic org.gimp.GIMP.Plugin.Fourier org.gimp.GIMP.Plugin.FocusBlur org.gimp.GIMP.Plugin.BIMP

mkdir ~/Git && cd ~/Git


cd ~/Git && git clone https://github.com/refi64/pakitheme.git
cd pakitheme && chmod +x pakitheme && ./pakitheme install-system

cd ~/Git && git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd ~/Git/auto-cpufreq/ && sudo ./auto-cpufreq-installer
sudo auto-cpufreq --install


#sudo dnf install dnf-plugins-core
#sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
#sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
#sudo dnf install brave-browser


sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser


