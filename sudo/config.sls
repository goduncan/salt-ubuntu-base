sudo_conf:
   file:
    - managed
    - name: /etc/sudoers.d/ops
    - source: salt://sudo/files/ops.conf
    - user: root
    - group: root
    - mode: 440
