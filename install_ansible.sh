#!/bin/sh
flag='install_ansible_2018-12-31'
if [ -e $flag ]
then
    echo '$flag már telepítve'
else
    echo "`date` -----start-----------" |tee $flag
    sudo apt-get update -y |tee error && \
    sudo apt-get  install software-properties-common -y |tee $flag && \
    sudo apt-add-repository ppa:ansible/ansible -y |tee $flag && \
    sudo apt-get update -y |tee $flag && \
    sudo apt-get install ansible -y |tee $flag && \
    sudo apt-get autoremove -y | tee $flag
    echo "`date` ========stop==========" |tee $flag
fi
