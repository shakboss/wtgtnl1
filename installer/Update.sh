#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/add-host "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/add-host.sh" && chmod +x /usr/bin/add-host
wget -q -O /usr/bin/add-ssws "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/add-ssws.sh" && chmod +x /usr/bin/add-ssws
wget -q -O /usr/bin/add-vless "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/add-vless.sh" && chmod +x /usr/bin/add-vless
wget -q -O /usr/bin/add-ws "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/add-ws.sh" && chmod +x /usr/bin/add-ws
wget -q -O /usr/bin/autokill "https://raw.githubusercontent.com/shakbossg/wtgtnl1/main/file/autokill.sh" && chmod +x /usr/bin/autokill
wget -q -O /usr/bin/backup "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/backup.sh" && chmod +x /usr/bin/backup 
wget -q -O /usr/bin/cek "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/cek.sh" && chmod +x /usr/bin/cek
wget -q -O /usr/bin/cek-ss "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/cek-ss.sh" && chmod +x /usr/bin/cek-ss
wget -q -O /usr/bin/cek-tr "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/cek-tr.sh" && chmod +x /usr/bin/cek-tr
wget -q -O /usr/bin/cek-vless "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/cek-vless.sh" && chmod +x /usr/bin/cek-vless
wget -q -O /usr/bin/cek-ws "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/cek-ws.sh" && chmod +x /usr/bin/cek-ws
wget -q -O /usr/bin/ceklim "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/ceklim.sh" && chmod +x /usr/bin/ceklim
wget -q -O /usr/bin/certv2ray "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/certv2ray.sh" && chmod +x /usr/bin/certv2ray
wget -q -O /usr/bin/clearcache "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/clearcache.sh" && chmod +x /usr/bin/clearcache
wget -q -O /usr/bin/del-ssws "https://raw.githubusercontent.com/wtgtnl1/main/main/corn/del-ssws.sh" && chmod +x /usr/bin/del-ssws
wget -q -O /usr/bin/del-tr "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/del-tr.sh" && chmod +x /usr/bin/del-tr
wget -q -O /usr/bin/del-vless "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/del-vless.sh" && chmod +x /usr/bin/del-vless
wget -q -O /usr/bin/del-ws "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/del-ws.sh" && chmod +x /usr/bin/del-ws
wget -q -O /usr/bin/dns "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/dns.sh" && chmod +x /usr/bin/dns
wget -q -O /usr/bin/hapus "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/hapus.sh" && chmod +x /usr/bin/hapus
wget -q -O /usr/bin/K "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/K.py" && chmod +x /usr/bin/K
wget -q -O /usr/bin/killer "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/killer.sh" && chmod +x /usr/bin/killer
wget -q -O /usr/bin/log-ss "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/log-ss.sh" && chmod +x /usr/bin/log-ss
wget -q -O /usr/bin/log-ssh "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/log-ssh.sh" && chmod +x /usr/bin/log-ssh
wget -q -O /usr/bin/log-trojan "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/log-trojan.sh" && chmod +x /usr/bin/log-trojan
wget -q -O /usr/bin/log-vless "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/log-vless.sh" && chmod +x /usr/bin/log-vless
wget -q -O /usr/bin/log-vmess "https://raw.githubusercontent.com/wtgtnl1/main/main/file/log-vmess.sh" && chmod +x /usr/bin/log-vmess
wget -q -O /usr/bin/logcleaner "https://raw.githubusercontent.com/wtgtnl1/main/main/change-port/logcleaner.sh" && chmod +x /usr/bin/logcleaner
wget -q -O /usr/bin/m-axis "https://raw.githubusercontent.com/wtgtnl1/main/main/file/m-axis.sh" && chmod +x /usr/bin/m-axis
wget -q -O /usr/bin/m-bug "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/m-bug.sh" && chmod +x /usr/bin/m-bug
wget -q -O /usr/bin/m-domain "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/m-domain.sh" && chmod +x /usr/bin/m-domain
wget -q -O /usr/bin/m-indosat "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/m-indosat.sh" && chmod +x /usr/bin/m-indosat
wget -q -O /usr/bin/m-setting "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/m-setting.sh" && chmod +x /usr/bin/m-setting
wget -q -O /usr/bin/m-sshovpn "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/m-sshovpn.sh" && chmod +x /usr/bin/m-sshovpn
wget -q -O /usr/bin/m-ssws "https://raw.githubusercontent.com/mywtg/wtgtnl1/main/file/m-ssws.sh" && chmod +x /usr/bin/m-ssws
wget -q -O /usr/bin/m-telkomsel "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/m-telkomsel.sh" && chmod +x /usr/bin/m-telkomsel
wget -q -O /usr/bin/m-trojan "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/m-trojan.sh" && chmod +x /usr/bin/m-trojan
wget -q -O /usr/bin/m-vless "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/m-vless.sh" && chmod +x /usr/bin/m-vless
wget -q -O /usr/bin/m-xl "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/m-xl.sh" && chmod +x /usr/bin/m-xl
wget -q -O /usr/bin/member "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/member.sh" && chmod +x /usr/bin/member
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/menu-backup.sh" && chmod +x /usr/bin/menu-backup
wget -q -O /usr/bin/menu-tcp "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/menu-tcp.sh" && chmod +x /usr/bin/menu-tcp
wget -q -O /usr/bin/rclone "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/rclone.conf" && chmod +x /usr/bin/rclone
wget -q -O /usr/bin/renew "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/renew.sh" && chmod +x /usr/bin/renew
wget -q -O /usr/bin/renew-ssws "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/renew-ssws.sh" && chmod +x /usr/bin/renew-ssws
wget -q -O /usr/bin/renew-tr"https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/renew-tr.sh" && chmod +x /usr/bin/renew-tr
wget -q -O /usr/bin/renew-vless "https://raw.githubusercontent.comshakboss/wtgtnl1/main/file/renew-vless.sh" && chmod +x /usr/bin/renew-vless
wget -q -O /usr/bin/renew-ws "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/renew-ws.sh" && chmod +x /usr/bin/renew-ws
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/restart.sh" && chmod +x /usr/bin/restart
wget -q -O /usr/bin/restore "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/restore.sh" && chmod +x /usr/bin/restore
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/running.sh" && chmod +x /usr/bin/running
wget -q -O /usr/bin/tcp "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/tcp.sh" && chmod +x /usr/bin/tcp
wget -q -O /usr/bin/tendang "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/tendang.sh" && chmod +x /usr/bin/tendang
wget -q -O /usr/bin/trial "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/trial.sh" && chmod +x /usr/bin/trial
wget -q -O /usr/bin/trialssws "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/trialssws.sh" && chmod +x /usr/bin/trialssws
wget -q -O /usr/bin/trialtrojan "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/trialtrojan.sh" && chmod +x /usr/bin/trialtrojan
wget -q -O /usr/bin/trialvless "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/trialvless.sh" && chmod +x /usr/bin/trialvless
wget -q -O /usr/bin/trialvmess "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/trialvmess.sh" && chmod +x /usr/bin/trialvmess
wget -q -O /usr/bin/tunnel "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/tunnel.sh" && chmod +x /usr/bin/tunnel
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/usernew.sh" && chmod +x /usr/bin/usernew
wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/shakboss/wtgtnl1/main/file/xp.sh" && chmod +x /usr/bin/xp
echo ""
echo -e "${CYAN}╒════════════════════════════════════════════╕\033[0m"
echo -e " \E[0;36;44;1m            Succesfully Update           \E[0m"
echo -e "${CYAN}╘════════════════════════════════════════════╛\033[0m"
echo ""
echo " SSH WEBSOCKET        Fully Automatic Script"
echo " XRAY VMESS           Backup & Restore"
echo " XRAY VLESS           Check Create Account"
echo " XRAY TROJAN          AutoDelete Expired User"
echo " SHADOWSOCKS          Only Websocket Services"
echo ""
echo " All Port HTTPS         : 443"
echo " All Port HTTP          : 80"
echo ""
echo -e "${CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
rm /root/setup.sh >/dev/null 2>&1
rm /root/backupinstaller.sh >/dev/null 2>&1
rm /root/sshinstaller.sh >/dev/null 2>&1
rm /root/xrayinstaller.sh >/dev/null 2>&1
rm /root/websocketinstaller.sh >/dev/null 2>&1
rm /root/toolsinstaller.sh >/dev/null 2>&1
echo -e ""
echo -ne "[ ${yell}WARNING${NC} ] reboot now ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
exit 0
else
reboot
fi

