#!/usr/bin/env bash

export AWS_ACCESS_KEY_ID='AKIAIT4BN36YRQZOJSLQ'
export AWS_SECRET_ACCESS_KEY='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'
export EC2_REGION='us-east-1b'

# export ANSIBLE_HOSTS=/etc/ansible/ec2.py
# export EC2_INI_PATH=/etc/ansible/ec2.ini
export ANSIBLE_HOSTS=./ec2.py
export EC2_INI_PATH=./ec2.ini

# Dependencies
pip install -r requirements.txt

python $ANSIBLE_HOSTS --list

ansible -i $ANSIBLE_HOSTS -m ping CCCapstone
