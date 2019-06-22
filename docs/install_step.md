# 安装步骤

```bash
cd /etc/ansible
ansible-playbook 01.prepare.yml
ansible-playbook 02.java.yml
ansible-playbook 03.nginx.yml
ansible-playbook 04.tomcat.yml
ansible-playbook 05.redis.yml
ansible-playbook 99.clean.yml
```