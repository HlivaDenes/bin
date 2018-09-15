#!/bin/bash
if [ -e install_grub-costumizer ]
then
    echo "install_grub-costumizer már telepítve van."
else
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer && sudo apt-get update && sudo apt-get install -y  grub-customizer
touch install_grub-costumizer
fi
