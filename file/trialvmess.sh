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
# Getting
CHATID=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 3)
KEY=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 2)
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
domain=$(cat /etc/xray/domain)
ISP=$(cat /usr/local/etc/xray/org)
CITY=$(cat /usr/local/etc/xray/city)
user=Vmess-`</dev/urandom tr -dc 0-9 | head -c3`
uuid=$(cat /proc/sys/kernel/random/uuid)
masaaktif=1
Quota=1
iplimit=10
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vmess$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vmessgrpc$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
asu=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "",
      "tls": "tls"
}
EOF`
ask=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "80",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "",
      "tls": "none"
}
EOF`
grpc=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "grpc",
      "path": "vmess-grpc",
      "type": "none",
      "host": "",
      "tls": "tls"
}
EOF`
vmess_base641=$( base64 -w 0 <<< $vmess_json1)
vmess_base642=$( base64 -w 0 <<< $vmess_json2)
vmess_base643=$( base64 -w 0 <<< $vmess_json3)
vmesslink1="vmess://$(echo $asu | base64 -w 0)"
vmesslink2="vmess://$(echo $ask | base64 -w 0)"
vmesslink3="vmess://$(echo $grpc | base64 -w 0)"
systemctl restart xray > /dev/null 2>&1
service cron restart > /dev/null 2>&1

cat >/var/www/html/vmess-$user.txt <<-END

◇━━━━━━━━━━━━━━━━━◇
  GME VPN TUNNELING 
◇━━━━━━━━━━━━━━━━━◇
 🐉🦖🦅🇲🇨
◇━━━━━━━━━━━━━━━━━◇
# Format Vmess WS TLS

- name: Vmess-$user-WS TLS
  type: vmess
  server: ${domain}
  port: 443
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  udp: true
  tls: true
  skip-cert-verify: true
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vmess
    headers:
      Host: ${domain}

# Format Vmess WS Non TLS

- name: Vmess-$user-WS Non TLS
  type: vmess
  server: ${domain}
  port: 80
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  udp: true
  tls: false
  skip-cert-verify: false
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vmess
    headers:
      Host: ${domain}

# Format Vmess gRPC

- name: Vmess-$user-gRPC (SNI)
  server: ${domain}
  port: 443
  type: vmess
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  network: grpc
  tls: true
  servername: ${domain}
  skip-cert-verify: true
  grpc-opts:
    grpc-service-name: vmess-grpc

◇━━━━━━━━━━━━━━━━━◇
 Link Akun Vmess                   
◇━━━━━━━━━━━━━━━━━◇
Link TLS         : 
${vmesslink1}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS    : 
${vmesslink2}
◇━━━━━━━━━━━━━━━━━◇
Link GRPC        : 
${vmesslink3}
◇━━━━━━━━━━━━━━━━━◇

END
if [ ! -e /etc/vmess ]; then
  mkdir -p /etc/vmess
fi

if [[ $iplimit -gt 0 ]]; then
mkdir -p /etc/Gme/limit/vmess/ip
echo -e "$iplimit" > /etc/Gme/limit/vmess/ip/$user
else
echo > /dev/null
fi

if [ -z ${Quota} ]; then
  Quota="0"
fi

c=$(echo "${Quota}" | sed 's/[^0-9]*//g')
d=$((${c} * 1024 * 1024 * 1024))

if [[ ${c} != "0" ]]; then
  echo "${d}" >/etc/vmess/${user}
fi
DATADB=$(cat /etc/vmess/.vmess.db | grep "^###" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/vmess/.vmess.db
fi
echo "### ${user} ${exp} ${uuid} " >>/etc/vmess/.vmess.db
clear
CHATID="$CHATID"
KEY="$KEY"
TIME="$TIME"
URL="$URL"
TEXT="<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code>      XRAY/VMESS</code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code>Remarks   : ${user}
Domain    : ${domain}
Port TLS  : 400-900
Port NTLS : 80, 8080, 8081-9999
id        : ${uuid}
alterId   : 0
Security  : auto
network   : ws or grpc
Path      : /Multi-Path
Dynamic   : https://bugmu.com/path
Name      : vmess-grpc</code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code> VMESS WS TLS</code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code>${vmesslink1}</code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code>VMESS WS NO TLS</code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code>${vmesslink2}</code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code> VMESS gRPC</code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<code>${vmesslink3}</code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
Format OpenClash : https://${domain}:81/vmess-$user.txt
<code>◇━━━━━━━━━━━━━━━━━◇</code>
Aktif Selama   : $masaaktif Hari
Dibuat Pada    : $tnggl
Berakhir Pada  : $expe
<code>◇━━━━━━━━━━━━━━━━━◇</code>
"

curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
clear


echo -e "${ORANGE}╒❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰╕\033[0m" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e " \E[0;36;44;1m             Vmess Trial Account            \E[0m" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "${BLUE}╘❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰╛\033[0m" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Remarks        : ${user}" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "User Quota       : ${Quota} GB" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "User IP       : ${iplimit} IP" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Domain         : ${domain}" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "ISP            : ${ISP}" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Region         : ${CITY}" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Port TLS       : 443, 8443, 2083, 2053" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Port NTLS.     : 80, 8880, 8080, 2082" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Port gRPC      : 443" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "id             : ${uuid}" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "alterId        : 0" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Security       : auto" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Network        : ws" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Path           : /vmess" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Service Name   : vmess-grpc" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Link TLS       : ${vmesslink1}" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Link none TLS  : ${vmesslink2}" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Link gRPC      : ${vmesslink3}" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Format OpenClash : https://${domain}:81/vmess-$user.txt " | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "${BLUE} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "Expired On     : $exp" | tee -a /etc/xraylog/log-vmess-$user.txt
echo -e "${RED} ❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱❱┯❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰❰\033[0m" | tee -a /etc/xraylog/log-vmess-$user.txt
echo ""

read -n 1 -s -r -p "Press any key to back"

m-vmess
