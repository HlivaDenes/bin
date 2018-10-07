#!/bin/bash
if [ -e mv_share ]
then
  echo "már futott az mv_share.sh"
else
echo "---------------------------------" >> mv_share
sudo mv /home/user/share /home >> mv_share
sudo userdel hg >> mv_share
sudo userdel win >> mv_share
sudo userdel user >> mv_share
sudo userdel vm >> mv_share
sudo rm -r /home/hg >> mv_share
sudo rm -r /home/win >> mv_share
sudo rm -r /home/user >> mv_share
sudo rm -r /home/vm >> mv_share
echom "******************************" >> mv_share


