  killall -9 badvpn-udpgw
  killall -9 Xtightvnc
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
  rm -rf /bin/vnc 2>/dev/null
  echo "Retirando R3V1V3R...60%"
  rm -rf /bin/DadosMonitor 2>/dev/null
  echo "Retirando R3V1V3R...65%"
  service stunnel4 stop
  echo "Retirando R3V1V3R...70%"
  echo "Retirando R3V1V3R...75%"
  echo "Retirando R3V1V3R...80%"
  service webmin stop
  echo "Retirando R3V1V3R...85%"
  echo "Retirando R3V1V3R...90%"
  echo "Retirando R3V1V3R...95%"
  echo "Retirando R3V1V3R...96%"
  service openvpn stop 2>/dev/null
  echo -e "Retirando R3V1V3R...97%\033[0;31m"
  service nginx stop 2>/dev/null
  echo "Retirando R3V1V3R...98%"
  echo "Retirando R3V1V3R...99%"
  echo "Retirando R3V1V3R...100%"
  echo "Finalizando..."
  echo ".............."
  echo "Finalizando..."
  echo ".............."
  service squid3 stop 2>/dev/null
  service sslh stop 2>/dev/null
  rm -rf /etc/payloads 2>/dev/null
  rm -rf ~/ddos-deflate-master
  apt-get remove --auto-remove dropbear
  rm -rf ~/dropbear-2018.76
  apt-get -y --purge remove nginx screen nload
  rm -rf install.bash
  rm /home/vps/public_html
  rm -rf log-install.txt
  rm -rf /usr/bin/menu 2>/dev/null
