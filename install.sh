#!/bin/bash
echo ---------------------------------
echo Welcome to the Ready2Go installer
echo ---------------------------------
echo ! Run this script under the root user only !
echo ---------------------------------
read -p "press [enter] to continue install or ctrl+C to exit..."
mkdir Ready2Go-sys && cd Ready2Go-sys
rm -rf build-cgminer.sh
wget https://raw.github.com/arjitc/Ready2Go/master/build-cgminer.sh
chmod +x build-cgminer.sh
./build-cgminer.sh
echo ---------------------------------
echo Install [1/2] done ...
echo ---------------------------------
wait 2
wget https://raw.github.com/arjitc/Ready2Go/master/update.sh
chmod +x update.sh
echo ---------------------------------
echo Install done !
echo ---------------------------------


