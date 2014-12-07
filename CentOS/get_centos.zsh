#!/bin/zsh
DIRECTORY="/tftpboot/CentOS"

#Functions
getall() {
     wget -O $DIRECTORY/initrd_6_32.img "http://mirrors.rit.edu/centos/6.5/os/i386/images/pxeboot/initrd.img"
     wget -O $DIRECTORY/initrd_6_64.img "http://mirrors.rit.edu/centos/6.5/os/x86_64/images/pxeboot/initrd.img"
     wget -O $DIRECTORY/initrd_7_64.img "http://mirrors.rit.edu/centos/7/os/x86_64/images/pxeboot/initrd.img"
     wget -O $DIRECTORY/vmlinuz_6_32 "http://mirrors.rit.edu/centos/6.5/os/i386/images/pxeboot/vmlinuz"
     wget -O $DIRECTORY/vmlinuz_6_64 "http://mirrors.rit.edu/centos/6.5/os/x86_64/images/pxeboot/vmlinuz"
     wget -O $DIRECTORY/vmlinuz_7_64 "http://mirrors.rit.edu/centos/7/os/x86_64/images/pxeboot/vmlinuz"
     return 0
}
if [[ $1 = "-f" ]]; then
    getall
fi


#  for i; do
#      case "$i" in
#          -f  ) getall ;;
# 
#          --  ) break ;;
#      esac
#  done

if [ ! -f $DIRECTORY/initrd_6_32.img ]; then
    wget -O $DIRECTORY/initrd_6_32.img "http://mirrors.rit.edu/centos/6.5/os/i386/images/pxeboot/initrd.img"
fi
if [ ! -f $DIRECTORY/initrd_6_64.img ]; then
    wget -O $DIRECTORY/initrd_6_64.img "http://mirrors.rit.edu/centos/6.5/os/x86_64/images/pxeboot/initrd.img"
fi
if [ ! -f $DIRECTORY/initrd_7_64.img ]; then 
    wget -O $DIRECTORY/vmlinuz_6_32 "http://mirrors.rit.edu/centos/6.5/os/i386/images/pxeboot/vmlinuz"
fi
if [ ! -f $DIRECTORY/vmlinuz_6_64 ]; then
    wget -O $DIRECTORY/vmlinuz_6_64 "http://mirrors.rit.edu/centos/6.5/os/x86_64/images/pxeboot/vmlinuz"
fi
if [ ! -f $DIRECTORY/vmlinuz_7_64 ]; then
    wget -O $DIRECTORY/vmlinuz_7_64 "http://mirrors.rit.edu/centos/7/os/x86_64/images/pxeboot/vmlinuz"
fi
