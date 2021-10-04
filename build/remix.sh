#!/bin/sh
# Remve GNOME stuff
apt-get remove -y ubuntu-desktop* gdm3 ubuntu-session
apt-get autoremove -y --purge
apt-get install -y software-properties-gtk

add-apt-repository -y ppa:~ubuntu-unity-devs/stable
add-apt-repository -y --no-update universe
add-apt-repository -y multiverse
add-apt-repository -y ppa:appimagelauncher-team/stable
echo "deb https://apt.mcdope.org/ ./" > /etc/apt/sources.list.d/mcdope.list
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 913558C8A5E552A7
apt-get update

apt-get install -y libpam-usb synapse sshfs vim mlocate make git dwm gcc libxft-dev libx11-dev libxinerama-dev compton nitrogen scrot byobu make git kdeconnect appimagelauncher flatpak ubiquity ubiquity-frontend-gtk ubiquity-slideshow-ubuntu lightdm lightdm-gtk-greeter ubuntu-unity-desktop yaru-unity7 ubuntu-unity-settings ubuntu-unity-backgrounds plymouth-theme-ubuntu-unity
apt-get purge -y gnome-software* gnome-control-center

flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

snap install anbox

bash suckless.sh
