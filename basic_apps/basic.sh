#!/bin/bash

apt update
apt install cron -y
apt install nano -y
apt install btop -y
apt upgrade -y

echo "Cron, Nano and Btop installed"
sleep 2s

