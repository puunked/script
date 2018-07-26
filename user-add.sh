#!/bin/bash
cd
adduser r3v1v3r sudo
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
echo -e "Port Dropbear  : 443,444"
echo -e "Port SSL/TLS   : 993"
echo -e "Port Squid     : 80,8080,3128"
echo -e "Config OpenVPN R3V1V3R(TCP 1194): http://$IP:81/r3v1v3r.ovpn"
echo -e "Config OpenVPN STUNNEL(TCP 1195): http://$IP:81/stunnel.ovpn"
echo -e "Username: $Login "
echo -e "Password: $Pass"
echo -e "-----------------------------"
echo -e "Ativo até: $exp"
echo -e "============================="
echo -e "R3V1V3R"
