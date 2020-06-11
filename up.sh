#!/bin/bash
# scp -r ./*  root@192.168.2.11:/etc/ansible
# rsync -arv --exclude ".*" ./ root@192.168.2.11:/etc/ansible

msg=${1-commit}

echo $msg
git add .
git commit -m "$msg"
git push origin 
git push mayun 