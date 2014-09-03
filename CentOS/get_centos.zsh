#!/bin/zsh
if [[ `pwd` != "/tftpboot/CentOS"  ]] ; then
	cd /tftpboot/CentOS/
fi

# if [ '$@' == '-f' ]; then
#     wget -O initrd_6_32.img "http://mirrors.rit.edu/centos/6.5/os/i386/images/pxeboot/initrd.img"
#     wget -O initrd_6_64.img "http://mirrors.rit.edu/centos/6.5/os/x86_64/images/pxeboot/initrd.img"
#     wget -O initrd_7_32.img "http://mirrors.rit.edu/centos/7/os/i386/images/pxeboot/initrd.img"
#     wget -O initrd_7_64.img "http://mirrors.rit.edu/centos/7/os/x86_64/images/pxeboot/initrd.img"
#     wget -O vmlinuz_6_32 "http://mirrors.rit.edu/centos/6.5/os/i386/images/pxeboot/vmlinuz"
#     wget -O vmlinuz_6_64 "http://mirrors.rit.edu/centos/6.5/os/x86_64/images/pxeboot/vmlinuz"
#     wget -O vmlinuz_7_32 "http://mirrors.rit.edu/centos/7/os/i386/images/pxeboot/vmlinuz"
#     wget -O vmlinuz_7_64 "http://mirrors.rit.edu/centos/7/os/x86_64/images/pxeboot/vmlinuz"
#     return 0
# fi

if [ ! -f /tftpboot/CentOS/initrd_6_32.img ]; then
    wget -O initrd_6_32.img "http://mirrors.rit.edu/centos/6.5/os/i386/images/pxeboot/initrd.img"
fi
if [ ! -f /tftpboot/CentOS/initrd_6_64.img ]; then
    wget -O initrd_6_64.img "http://mirrors.rit.edu/centos/6.5/os/x86_64/images/pxeboot/initrd.img"
fi
if [ ! -f /tftpboot/CentOS/initrd_7_32.img ]; then
    wget -O initrd_7_32.img "http://mirrors.rit.edu/centos/7/os/i386/images/pxeboot/initrd.img"
fi
if [ ! -f /tftpboot/CentOS/initrd_7_64.img ]; then
    wget -O initrd_7_64.img "http://mirrors.rit.edu/centos/7/os/x86_64/images/pxeboot/initrd.img"
fi
if [ ! -f /tftpboot/CentOS/vmlinuz_6_32 ]; then
    wget -O vmlinuz_6_32 "http://mirrors.rit.edu/centos/6.5/os/i386/images/pxeboot/vmlinuz"
fi
if [ ! -f /tftpboot/CentOS/vmlinuz_6_64 ]; then
    wget -O vmlinuz_6_64 "http://mirrors.rit.edu/centos/6.5/os/x86_64/images/pxeboot/vmlinuz"
fi
if [ ! -f /tftpboot/CentOS/vmlinuz_7_32 ]; then
    wget -O vmlinuz_7_32 "http://mirrors.rit.edu/centos/7/os/i386/images/pxeboot/vmlinuz"
fi
if [ ! -f /tftpboot/CentOS/vmlinuz_7_64 ]; then
    wget -O vmlinuz_7_64 "http://mirrors.rit.edu/centos/7/os/x86_64/images/pxeboot/vmlinuz"
fi
