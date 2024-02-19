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
echo -e "${BLUE}╒════════════════════════════════════════════╕\033[0m"
echo -e " \E[0;33;44;1m                MENU SETTINGS               \E[0m"
echo -e "${RED}╘════════════════════════════════════════════╛\033[0m"
echo -e "${BLUE}╒════════════════════════════════════════════╕\033[0m"
echo -e " [\e[36m•1\e[0m] Banner SSH "
echo -e " [\e[36m•2\e[0m] Running Info "
echo -e " [\e[36m•3\e[0m] Restart Vpn "
echo -e " [\e[36m•4\e[0m] Speedtets "
echo -e " [\e[36m•5\e[0m] Domain setting "
echo -e " [\e[36m•6\e[0m] Backup VPS "
echo -e " [\e[36m•7\e[0m] setting DNS "
echo -e " [\e[36m•8\e[0m] Reboot VPS "
echo -e " [\e[36m•9\e[0m] Menu TCP "
echo -e " [\e[36m•10\e[0m] Cek Sistem "
echo -e " [\e[36m•11\e[0m] Menu Bug "
echo -e " [\e[36m•12\e[0m] Scan Bug "
echo -e " [\e[36m•13\e[0m] Menu Bot "
echo -e " [\e[36m•14\e[0m] Update sistem "
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mKEMBALK KE MENU AWAL\033[0m"
echo -e ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo ""
echo -e "${RED}╘════════════════════════════════════════════╛\033[0m"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
1) clear ; nano /etc/issue.net ;;
2) clear ; running ;;
3) clear ; restart ;;
4) clear ; speedtest ;;
5) clear ; m-domain ;;
6) clear ; menu-backup ;;
7) clear ; dns ;;
8) clear ; reboot ;;
9) clear ; menu-tcp ;;
10) clear ; gotop ;;
11) clear ; m-bug ;;
12) clear ; K ;;
13) clear ; m-bt ;;
14) clear ; update ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Tekan Yang Bener Sayang" ; sleep 1 ; m-setting ;;
esac