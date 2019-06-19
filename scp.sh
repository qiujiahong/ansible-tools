#!/bin/bash

# scp -r ./*  root@192.168.2.11:/etc/ansible
rsync -arv --exclude ".*" ./ root@192.168.2.11:/etc/ansible
