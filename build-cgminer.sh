#!/bin/bash
echo Updating system
apt-get update 
echo Installing dependencies
apt-get install git
apt-get install libcurl4-openssl-dev
apt-get install libncurses5-dev
apt-get install libtool
apt-get install libusb-1.0
git clone https://github.com/ckolivas/cgminer.git
cd cgminer
./autogen.sh --enable-bflsc  --enable-bitforce --enable-icarus --enable-modminer --enable-ztex   --enable-avalon
