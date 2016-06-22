base:
  '*':
    - fail2ban
    - sudo
    - sudo.createops
    - sudo.config
    - iptables
    - iptables.config
    - ntpd
    - ssh
    - ssh.config
    - timezone.config
    - sysctl.config
    - ubuntuuser.config
    - purgepackages.config
