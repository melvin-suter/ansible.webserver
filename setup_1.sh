#!/bin/bash

# Variables
role_name=melvin_suter.webserver
role_install_name=install_X_webserver.yml

# Setup Ansible
echo "=== Setting up the ansible project ==="
curl -s https://raw.githubusercontent.com/uniQconsulting-ag/ansible_setup/master/install_0_prep_ansible.sh | sh > /dev/null

echo "=== Cleaning up ==="
cd /etc/ansible/projects/uqcSetup > /dev/null
rm -f install_* > /dev/null
rm -f vars/* > /dev/null
rm -rf roles/* > /dev/null

echo "=== Seting up webserver-role ==="
ansible-galaxy install $role_name
cp roles/$role_name/tests/vars/99_$role_name.yml vars/
cp roles/$role_name/tests/$role_install_name install_1_appliance.yml

# Tasks
cp roles/$role_name/tests/task_X_deploy-websites.yml task_2_deploy-websites.yml
cp roles/$role_name/tests/task_X_backup-websites.yml task_3_backup-websites.yml
