#!/bin/bash

read -p "O nome do usuário do SSH será excluído : " User

if getent passwd $User > /dev/null 2>&1; then
        userdel $User
        echo -e "Usuário $User foi excluído."
else
        echo -e "FALHOU: Usuário $User está faltando."
fi
