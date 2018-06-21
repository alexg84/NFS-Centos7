#!/bin/sh

sudo yum install nfs-utils -y 

sudo mkdir -p /mnt/nfs/home
sudo mkdir -p /mnt/nfs/var/nfsshare

sudo mount -t nfs <server nfs ip>:/home /mnt/nfs/home/

sudo mount -t nfs <server nfs ip>:/var/nfsshare /mnt/nfs/var/nfsshare/



