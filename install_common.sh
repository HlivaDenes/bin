#!/bin/sh

if [ -e install_common_2018-11-21 ]
then
    echo "install_common már telepítve"
else
echo "`date` ----------------" >> install_common
sudo apt-get update >> install_common_2018-11-21
sudo apt-get upgrade -y >> install_common_2018-11-21
sudo apt-get install mc -y >> install_common_2018-11-21
sudo apt-get install curl -y >> install_common_2018-11-21
sudo apt-get install nmap -y >> install_common_2018-11-21
sudo apt-get install gdebi-core -y >> install_common_2018-11-21
sudo apt-get install openssh-server -y >> install_common_2018-11-21
sudo apt autoremove -y >> install_common_2018-11-21
echo "`date` ==================" >> install_common_2018-11-21
fi
