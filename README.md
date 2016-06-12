# Readme

Sets basic hardening on an Ubuntu host. Tested on 14.04 trusty.


## Todo:

This is a work in progress with the follow still to do:

* Persist the firewall rules
* Investigate running as root



## Installing a masterless Minion

The bash script run_salt.sh will add the salt repo to your sources, configure a basic masterless salt-minion and then clone this repo into a base set of states. Finally it will run salt-minion locally. 

NOTE: It is never a good idea to execute a script on your box without reviewing it first (including all of the states). I would also recommend validating that you're happy with the repo.saltstack.com gpg key.

