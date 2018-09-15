#!/bin/bash
if [ -e install_docker ]
then
    echo "install_docker már telepítve van"
else
echo "----------- remove old docker  ----------------"
sudo apt-get remove docker -y
sudo apt-get remove docker-engine -y 
sudo apt-get remove docker.io -y
sudo apt-get remove docker-compose -y
sudo apt-get remove docker-ce -y

echo "----------- install: docker engine ----------------"
sudo curl -fsSL https://get.docker.com/ | sh #This will setup the Docker repo
sudo apt-get update
sudo apt-get install docker-compose -y
sudo usermod -aG docker $USER
#sudo systemctl start docker
#sudo systemctl enable docker
touch install_docker
fi