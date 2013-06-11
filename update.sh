#!/bin/bash
echo Welcome to the Ready2Go updater
read -p "press [enter] to continue..."
mkdir Ready2Go-update && cd Ready2Go-update
wget https://raw.github.com/arjitc/Ready2Go/master/build-cgminer.sh
chmod +x build-cgminer.sh
echo Update starting
wait 2
./build-cgminer.sh
cd .. && rm -rf Ready2Go-update
echo Update done.
read -p "press [enter] to continue..."
