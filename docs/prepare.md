# 系统准备

## 环境说明


* 安装centos 7
* vagrant 虚拟机管理工具
* virtual box虚拟机管理工具


## 环境准备步骤


* 启动虚拟机,进入工程目录执行如下命令  
```bash
cd vagrant
vagrant up
```

* 配置虚拟机 （所有虚拟机上执行）   
```bash 
vagrant ssh m1
su root 
sed -i 's/^#PermitRootLogin.*$/PermitRootLogin yes/g' /etc/ssh/sshd_config
# 允许密码验证
sed -i 's/^PasswordAuthentication.*$/PasswordAuthentication yes/g' /etc/ssh/sshd_config
# 允许免密远程登录
sed -i 's/^#PubkeyAuthentication.*$/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd.service
echo 'LC_ALL=en_US.utf-8' >> /etc/locale.conf
```