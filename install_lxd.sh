#!/bin/bash

if [ -e install_lxd ]
then
    echo "install_lxd már telepítve"
else
echo "`date`------------------------" >> install_lxd
sudo apt-get install   lxd zfsutils-linux -y >> install_lxd
sudo adduser $USER lxd
#newgrp lxd
echo "`date` ==============================================" >> install_lxd
fi
