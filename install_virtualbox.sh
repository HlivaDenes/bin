#!/bin/sh
flag='install_virtualbox_2018-12-31'
if [ -e $flag ]
then
    echo '$flag már telepítve'
else
    echo "`date` -----start-----------" |tee $flag
    sudo apt-get update -y |tee error && \
   sudo apt-get install virtualbox libgsoap-2.8.60 virtualbox-dkms virtualbox-qt -y |tee $flag && \
    sudo apt-get autoremove -y | tee $flag
    echo "`date` ========stop==========" |tee $flag
fi
