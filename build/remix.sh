#!/bin/sh

add-apt-repository -y --no-update universe
add-apt-repository -y multiverse

apt-get install -y byobu git kde-connect ubiquity ubiquity-frontend-gtk ubiquity-slideshow-ubuntu lightdm lightdm-gtk-greeter
apt-get purge -y unity-greeter

cd /usr/local/src
git clone https://gitlab.com/dwnity/fust
cd fust
make clean install
cd ..
git clone https://gitlab.com/dwnity/dfuse
cd dfuse
make clean install
cd ..
git clone https://gitlab.com/dwnity/fusedwm
cd fusedwm
make clean install
