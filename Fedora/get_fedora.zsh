#!/bin/zsh
if [[ `pwd` != "/tftpboot/Fedora" ]] ; then
	cd /tftpboot/Fedora/
fi

wget -nc -O initrd_15_32.img "http://mirror.rit.edu/fedora/linux/releases/15/Fedora/i386/os/images/pxeboot/initrd.img"
wget -nc -O initrd_15_64.img "http://mirror.rit.edu/fedora/linux/releases/15/Fedora/x86_64/os/images/pxeboot/initrd.img"
wget -nc -O vmlinuz_15_32 "http://mirror.rit.edu/fedora/linux/releases/15/Fedora/i386/os/images/pxeboot/vmlinuz"
wget -nc -O vmlinuz_15_64 "http://mirror.rit.edu/fedora/linux/releases/15/Fedora/x86_64/os/images/pxeboot/vmlinuz"

wget -nc -O initrd_16_32.img "http://mirror.rit.edu/fedora/linux/releases/16/Fedora/i386/os/images/pxeboot/initrd.img"
wget -nc -O initrd_16_64.img "http://mirror.rit.edu/fedora/linux/releases/16/Fedora/x86_64/os/images/pxeboot/initrd.img"
wget -nc -O vmlinuz_16_32 "http://mirror.rit.edu/fedora/linux/releases/16/Fedora/i386/os/images/pxeboot/vmlinuz"
wget -nc -O vmlinuz_16_64 "http://mirror.rit.edu/fedora/linux/releases/16/Fedora/x86_64/os/images/pxeboot/vmlinuz"

wget -nc -O initrd_17_32.img "http://mirror.rit.edu/fedora/linux/releases/17/Fedora/i386/os/images/pxeboot/initrd.img"
wget -nc -O initrd_17_64.img "http://mirror.rit.edu/fedora/linux/releases/17/Fedora/x86_64/os/images/pxeboot/initrd.img"
wget -nc -O vmlinuz_17_32 "http://mirror.rit.edu/fedora/linux/releases/17/Fedora/i386/os/images/pxeboot/vmlinuz"
wget -nc -O vmlinuz_17_64 "http://mirror.rit.edu/fedora/linux/releases/17/Fedora/x86_64/os/images/pxeboot/vmlinuz"

wget -nc -O initrd_18_32.img "http://mirror.rit.edu/fedora/linux/releases/18/Fedora/i386/os/images/pxeboot/initrd.img"
wget -nc -O initrd_18_64.img "http://mirror.rit.edu/fedora/linux/releases/18/Fedora/x86_64/os/images/pxeboot/initrd.img"
wget -nc -O vmlinuz_18_32 "http://mirror.rit.edu/fedora/linux/releases/18/Fedora/i386/os/images/pxeboot/vmlinuz"
wget -nc -O vmlinuz_18_64 "http://mirror.rit.edu/fedora/linux/releases/18/Fedora/x86_64/os/images/pxeboot/vmlinuz"
