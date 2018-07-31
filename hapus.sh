#!/bin/bash
clear
echo -e "\033[0;31m"
cut -d : -f 1,3 /etc/passwd | grep -A2000 1000
echo -e "\033[1;33m"

read -p "O nome do usuário do SSH que será excluído : " User

if getent passwd $User > /dev/null 2>&1; then
        userdel $User
        echo -e "Usuário $User foi excluído."
        echo -e "=============================\n\033[01;34m"
        echo -e "R3V1V3R 1NT3RN3T L1VR3\033[01;33m"
else
        echo -e "FALHOU: Usuário $User está faltando."
        echo -e "=============================\n\033[01;34m"
        echo -e "R3V1V3R 1NT3RN3T L1VR3\033[01;33m"
fi
