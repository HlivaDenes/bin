#!/bin/bash
if [ -e install_ansible ]
then
  echo "install_ansible már futott"
else
  echo "`date`-------------------------" >> install_ansible
  sudo apt update  >> install_ansible
  sudo apt upgrade -y  >> install_ansible
  sudo apt-get install software-properties-common  >> install_ansible
  sudo apt-add-repository ppa:ansible/ansible  >> install_ansible
  sudo apt update  >> install_ansible
  sudo apt upgrade -y  >> install_ansible
  sudo apt install ansible -y  >> install_ansible
  echo "`date`**************************" >> install_ansible
