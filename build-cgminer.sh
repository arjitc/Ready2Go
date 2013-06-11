#!/bin/bash
echo Updating system
sleep 3
sudo apt-get update 
echo Installing dependencies
sleep 3
sudo apt-get install git
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libncurses5-dev
sudo apt-get install libtool
sudo apt-get install libusb-1.0
sudo apt-get install autoreconf
git clone https://github.com/ckolivas/cgminer.git
cd cgminer
./autogen.sh --enable-bflsc  --enable-bitforce --enable-icarus --enable-modminer --enable-ztex   --enable-avalon
make && make install && sudo make install 
