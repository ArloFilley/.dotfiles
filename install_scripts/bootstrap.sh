#!/bin/sh

sudo rm -rf /etc/ssh/sshd_config
sudo ln -s /home/arlo/.dotfiles/ssh/sshd_config

sudo systemctl restart sshd
