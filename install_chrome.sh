#!/bin/sh
flag='install_chrome'
if [ -e $flag ]
then
    echo "chrome már telepítve van"
else
    echo "`date` -----start-----------" |tee  $flag && \
    echo "`date` install: google-chrome ----------------" |tee  $flag && \
    sudo apt-get install gdebi-core -y  |tee  $flag && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb  |tee  $flag && \
    sudo gdebi google-chrome-stable_current_amd64.deb -n   |tee  $flag && \
    rm google-chrome-stable_current_amd64.deb   |tee  $flag && \
    echo "`date` ************* google-chrome telepítve **************"  |tee  $flag 
fi
