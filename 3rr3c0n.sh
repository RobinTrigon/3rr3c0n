#!/bin/bash
clear

function banner(){
 echo -e "\033[0;35m
 _____                 _____           ___          
|___ /   _ __   _ __  |___ /    ___   / _ \   _ __  
  |_ \  | '__| | '__|   |_ \   / __| | | | | | '_ \ 
 ___) | | |    | |     ___) | | (__  | |_| | | | | |
|____/  |_|    |_|    |____/   \___|  \___/  |_| |_|
                                                    
 "      
 echo -e "                             \033[0;36m   3rr0r-404"
}
sleep 1

echo -e "\033[0;31m[+] Checking Internet Connectivity"
if [[ "$(ping -c 1 google.com | grep '100% packet loss' )" != "" ]]; then
  echo "No Internet Connection"
  exit 1
  else
  echo "Internet is present"
  
fi


clear
banner
echo -e "\033[0;38m "
echo -e -n "\033[0;34m\n[+] Enter domain name (target.com) : "
read domain
echo -e "\033[0;38m "
mkdir -p $domain

assetfinder -subs-only  $domain | tamu url | tee $domain/temp
sublist3r -d $domain | tamu url| tee -a $domain/temp
subfinder -d $domain | tamu url | tee -a $domain/temp
knockpy $domain | tamu url | tee -a $domain/temp
dnsrecon -d $domain | tamu url | tee -a $domain/temp
amass enum -passive -d $domain | tamu url | tee -a $domain/temp




cat $domain/temp | httprobe | sort -u | tee subdomains.txt
