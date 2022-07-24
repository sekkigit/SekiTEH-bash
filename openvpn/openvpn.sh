#!/bin/bash

apt update


echo "OpenVPN is $(systemctl is-enabled openvpn) and $(systemctl is-active openvpn)."
sleep 3s