#!/bin/bash
# 文档中脚本默认均以root用户执行
# 安装 epel 源
yum install epel-release -y
# 安装依赖工具
yum install git python python-pip -y
pip install pip --upgrade -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
pip install --no-cache-dir ansible -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
