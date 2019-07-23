# install-openstack-all-one

## Usage

Before install openstack ,make sure your VM or Server can connet to Internet.

## install 

```
git clone https://github.com/linccchen/install-openstack-all-ine-one.git
cd install-openstack-all-ine-one
chmod +x *.sh
./install.sh 
```

## Instead of RPM 

IF you download rpm is stein version or other,you need instead rpm,example epel is stein-norch.repo

```
yum install -y centos-release-openstack-stein
```
