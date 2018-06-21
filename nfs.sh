#!/bin/sh
sudo yum update -y
sudo yum install nfs-utils -y

sudo mkdir /var/nfsshare

sudo systemctl enable rpcbind
sudo systemctl enable nfs-server
sudo systemctl enable nfs-lock
sudo systemctl enable nfs-idmap
sudo systemctl start rpcbind
sudo systemctl start nfs-server
sudo systemctl start nfs-lock
sudo systemctl start nfs-idmap

sudo bash -c 'cat > /etc/exports <<EOF
/var/nfsshare    10.0.0.0/255.0.0.0(rw,sync,no_root_squash,no_all_squash)
/home            10.0.0.0/255.0.0.0(rw,sync,no_root_squash,no_all_squash)
EOF
'
sudo systemctl restart nfs-server
