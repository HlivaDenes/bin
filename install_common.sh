#!/bin/sh
flag='install_common_2018-12-30
if [ -e $flag ]
then
    echo '$flag már telepítve'
else
echo "`date` -----start-----------" >> $flag
sudo apt-get update -y |tee $flag && \
sudo apt-get upgrade -y |tee $flag && \
sudo apt-get dist-upgrade -y |tee && \
sudo apt-get install mc curl nmap gdebi-core openssh-server -y |tee $flag
sudo apt-get autoremove -y 
echo "`date` ========stop==========" >> $flag
fi
