
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize' >> install_desktop
echo "`date` =========================" >> install_desktop
fi

#!/bin/sh
flag='install_desktop_2018-12-31'
if [ -e $flag ]
then
    echo '$flag már telepítve'
else
    echo "`date` -----start--desktop---------"
    sudo apt-get update -y |tee error && \
    sudo apt-get upgrade -y |tee $flag && \
    sudo apt-get dist-upgrade -y |tee $flag && \
    sudo apt-get install terminator guake guake-indicator gdebi-core vlc gnome-tweak-tool -y |tee $flag && \
    sudo apt-get autoremove -y | tee $flag && \
    gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize' |tee $flag && \
    echo "`date` ========stop==desktop========" |tee $flag
fi
