#!/bin/bash

read -p "Enter your username inside imesec servers: " username

cat ansible.cfg | sed -e "s/#<user>/remote_user = $username/g" > ansible.cfg.tmp
mv ansible.cfg.tmp ansible.cfg

echo "Configuration file updated. Enjoy!"
