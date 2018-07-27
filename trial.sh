#!/bin/bash
clear
IP=`dig +short myip.opendns.com @resolver1.opendns.com`

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`

useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "\033[01;34m"
echo -e "====Conta SSH Teste====\n\033[01;35m"
echo -e "Host: $IP" 
echo -e "Port OpenSSH   : 22,143"
echo -e "Port Dropbear  : 443,444"
echo -e "Port SSL/TLS   : 993,8888"
echo -e "Port Squid     : 80,8080,3128"
echo -e "\033[01;32m"
echo -e "Config OpenVPN SSLH    (TCP 1194): http://$IP:81/r3v1v3r.ovpn"
echo -e "Config OpenVPN STUNNEL (TCP 1195): http://$IP:81/stunnel.ovpn"
echo -e "Config OpenVPN VIVO    (TCP 8090): http://$IP:81/vivo.ovpn"
echo -e "\033[01;33m"
echo -e "Username: $Login"
echo -e "Password: $Pass"
echo -e "\033[01;35m"
echo -e "=========================\n\033[01;34m"
echo -e "R3V1V3R 1NT3RNET L1VR3\033[01;33m"
