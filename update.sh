#!/bin/bash
echo ---------------------------------
echo Welcome to the Ready2Go updater
echo ---------------------------------
echo Note, this will take some time as it builds CGminer fresh from git!
echo ---------------------------------
read -p "press [enter] to continue..."
cd Ready2Go-sys && rm -rf cgminer
wget https://raw.github.com/arjitc/Ready2Go/master/build-cgminer.sh
chmod +x build-cgminer.sh
clear
echo ---------------------------------
echo Update starting
echo ---------------------------------
echo Note, this will take some time as it builds CGminer fresh from git!
echo ---------------------------------
wait 2
./build-cgminer.sh
clear
echo Update done.
read -p "press [enter] to continue..."
