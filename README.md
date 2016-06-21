# Readme

Performs basic hardening on an Ubuntu host. Tested on 14.04 trusty.

Make sure you have a non-root account provisioned on your server with an authorised ssh key.

## Installing a masterless Minion

The bash script run_salt.sh will add the salt repo to your sources, configure a basic masterless salt-minion and then clone this repo creating the 'base' set of states. Finally it will run salt-minion locally. 

NOTE: It is never a good idea to execute a script on your box without reviewing it first (including all of the states). I would also recommend validating that you're happy with the repo.saltstack.com gpg key.

