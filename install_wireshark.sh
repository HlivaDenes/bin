#!/bin/bash
if [ -e install_wireshark ]
then
    echo "install_wireshark már telepítve"
else
sudo add-apt-repository ppa:dreibh/ppa -y
sudo apt-get update
sudo apt-get install wireshark -y
sudo dpkg-reconfigure wireshark-common 
sudo usermod -a -G wireshark $USER
newgrp wireshark
touch install_wireshark
fi