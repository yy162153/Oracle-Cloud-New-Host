```md
# 甲骨文云服务器管理手册  

## 系统更新 & 安装工具  
```bash
sudo apt-get update && sudo apt-get install curl -y
```

## 核心功能部署  

### 一键获取 Root 权限（甬哥脚本）  
```bash
bash <(curl -Ls https://gitlab.com/rwkgyg/vpsroot/raw/main/root.sh)
```

### 安装 Sing-Box（甬哥脚本）  
```bash
bash <(curl -Ls https://raw.githubusercontent.com/yonggekkk/sing-box-yg/main/sb.sh)
```

### 系统重装（DD 安装）  
```bash
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -u 20.04 -v 64 -a -firmware -p 84o3893
```

## 网络优化配置  

### 启用 BBR 加速  
```bash
sudo modprobe tcp_bbr && echo -e "net.ipv4.tcp_congestion_control=bbr\nnet.core.default_qdisc=fq" | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

## 解除 UWP 应用回环  

### PowerShell 脚本  
```powershell
foreach($f in Get-ChildItem $env:LOCALAPPDATA\Packages) {
    CheckNetIsolation.exe LoopbackExempt -a "-n=$($f.Name)"
}
```
