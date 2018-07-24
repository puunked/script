#!/bin/bash

echo "-------------------------------"
echo "NOME DE USUÁRIO   VALIDADE     "
echo "-------------------------------"
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
echo "-------------------------------"
echo "Número de contas: $TOTAL usuários"
echo "-------------------------------"
echo -e "R3V1V3R"
