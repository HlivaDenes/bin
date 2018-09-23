
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
chown root:root githubsync
chmod +x githubsync
mv githubsync /etc/cron.hourly
touch install_githubsync2crontab
fi
