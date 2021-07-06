
#!/bin/bash

#apt update

if [[ $EUID -ne 0 ]]
then
printf "\33[0,31mError Try Width A Sudo Permission  "
exit
else 
printf "\t\t\tWelcom I'n Network Scanner Up Ip_addresses \n"
netdiscover -i eth0
fi
