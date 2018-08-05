#!/bin/bash
  
  echo "Retirando R3V1V3R...1%"
  sleep 1
  echo "Retirando R3V1V3R...5%"
  sleep 1
  echo "Retirando R3V1V3R...10%"
  sleep 1
  echo "Retirando R3V1V3R...15%"
  sleep 1
  echo "Retirando R3V1V3R...20%"
  sleep 1
  echo "Retirando R3V1V3R...25%"
  sleep 1
  echo "Retirando R3V1V3R...30%"
  sleep 1
  echo "Retirando R3V1V3R...35%"
  sleep 1
  echo "Retirando R3V1V3R...40%"
  sleep 1
  echo "Retirando R3V1V3R...45%"
  sleep 1
  echo "Retirando R3V1V3R...50%"
  sleep 1    
  echo "Retirando R3V1V3R...55%"
  sleep 1
  echo "Retirando R3V1V3R...60%"
  sleep 1
  echo "Retirando R3V1V3R...65%"
  sleep 1
  echo "Retirando R3V1V3R...70%"
  sleep 1
  echo "Retirando R3V1V3R...75%"
  sleep 1
  echo "Retirando R3V1V3R...80%"
  sleep 1
  echo "Retirando R3V1V3R...85%"
  sleep 1
  echo "Retirando R3V1V3R...90%"
  sleep 1
  echo "Retirando R3V1V3R...95%"
  sleep 1
  echo "Retirando R3V1V3R...96%"
  sleep 1
  echo -e "Retirando R3V1V3R...97%\033[0;31m"
  sleep 1
  echo "Retirando R3V1V3R...98%"
  sleep 1
  echo "Retirando R3V1V3R...99%"
  sleep 1
  echo "Retirando R3V1V3R...100%"
  sleep 1
  echo "Finalizando..."
  echo ".............."
  echo "Finalizando..."
  echo ".............."
  echo "Removendo R3V1V3R..."
  service webmin stop
  service nginx stop 2>/dev/null
  sleep 3
  killall -9 dropbear Xtightvnc badvpn-udpgw stunnel4
  rm -rf /usr/bin/menu /usr/bin/user-add /usr/bin/trial /usr/bin/user-del /usr/bin/user-login /usr/bin/user-list /usr/bin/resvis /usr/bin/speedtest /usr/bin/info /usr/bin/expdel /usr/bin/about /usr/bin/vnc > /dev/null
  rm -rf ~/dropbear-2018.76 && apt-get -y remove --auto-remove dropbear> /dev/null
  echo "Removendo 1NT3RN3T..."
  sleep 3
  rm -rf /bin/alterarlimite /bin/alterarsenha /bin/Banner /bin/ClearCache /bin/ConfVPS /bin/CpuMonitor /bin/criarusuario >/dev/null
  rm -rf /bin/DadosMonitor /bin/delhost /bin/expcleaner /bin/LimiterSSH /bin/MonitorTotal.sh /bin/mudardata /bin/MudarLimite >/dev/null
  rm -rf /bin/MudarSenha /bin/MudarValidade /bin/OpenUDP /bin/OpenVPN /bin/PackSSH /bin/remover /bin/SpeedTest /bin/limite >/dev/null
  rm -rf /bin/UserBackup /bin/UserClear /bin/UserCreate /bin/UserDel /bin/UserMonitor /bin/VNC >/dev/null
  echo "Removendo L1VR3...
  service squid3 stop 2>/dev/null
   apt-get -y remove --auto-remove squid3> /dev/null
  service sslh stop 2>/dev/null
   apt-get -y remove --auto-remove sslh> /dev/null
  rm -rf /etc/payloads 2>/dev/null
   apt-get -y --purge remove nginx screen nload
  rm -rf install.bash
  rm /home/vps/public_html
  rm -rf ~/ddos-deflate-master log-install.txt
  rm -rf /usr/bin/delete 2>/dev/null
  clear;;
