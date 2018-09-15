#!/bin/bash
if [ -e install_etcher ]
then
    echo "install_etcher már telepítve van."
else
echo "deb https://dl.bintray.com/resin-io/debian stable etcher" | sudo tee /etc/apt/sources.list.d/etcher.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61

sudo apt-get update
sudo apt-get install etcher-electron -y
touch install_etcher
fi
