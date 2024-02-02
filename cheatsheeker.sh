#!/bin/bash


#Database
source data.txt


#Ctrl_C
function ctrl_c(){
 echo -e "\n\n[+] Exit..."
 tput cnorm;exit 1
}
trap ctrl_c INT


#Global Variables
cheatSheet=$*

#Help Panel
function helpPanel(){
 echo -e "[+] Help panel"
}


#Search Engine
function searchCheatSheet(){ 
 if [[ "$cheatSheet" == "reverse shell" ]]; then
  echo -e "\n[+] $cheatSheet cheat sheet: https://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet"
 fi
}


#Indicators
declare -i parameter_counter=0

while getopts "h" arg; do
 case $arg in
  h) let parameter_counter+=1;
 esac
done


#Command logic
if [ $parameter_counter -eq 0  ]; then
 searchCheatSheet $cheatSheet # Here we use the function declared for search cheats sheets by given name
else
 helpPanel
fi
