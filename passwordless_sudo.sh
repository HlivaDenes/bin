#!/bin/bash
if [ -e passwordless_sudo ]
then
    echo "passwordless_sudo"
else
cat <<EOF>> nopasswd
# Passwordless sudo
%sudo ALL=(ALL) NOPASSWD:ALL
EOF
sudo mv nopasswd /etc/sudoers.d/
sudo chown root:root /etc/sudoers.d/nopasswd
sudo chmod 0440 /etc/sudoers.d/nopasswd
touch passwordless_sudo
fi