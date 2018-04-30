#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

git clone https://github.com/Cydonia7/provision.git
cd provision
pacman --noconfirm -S ansible
echo "localhost ansible_connection=local" > /etc/ansible/hosts
ansible-playbook --extra-vars "user=$USER" playbook.yml
cd ..
rm -rf provision
reboot

