#!/bin/bash
if [ -e install_npm ]
then
    echo "install_npm már telepítve van"
else
sudo apt install -y npm build-essential
touch install_npm
fi