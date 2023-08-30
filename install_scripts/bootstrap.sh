#!/bin/sh

sudo rm -rf /etc/ssh/sshd_config
sudo ln -s /home/arlo/.dotfiles/ssh/sshd_config

sudo echo 'nameserver 192.168.0.151' > /etc/resolvconf.conf

ssh-keygen -f ~/.ssh/id_rsa -N $1
ssh-copy-id -i ~/.ssh/id_rsa arlo@macbook.arlofilley.home
ssh-copy-id -i ~/.ssh/id_rsa arlo@odelis.arlofilley.home

sudo systemctl restart sshd
