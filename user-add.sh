#!/bin/bash

read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hoje): " masaaktif

IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "====Informação da Conta SSH===="
echo -e "Host: $IP" 
echo -e "Port OpenSSH   : 22,143"
echo -e "Port Dropbear  : 80,444"
echo -e "Port SSL/TLS   : 443"
echo -e "Port Squid     : 8080,3128"
echo -e "Config OpenVPN (TCP 1194): http://$IP:81/r3v1v3r.ovpn"
echo -e "Username: $Login "
echo -e "Password: $Pass"
echo -e "-----------------------------"
echo -e "Ativo até: $exp"
echo -e "============================="
echo -e "R3V1V3R"
