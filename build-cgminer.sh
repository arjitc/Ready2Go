#!/bin/bash
echo Updating system
sleep 2
sudo apt-get update 
echo Installing dependencies
sleep 2
sudo apt-get -y install git
sudo apt-get -y install libcurl4-openssl-dev
sudo apt-get -y install libncurses5-dev
sudo apt-get -y install libtool
sudo apt-get -y install libusb-1.0
sudo apt-get -y install dh-autoreconf
git clone https://github.com/ckolivas/cgminer.git
cd cgminer
sudo ./autogen.sh --enable-bflsc  --enable-bitforce --enable-icarus --enable-modminer --enable-ztex   --enable-avalon
make && sudo make install 
