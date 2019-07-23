#! /bin/bash

systemctl stop firewalld NetworkManager
systemctl disable firewalld NetworkManager
sed -i 's/SELINUX=.*/SELINUX=disabled/' > /etc/sysconfig/selinux
setenforce 0 

echo "
LANG=en_US.utf-8
LC_ALL=en_US.utf-8
" > /etc/environment

yum install -y wget net-tools lsof vim 
yum install -y https://rdoproject.org/repos/rdo-release.rpm
yum install -y centos-release-openstack-pike
yum update -y
yum install openstack-utils openstack-selinux -y
yum install -y openstack-packstack

packstack --allinone
