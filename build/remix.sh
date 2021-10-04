#!/bin/sh
# Remve GNOME stuff
apt-get remove -y ubuntu-desktop gdm3 ubuntu-session
apt-get autoremove -y
apt-get install -y software-properties-gtk

add-apt-repository -y ppa:~ubuntu-unity-devs/stable
add-apt-repository -y --no-update universe
add-apt-repository -y multiverse
add-apt-repository -y ppa:appimagelauncher-team/stable
echo "deb https://apt.mcdope.org/ ./" > /etc/apt/sources.list.d/mcdope.list
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 913558C8A5E552A7
apt-get update

apt-get install -y libpam-usb synapse sshfs vim mlocate make git dwm gcc libxft-dev libx11-dev libxinerama-dev compton nitrogen scrot byobu make git kdeconnect appimagelauncher flatpak ubiquity ubiquity-frontend-gtk ubiquity-slideshow-ubuntu lightdm lightdm-gtk-greeter ubuntu-unity-desktop yaru-unity7 ubuntu-unity-settings ubuntu-unity-backgrounds plymouth-theme-ubuntu-unity
apt-get purge -y gnome-initial-setup gnome-control-center gnome-calendar gnome-characters gnome-control-center-data \
gnome-control-center-faces gnome-desktop3-data \
gnome-font-viewer gnome-getting-started-docs \
gnome-initial-setup gnome-keyring gnome-keyring-pkcs11 gnome-logs \
gnome-mahjongg gnome-menus gnome-mines gnome-online-accounts \
gnome-screenshot gnome-session-bin gnome-session-canberra \
gnome-session-common gnome-settings-daemon gnome-settings-daemon-common \
gnome-shell gnome-shell-common gnome-shell-extension-appindicator gnome-shell-extension-ubuntu-dock \
gnome-startup-applications gnome-sudoku gnome-terminal \
gnome-terminal-data gnome-themes-extra gnome-themes-extra-data gnome-todo \
gnome-todo-common gnome-user-docs gnome-video-effects \
nautilus-extension-gnome-terminal pinentry-gnome3 yaru-theme-gnome-shell;

flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

snap install anbox

bash suckless.sh
