#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# Getting
#satusbot
bot_Gme=$(systemctl status Gme | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE  BOT 
if [[ $bot_Gme == "running" ]]; then 
   status_bot="${GREEN}Online$NC${c} $NC"
else
   status_bot="${RED}Offline${NC} "
fi
#####
KIRI="\033[1;32m>\033[1;33m>\033[1;31m>\033[1;31m$NC"
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
# Valid Script
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
echo -e "${ORANGE}╒࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╕\033[0m"
echo -e " \E[0;36;44;1m              Bot Telegram            \E[0m"
echo -e "${CYAN}╘࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╛\033[0m"
echo -e ""
echo -e " ${KIRI} Status Bot ( ${status_bot} )"
echo -e ""
echo -e " [\e[36m•1\e[0m] Add Bot Tele "
echo -e " [\e[36m•2\e[0m] Hapus Bot Tele "
echo -e " [\e[36m•3\e[0m] Stop Bot Tele "
echo -e " [\e[36m•5\e[0m] Restart Bot Tele "
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
1) clear ; wget https://raw.githubusercontent.com/mywtg/wtgtnl1/main/tele-bot/Gme.sh && chmod +x Gme.sh && ./Gme.sh ;;
2) clear ; hapus-bt ; exit ;;
3) clear ; stop-bt ; exit ;;
4) clear ; restart-bt ; exit ;;
0) clear ; m-bt ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; m-tele ;;
esac
