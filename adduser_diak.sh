#!/bin/bash
if [ -e /home/diak ]
then
    echo "/home/diak már létezik"
else
sudo adduser diak --gecos "diak,,," --disabled-password
echo "diak:diak" | sudo chpasswd
cd /home/diak
git init
fi
