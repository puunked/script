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
clear
tput setaf 8 ; tput setab 5 ; tput bold ; printf '%35s%s%-25s\n' "R3V1V3R" ; tput sgr0
echo ""
echo -e "\033[01;34m                    R3V1V3R 1NT3RNET L1VR3      \033[1;33m"
echo ""
echo -e "[00]\033[01;32m•=> » Escolha        :\033[0;35m Para Sair ou use Ctrl + C \033[1;33m"
echo -e "[01]\033[01;32m•=> » menu           :\033[0;35m Exibe uma lista de comandos\033[1;33m"
echo -e "[02]\033[01;32m•=> » user-add       :\033[0;35m Crie uma conta SSH & OpenVPN\033[1;33m"
echo -e "[03]\033[01;32m•=> » trial          :\033[0;35m Crie uma conta de teste\033[1;33m"
echo -e "[04]\033[01;32m•=> » user-del       :\033[0;35m Excluir a conta SSH & OpenVPN\033[1;33m"
echo -e "[05]\033[01;32m•=> » user-login     :\033[0;35m Verifique o login usuário\033[1;33m"
echo -e "[06]\033[01;32m•=> » user-list      :\033[0;35m Lista de membros SSH & OpenVPN\033[1;33m"
echo -e "[07]\033[01;32m•=> » expdel         :\033[0;35m Excluir usuário expirado\033[1;33m"
echo -e "[08]\033[01;32m•=> » resvis         :\033[0;35m Reinicie todos os serviços\033[1;33m"
echo -e "[09]\033[01;32m•=> » speedtest      :\033[0;35m Speedtest VPS\033[1;33m"
echo -e "[10]\033[01;32m•=> » reboot         :\033[0;35m Reinicia a VPS\033[1;33m"
echo -e "[11]\033[01;32m•=> » info           :\033[0;35m Exibe informações do sistema\033[1;33m"
echo -e "[12]\033[01;32m•=> » sobre          :\033[0;35m Informações sobre este script\033[1;33m"
echo -e "[13]\033[01;32m•=> » Shadowsocks    :\033[0;35m Shadowsocks (EM BREVE)\033[1;33m"
echo -e "[14]\033[01;32m•=> » OpenVPN VIVO   :\033[0;35m OpenVPN TCP 8090 vivo.ovpn)\033[1;33m"
echo -e "[15]\033[01;32m•=> » TOR            :\033[0;35m Adiciona a rede TOR (EM BREVE)\033[1;33m"
echo -e "[16]\033[01;32m•=> » KernelControl  :\033[0;35m Procura ATT para Kernel Remove\033[1;33m"
echo -e "[17]\033[01;32m•=> » VNC            :\033[0;35m Ativa Interface Gráfica Servidor\033[1;33m"
echo -e "[18]\033[01;32m•=> » Security       :\033[0;35m Firewall e Torrent\033[1;33m"
echo -e "[19]\033[01;32m•=> » DadosMonitor   :\033[0;35m Uso de Dados/Banda|in||out|\033[1;33m"
echo -e "[20]\033[01;32m•=> » R3M0V3 R3V1V3R :\033[0;35m Remove este script\033[01;33m"
echo 
read -p "Selecione uma opção [00-20]: "  opcao
echo "" 
case $opcao in
 00)
 clear
 echo "saindo..."
 sleep 5
clear
exit;; 
 01)
  clear
 echo "voltando..."
  sleep 5
  clear
  menu;;
 02)
  user-add
 echo""
  read -p "De enter para continuar..."
 clear
  menu;;
 03)
 clear
 trial
 echo""
  read -p "De enter para continuar..."
 clear
  menu;;
 04)
  user-del
  echo""
  read -p "De enter para continuar..."
 clear
  menu;;
 05)
  clear
  user-login
 echo""
  read -p "De enter para continuar..."
 clear
  menu;;
 06)
  clear
  user-list
 echo""
  read -p "De enter para continuar..."
 clear
  menu;;
 07)
  expdel
 echo""
  read -p "De enter para continuar..."
 clear
  menu;;
 08)
  resvis
  echo""
  read -p "De enter para continuar..."
 clear
  menu;;
 09)
  speedtest
  echo""
  read -p "De enter para continuar..."
  clear
  menu;;
 10)
  reboot
  sleep 5
  menu;;
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
  echo -e "EM BREVE"
  read -p "De enter para continuar..."
  clear
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
  echo -e "EM BREVE"
  read -p "De enter para continuar..."
  clear
  menu;;
 18)
  echo -e "EM BREVE"
  read -p "De enter para continuar..."
  clear
  menu;;
 19)
  echo -e "EM BREVE"
  read -p "De enter para continuar..."
  clear
  menu;;
 20)
  sleep 5
  echo "Retirando R3V1V3R...1%"
  service dropbear stop 2>/dev/null
  echo "Retirando R3V1V3R...5%"
  rm -rf /usr/bin/user-add 2>/dev/null
  echo "Retirando R3V1V3R...10%"
  rm -rf /usr/bin/trial  2>/dev/null
  echo "Retirando R3V1V3R...15%"
  rm -rf /usr/bin/user-del  2>/dev/null
  echo "Retirando R3V1V3R...20%"
  rm -rf /usr/bin/user-login  2>/dev/null
  echo "Retirando R3V1V3R...25%"
  rm -rf /usr/bin/user-list  2>/dev/null
  echo "Retirando R3V1V3R...30%"
  rm -rf /usr/bin/expdel  2>/dev/null
  echo "Retirando R3V1V3R...35%"
  rm -rf /usr/bin/resvis   2>/dev/null
  echo "Retirando R3V1V3R...40%"
  rm -rf /usr/bin/speedtest  2>/dev/null
  echo "Retirando R3V1V3R...45%"
  rm -rf /usr/bin/info  2>/dev/null
  echo "Retirando R3V1V3R...50%"
  rm -rf /usr/bin/about  2>/dev/null    
  echo "Retirando R3V1V3R...55%"
  rm -rf /bin/VNC 2>/dev/null
  echo "Retirando R3V1V3R...60%"
  rm -rf /bin/DadosMonitor 2>/dev/null
  echo "Retirando R3V1V3R...65%"
  rm -rf /bin/ConfVPS13.sh 2>/dev/null
  echo "Retirando R3V1V3R...70%"
  rm -rf /bin/ConfVPS14.sh 2>/dev/null
  echo "Retirando R3V1V3R...75%"
  rm -rf /bin/ConfVPS15.sh 2>/dev/null
  echo "Retirando R3V1V3R...80%"
  rm -rf /bin/ConfVPS16.sh 2>/dev/null
  echo "Retirando R3V1V3R...85%"
  rm -rf /bin/ConfVPS17.sh 2>/dev/null
  echo "Retirando R3V1V3R...90%"
  rm -rf /bin/ConfVPS18.sh 2>/dev/null
  echo "Retirando R3V1V3R...95%"
  rm -rf /bin/ConfVPS19.sh 2>/dev/null
  echo "Retirando R3V1V3R...96%"
  service openvpn stop 2>/dev/null
  echo "Retirando R3V1V3R...97%"
  service nginx stop 2>/dev/null
  echo "Retirando R3V1V3R...98%"
  service squid3 stop 2>/dev/null
  echo "Retirando R3V1V3R...99%"
  service sslh stop 2>/dev/null
  echo "Retirando R3V1V3R...100%"
  rm -rf /bin/reboot   2>/dev/null
  echo -e "Finalizando..."
  echo -e ".............."
  echo -e "Finalizando..."
  echo -e ".............."
  rm -rf /usr/bin/menu 2>/dev/null
  clear;;  
esac
