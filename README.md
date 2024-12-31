# Oracle Cloud 甲骨云服务器新开主机常用操作

## 甲骨文云网站上操作备忘

1. 下载和备份密钥
2. 开启 IPv6

## 远程进入 VPS 后操作备忘

### 获取 root 权限
```bash
sudo -i
```

### 按需安装依赖
```bash
apt-get update
apt-get install unzip
apt-get install cron
```

### 一键 root（甬哥的脚本）
```bash
bash <(curl -Ls https://gitlab.com/rwkgyg/vpsroot/raw/main/root.sh)
```

### 安装 sing-box（甬哥的脚本）
```bash
bash <(curl -Ls https://raw.githubusercontent.com/yonggekkk/sing-box-yg/main/sb.sh)
```

## 其他操作

1. 在 sing-box 脚本中：
   - 开启 BBR 加速
   - 配置域名证书
   - 设置 Netflix 和 OpenAI 分流
2. 安装哪吒监控面板
   - 无 VPS 搭建哪吒探针：使用 Paas、Cloudflare 与 GitHub 的创新方案
     - [教程视频](https://www.youtube.com/watch?v=YaQFfMckXFQ) 作者: 科技Land
     - [GitHub 项目](https://github.com/fscarmen2/Argo-Nezha-Service-Container) 作者: fscarmen2
3. 删除哪吒监控面板
```bash
systemctl disable --now nezha-agent
```
```bash
rm -rf /opt/nezha/agent
```
