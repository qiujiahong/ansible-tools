#  授权与网络

## 说明

本项目使用ansible安装软件，规划一台主机为控制主机，其他为被控主机； 其中控制主机需要安装ansble，与其他主机之间需要免密登录。  
同时为软件安全考虑，本项目会新建非root用户安装应用软件。  

## 操作步骤  

* 新建用户（所有主机）  

```bash
# 添加用户
# adduser app                         
groupadd appg
useradd -g appg app   
passwd app 
```

* 免密登录 (控制主机执行)

```bash
# 文档中脚本默认均以root用户执行
# 安装 epel 源
yum install epel-release -y
# 安装依赖工具
yum install git python python-pip -y
pip install pip --upgrade -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
pip install --no-cache-dir ansible -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
# 回车 回车 回车
ssh-keygen -t rsa -b 2048
# root和应用用户都做免密登录, 下面列举了一个命令
ssh-copy-id root@192.168.2.11 
ssh-copy-id app@192.168.2.11 
```


* 控制主机,创建文件夹/etc/ansible,上传并拷贝该工程文件到这个文件夹下

```bash
mkdir /etc/ansible
# 这里假设控制主机是192.168.2.11
scp -r ./*  root@192.168.2.11:/etc/ansible
```
