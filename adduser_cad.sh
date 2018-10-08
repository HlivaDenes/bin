#!/bin/bash
if [ -e /home/cad ]
then
    echo "/home/cad már létezik"
else
sudo adduser cad --gecos "cad,,," --disabled-password
echo "cad:cad" | sudo chpasswd
fi
