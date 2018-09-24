#!/bin/bash
if [ -e /home/win ]
then
    echo "/home/win már létezik"
else
sudo adduser win --gecos "win,,," --disabled-password
echo "win:win" | sudo chpasswd
fi
