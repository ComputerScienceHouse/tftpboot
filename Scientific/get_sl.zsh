#!/bin/zsh

wget -O initrd_6_32.img "http://mirror.rit.edu/scientific/6.3/i386/os/images/pxeboot/initrd.img"
wget -O initrd_6_64.img "http://mirror.rit.edu/scientific/6.3/x86_64/os/images/pxeboot/initrd.img"
wget -O vmlinuz_6_32 "http://mirror.rit.edu/scientific/6.3/i386/os/images/pxeboot/vmlinuz"
wget -O vmlinuz_6_64 "http://mirror.rit.edu/scientific/6.3/x86_64/os/images/pxeboot/vmlinuz"
