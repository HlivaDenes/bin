#!/bin/bash
if [ -e /home/vm ]
then
    echo "/home/vm már létezik"
else
sudo adduser vm --gecos "vm,,," --disabled-password
###echo "user:user" | sudo chpasswd
fi
