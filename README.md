# README

Performs basic hardening on an Ubuntu host. Tested on 14.04 trusty.

Make sure you have a non-root / non-ubuntu user account provisioned on your server with an authorized key.

## Quick Start

The bash script run_salt.sh will add the salt repository to your sources, configure a masterless salt-minion and clone this repository creating the base environment. Finally it will run salt-minion locally applying the set of states. 

NOTE: It is never a good idea to execute a script on your box without reviewing it first (including all of the states). I would also recommend validating that you're happy with the repo.saltstack.com gpg key.

## Documentation

Hardening is the process of toughening your system to make it more difficult to compromise, closing holes and reducing your attack surface. Basic hardening is focused on changing the default configuration that an OS ships with to put it in a more secure state. When you install new applications on your server you need to continue to harden those too.

This repository is a set of Salt states that will harden an Ubuntu 14.04 server. It has 2 assumptions:

1. You have already deployed new user on the server which is not root or the default ubuntu user that ships with AWS instances). You should also setup that user with an authorized SSH key.
2. You will update your system and continue to patch it periodically.

### Hardening States

1. ssh

The root account should not be in general use and it should never be allowed to login into your system and this state prevents that. This state will also disable password authentication, forcing the use of ssh keys for your users.

2. iptables

Apply firewall rules to only allow ssh traffic. (There is also a good UFW module in Salt if that is your preference).

3. purgepackages

Remove any packages that are installed by default that you don't need. UFW is un-installed as my personal preference is iptables and we will manage firewall rules using Salt. Also, telnet is not a secure protocol and it's use should be discouraged.

4. ubuntuuser

Remove the powerful password-less default user 'ubuntu' that is part of the default AWS Ubunutu AMI.

5. sysctl

Disable IPv6. IPv6 is enabled by default on most OSs, it's a good idea to turn it off if you don't specifically use it as it can leave you unexpectedly open.

6. sudo

This is included as an example to add a specific group who will have sudo access.


### Extra States

A few extra states have been included which are not strictly classified as hardening but are will improve your log quality.

1. fail2ban

Fail2ban detects brute force attempts and other malicious activity in your logs. It is not something I would recommend putting on a production host as it can mask problems rather than address them (it can also potentially lock you out of your server). It is included here to reduce noise in your logs from bots, an alternative would be moving ssh off the default port.

2. ntpd

Accurate time is the key to good logs.

3. timezone

As is a consistent timezone.