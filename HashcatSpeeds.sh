#! /bin/bash
#Rudolph Ponce
#Fri Feb 19 21:02:33 MST 2016

# basic intro
echo "Hello this script will benchmark your device 
to see how fast it can crack hash using HashCat
"

read -p "
Please select one of the following to test
(MD5/NTLM/SHA512/WPA2/AndroidPIN): " Hashtype

echo "
Ok you have selected the $Hashtype hash
begining to to benchmark this will take a while
"

echo ""

# IF statements to choose 
if [[ $Hashtype == md5 ]] || [[ $Hashtype == MD5 ]]; then
	hashcat -m 0 -a 3 -b
elif [[ $Hashtype == ntlm ]] || [[ $Hashtype == NTLM ]]; then
	hashcat -m 1000 -a 3 -b
elif [[ $Hashtype == sha512 ]] || [[ $Hashtype == SHA512 ]]; then
	hashcat -m 1700 -a 3 -b
elif [[ $Hashtype == WPA2 ]] || [[ $Hashtype == wpa2 ]]; then
	hashcat -m 2500 -a 3 -b
elif [[ $Hashtype == AndroidPin ]] || [[ $Hashtype == androidpin ]]; then
	hashcat -m 5800 -a 3 -b
fi
