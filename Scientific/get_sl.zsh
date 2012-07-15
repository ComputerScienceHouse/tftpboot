#!/bin/zsh

wget -O Scientific/initrd_6_32.img "http://mirror.rit.edu/scientific/6x/i386/os/images/pxeboot/initrd.img"
wget -O Scientific/initrd_6_64.img "http://mirror.rit.edu/scientific/6x/x86_64/os/images/pxeboot/initrd.img"
wget -O Scientific/vmlinuz_6_32 "http://mirror.rit.edu/scientific/6x/i386/os/images/pxeboot/vmlinuz"
wget -O Scientific/vmlinuz_6_64 "http://mirror.rit.edu/scientific/6x/x86_64/os/images/pxeboot/vmlinuz"
