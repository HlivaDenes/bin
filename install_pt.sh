#!/bin/bash
mkdir tmp
cd tmp
wget -O pt.tar.gz --no-check-certificate "https://onedrive.live.com/download?cid=ACFBA3145936280A&resid=ACFBA3145936280A%21640086&authkey=AHh4z-436I87-yY"
sudo tar -xzvf pt.tar.gz
sudo ./install
sudo apt-get install libqt5webkit5 libqt5multimediawidgets5 libqt5svg5 libqt5script5 libqt5scripttools5 libqt5sql5 -y
wget http://mirrors.kernel.org/ubuntu/pool/main/i/icu/libicu52_52.1-3ubuntu0.8_amd64.deb
sudo dpkg -i libicu52_52.1-3ubuntu0.8_amd64.deb
wget http://ftp.debian.org/debian/pool/main/libp/libpng/libpng12-0_1.2.50-2+deb8u3_amd64.deb
sudo dpkg -i libpng12-0_1.2.50-2+deb8u3_amd64.deb
cd ..
sudo rm -rf tmp
