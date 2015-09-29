ifconfig wlan0 down
macchanger -a wlan0
ifconfig wlan0 up
ifconfig wlan1 down

ifconfig wlan1 down
macchanger -a wlan1
ifconfig wlan1 up