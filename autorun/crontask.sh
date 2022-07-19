#!/bin/bash

cat <<EOF >> /etc/cron.d/crontask
0 5 * * *  root    apt update && apt upgrade -y
EOF
crontab -u "${SUDO_USER:-$USER}" /etc/cron.d/crontask

crontab -l
sleep 2s