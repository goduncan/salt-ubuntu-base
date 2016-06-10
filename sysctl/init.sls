/etc/sysctl.d/99-disable-ipv6.conf:
  file.managed:
    - source: salt://sysctl/config/99-disable-ipv6.conf
    - user: root
    - group: root
    - mode: 644

