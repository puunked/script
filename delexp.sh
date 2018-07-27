#!/bin/bash

# current time in seconds
datenow=$(date +%s)

# loop over all users
for user in $(awk -F: '{print $1}' /etc/passwd); do

# get date of expiration of users that have exp. date set
expdate=$(chage -l $user|awk -F: '/Account expires/{print $2}')
echo $expdate | grep -q never && continue

echo -n "User \`$user' expired on $expdate "
echo -e ""
# convert exp. date to seconds
expsec=$(date +%s --date="$expdate")

# calculate diff b/t time now and exp. date
diff=$( echo $datenow - $expsec)

# if a negative number, hasn't expired yet
echo $diff | grep -q ^\- && echo okay && continue
printf ""

# it will ask every user that will deleted, if you want to disable the feature you can add "#" in 3 lines
echo -e "=============================\n\033[01;34m"
read -r -p "Tem certeza que deseja excluir este usuário? [y/N] " response
echo -e "=============================\n\033[01;33m"
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then

# got this far, account must have expired
echo -e "excluindo $user ..."
echo -e "=============================\n\033[01;34m"
echo -e "R3V1V3R 1NT3RN3T L1VR3\033[01;33m"

# deleting user
userdel -r $user

# if you want to disable the 'ask' feature you can add "#" in 3 lines
else
exit
fi
done
