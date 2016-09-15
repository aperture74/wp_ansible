#!/usr/bin/env bash
#The installation of ansible is done on a Ubuntu 16.04 LTS
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y --allow-remove-essential install ansible
