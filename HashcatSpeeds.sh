#! /bin/bash
#Rudolph Ponce
#Fri Feb 19 21:02:33 MST 2016

clear
ans="y"

# basic intro
echo "Hello this script will benchmark your device 
to see how fast it can crack hash using HashCat
"
echo ""


echo "Choose on the Following by entering the Number <ex: I want to 
benchmark for MD5 so i would enter 1 >"

sleep 10

while [[ $ans == "y" ]]
do

read -p '
1) MD5
2) md5($pass.$salt)
3) md5($salt.$pass)
4) md5(unicode($pass).$salt)
5) md5($salt.unicode($pass))
6) HMAC-MD5 (key = $pass)
7) HMAC-MD5 (key = $salt)
8) SHA1
9) sha1($pass.$salt)
10) sha1($salt.$pass)
11) sha1(unicode($pass).$salt)
12) sha1($salt.unicode($pass))
13) HMAC-SHA1 (key = $pass)
14) HMAC-SHA1 (key = $salt)
15) MySQL323
16) MySQL4.1/MySQL5
17) phpass, MD5(Wordpress), MD5(phpBB3), MD5(Joomla)
18) md5crypt, MD5(Unix), FreeBSD MD5, Cisco-IOS MD5
19) MD4
20) NTLM
21) Domain Cached Credentials (DCC), MS Cached
22) SHA256
23) sha256($pass.$salt)
24) sha256($salt.$pass)
25) sha256(unicode($pass).$salt)
26) base64(sha256(unicode($pass)))
27) sha256($salt.unicode($pass))
28) HMAC-SHA256 (key = $pass)
29) HMAC-SHA256 (key = $salt)
30) md5apr1, MD5(APR), Apache MD5
31) SHA512
32) sha512($pass.$salt)
33) sha512($salt.$pass)
34) sha512(unicode($pass).$salt)
35) sha512($salt.unicode($pass))
36) HMAC-SHA512 (key = $pass)
37) HMAC-SHA512 (key = $salt)
38) SHA-512(Unix)
39) Cisco-PIX MD5
40) Cisco-ASA MD5
41) WPA/WPA2
42) Double MD5
43) bcrypt, Blowfish(OpenBSD)
44) MD5(Sun)
45) md5(md5(md5($pass)))
46) md5(md5($salt).$pass)
47) md5($salt.md5($pass))
48) md5($pass.md5($salt))
49) md5($salt.$pass.$salt)
50) md5(md5($pass).md5($salt))
51) md5($salt.md5($salt.$pass))
52) md5($salt.md5($pass.$salt))
53) md5($username.0.$pass)
54) md5(strtoupper(md5($pass)))
55) md5(sha1($pass))
56) Double SHA1
57) sha1(sha1(sha1($pass)))
58) sha1(md5($pass))
59) MD5(Chap), iSCSI CHAP authentication
60) sha1($salt.$pass.$salt)
61) SHA-3(Keccak)
62) Half MD5
63) Password Safe SHA-256
64) IKE-PSK MD5
65) IKE-PSK SHA1
66) NetNTLMv1-VANILLA / NetNTLMv1-ESS
67) NetNTLMv2
68) Cisco-IOS SHA256
69) Android PIN
70) AIX {smd5}
71) AIX {ssha256}
72) AIX {ssha512}
73) AIX {ssha1}
74) GOST, GOST R 34.11-94
75) Fortigate (FortiOS)
76) OS X v10.8+
77) GRUB 2
78) IPMI2 RAKP HMAC-SHA1
79) sha256crypt, SHA256(Unix)
80) Drupal7
81) WBB3, Woltlab Burning Board 3
82) scrypt
83) Cisco $8$
84) Cisco $9$
85) Radmin2
86) Django (PBKDF2-SHA256)
87) Cram MD5
88) SAP CODVN H (PWDSALTEDHASH) iSSHA-1
89) PrestaShop
90) PostgreSQL Challenge-Response Authentication (MD5)
91) MySQL Challenge-Response Authentication (SHA1)
92) SIP digest authentication (MD5)
93) Plaintext
94) Joomla < 2.5.18
95) PostgreSQL
96) osCommerce, xt:Commerce
97) Skype
98) nsldap, SHA-1(Base64), Netscape LDAP SHA
99) nsldaps, SSHA-1(Base64), Netscape LDAP SSHA
100) Oracle S: Type (Oracle 11+)
101) SMF > v1.1
102) OS X v10.4, v10.5, v10.6
103) EPi
104) Django (SHA-1)
105) MSSQL(2000)
106) MSSQL(2005)
107) PeopleSoft
108) EPiServer 6.x < v4
109) hMailServer
110) EPiServer 6.x > v4
111) SSHA-512(Base64), LDAP {SSHA512}
112) OS X v10.7
113) MSSQL(2012 & 2014)
114) vBulletin < v3.8.5
115) PHPS
116) vBulletin > v3.8.5
117) IPB2+, MyBB1.2+
118) Mediawiki B type
119) WebEdition CMS
120) Redmine Project Management Web App

Pick One
' i
echo ""

# This is the array table list of the hashcat options
hashnumber[1]=0
hashnumber[2]=10
hashnumber[3]=20
hashnumber[4]=30
hashnumber[5]=40
hashnumber[6]=50
hashnumber[7]=60
hashnumber[8]=100
hashnumber[9]=110
hashnumber[10]=120
hashnumber[11]=130
hashnumber[12]=140
hashnumber[13]=150
hashnumber[14]=160
hashnumber[15]=200
hashnumber[16]=300
hashnumber[17]=400
hashnumber[18]=500
hashnumber[19]=900
hashnumber[20]=1000
hashnumber[21]=1100
hashnumber[22]=1400
hashnumber[23]=1410
hashnumber[24]=1420
hashnumber[25]=1430
hashnumber[26]=1431
hashnumber[27]=1440
hashnumber[28]=1450
hashnumber[29]=1460
hashnumber[30]=1600
hashnumber[31]=1700
hashnumber[32]=1710
hashnumber[33]=1720
hashnumber[34]=1730
hashnumber[35]=1740
hashnumber[36]=1750
hashnumber[37]=1760
hashnumber[38]=1800
hashnumber[39]=2400
hashnumber[40]=2410
hashnumber[41]=2500
hashnumber[42]=2600
hashnumber[43]=3200
hashnumber[44]=3300
hashnumber[45]=3500
hashnumber[46]=3610
hashnumber[47]=3710
hashnumber[48]=3720
hashnumber[49]=3800
hashnumber[50]=3910
hashnumber[51]=4010
hashnumber[52]=4110
hashnumber[53]=4210
hashnumber[54]=4300
hashnumber[55]=4400
hashnumber[56]=4500
hashnumber[57]=4600
hashnumber[58]=4700
hashnumber[59]=4800
hashnumber[60]=4900
hashnumber[61]=5000
hashnumber[62]=5100
hashnumber[63]=5200
hashnumber[64]=5300
hashnumber[65]=5400
hashnumber[66]=5500
hashnumber[67]=5600
hashnumber[68]=5700
hashnumber[69]=5800
hashnumber[70]=6300
hashnumber[71]=6400
hashnumber[72]=6500
hashnumber[73]=6700
hashnumber[74]=6900
hashnumber[75]=7000
hashnumber[76]=7100
hashnumber[77]=7200
hashnumber[78]=7300
hashnumber[79]=7400
hashnumber[80]=7900
hashnumber[81]=8400
hashnumber[82]=8900
hashnumber[83]=9200
hashnumber[84]=9300
hashnumber[85]=9800
hashnumber[86]=10000
hashnumber[87]=10200
hashnumber[88]=10300
hashnumber[89]=11000
hashnumber[90]=11100
hashnumber[91]=11200
hashnumber[92]=11400
hashnumber[93]=99999
hashnumber[94]=11
hashnumber[95]=12
hashnumber[96]=21
hashnumber[97]=23
hashnumber[98]=101
hashnumber[99]=111
hashnumber[100]=112
hashnumber[101]=121
hashnumber[102]=122
hashnumber[103]=123
hashnumber[104]=124
hashnumber[105]=131
hashnumber[106]=132
hashnumber[107]=133
hashnumber[108]=141
hashnumber[109]=1421
hashnumber[110]=1441
hashnumber[111]=1711
hashnumber[112]=1722
hashnumber[113]=1731
hashnumber[114]=2611
hashnumber[115]=2612
hashnumber[116]=2711
hashnumber[117]=2811
hashnumber[118]=3711
hashnumber[119]=3721
hashnumber[120]=7600

if [[ i -le 120 ]]
then
   echo "Ok then you Choose Option $i"
   echo ""
   sleep 5
   hashcat -m ${hashnumber[i]} -a 3 -b
   echo ""
   read -p "Do You Wish To Try Again(y/n): " ans

else
   echo "Invalid Option Try Again"
   ans="y"
fi

done

#EOF
