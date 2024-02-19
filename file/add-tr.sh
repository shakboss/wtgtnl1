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
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
clear
# Getting
CHATID=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 3)
KEY=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 2)
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
source /var/lib/Gmehost/ipvps.conf
domain=$(cat /etc/xray/domain)
ISP=$(cat /usr/local/etc/xray/org)
CITY=$(cat /usr/local/etc/xray/city)
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
echo -e "${ORANGE}╒࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╕\033[0m"
echo -e " \E[0;36;44;1m            Create Trojan Account           \E[0m"
echo -e "${CYAN}╘࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╛\033[0m"

		read -rp "User: " -e user
		user_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
clear
echo -e "${ORANGE}╒࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╕\033[0m"
echo -e " \E[0;36;44;1m            Create Account Failed           \E[0m"
echo -e "${CYAN}╘࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐࿐╛\033[0m"
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			echo ""
			echo -e "${CYAN} ⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻⪼⪻\033[0m"
			read -n 1 -s -r -p "Press any key to back on menu"
			m-trojan
		fi
	done

uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Limit User (GB): " Quota
read -p "Limit User (IP): " iplimit
read -p "Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#trojanws$/a\#! '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#trojangrpc$/a\#! '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json

trojanlink1="trojan://${uuid}@${domain}:443?mode=gun&security=tls&type=grpc&serviceName=trojan-grpc&sni=bug.com#${user}"
trojanlink="trojan://${uuid}@isi_bug_disini:443?path=%2Ftrojan-ws&security=tls&host=${domain}&type=ws&sni=${domain}#${user}"
trojanlink2="trojan://${uuid}@isi_bug_disini:80?path=%2Ftrojan-ws&security=none&host=${domain}&type=ws#${user}"
systemctl restart xray
clear
cat >/var/www/html/trojan-$user.txt <<-END
◇━━━━━━━━━━━━━━━━━◇
  Dragon Emperor Tunneling 
◇━━━━━━━━━━━━━━━━━◇

# Format Trojan GO/WS

- name: Trojan-$user-GO/WS
  server: ${domain}
  port: 443
  type: trojan
  password: ${uuid}
  network: ws
  sni: ${domain}
  skip-cert-verify: true
  udp: true
  ws-opts:
    path: /trojan-ws
    headers:
        Host: ${domain}

# Format Trojan gRPC

- name: Trojan-$user-gRPC
  type: trojan
  server: ${domain}
  port: 443
  password: ${uuid}
  udp: true
  sni: ${domain}
  skip-cert-verify: true
  network: grpc
  grpc-opts:
    grpc-service-name: trojan-grpc
END

TEXT="
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code>Link Akun Trojan </code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code>Link WS          : </code>
<code>${trojanlink}</code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code>Link GRPC        : </code>
<code>${trojanlink1}</code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
"



systemctl reload xray
systemctl reload nginx
service cron restart
trojanlink="trojan://${uuid}@${domain}:443?path=%2Ftrojan-ws&security=tls&host=${domain}&type=ws&sni=${domain}#${user}"
trojanlink1="trojan://${uuid}@${domain}:443?mode=gun&security=tls&type=grpc&serviceName=trojan-grpc&sni=${domain}#${user}"
if [ ! -e /etc/trojan ]; then
  mkdir -p /etc/trojan
fi

if [[ $iplimit -gt 0 ]]; then
mkdir -p /etc/Gme/limit/trojan/ip
echo -e "$iplimit" > /etc/Gme/limit/trojan/ip/$user
else
echo > /dev/null
fi

if [ -z ${Quota} ]; then
  Quota="0"
fi

c=$(echo "${Quota}" | sed 's/[^0-9]*//g')
d=$((${c} * 1024 * 1024 * 1024))

if [[ ${c} != "0" ]]; then
  echo "${d}" >/etc/trojan/${user}
fi
DATADB=$(cat /etc/trojan/.trojan.db | grep "^###" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/trojan/.trojan.db
fi
echo "### ${user} ${exp} ${uuid} ${Quota} ${iplimit}" >>/etc/trojan/.trojan.db
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL
clear
echo -e "${BLUE}╒❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰╕\033[0m" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e " \E[0;36;44;1m            Detail Trojan Account           \E[0m" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "${BLUE}╘❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰╛\033[0m" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Remarks        : ${user}" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "User Quota       : ${Quota} GB" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "User Ip           : ${iplimit} IP" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Host/IP        : ${domain}" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "ISP            : ${ISP}" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Region         : ${CITY}" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Port TLS       : 443, 8443, 2083, 2053" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Port NTLS      : 80, 8880, 8080, 2082" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Port gRPC      : 443" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Key            : ${uuid}" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Path           : /trojan-ws" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Service Name   : trojan-grpc" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Link TLS       : ${trojanlink}" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Link none TLS  : ${trojanlink2}" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Link gRPC      : ${trojanlink1}" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Format OpenClash : https://${domain}:81/trojan-$user.txt" 
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "Expired On     : $exp" | tee -a /etc/xraylog/log-trojan-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-trojan-$user.txt
echo "" | tee -a /etc/xraylog/log-trojan-$user.txt
echo "Thanks for using GmeServices"
read -n 1 -s -r -p "Press any key to back"
m-trojan
fi
