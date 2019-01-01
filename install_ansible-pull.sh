#!/bin/sh
flag='install_ansible-pull_2019-01-01'
if [ -e $flag ]
then
    echo '$flag már telepítve'
else
    echo "`date` -----start-----------"|tee $flag && \
    sudo ansible-pull -U https://github.com/englert/ansible.git|tee $flag && \
    echo "`date` ========stop==========" |tee $flag
fi
