#!/bin/sh

if [ -e install_common ]
then
    echo "install_common már telepítve"
else
echo "---------- update upgrade -----------------"
sudo apt-get update
sudo apt-get upgrade -y

echo "----------- install: mc nmap gdebi----------------"
sudo apt-get install mc nmap gdebi-core  openssh-server -y

sudo apt autoremove -y
sudo chmod u+x ./*
touch install_common
fi