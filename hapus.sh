#!/bin/bash

read -p "O nome do usuário do SSH será excluído : " Usuários

if getent passwd $Usuários > /dev/null 2>&1; then
        userdel $Usuários
        echo -e "User $Usuários foi eliminado."
else
        echo -e "GAGAL: User $Usuário está faltando."
fi
