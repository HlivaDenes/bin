#!/bin/sh
if [ -e install_chrome ]
then
    echo "chrome már telepítve van"
else
    echo "---------- install: google-chrome ----------------"
    echo "---------- install: google-chrome ----------------" >> install_chrome
    sudo apt-get install gdebi-core -y >> install_chrome

    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb >> install_chrome
    sudo gdebi google-chrome-stable_current_amd64.deb -n >> install_chrome
    rm google-chrome-stable_current_amd64.deb >> install_chrome
fi
