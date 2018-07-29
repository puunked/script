#!/bin/bash
clear
echo -e "\033[01;35m"
echo -e "-------------------------------\033[01;34m"
echo -e "NOME DE USUÁRIO   VALIDADE     \033[01;35m"
echo -e "-------------------------------\n\033[01;33m"
while read expired
do
        CONTA="$(echo $expired | cut -d: -f1)"
        ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
        exp="$(chage -l $CONTA | grep "Account expires" | awk -F": " '{print $2}')"
        if [[ $ID -ge 1000 ]]; then
        printf "%-17s %2s\n" "$CONTA" "$exp"
        fi
done < /etc/passwd
TOTAL="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo -e "\033[01;32m"
echo -e "-------------------------------\033[01;32m"
echo -e "Número de contas: $TOTAL usuários"
echo -e "-------------------------------\n\033[01;34m"
echo -e "R3V1V3R 1NT3RN3T L1VR3\033[01;37m"
