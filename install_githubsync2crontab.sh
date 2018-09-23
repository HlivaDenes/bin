
#!/bin/bash
if [ -e install_githubsync2crontab ]
then
    echo "install_githubsync2crontab már futott"
else
cat <<EOF> githubsync
#!/bin/bash
cd /home/sis/bin && git fetch --all && git checkout --force "origin/master" && /home/sis/bin/start.sh
echo `date` >>/tmp/cronhourly

EOF

sudo chown root:root githubsync
sudo chmod +x githubsync
sudo mv githubsync /etc/cron.hourly
touch install_githubsync2crontab
fi
