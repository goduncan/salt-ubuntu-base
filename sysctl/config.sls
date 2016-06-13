sysctl_conf:
  file:
    - managed
    - name: /etc/sysctl.d/99-disable-ipv6.conf
    - source: salt://sysctl/files/99-disable-ipv6.conf
    - user: root
    - group: root
    - mode: 644

