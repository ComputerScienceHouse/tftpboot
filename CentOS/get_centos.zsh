#!/bin/zsh
if [[ `pwd` != "/tftpboot/CentOS" ]] ; then
	cd /tftpboot/CentOS/
fi


wget -nc -O initrd_6_32.img "http://mirrors.rit.edu/centos/6.4/os/i386/images/pxeboot/initrd.img"
wget -nc -O initrd_6_64.img "http://mirrors.rit.edu/centos/6.4/os/x86_64/images/pxeboot/initrd.img"
wget -nc -O vmlinuz_6_32 "http://mirrors.rit.edu/centos/6.4/os/i386/images/pxeboot/vmlinuz"
wget -nc -O vmlinuz_6_64 "http://mirrors.rit.edu/centos/6.4/os/x86_64/images/pxeboot/vmlinuz"
