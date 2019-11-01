#!/bin/bash
apt install openssh-server

sed -i -e "s/#Port 22/Port 8686/g" /etc/ssh/sshd_config

useradd -m -p tigrica -s /bin/bash ostajic

echo 'ostajic  ALL=(ALL:ALL) ALL' >> /etc/sudoers

ufw allow ssh
ufw enable
ufw status
systemctl restart ssh