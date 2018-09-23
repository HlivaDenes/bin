#!/bin/bash
if [ -e install_vmware ]
then 
    echo "install_vmware már telepítve"
else
sudo apt-get update
sudo apt install -y build-essential gcc linux-headers-$(uname -r)
sudo apt install -y libcanberra-gtk-module
mkdir ~/vmware
cd ~/vmware
wget -c https://download3.vmware.com/software/player/file/VMware-Player-14.1.3-9474260.x86_64.bundle
sudo chmod u+x VMware-Player*
sudo ./VMware-Player-14.1.3-9474260.x86_64.bundle --console --required --eulas-agreed
cd ~/bin
touch install_vmware
fi
