#!/bin/bash

wget -O - https://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -

echo -e "deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main" > /etc/apt/sources.list.d/saltstack.list

apt-get update
apt-get -y upgrade
apt-get -y install git salt-minion

service salt-minion stop

mkdir -p /srv/salt
cd /srv/salt/
git clone https://github.com/goduncan/salt-ubuntu-base.git base

echo -e "file_client: local\nfile_roots:\n  base:\n    - /srv/salt/base\n" > /etc/salt/minion.d/masterless.conf

salt-call --local state.highstate

