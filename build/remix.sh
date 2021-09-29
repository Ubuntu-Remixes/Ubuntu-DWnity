#!/bin/sh

add-apt-repository -y --no-update universe
add-apt-repository -y multiverse
add-apt-repository -y ppa:appimagelauncher-team/stable
echo "deb https://apt.mcdope.org/ ./" > /etc/apt/sources.list.d/mcdope.list
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 913558C8A5E552A7
apt-get update

apt-get install -y libpam-usb synapse sshfs vim mlocate make git dwm gcc libxft-dev libx11-dev libxinerama-dev compton nitrogen scrot byobu make git kdeconnect appimagelauncher flatpak ubiquity ubiquity-frontend-gtk ubiquity-slideshow-ubuntu lightdm lightdm-gtk-greeter
apt-get purge -y unity-greeter

flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

snap install anbox

bash suckless.sh
