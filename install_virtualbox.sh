#!/bin/bash
echo "----------- install: virtualbox ----------------"
sudo apt install build-essential -y
sudo apt install dkms -y
sudo apt install linux-headers-$(uname -r)
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" -y
sudo apt-get update
sudo apt-get virtualbox-5.2 -y
####sudo apt-get install virtualbox-ext-pack -y


