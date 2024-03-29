#!/bin/bash
cd $HOME

sudo apt update
sudo apt insall zsh git tlp tcc ostree appstream-util libappstream-glib appstream-glib sxiv sxhkd mpv nautilus alacritty newsboat flameshot bspwm neovim python3-pip flatpak linux-headers-`uname -r` gcc make v4l2loopback-dkms 
 -y
sudo apt upgrade

sudo tlp start


pip3 install git+https://github.com/wustho/epy
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

mkdir $HOME/.config/nvim/
cat /tmp/configuration/init.vim > ~/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir $HOME/.config/newsboat
cat /tmp/configuration/config > $HOME/.config/newsboat/config

cat /tmp/configuration/.zshrc > $HOME/.zshrc
chsh /bin/zsh

mkdir $HOME/.config/alacritty
cat /tmp/configuration/alacritty.yml > $HOME/.comfig/alacritty/alacritty.yml

flatpak install flathub com.github.johnfactotum.Foliate -y --user
flatpak install flathub com.microsoft.Teams -y --user
flatpak install flathub com.transmissionbt.Transmission -y --user
flatpak install flathub com.tutanota.Tutanota -y --user
flatpak install flathub com.vscodium.codium -y --user
flatpak install flathub fr.romainvigier.MetadataCleaner -y --user
flatpak install flathub org.blender.Blender -y --user
flatpak install flathub com.viber.Viber -y --user
flatpak install flathub org.inkscape.Inkscape -y --user
flatpak install flathub org.ardour.Ardour -y --user
flatpak install flathub com.github.alainm23.planner
flatpak install flathub org.onlyoffice.desktopeditors
flatpak install flathub re.sonny.Tangram


flatpak install flathub org.gimp.GIMP -y --user
flatpak install org.gimp.GIMP.Plugin.Resynthesizer org.gimp.GIMP.Plugin.LiquidRescale org.gimp.GIMP.Plugin.Lensfun org.gimp.GIMP.Plugin.GMic org.gimp.GIMP.Plugin.Fourier org.gimp.GIMP.Plugin.FocusBlur org.gimp.GIMP.Plugin.BIMP

mkdir ~/Git && cd ~/Git
 curl -LO https://github.com/responsively-org/responsively-app/releases/download/v0.17.0/ResponsivelyApp-0.17.0.AppImage
 chmod +x ResponsivelyApp-0.17.0.AppImage


cd ~/Git && git clone https://github.com/refi64/pakitheme.git
cd pakitheme && chmod +x pakitheme && ./pakitheme install-system

cd ~/Git && git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd ~/Git/auto-cpufreq/ && sudo ./auto-cpufreq-installer
sudo auto-cpufreq --install
cd /tmp/
curl -LO https://github.com/weiameili/Pensela/releases/download/v1.2.3/pensela_1.2.3_amd64.deb
sudo apt install /tmp/pensela_1.2.3_amd64.deb

sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update && sudo apt install obs-studio

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update && sudo apt install codium

