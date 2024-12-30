#!/bin/bash

# 新主机名
NEW_HOSTNAME="us-sanjose-arm1"

# 修改当前会话的主机名
hostnamectl set-hostname $NEW_HOSTNAME

# 更新 /etc/hosts 文件
echo "127.0.0.1       localhost" > /etc/hosts
echo "127.0.1.1       $NEW_HOSTNAME" >> /etc/hosts

# 确认修改
echo "主机名已修改为: $NEW_HOSTNAME"
hostnamectl
