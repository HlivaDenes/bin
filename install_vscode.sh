#!/bin/bash
if [ -e install_vscode_2 ]
then
    echo "vscode_2 már telepítve van"
else
echo "--------------vscode_2-------------" >> install_vscode_2
sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" >> install_vscode_2
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF >> install_vscode_2
sudo apt update
sudo apt -y install code  >> install_vscode_2
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb >> install_vscode_2
sudo dpkg -i packages-microsoft-prod.deb >> install_vscode_2
sudo apt-get install apt-transport-https -y >> install_vscode_2
sudo apt-get update 
sudo apt-get install dotnet-sdk-2.1 -y >> install_vscode_2
rm packages-microsoft-prod.deb >> install_vscode_2
"******************* vscode_2 ************" >> install_vscode_2
fi
