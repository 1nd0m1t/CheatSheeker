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
case $cheatSheet in
 # enumeration
 "nmap")
  echo -e "\n[+] $cheatSheet cheat sheet: $nmap \n";;
 "wfuzz")
  echo -e "\n[+] $cheatSheet cheat sheet: $wfuzz \n";;
 "fuzz")
  echo -e "\n[+] $cheatSheet cheat sheet: $fuzz \n";;
 "sublist3r")
  echo -e "\n[+] $cheatSheet cheat sheet: $sublist3r \n";;
 # shells and sql injections
 "reverse shell")
  echo -e "\n[+] $cheatSheet cheat sheet: $reverseshell \n";;
 "informix")
  echo -e "\n[+] $cheatSheet cheat sheet: $informixsqlinjection \n";;

 *)
  echo -e "\n[!] No cheat sheet for '$cheatSheet' \n"
 esac
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
 searchCheatSheet $cheatSheet
else
 helpPanel
fi
