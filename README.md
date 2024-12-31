# 甲骨云云服务器新开主机常用操作

#甲骨文云网站上操作备忘
1，下载和备份密钥
2，开启ipv6

#远程进入VPS后操作备忘
#root权限
sudo -i

#一键root，甬哥的脚本
bash <(curl -Ls https://gitlab.com/rwkgyg/vpsroot/raw/main/root.sh)

#sing-box-yg，甬哥的脚本
bash <(curl -Ls https://raw.githubusercontent.com/yonggekkk/sing-box-yg/main/sb.sh)

#安装依赖
apt-get update
apt-get install unzip
apt-get install cron

#其他
1，sing-box脚本中开启BBR加速；域名证书；netflix和openai分流
2，安装哪吒探针

#删除nezha监控
systemctl disable --now nezha-agent
rm -rf /opt/nezha/agent

