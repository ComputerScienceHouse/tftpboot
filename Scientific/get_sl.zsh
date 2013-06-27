#!/bin/zsh
if [[ `pwd` != "/tftpboot/Scientific" ]] ; then
	cd /tftpboot/Scientific/
fi


wget -nc -O initrd_6_32.img "http://mirror.rit.edu/scientific/6.4/i386/os/images/pxeboot/initrd.img"
wget -nc -O initrd_6_64.img "http://mirror.rit.edu/scientific/6.4/x86_64/os/images/pxeboot/initrd.img"
wget -nc -O vmlinuz_6_32 "http://mirror.rit.edu/scientific/6.4/i386/os/images/pxeboot/vmlinuz"
wget -nc -O vmlinuz_6_64 "http://mirror.rit.edu/scientific/6.4/x86_64/os/images/pxeboot/vmlinuz"
