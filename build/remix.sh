#!/bin/sh

add-apt-repository -y --no-update universe
add-apt-repository -y multiverse

apt-get install -y gcc libxft-dev libx11-dev libxinerama-dev compton nitrogen scrot byobu make git kdeconnect ubiquity ubiquity-frontend-gtk ubiquity-slideshow-ubuntu lightdm lightdm-gtk-greeter
apt-get purge -y unity-greeter

bash suckless.sh
