#!/bin/sh

if [ -e github_fetch_start ]
then
    echo "github_fetch_start már futott"
else
cd /home/sis/bin && git fetch --all && git checkout --force "origin/master" && /home/sis/bin/start.sh

touch github_fetch_start
fi
