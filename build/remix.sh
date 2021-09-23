#!/bin/sh

add-apt-repository -y --no-update universe
add-apt-repository -y multiverse
add-apt-repository -y ppa:appimagelauncher-team/stable

apt-get install -y gcc libxft-dev libx11-dev libxinerama-dev compton nitrogen scrot byobu make git kdeconnect appimagelauncher ubiquity ubiquity-frontend-gtk ubiquity-slideshow-ubuntu lightdm lightdm-gtk-greeter
apt-get purge -y unity-greeter

bash suckless.sh
