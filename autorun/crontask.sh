#!/bin/bash

cat <<EOF >> /etc/cron.d/crontask
0 5 * * *  root    apt update && apt upgrade -y
EOF
crontab -u /etc/cron.d/crontask

echo "Auto update and upgrade enabled"
sleep 3s