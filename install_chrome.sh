#!/bin/sh
if [ -e install_chrome ]
then
    echo "chrome már telepítve van"
else
    echo "---------- install: google-chrome ----------------"
    sudo apt-get install gdebi-core -y

    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo gdebi google-chrome-stable_current_amd64.deb -n
    rm google-chrome-stable_current_amd64.deb
    touch install_chrome
fi