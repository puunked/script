#!/bin/bash
clear
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo -e "\033[1;37m"
clear
tput setaf 8 ; tput setab 5 ; tput bold ; printf '%25s%s%-15s\n' "R3V1V3R" ; tput sgr0
echo ""
echo -e "\033[01;34m         R3V1V3R 1NT3RNET L1VR3      \033[1;33m"
echo ""
echo -e '\033[05;31m----------------------------------------\033[00;33m'
echo -e "[1]\033[01;32m•=> » INSTALAR O\033[0;35m VNC\033[1;33m"
echo ""
echo -e "[2]\033[01;32m•=> » INICIAR O\033[0;35m VNC\033[1;33m"
echo ""
echo -e "[3]\033[01;32m•=> » SAIR E VOLTAR AO\033[0;35m MENU\033[1;33m"
echo -e '\033[05;31m----------------------------------------\033[00;33m'
echo ""
read -p "Selecione:[1-3]: " -e -i 1 resposta

if [[ "$resposta" = '1' ]]; then
apt-get install xfce4 xfce4-goodies gnome-icon-theme tightvncserver sudo -y
apt-get install -y iceweasel
clear
fi

if [[ "$resposta" = '2' ]]; then
clear
echo -e "\033[1;34m ESCOLHA UMA SENHA MINIMA DE 6 CARACTERES DEPOIS CONFIRME\033[1;32m"
sleep 3
vncserver
netstat -nlpt | grep Xtightvnc
echo -e "\033[1;34m VNC se conecta usando o IP da VPS na porta 5901\033[1;32m"
echo -e "\033[1;34m Desta forma: $MYIP:5901\033[1;32m"
echo -e "\033[1;34m Para acessar a interface gráfica\033[1;32m"
echo -e "\033[1;34m Baixe apk ou programa do VNC VIWER\033[1;32m"
echo -e "\033[1;34m Coloque o IP da VPS e a porta 5901\033[1;32m"
echo -e "\033[1;34m PRONTO PARA USAR.\033[1;32m"
echo -e "=============================\n\033[01;34m"
echo -e "R3V1V3R 1NT3RN3T L1VR3\033[01;33m"
echo ""
sleep 7
fi

if [[ "$resposta" = '3' ]]; then
menu
clear
fi
