#!/bin/bash
if [ -e install_epoptes ]
then
    echo "install_epoptes már futott"
else

sudo apt-get install epoptes-client -y
sudo rm /etc/default/epoptes-client
cat<<EOF> epoptes-client
SERVER=192.168.0.100
#PORT=789
# Set Wake On LAN for devices that support it. Comment it out to disable it.
WOL=g
EOF
sudo mv epoptes-client /etc/default/
sudo epoptes-client -c
#sudo reboot

touch install_epoptes
fi
