#! /bin/bash
#Rudolph Ponce
#Thu Feb 18 12:19:45 MST 2016

echo "We are going to run these commands:
service network-manager stop
airmon-ng check kill
airmon-ng start wlan0
airodump-ng wlan0mon -w raw_dump
"
sleep 10

service network-manager stop
airmon-ng check kill
airmon-ng start wlan0
echo ""
echo "Were able to start monitor mode: device name is wlan0mon"
sleep 5
airodump-ng wlan0mon -w raw_dump
