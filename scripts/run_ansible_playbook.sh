#!/bin/bash

# Fail on any error
set -e

# Variables (You can pass target_host as a parameter to this script)
TARGET_HOST=$1

# Path to Ansible playbook
PLAYBOOK_PATH="./ansible_playbooks/splunkinstall.yml"
ANSIBLE_USER="ansible"
# Run the ansible-playbook command with the target_host variable
# ansible-playbook ${PLAYBOOK_PATH} --extra-vars "target_host=${TARGET_HOST}" --verbose
sudo -u $ANSIBLE_USER ansible-playbook ${PLAYBOOK_PATH} --verbose
