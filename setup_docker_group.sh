#!/bin/sh

if [ -e setup_docker_group ]
then
    echo "setup_docker_group"
else
echo "`date` ----------------" >> setup_docker_group
sudo adduser sis docker >> setup_docker_group
sudo adduser diak docker >> setup_docker_group 
echo "`date` ==================" >> 
fi
