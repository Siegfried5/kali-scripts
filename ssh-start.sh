#! /bin/bash
#
# Author: Rudolph Ponce
# Date: 12/3/15
# 
# This script will started the secure shell daemon
# and also added it to started up

systemctl start ssh.service
systemctl status ssh

systemctl enabled ssh.service
systemctl is-enabled ssh.service

