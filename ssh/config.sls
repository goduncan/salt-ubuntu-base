sshd_conf:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://ssh/files/sshd_config
    - user: root
    - group: root
    - mode: 644
    - watch_in:
        - service: ssh

