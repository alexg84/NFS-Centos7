#!/bin/sh

sudo yum install nfs-utils -y 

sudo mkdir -p /mnt/nfs/home
sudo mkdir -p /mnt/nfs/var/nfsshare

sudo mount -t nfs 10.128.0.9:/home /mnt/nfs/home/

sudo mount -t nfs 10.128.0.9:/var/nfsshare /mnt/nfs/var/nfsshare/



