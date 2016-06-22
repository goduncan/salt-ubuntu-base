# README

Performs basic hardening on an Ubuntu host. Tested on 14.04 trusty.

Make sure you have a non-root / non-ubuntu account provisioned on your server with an authorized key.

## Quickstart

The bash script run_salt.sh will add the salt repo to your sources, configure a masterless salt-minion and clone this repo creating the base environment. Finally it will run salt-minion locally applying the set of states. 

NOTE: It is never a good idea to execute a script on your box without reviewing it first (including all of the states). I would also recommend validating that you're happy with the repo.saltstack.com gpg key.

## Documentation

Hardening is the process of changing the default configuration that an OS ships with to put it in a more secure state. It is focused on closing holes and reducing your attack surface. This repo is a set of Salt states that will harden an Ubuntu server.

It has 2 assumptions:

1. You have already deployed a user account other than root (or the default Ubuntu account that ships with AWS instances).
2. You will update your system and continue to patch it periodically.

### Hardening States

1. ssh

2. iptables

3. purgepackages

4. ubuntuuser

5. sysctl

6. sudo


### Extra States

A few extra states have been included which are not strictly classified as hardening.

1. fail2ban

2. ntpd

3. timezone

