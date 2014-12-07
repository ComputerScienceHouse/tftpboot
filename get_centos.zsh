#!/bin/zsh

if [ -z $TFTP_DIRECTORY ]
    then
	echo "Error, directory not set"
	exit 1
fi

export DIRECTORY="$TFTP_DIRECTORY/CentOS"

mkdir -p $DIRECTORY

echo "Downloading CentOS to $DIRECTORY"
wget -nv -nc -O $DIRECTORY/initrd_6_32.img "http://mirrors.rit.edu/centos/6.6/os/i386/images/pxeboot/initrd.img"
wget -nv -nc -O $DIRECTORY/initrd_6_64.img "http://mirrors.rit.edu/centos/6.6/os/x86_64/images/pxeboot/initrd.img"
wget -nv -nc -O $DIRECTORY/initrd_7_64.img "http://mirrors.rit.edu/centos/7/os/x86_64/images/pxeboot/initrd.img"
wget -nv -nc -O $DIRECTORY/vmlinuz_6_32 "http://mirrors.rit.edu/centos/6.6/os/i386/images/pxeboot/vmlinuz"
wget -nv -nc -O $DIRECTORY/vmlinuz_6_64 "http://mirrors.rit.edu/centos/6.6/os/x86_64/images/pxeboot/vmlinuz"
wget -nv -nc -O $DIRECTORY/vmlinuz_7_64 "http://mirrors.rit.edu/centos/7/os/x86_64/images/pxeboot/vmlinuz"
