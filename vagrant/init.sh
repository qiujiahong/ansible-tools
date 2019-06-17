#!/usr/bin/env bash
# 允许root远程登录
sed -i 's/^#PermitRootLogin.*$/PermitRootLogin yes/g' /etc/ssh/sshd_config
# 允许密码验证
sed -i 's/^PasswordAuthentication.*$/PasswordAuthentication yes/g' /etc/ssh/sshd_config
# 允许免密远程登录
sed -i 's/^#PubkeyAuthentication.*$/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd.service
