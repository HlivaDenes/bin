#!/bin/sh

if [ -e install_syncthing ]
then
    echo "install_syncthing már futott"
else
apt-get install curl apt-transport-https -y
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt-get update
sudo apt-get install syncthing -y

touch install_syncthing
fi
