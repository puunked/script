#!/bin/bash
clear
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo -e '\033[05;31m-------------------------------------------------------\033[00;37m'
echo -e '\033[01;32m              O que deseja fazer ?\033[00;37m'
echo " "
echo -e 'Digite: \033[01;32m1\033[00;37m Para Instalar o VNC.'
echo " "
echo -e 'Digite: \033[01;32m2\033[00;37m Iniciar o VNC.'
echo " "
echo -e 'Digite: \033[01;32m3\033[00;37m Sair e Voltar Para o R3V1V3R/PackVPS.'
echo " "
echo -e '\033[05;31m-------------------------------------------------------\033[00;37m'
echo " "
echo " "
read -p "Responda: " -e -i 1 resposta

if [[ "$resposta" = '1' ]]; then
apt-get install xfce4 xfce4-goodies gnome-icon-theme tightvncserver sudo -y
apt-get install -y iceweasel
clear
fi

if [[ "$resposta" = '2' ]]; then
echo -e "\033[1;34m ESCOLHA UMA SENHA MINIMA DE 6 CARACTERES DEPOIS CONFIRME\033[1;32m"
sleep 3

vncserver

echo -e "\033[1;34m VNC se conecta usando o IP da VPS na porta 5901\033[1;32m"
echo -e "\033[1;34m Desta forma: $MYIP:5901\033[1;32m"
echo -e "\033[1;34m Para acessar a interface gráfica\033[1;32m"
echo -e "\033[1;34m Baixe apk ou programa do VNC VIWER\033[1;32m"
echo -e "\033[1;34m Coloque o Ip e a porta 5901\033[1;32m"
echo -e "\033[1;34m PRONTO, AGORA SO USAR.\033[1;32m"
sleep 7
fi

if [[ "$resposta" = '3' ]]; then
menu
clear
fi
