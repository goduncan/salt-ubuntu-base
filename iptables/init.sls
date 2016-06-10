iptables:
  pkg:
    - latest

allow ssh connections:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: NEW
    - dport: 22
    - proto: tcp
    - save: True

allow established:
  iptables.append:
    - table: filter
    - chain: INPUT
    - match: state
    - connstate: ESTABLISHED
    - jump: ACCEPT

default to drop:
  iptables.set_policy:
    - chain: INPUT
    - policy: DROP
