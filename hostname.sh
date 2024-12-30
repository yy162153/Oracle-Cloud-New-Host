#!/bin/bash

# 检查是否以 root 用户运行
if [ "$(id -u)" -ne 0 ]; then
    echo "请以 root 用户运行此脚本。"
    exit 1
fi

# 提示用户输入新主机名
read -p "请输入新的主机名: " NEW_HOSTNAME

# 验证主机名是否为空
if [ -z "$NEW_HOSTNAME" ]; then
    echo "主机名不能为空！"
    exit 1
fi

# 设置主机名
echo "设置主机名为 $NEW_HOSTNAME..."
hostnamectl set-hostname "$NEW_HOSTNAME"

# 修改 /etc/hostname 文件
echo "$NEW_HOSTNAME" > /etc/hostname

# 修改 /etc/hosts 文件
if grep -q "127.0.1.1" /etc/hosts; then
    sed -i "s/127.0.1.1.*/127.0.1.1   $NEW_HOSTNAME/" /etc/hosts
else
    echo "127.0.1.1   $NEW_HOSTNAME" >> /etc/hosts
fi

# 确认修改
echo "主机名已修改为 $NEW_HOSTNAME。"
echo "请重启系统以应用更改。"

# 可选：自动重启提示
read -p "是否现在重启系统？(y/n): " REBOOT
if [[ "$REBOOT" =~ ^[Yy]$ ]]; then
    reboot
else
    echo "稍后请手动重启系统。"
fi
