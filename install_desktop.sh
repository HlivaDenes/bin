#!/bin/sh

if [ -e install_desktop ]
then
    echo "install_desktop már telepítve"
else
echo "---------- update upgrade -----------------"
sudo apt-get update
sudo apt-get upgrade -y

echo "----------- install: mc nmap gdebi----------------"
sudo apt-get install terminator guake guake-indicator gdebi-core -y

echo "----------- install: vlc ----------------"
sudo apt-get install  vlc  -y

echo "----------- install: gnome-tweek-tool ----------------"
sudo apt install gnome-tweak-tool -y
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
touch install_desktop
fi