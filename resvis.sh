#!/bin/bash
clear
echo -e "\033[01;34mR31N1C14R S3RV1Ç0S V3R ST4TUS"
echo ""
echo -e "\033[01;36m       BY: @judiba                 
       R3V1V3R 1NT3RN3T L1VR3                 
       Data de Atualização: 27/07/2018 
       Nome: R3V1V3R       \033[1;33m"
echo ""
read -p "De enter para continuar..."
clear
netstat -nlpt
echo ""
echo -e "\033[1;33m[0]\033[01;32m•=> » Reiniciar Dropbear \033[0;35m\033[1;33m"
echo -e "[1]\033[01;32m•=> » Reiniciar Openvpn  \033[0;35m\033[1;33m"
echo -e "[2]\033[01;32m•=> » Reiniciar SSH      \033[0;35m\033[1;33m"
echo -e "[3]\033[01;32m•=> » Reiniciar SSLH     \033[0;35m\033[1;33m"
echo -e "[4]\033[01;32m•=> » Reiniciar STUNNEL4 \033[0;35m\033[1;33m"
echo -e "[5]\033[01;32m•=> » Reiniciar SQUID3   \033[0;35m\033[1;33m"
echo -e "[6]\033[01;32m•=> » Reiniciar WEBMIN   \033[0;35m\033[1;33m"
echo -e "[7]\033[01;32m•=> » Reiniciar TODOS    \033[0;35m\033[1;33m"
echo -e "[8]\033[01;32m•=> » VER DISPOSITIVOS DE REDE\033[0;35m\033[1;33m"
echo -e "[9]\033[01;32m•=> » SAIR PARA O MENU\033[0;35m\033[1;33m"
echo 
read -p "Selecione uma opção [0-8]: "  opcao
echo "" 
case $opcao in
 0)
 clear
 echo "Reiniciando serviço Dropbear..."
 sleep 5
 service dropbear restart
clear
exit;; 
 1)
 clear
 echo "Reiniciando serviço OpenVPN..."
 sleep 5
 service openvpn restart
clear
exit;;
 2)
 clear
 echo "Reiniciando serviço SSH..."
 sleep 5
 service ssh restart
clear
exit;;
 3)
 clear
 echo "Reiniciando serviço SSLH..."
 sleep 5
 service sslh restart
clear
exit;;
 4)
 clear
 echo "Reiniciando serviço STUNNEL..."
 sleep 5
 service dropbear restart
clear
exit;;
 5)
 clear
 echo "Reiniciando serviço SQUID3..."
 sleep 5
 service dropbear restart
clear
exit;;
 6)
 clear
 echo "Reiniciando serviço WEBMIN..."
 sleep 5
 service dropbear restart
clear
exit;;
 7)
 clear
 echo "Reiniciando TODOS OS SERVIÇOS..."
 sleep 5
 service dropbear restart
 service openvpn restart
 service ssh restart
 service sslh restart
 service stunnel4 restart
 service squid3 restart
 service webmin restart
 clear
 exit;;
 8)
 ifconfig
sleep 10 
resvis;;
 9)
 exit;;
esac
