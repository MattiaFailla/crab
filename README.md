# crab
     /\
    ( /   @ @    ()
     \\ __| |__  /
      \/   "   \/
     /-|       |-\
    / /-\     /-\ \
     / /-`---'-\ \
      /         \      crab
Stopping abusive ip addresses by banning them and sharing the ip across multiple hosts

## How it works
Crab is a daemon that automatically download a list of abusive ip 
from crab.nextblu.com. This list will be used with iptables to deny access from these ip to the current host.

## How to install and usage
You can simply install crab via `installer.sh`

 `$ bash <(curl https://raw.githubusercontent.com/MattiaFailla/crab/main/installer.sh)`
This will install and start the daemon.

You can control the status of crab via this simple command

`$ systemctl crab.service status`

## Why
I am tired that my hosts can be reached and brute forced. There are many solutions to solve this problem but I wanted to write a simple daemon to do all the dirty work for me.

