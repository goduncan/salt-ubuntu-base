ubuntu:
  user:
    - absent
    - purge: True
  group:
    - absent
    - []

remove-cloud-sudo:
  file:
    - absent
    - name:  /etc/sudoers.d/90-cloud-init-users
