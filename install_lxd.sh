#!/bin/bash

if [ -e install_lxd-2018-10-23 ]
then
    echo "install_lxd_2018-10-23 már telepítve"
else
echo "`date`------------------------" >> install_lxd-2018-10-23
sudo apt-get install   lxd zfsutils-linux -y >> install_lxd-2018-10-23
sudo adduser $USER lxd
#newgrp lxd
echo "`date` ==============================================" >> install_lxd-2018-10-23
fi
