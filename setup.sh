#!/bin/bash
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl reload sshd


echo "set root password"
echo "docker101" | passwd --stdin root >/dev/null 2>&1


curl -fsSL https://get.docker.com/ | sh

systemctl start docker
systemctl enable docker








