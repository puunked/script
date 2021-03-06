#!/bin/bash
clear
echo -e "\033[0;31m"
cut -d : -f 1,3 /etc/passwd | grep -A2000 1000
echo -e "\033[1;33m"
read -p "Usuário  : " Login
read -p "Senha    : " Pass
read -p "Validade : " masaaktif

IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e "\033[01;34m"
echo -e "====Informação da Conta SSH====\n\033[01;35m"
echo -e "Host: $IP" 
echo -e "Port OpenSSH   : 22,143"
echo -e "Port Dropbear  : 443,444"
echo -e "Port SSL/TLS   : 993,8888"
echo -e "Port Squid     : 80,8080,3128"
echo -e "\033[01;32m"
echo -e "Config OpenVPN R3V1V3R (TCP 1194): http://$IP:81/r3v1v3r.ovpn"
echo -e "Config OpenVPN SSLH    (TCP 1195): http://$IP:81/sslh.ovpn"
echo -e "Config OpenVPN STUNNEL (TCP 1196): http://$IP:81/stunnel.ovpn"
echo -e "\033[01;33m"
echo -e "Usuário  : $Login "
echo -e "Senha    : $Pass"
echo -e "Validade : $exp\033[01;35m"
echo -e "=============================\n\033[01;34m"
echo -e "R3V1V3R 1NT3RN3T L1VR3\033[01;33m"
echo ""
