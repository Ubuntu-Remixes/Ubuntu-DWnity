#!/bin/sh

add-apt-repository -y --no-update universe
add-apt-repository -y multiverse
add-apt-repository -y ppa:appimagelauncher-team/stable

apt-get install -y byobu mlocate make git dwm gcc libxft-dev libx11-dev libxinerama-dev compton nitrogen scrot byobu make git kde-connect ubiquity ubiquity-frontend-gtk ubiquity-slideshow-ubuntu lightdm lightdm-gtk-greeter
apt-get purge -y unity-greeter

flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

bash suckless.sh
