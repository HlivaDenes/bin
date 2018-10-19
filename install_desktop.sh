#!/bin/sh

if [ -e install_desktop ]
then
    echo "install_desktop már telepítve"
else
echo "`date` --------------------" >> install_desktop
sudo apt-get update >> install_desktop
sudo apt-get upgrade -y >> install_desktop
sudo apt-get install terminator -y >> install_desktop
sudo apt-get install guake -y >> install_desktop
sudo apt-get install guake-indicator -y >> install_desktop
sudo apt-get install gdebi-core -y >> install_desktop
sudo apt-get install  vlc  -y >> install_desktop
sudo apt install gnome-tweak-tool -y >> install_desktop
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize' >> install_desktop
echo "`date` =========================" >> install_desktop
fi
