#!/bin/bash
if [ -e install_ansible_18-10-14 ]
then
  echo "install_ansible már futott"
else
  echo "`date`-------------------------" >> install_ansible_18-10-14
  sudo apt-get update  >> install_ansible_18-10-14
  sudo apt-get install software-properties-common -y >> install_ansible_18-10-14
  sudo apt-add-repository ppa:ansible/ansible -y >> install_ansible_18-10-14
  sudo apt-get update  >> install_ansible_18-10-14
  sudo apt-get install ansible -y  >> install_ansible_18-10-14
  echo "`date`**************************" >> install_ansible_18-10-14
