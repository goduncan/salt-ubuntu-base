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

```
wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
```

Create /etc/apt/sources.list.d/saltstack.list and add:

```
deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main
```

Install salt-minion:

```
apt-get install salt-minion
```

Create /etc/salt/minion.d/masterless.conf and add:

```
file_client: local
file_roots:
  base:
    - /srv/salt/base
```

Now setup the minion's directory structure:

```
service salt-minion stop
mkdir -p /srv/salt
cd /srv/salt/
git clone https://github.com/goduncan/salt-ubuntu-base.git base
```

Run salt locally:

```
salt-call --local state.highstate
```
