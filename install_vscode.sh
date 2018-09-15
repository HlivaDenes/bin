#!/bin/bash
if [ -e install_vscode ]
then
    echo "vscode már telepítve van"
else
sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
sudo apt update
sudo apt -y install code
touch install_vscode
fi