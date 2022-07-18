#!/bin/bash

sudo apt install ufw -y

ufw default reject incoming
ufw default allow outgoing
ufw limit 22/tcp   #SSH
ufw --force enable