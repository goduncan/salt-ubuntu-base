# Readme



## Installing a masterless Saltstack Minion

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

Setup Saltstack:

```
service salt-minion stop
mkdir -p /srv/salt
cd /srv/salt/
git clone https://github.com/goduncan/salt-ubuntu-base.git base
```

Run Saltstack

```
salt-call --local state.highstate
```

## Todo:

* User management
* Persist the firewall rules
* Investigate restart daemons after config change
* add rsyslog config
* Investigate running as root
