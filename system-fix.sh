#!/bin/bash
echo ---------------------------------
echo Ready2Go System Fix
echo ---------------------------------
echo ! Run this script under the root user only !
echo ---------------------------------
read -p "press [enter] to continue or ctrl+C to exit..."
rm -rf Ready2Go-sys
mkdir Ready2Go-sys && cd Ready2Go-sys
rm -rf build-cgminer.sh
wget https://raw.github.com/arjitc/Ready2Go/master/build-cgminer.sh
chmod +x build-cgminer.sh
./build-cgminer.sh
wget https://raw.github.com/arjitc/Ready2Go/master/update.sh
chmod +x update.sh
wget https://raw.github.com/arjitc/Ready2Go/master/build-motd.sh
chmod +x build-motd.sh
./build-motd.sh
rm -rf .bashrc
wget https://raw.github.com/arjitc/Ready2Go/master/.bashrc
apt-get update && apt-get dist-upgrade
echo ---------------------------------
echo System fix done ! Reboot RPi to make sure changes applied.
echo ---------------------------------
