#!/bin/bash

verm="\033[1;31m"
verd="\033[1;32m"
resc="\e[0m"
 
users_num=$(who | grep pts | wc -l)
 
readarray -t users < <(who | awk '{print $1}' | uniq -d)
for ((i=0;i<${#users[*]};i++)); do
    if [[ ${users[$i]} != 'root' ]]; then
        echo -e "Usuário: $verd${users[$i]}$resc conectado: $verm$(who | grep -c ${users[$i]}) vezes $resc"
    fi
 
echo -e "\nTotal: $verm$users_num$resc"

read -p "O nome do usuário do SSH será excluído : " User

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

done
