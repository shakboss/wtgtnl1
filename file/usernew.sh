#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
CEKEXPIRED () {
    today=$(date -d +1day +%Y-%m-%d)
    Exp1=$(curl -sS https://raw.githubusercontent.com/Erpinkun/IP-Register/main/ip | grep $MYIP | awk '{print $3}')
    if [[ $today < $Exp1 ]]; then
    echo -e "\e[32mSTATUS SCRIPT AKTIF...\e[0m"
    else
    echo -e "\e[31mSCRIPT ANDA EXPIRED!\e[0m";
    
    exit 0
fi
}
IZIN=$(curl -sS https://raw.githubusercontent.com/Erpinkun/IP-Register/main/ip | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermission Accepted...\e[0m"
CEKEXPIRED
else
echo -e "\e[31mPermission Denied!\e[0m";
exit 0
fi
clear
# Color Validation
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
clear
domen=`cat /etc/xray/domain`
ISP=$(cat /usr/local/etc/xray/org)
CITY=$(cat /usr/local/etc/xray/city)
echo -e "${ORANGE}╒࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╕\033[0m"
echo -e " \E[0;36;44;1m              Create SSH Account            \E[0m"
echo -e "${CYAN}╘࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╛\033[0m"
read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=$(curl -sS ifconfig.me);

sleep 1
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
PID=`ps -ef |grep -v grep | grep sshws |awk '{print $2}'`

if [[ ! -z "${PID}" ]]; then
echo -e "${ORANGE}╒࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╕\033[0m" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e " \E[0;36;44;1m              SSH Account Detail            \E[0m" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "${CYAN}╘࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╛\033[0m" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "Username    : $Login" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "Password    : $Pass" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "${GREEN} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "IP          : $IP" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "Host        : $domen" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "ISP         : $ISP" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "OpenSSH     : 22" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "Dropbear    : 109, 69, 143" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "SSH WS      : 80, 8880, 8080, 2082, 2095" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "SSH SSL WS  : 443, 8443, 2083, 2053, 2096" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "SSL/TLS     : 222, 777" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "UDPGW       : 7100-7900" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "${ORANGE} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "Expired On     : $exp" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "${CYAN} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m" | tee -a /etc/xraylog/log-ssh-$Login.txt
else
echo -e "${ORANGE}╒࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╕\033[0m" | tee -a /etc/xraylog/log-ssh-$Login.txt

echo -e " \E[0;36;44;1m              SSH Account Detail            \E[0m" | tee -a /etc/xraylog/log-ssh-$Login.txt

echo -e "${CYAN}╘࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╛\033[0m" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "Username    : $Login" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "Password    : $Pass" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "${ORANGE} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "IP          : $IP" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "Host        : $domen" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "ISP         : $ISP" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "OpenSSH     : 22" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "Dropbear    : 109, 69, 143" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "SSH WS      : 80, 8880, 8080, 2082, 2095" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "SSH SSL WS  : 443, 8443, 2083, 2053, 2096" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "SSL/TLS     : 222, 777" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "UDPGW       : 7100-7900" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "${CYAN} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "Expired On     : $exp" | tee -a /etc/xraylog/log-ssh-$Login.txt
echo -e "${RED} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m" | tee -a /etc/xraylog/log-ssh-$Login.txt
fi
echo "" | tee -a /etc/xraylog/log-ssh-$Login.txt
read -n 1 -s -r -p "Press any key to back"
m-sshovpn
