# Readme

Sets basic hardening on an Ubuntu host. Tested on 14.04 trusty.


## Todo:

This is a work in progress with the follow still to do:

* Persist the firewall rules
* Investigate restart daemons after config change
* add rsyslog config
* Investigate running as root
* Possibly user management (currently assumes user accounts are setup)


## Installing a masterless Minion

The bash script run_salt.sh will add the salt repo to your sources, configure a basic masterless salt-minion and then clone this state and finally run salt locally. 

NOTE: It is never a good idea to execute someone's script on your box without review it first. Review this code first. I would also recommend validating your happy with the repo.saltstack.com gpg key.

```
./setup_salt.sh
```
