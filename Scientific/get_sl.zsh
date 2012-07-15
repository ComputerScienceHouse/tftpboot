#!/bin/zsh

wget -O initrd_6_32.img "http://mirror.rit.edu/scientific/6x/i386/os/images/pxeboot/initrd.img"
wget -O initrd_6_64.img "http://mirror.rit.edu/scientific/6x/x86_64/os/images/pxeboot/initrd.img"
wget -O vmlinuz_6_32 "http://mirror.rit.edu/scientific/6x/i386/os/images/pxeboot/vmlinuz"
wget -O vmlinuz_6_64 "http://mirror.rit.edu/scientific/6x/x86_64/os/images/pxeboot/vmlinuz"
