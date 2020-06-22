#!/usr/bin/env bash
set -e

chage -I -1 -m 0 -M -1 -E -1 root

### Comment below line if you want to enable root password access
### root password access is dangerous; ssh-key access is recommended
sed -i '/^PermitRootLogin yes/d' /etc/ssh/sshd_config
systemctl reload sshd.service

sync
sync
