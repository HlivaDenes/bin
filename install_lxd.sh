#!/bin/bash

if [ -e install_lxd ]
then
    echo "install_lxd már telepítve"
else
echo "----------- install: lxd zfsutils-linux ----------------"
sudo apt-get install   lxd zfsutils-linux -y
sudo adduser $USER lxd
#newgrp lxd
touch install_lxd
fi