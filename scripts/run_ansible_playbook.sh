#!/bin/bash

# Fail on any error
set -e

# Variables (You can pass target_host as a parameter to this script)
TARGET_HOSTNAM=$1
PLAY_NAME=$2
# Path to Ansible playbook
PLAYBOOK_PATH="./ansible_playbooks/${PLAY_NAME}"
ANSIBLE_USER="ansible"
echo "target hosts are ${TARGET_HOSTNAME} "
# Run the ansible-playbook command with the target_host variable
# ansible-playbook ${PLAYBOOK_PATH} --extra-vars "target_host=${TARGET_HOST}" --verbose
sudo -u $ANSIBLE_USER ansible-playbook -i "${TARGET_HOSTNAM}," -e "TARGET_HOSTNAME=${TARGET_HOSTNAM}" ${PLAYBOOK_PATH}  --verbose
