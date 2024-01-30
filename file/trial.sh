#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
clear
IP=$(curl -sS ifconfig.me);
ISP=$(cat /usr/local/etc/xray/org)
CITY=$(cat /usr/local/etc/xray/city)
domen=`cat /etc/xray/domain`
Login=GME`</dev/urandom tr -dc 0-9 | head -c4`
hari="1"
Pass=GME
echo Ping Host
echo Create Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
PID=`ps -ef |grep -v grep | grep sshws |awk '{print $2}'`

if [[ ! -z "${PID}" ]]; then
echo -e "${ORANGE}╒࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╕\033[0m"
echo -e " \E[0;36;44;1m              SSH Trial Account             \E[0m"
echo -e "${CYAN}╘࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╛\033[0m"
echo -e "Username   : $Login"
echo -e "Password   : $Pass"
echo -e "Expired On : $exp"
echo -e "${ORANGE} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m"
echo -e "IP         : $IP"
echo -e "Host       : $domen"
echo -e "ISP        : $ISP"
echo -e "OpenSSH    : 22"
echo -e "Dropbear   : 109, 69, 143"
echo -e "SSH WS     : 80, 8880, 8080, 2082, 2095"
echo -e "SSH SSL WS : 443, 8443, 2083, 2053, 2096"
echo -e "SSL/TLS    : 222, 777"
echo -e "UDPGW      : 7100-7900"
echo -e "${CYAN} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m"

else

echo -e "${ORANGE}╒࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╕\033[0m"
echo -e " \E[0;36;44;1m              SSH Trial Account             \E[0m"
echo -e "${CYAN}╘࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╛\033[0m"
echo -e "Username   : $Login"
echo -e "Password   : $Pass"
echo -e "Expired On : $exp"
echo -e "${ORANGE} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m"
echo -e "IP         : $IP"
echo -e "Host       : $domen"
echo -e "ISP        : $ISP"
echo -e "OpenSSH    : 22"
echo -e "Dropbear   : 109, 69, 143"
echo -e "SSH WS     : 80, 8880, 8080, 2082, 2095"
echo -e "SSH SSL WS : 443, 8443, 2083, 2053, 2096"
echo -e "SSL/TLS    : 222, 777"
echo -e "UDPGW      : 7100-7900"
echo -e "${ORANGE} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m"

fi
echo ""
read -n 1 -s -r -p "Press any key to back"
m-sshovpn
