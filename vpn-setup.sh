#!/bin/bash
# Author Rudolph Ponce
#
# Description: This Script will enable vpn setup on kali linux 2.0
# Creds got to http://www.blackmoreops.com/2015/03/01/setup-vpn-on-kali-linux/
# :) happy hacking



apt-get install aptitude network-manager-openvpn-gnome network-manager-pptp network-manager-pptp-gnome network-manager-strongswan network-manager-vpnc network-manager-vpnc-gnome -y
aptitude -r install network-manager-openvpn-gnome network-manager-pptp network-manager-pptp-gnome network-manager-strongswan network-manager-vpnc network-manager-vpnc-gnome
