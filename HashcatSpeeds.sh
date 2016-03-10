#! /bin/bash
#Rudolph Ponce
#Fri Feb 19 21:02:33 MST 2016

# basic intro
echo "Hello this script will benchmark your device 
to see how fast it can crack hash using HashCat
"


echo ""

read -p "

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
	21) Domain Cached Credentials (DCC), MS Cache
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
	105) Django (SHA-1)
	106) MSSQL(2000)
	107) MSSQL(2005)
	108) PeopleSoft
	109) EPiServer 6.x < v4
	110) hMailServer
	111) EPiServer 6.x > v4
	112) SSHA-512(Base64), LDAP {SSHA512}
	113) OS X v10.7
	114) MSSQL(2012 & 2014)
	115) vBulletin < v3.8.5
	116) PHPS
	117) vBulletin > v3.8.5
	118) IPB2+, MyBB1.2+
	119) Mediawiki B type
	120) WebEdition CMS
	121) Redmine Project Management Web App
"