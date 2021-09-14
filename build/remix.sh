#!/bin/sh

add-apt-repository -y --no-update universe
add-apt-repository -y multiverse

apt-get install -y ubuntu-mate-desktop plymouth-theme-ubuntu-mate-logo ubiquity ubiquity-frontend-gtk ubiquity-slideshow-ubuntu-mate
