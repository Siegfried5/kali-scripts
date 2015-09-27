ifconfig wlan0 down
ifconfig wlan1 down
macchanger -a wlan0
macchanger -a wlan1
ifconfig wlan0 up
ifconfig wlan1 up

