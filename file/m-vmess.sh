#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
CEKEXPIRED () {
    today=$(date -d +1day +%Y-%m-%d)
    Exp1=$(curl -sS https://raw.githubusercontent.com/shakboss/supreme/aio/permission/ip | grep $MYIP | awk '{print $3}')
    if [[ $today < $Exp1 ]]; then
    echo -e "\e[32mSTATUS SCRIPT AKTIF...\e[0m"
    else
    echo -e "\e[31mSCRIPT ANDA EXPIRED!\e[0m";
    
    exit 0
fi
}
IZIN=$(curl -sS https://raw.githubusercontent.com/shakboss/supreme/aio/permission/ip | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermission Accepted...\e[0m"
CEKEXPIRED
else
echo -e "\e[31mPermission Denied!\e[0m";
exit 0
fi
clear
echo -e "${ORANGE}╒࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╕\033[0m"
echo -e " \E[0;36;44;1m               Xray Vmess Menu              \E[0m"
echo -e "${CYAN}╘࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╛\033[0m"
echo -e ""
echo -e " [\e[36m•1\e[0m] Create Vmess Account "
echo -e " [\e[36m•2\e[0m] Trial Vmess Account "
echo -e " [\e[36m•3\e[0m] Renewal Vmess Account "
echo -e " [\e[36m•4\e[0m] Delete Vmess Account "
echo -e " [\e[36m•5\e[0m] Check Vmess User Login"
echo -e " [\e[36m•6\e[0m] Check Vmess User Account "
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo ""
echo -e "${RED} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
1) clear ; add-ws ; exit ;;
2) clear ; trialvmess ; exit ;;
3) clear ; renew-ws ; exit ;;
4) clear ; del-ws ; exit ;;
5) clear ; cek-ws ; exit ;;
6) clear ; log-vmess ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Tekan Yang Bener Sayang" ; sleep 1 ; m-vmess ;;
esac
