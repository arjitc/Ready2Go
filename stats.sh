#!/bin/bash
echo ---------------------------------
echo        Ready2Go Stats
echo ---------------------------------
echo Uptime :
echo ---------------------------------
uptime
echo ---------------------------------
echo RAM usage : 
echo ---------------------------------
free -m
echo ---------------------------------
echo CPU usage : 
echo ---------------------------------
mpstat | grep -A 5 "%idle" | tail -n 1 | awk -F " " '{print 100 -  $ 12}'a
echo ---------------------------------
read -p "press [enter] to continue..."
clear
