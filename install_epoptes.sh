#!/bin/bash
if [ -e install_epoptes_3 ]
then
    echo "install_epoptes_3 már futott"
else
echo "`date`-------------install_epoptes_3---------------------" >> install_epoptes_3
sudo apt-get install epoptes-client -y >> install_epoptes_3
sudo rm /etc/default/epoptes-client >> install_epoptes_3
cat<<EOF> epoptes-client
SERVER=192.168.0.100
#PORT=789
# Set Wake On LAN for devices that support it. Comment it out to disable it.
WOL=g
EOF
sudo mv epoptes-client /etc/default/
sudo epoptes-client -c >> install_epoptes_3
#sudo reboot
echo "`date`************install_epoptes_2******************" >> install_epoptes_3
fi
