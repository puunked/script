#!/bin/bash
clear
corPadrao="\033[0m"
preto="\033[0;30m"
vermelho="\033[0;31m"
verde="\033[0;32m"
marrom="\033[0;33m"
azul="\033[0;34m"
purple="\033[0;35m"
cyan="\033[0;36m"
cinzaClaro="\033[0;37m"
pretoCinza="\033[1;30m"
vermelhoClaro="\033[1;31m"
verdeClaro="\033[1;32m"
amarelo="\033[1;33m"
azulClaro="\033[1;34m"
purpleClaro="\033[1;35m"
cyanClaro="\033[1;36m"
branco="\033[1;37m"

echo -e "\033[1;37m"
clear
tput setaf 8 ; tput setab 5 ; tput bold ; printf '%30s%s%-18s\n' "R3V1V3R" ; tput sgr0
echo ""
echo -e "\033[01;34m             R3V1V3R 1NT3RNET L1VR3      \033[1;33m"
echo ""
echo -e "[00]\033[01;32m•=> » SAIR           :\033[0;35m Enter ou Ctrl + C \033[1;33m"
echo -e "[01]\033[01;32m•=> » menu           :\033[0;35m Lista de Comandos\033[1;33m"
echo -e "[02]\033[01;32m•=> » user-add       :\033[0;35m Cria SSH & OpenVPN\033[1;33m"
echo -e "[03]\033[01;32m•=> » trial          :\033[0;35m Criar TESTE\033[1;33m"
echo -e "[04]\033[01;32m•=> » user-del       :\033[0;35m Remove Usuário\033[1;33m"
echo -e "[05]\033[01;32m•=> » user-login     :\033[0;35m Login de Usuário\033[1;33m"
echo -e "[06]\033[01;32m•=> » user-list      :\033[0;35m Lista de Membros\033[1;33m"
echo -e "[07]\033[01;32m•=> » expdel         :\033[0;35m Excluir Usuário\033[1;33m"
echo -e "[08]\033[01;32m•=> » resvis         :\033[0;35m Reiniciar Serviços\033[1;33m"
echo -e "[09]\033[01;32m•=> » speedtest      :\033[0;35m Speedtest VPS\033[1;33m"
echo -e "[10]\033[01;32m•=> » reboot         :\033[0;35m Reinicia a VPS\033[1;33m"
echo -e "[11]\033[01;32m•=> » info           :\033[0;35m Informações VPS\033[1;33m"
echo -e "[12]\033[01;32m•=> » sobre          :\033[0;35m Informações do script\033[1;33m"
echo -e "[13]\033[01;32m•=> » Shadowsocks    :\033[0;35m Shadowsocks(EM BREVE)\033[1;33m"
echo -e "[14]\033[01;32m•=> » OpenVPN        :\033[0;35m OpenVPN TCP/UDP\033[1;33m"
echo -e "[15]\033[01;32m•=> » TOR            :\033[0;35m Rede TOR (EM BREVE)\033[1;33m"
echo -e "[16]\033[01;32m•=> » KernelControl  :\033[0;35m Remove ATT do Kernel\033[1;33m"
echo -e "[17]\033[01;32m•=> » VNC            :\033[0;35m Interface Gráfica VPS\033[1;33m"
echo -e "[18]\033[01;32m•=> » Privoxy        :\033[0;35m Proxy para rede TOR\033[1;33m"
echo -e "[19]\033[01;32m•=> » DadosMonitor   :\033[0;35m Dados/Banda|in||out|\033[1;33m"
echo -e "[20]\033[01;32m•=> » R3M0V3 R3V1V3R :\033[0;35m Remove este script\033[01;33m"
echo 
read -p "Selecione uma opção [00-20]: "  opcao
echo -e "\033[01;32m" 
case $opcao in
 00)
 clear
exit 1;; 
 01)
  clear
  echo "voltando..."
  sleep 2
  clear
  menu;;
 02)
  user-add
  echo ""
  read -p "De enter para ir ao menu..."
  clear
  menu;;
 03)
  trial
  echo ""
  read -p "De enter para ir ao menu..."
  clear
  menu;;
 04)
  user-del
  echo ""
  read -p "De enter para ir ao menu..."
  clear
  menu;;
 05)
  clear
  user-login
  echo ""
  read -p "De enter para ir ao menu..."
  clear
  menu;;
 06)
  user-list
  echo ""
  read -p "De enter para ir ao menu..."
  clear
  menu;;
 07)
  expdel
  echo ""
  read -p "De enter para ir ao menu..."
  clear
  menu;;
 08)
  resvis
  clear
  menu;;
 09)
  speedtest
  echo ""
  read -p "De enter para ir ao menu..."
  clear
  menu;;
 10)
  clear
  echo "reiniciando..."
  reboot
  exit 2;;
 11)
  info
  echo""
  read -p "De enter para continuar..."
  clear
  menu;;
 12)
  about
  echo""
  read -p "De enter para continuar..."
  clear
  menu;;
 13)
  echo -e "EM BREVE"
  read -p "De enter para continuar..."
  clear
  menu;;
 14)
  echo -e "\033[01;32m INICIANDO....."
  sleep 1
  clear
  echo -e "\033[01;31m INSTALANDO O OPENVPN..."
  clear
  rm /bin/ovpn/ &>/dev/null
  wget -O /bin/ovpn -o /dev/null https://raw.githubusercontent.com/redeviver/ovpn/master/ovpn
  chmod +x /bin/ovpn
  clear
  ovpn
  menu;;
 15)
  echo -e "EM BREVE"
  read -p "De enter para continuar..."
  clear
  menu;;
 16)
  echo -e "EM BREVE"
  read -p "De enter para continuar..."
  clear
  menu;;
 17)
  vnc
  echo ""
  read -p "De enter para ir ao menu..."
  clear
  menu;;
 18)
  echo -e "EM BREVE"
  read -p "De enter para continuar..."
  clear
  menu;;
 19)
  nload
  clear
  read -p "De enter para ir ao menu..."
  clear
  menu;;
 20)
  sleep 5
  delete
  clear
  exit 0;;
   *)
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%30s%s%-18s\n' "OPÇÃO INVÁLIDA..." ; tput sgr0
 sleep 3
 exit;;
esac
