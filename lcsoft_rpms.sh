#!/usr/bin/bash
###
### Author: ron.tapia@ligo.org
### Date:   Apr 18, 2020
### Desc:   Install lcsoft RPMs on a vanilla SL box.
###         Note: epel should not be installed. If it is installed,
###               it should be uninstalled. If you have installed
###               any epel packages, there may be yum conflicts that
###               must be resolved.
###
### Based on:
###
###   https://wiki.ligo.org/Computing/ScientificLinux7
###
mkdir -p /usr/local/src
cd /usr/local/src
wget http://software.ligo.org/lscsoft/scientific/7/x86_64/production/l/lscsoft-production-config-1.3-1.el7.noarch.rpm
yum install -y lscsoft-production-config-1.3-1.el7.noarch.rpm
yum clean all && yum makecache
yum update -y
yum install -y lscsoft-backports-config
yum install -y lscsoft-backports-debug-config
yum install -y lscsoft-epel-config
yum install -y lscsoft-grid-config
yum install -y lscsoft-production-debug-config
yum clean all && yum makecache
yum update -y
yum install -y lscsoft-all
