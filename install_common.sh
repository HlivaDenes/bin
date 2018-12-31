#!/bin/sh
flag='install_common_2018-12-31'
if [ -e $flag ]
then
    echo '$flag már telepítve'
else
    echo "`date` -----start-----------" |tee $flag
    sudo apt-get update -y |tee error && \
    sudo apt-get upgrade -y |tee $flag && \
    sudo apt-get dist-upgrade -y |tee $flag && \
    sudo apt-get install mc curl nmap gdebi-core openssh-server -y |tee $flag \
    sudo apt-get autoremove -y | tee $flag
    echo "`date` ========stop==========" |tee $flag
fi
