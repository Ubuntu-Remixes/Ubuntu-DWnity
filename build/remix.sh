#!/bin/sh

add-apt-repository -y --no-update universe
add-apt-repository -y multiverse

apt-get install -y byobu kde-connect terminator dwm ubiquity ubiquity-frontend-gtk ubiquity-slideshow-ubuntu lightdm lightdm-gtk-greeter
apt-get purge -y unity-greeter
