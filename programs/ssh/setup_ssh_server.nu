sudo rm /etc/ssh/sshd_config
sudo ln -s ~/.dotfiles/programs/ssh/sshd_config /etc/ssh/sshd_config
sudo systemctl restart sshd.service

ssh-keygen -f ~/.ssh/id_rsa 
ssh-copy-id -i ~/.ssh/id_rsa arlo@odelis.arlofilley.home