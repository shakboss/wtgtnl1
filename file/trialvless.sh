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
CHATID=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 3)
KEY=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 2)
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
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
Quota=1
iplimit=10
domain=$(cat /etc/xray/domain)
ISP=$(cat /usr/local/etc/xray/org)
CITY=$(cat /usr/local/etc/xray/city)
user=Vless-`</dev/urandom tr -dc 0-9 | head -c3`
uuid=$(cat /proc/sys/kernel/random/uuid)
masaaktif=1
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vless$/a\#& '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#vlessgrpc$/a\#& '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
vlesslink1="vless://${uuid}@${domain}:443?path=/vless&security=tls&encryption=none&type=ws#${user}"
vlesslink2="vless://${uuid}@${domain}:80?path=/vless&encryption=none&type=ws#${user}"
vlesslink3="vless://${uuid}@${domain}:443?mode=gun&security=tls&encryption=none&type=grpc&serviceName=vless-grpc&sni=bug.com#${user}"
systemctl restart xray
cat >/var/www/html/vless-$user.txt <<-END

◇━━━━━━━━━━━━━━━━━◇
  GME VPN TUNNELING 
◇━━━━━━━━━━━━━━━━━◇
 🐉🦖🦅🇲🇨
◇━━━━━━━━━━━━━━━━━◇
# Format Vless WS TLS

- name: Vless-$user-WS TLS
  server: ${domain}
  port: 443
  type: vless
  uuid: ${uuid}
  cipher: auto
  tls: true
  skip-cert-verify: true
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vless
    headers:
      Host: ${domain}

# Format Vless WS Non TLS

- name: Vless-$user-WS (CDN) Non TLS
  server: ${domain}
  port: 80
  type: vless
  uuid: ${uuid}
  cipher: auto
  tls: false
  skip-cert-verify: false
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vless
    headers:
      Host: ${domain}
  udp: true

# Format Vless gRPC (SNI)

- name: Vless-$user-gRPC (SNI)
  server: ${domain}
  port: 443
  type: vless
  uuid: ${uuid}
  cipher: auto
  tls: true
  skip-cert-verify: true
  servername: ${domain}
  network: grpc
  grpc-opts:
  grpc-mode: gun
    grpc-service-name: vless-grpc

◇━━━━━━━━━━━━━━━━━◇
Link Akun Vless 
◇━━━━━━━━━━━━━━━━━◇
Link TLS      : 
${vlesslink1}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink2}
◇━━━━━━━━━━━━━━━━━◇
Link GRPC     : 
${vlesslink3}
◇━━━━━━━━━━━━━━━━━◇


END

systemctl restart xray
systemctl restart nginx
if [ ! -e /etc/vless ]; then
  mkdir -p /etc/vless
fi

if [[ $iplimit -gt 0 ]]; then
mkdir -p /etc/Gme/limit/vless/ip
echo -e "$iplimit" > /etc/Gme/limit/vless/ip/$user
else
echo > /dev/null
fi

if [ -z ${Quota} ]; then
  Quota="0"
fi

c=$(echo "${Quota}" | sed 's/[^0-9]*//g')
d=$((${c} * 1024 * 1024 * 1024))

if [[ ${c} != "0" ]]; then
  echo "${d}" >/etc/vless/${user}
fi
DATADB=$(cat /etc/vless/.vless.db | grep "^#&" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/vless/.vless.db
fi
echo "#& ${user} ${exp} ${uuid} ${Quota} ${iplimit}" >>/etc/vless/.vless.db
clear

echo -e "${ORANGE}╒❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰╕\033[0m" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e " \E[0;36;44;1m             Vless Trial Account            \E[0m" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "${CYAN}╘❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰╛\033[0m" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Remarks        : ${user}" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Domain         : ${domain}" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "ISP            : ${ISP}" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "User Quota       : ${Quota} GB" /etc/xraylog/log-vless-$user.txt
echo -e "User IP       : ${iplimit} IP" /etc/xraylog/log-vless-$user.txt
echo -e "Region         : ${CITY}" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Port TLS       : 443, 8443, 2083, 2053" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Port NTLS      : 80, 8880, 8080, 2082" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Port gRPC      : 443" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "ID             : ${uuid}" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Encryption     : none" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Network        : ws" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Path           : /vless" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Service Name   : vless-grpc" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Link TLS       : ${vlesslink1}" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "${CYAN}${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Link none TLS  : ${vlesslink2}" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Link gRPC      : ${vlesslink3}" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Format OpenClash : https://${domain}:81/vless-$user.txt" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "Expired On     : $exp" | tee -a /etc/xraylog/log-vless-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-vless-$user.txt
echo ""
read -n 1 -s -r -p "Press any key to back"
m-vless
