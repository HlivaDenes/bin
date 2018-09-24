#!/bin/bash
if [ -e /home/hg ]
then
    echo "/home/hg már létezik"
else
sudo adduser hg --gecos "hg,,," --disabled-password
echo "hg:hg" | sudo chpasswd
fi
