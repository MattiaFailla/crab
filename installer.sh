#!/bin/sh

cat <<"EOF"
     /\
    ( /   @ @    ()
     \\ __| |__  /
      \/   "   \/
     /-|       |-\
    / /-\     /-\ \
     / /-`---'-\ \
      /         \      crab
EOF

# Initializing iptables
iptables -N BLACKLIST
iptables -I INPUT -j BLACKLIST
ptables -I FORWARD -j BLACKLIST

# Getting and configuring the daemon
wget https://raw.githubusercontent.com/MattiaFailla/crab/main/crabdaemon.sh -O /usr/bin/crab.sh
sudo chmod +x /usr/bin/crab.sh

# Getting and enabling the service
wget https://raw.githubusercontent.com/MattiaFailla/crab/main/crab.service -O /etc/systemd/system/crab.service
systemctl enable crab.service
systemctl start crab.service



