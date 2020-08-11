#!/bin/bash

apt install software-properties-common

add-apt-repository ppa:gluster/glusterfs-7

apt install glusterfs-server

systemctl start glusterd

systemctl enable glusterd