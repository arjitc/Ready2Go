#!/bin/bash
echo Ready2Go system update
echo ----------------------
echo !This will take time!
echo ----------------------
read -p "press [enter] to continue..."
apt-get update && apt-get dist-upgrade
rm -rf update.sh && rm -rf stats.sh && rm -rf .bashrc
wget https://raw.github.com/arjitc/Ready2Go/master/update.sh
wget https://raw.github.com/arjitc/Ready2Go/master/.bashrc
wget https://raw.github.com/arjitc/Ready2Go/master/stats.sh
