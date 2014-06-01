#!/bin/bash
echo ---------------------------------
echo Welcome to the Ready2Go installer
echo ---------------------------------
echo ! Run this script under the root user only !
echo ---------------------------------
read -p "press [enter] to continue install or ctrl+C to exit..."
mkdir Ready2Go-sys && cd Ready2Go-sys
rm -rf build-cgminer.sh
wget https://raw.github.com/arjitc/Ready2Go/master/build-cgminer.sh --no-check-certificate
chmod +x build-cgminer.sh
./build-cgminer.sh
apt-get -y install mpstat
echo ---------------------------------
echo Install [2/4] ...
echo ---------------------------------
wait 2
wget https://raw.github.com/arjitc/Ready2Go/master/update.sh --no-check-certificate
chmod +x update.sh
echo ---------------------------------
echo Install [3/4] ...
echo ---------------------------------
wait 2
wget https://raw.github.com/arjitc/Ready2Go/master/build-motd.sh --no-check-certificate
chmod +x build-motd.sh
./build-motd.sh
echo ---------------------------------
echo Install [4/4] ...
echo ---------------------------------
wait 2
rm -rf .bashrc
wget https://raw.github.com/arjitc/Ready2Go/master/.bashrc --no-check-certificate
echo ---------------------------------
echo Install done !
echo ---------------------------------


