#!/bin/bash
if [ -e /home/user ]
then
    echo "/home/user már létezik"
else
sudo adduser user --gecos "user,,," --disabled-password
echo "user:user" | sudo chpasswd
fi