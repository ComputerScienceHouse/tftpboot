#!/bin/zsh

if [ -z $TFTP_DIRECTORY ]
    then
	echo "Error, directory not set"
	exit 1
fi

export DIRECTORY="$TFTP_DIRECTORY/CentOS"

mkdir -p $DIRECTORY

echo "Downloading Scientific to $DIRECTORY"
wget -nv -nc -O initrd_6_32.img "http://mirror.rit.edu/scientific/6.6/i386/os/images/pxeboot/initrd.img"
wget -nv -nc -O initrd_6_64.img "http://mirror.rit.edu/scientific/6.6/x86_64/os/images/pxeboot/initrd.img"
wget -nv -nc -O vmlinuz_6_32 "http://mirror.rit.edu/scientific/6.6/i386/os/images/pxeboot/vmlinuz"
wget -nv -nc -O vmlinuz_6_64 "http://mirror.rit.edu/scientific/6.6/x86_64/os/images/pxeboot/vmlinuz"

wget -nv -nc -O initrd_7_64.img "http://mirrors.rit.edu/scientific/7.0/x86_64/os/images/pxeboot/initrd.img"
wget -nv -nc -O vmlinuz_7_64 "http://mirrors.rit.edu/scientific/7.0/x86_64/os/images/pxeboot/vmlinuz"
