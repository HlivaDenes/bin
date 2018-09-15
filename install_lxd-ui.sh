#!/bin/bash
if [ -e install_lxd-ui ]
then 
    echo " install_lxd-ui.sh már telepítve van"
else
    if [ -e ~/.bin/LXDui-1.0.0-x86_64.AppImage ]
    then
	echo "LXD-UI exist"
    else
	mkdir ~/.bin
	wget https://github.com/lcherone/LXD-UI/releases/download/1.0.0/LXDui-1.0.0-x86_64.AppImage
	chmod +x LXDui-1.0.0-x86_64.AppImage
	mv LXDui-1.0.0-x86_64.AppImage ~/.bin/
	ln -s ~/.bin/LXDui-1.0.0-x86_64.AppImage ~/.bin/lxdui
    fi
    touch install_lxd-ui
fi


