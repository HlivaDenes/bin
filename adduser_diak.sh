#!/bin/bash
if [ -e /home/diak ]
then
    echo "/home/user már létezik"
else
sudo adduser diak --gecos "diak,,," --disabled-password
echo "diak:diak" | sudo chpasswd
fi
