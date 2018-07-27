#!/bin/bash
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

tput setaf 8 ; tput setab 5 ; tput bold ; printf '%30s%s%-15s\n' "R3V1V3R" ; tput sgr0
echo ""
echo -e "\033[01;34m      R3V1V3R 1NT3RNET L1VR3      \033[1;33m"
echo ""
echo -e "[00]\033[01;32m•=> » Escolha    :\033[0;35m Para Sair ou use Ctrl + C \033[1;33m"
echo -e "[01]\033[01;32m•=> » menu       :\033[0;35m Exibe uma lista de comandos\033[1;33m"
echo -e "[02]\033[01;32m•=> » user-add   :\033[0;35m Crie uma conta SSH & OpenVPN\033[1;33m"
echo -e "[03]\033[01;32m•=> » trial      :\033[0;35m Crie uma conta de teste\033[1;33m"
echo -e "[04]\033[01;32m•=> » user-del   :\033[0;35m Excluir a conta SSH & OpenVPN\033[1;33m"
echo -e "[05]\033[01;32m•=> » user-login :\033[0;35m Verifique o login do usuário\033[1;33m"
echo -e "[06]\033[01;32m•=> » user-list  :\033[0;35m Lista de membros SSH & OpenVPN\033[1;33m"
echo -e "[07]\033[01;32m•=> » expdel     :\033[0;35m Excluir usuário expirado\033[1;33m"
echo -e "[08]\033[01;32m•=> » resvis     :\033[0;35m Reinicie todos os serviços\033[1;33m"
echo -e "[09]\033[01;32m•=> » speedtest  :\033[0;35m Speedtest VPS\033[1;33m"
echo -e "[10]\033[01;32m•=> » reboot     :\033[0;35m Reinicia a VPS\033[1;33m"
echo -e "[11]\033[01;32m•=> » info       :\033[0;35m Exibe informações do sistema\033[1;33m"
echo -e "[12]\033[01;32m•=> » sobre      :\033[0;35m Informações sobre este script\033[1;33m"
echo -e "[13]\033[01;32m•=> » Shadowsocks  :\033[0;35m Adiciona o uso do Shadowsocks (EM BREVE)\033[1;33m"
echo -e "[14]\033[01;32m•=> » OpenVPN 8090 :\033[0;35m Configura e Gerencia Usuarios vivo.ovpn)\033[1;33m"
echo -e "[15]\033[01;32m•=> » TOR          :\033[0;35m Adiciona a rede TOR (EM BREVE)\033[1;33m"
echo -e "[16]\033[01;32m•=> » KernelControl:\033[0;35m Procura ATT para Kernel ou Remove\033[1;33m"
echo -e "[17]\033[01;32m•=> » VNC          :\033[0;35m Ativa a Interface Gráfica no Servidor\033[1;33m"
echo -e "[18]\033[01;32m•=> » Security     :\033[0;35m Ativa e Desativa o Firewall e Torrent\033[1;33m"
echo -e "[19]\033[01;32m•=> » DadosMonitor :\033[0;35m Monitora o Uso de Dados/Banda|in||out|\033[1;33m"
echo -e "[20]\033[01;32m•=> » R3M0V3 R3V1V3R :\033[0;35m Remove este script\033[01;33m"
echo 
read -p "Selecione uma opção [00-20]: "  opcao
echo "" 
case $opcao in
 00)
  clear
  exit
  sleep 5
echo "saindo..."  
 01)
  clear
  sleep 5
  menu;;
 02)
  user-add
  sleep 5
  menu;;
 03)
  trial
  sleep 5
  menu;;
 04)
  user-del
  sleep 5
  menu;;
 05)
  user-login
  sleep 5
  menu;;
 06)
  user-list
  sleep 5
  menu;;
 07)
  expdel
  sleep 5
  menu;;
 08)
  resvis
  sleep 5
  menu;;
 09)
  speedtest
  sleep 5
  menu;;
 10)
  reboot
  sleep 5
  menu;;
 11)
  info
  sleep 5
  menu;;
 12)
  sobre
  sleep 5
  menu;;
 13)
  remove
  sleep 5
  menu;;
 14)
 
  sleep 5
  menu;;
 15)
  
  sleep 5
  menu;;
 16)
  
  sleep 5
  menu;;
 17)
  
  sleep 5
  menu;;
 18)
  
  sleep 5
  menu;;
 19)
  
  sleep 5
  menu;;
 20)
  sleep 5
  echo "Retirando R3V1V3R...1%"
  service dropbear stop 2>/dev/null
  echo "Retirando R3V1V3R...5%"
  rm -rf /bin/user-add 2>/dev/null
  echo "Retirando R3V1V3R...10%"
  rm -rf /bin/trial  2>/dev/null
  echo "Retirando R3V1V3R...15%"
  rm -rf /bin/user-del  2>/dev/null
  echo "Retirando R3V1V3R...20%"
  rm -rf /bin/user-login  2>/dev/null
  echo "Retirando R3V1V3R...25%"
  rm -rf /bin/user-list  2>/dev/null
  echo "Retirando R3V1V3R...30%"
  rm -rf /bin/expdel  2>/dev/null
  echo "Retirando R3V1V3R...35%"
  rm -rf /bin/resvis   2>/dev/null
  echo "Retirando R3V1V3R...40%"
  rm -rf /bin/speedtest  2>/dev/null
  echo "Retirando R3V1V3R...45%"
  rm -rf /bin/info  2>/dev/null
  echo "Retirando R3V1V3R...50%"
  rm -rf /bin/about  2>/dev/null    
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
  echo "Finalizando..."
  rm -rf /bin/menu 2>/dev/null
  echo ".............."
  clear;;  
esac
