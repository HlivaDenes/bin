#!/bin/sh
flag='install_net_2018-12-31'
if [ -e $flag ]
then
    echo '$flag már telepítve'
else
    echo "`date` -----start-----------" |tee $flag
    sudo apt-get update -y |tee error && \
    sudo apt-get install socat mtr net-tools arping jnettop iptraf nbtscan netdiscover atop htop -y |tee $flag && \
    echo "`date` ========stop==========" |tee $flag
fi
