#!/bin/bash
apt install openssh-server

sed -i -e "s/#Port 22/Port 8686/g" /etc/ssh/sshd_config

useradd -m -p tigrica -s /bin/bash ostajic

echo 'ostajic  ALL=(ALL:ALL) ALL' >> /etc/sudoers

sudo ufw allow ssh
sudo ufw enable
sudo ufw status
sudo systemctl restart ssh