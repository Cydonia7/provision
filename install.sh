#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

pacman --noconfirm -S ansible
echo "localhost ansible_connection=local" > /etc/ansible/hosts
ansible-playbook playbook.yml

