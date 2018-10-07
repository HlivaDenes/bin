#!/bin/sh
cd /home/sis/bin && git fetch --all && git checkout --force "origin/master" && /home/sis/bin/start.sh
