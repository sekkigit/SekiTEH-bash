#!/usr/bin/env bash

while true; do
        read -p "Do you wish run sdsadsd install? 
Yes | No --> " yn
        case $yn in
            [Yy]* ) echo "TEST"; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
          esac
done