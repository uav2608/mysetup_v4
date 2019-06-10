#! /usr/bin/env bash

VIRT_TYPE="kvm"
VMNAME="kali2"
RAM="2048"
CPU="2"
OS_TYPE="linux"
OS_VARIANT="debianwheezy"
LOCATION="/home/ansibleuser1/ISO/kali-linux-xfce-2019.1a-amd64.iso"
DISK_PATH="/var/lib/libvirt/images/Kali.qcow2"
DISK_FORMAT="qcow2"
DISK_SIZE="8"
NETWORK_BRIDGE="virbr0"

virt-install \
--virt-type=$VIRT_TYPE \
--name $VMNAME \
--ram $RAM \
--vcpus=$CPU \
--os-type=$OS_TYPE \
--os-variant=$OS_VARIANT \
--hvm \
--cdrom $LOCATION \
--disk path=$DISK_PATH,size=$DISK_SIZE,format=qcow2 \
--network bridge=$NETWORK_BRIDGE \
--graphics none 
 

