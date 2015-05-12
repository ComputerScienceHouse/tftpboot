#!/bin/zsh

if [ -z $TFTP_DIRECTORY ]
    then
	echo "Error, directory not set"
	exit 1
fi

export DIRECTORY="$TFTP_DIRECTORY/Fedora"

mkdir -p $DIRECTORY

echo "Downloading Fedora to $DIRECTORY"
wget -nv -nc -O $DIRECTORY/initrd_19_32.img "http://mirrors.rit.edu/fedora/fedora/linux/releases/19/Fedora/i386/os/images/pxeboot/initrd.img"
wget -nv -nc -O $DIRECTORY/initrd_19_64.img "http://mirrors.rit.edu/fedora/fedora/linux/releases/19/Fedora/x86_64/os/images/pxeboot/initrd.img"
wget -nv -nc -O $DIRECTORY/vmlinuz_19_32 "http://mirrors.rit.edu/fedora/fedora/linux/releases/19/Fedora/i386/os/images/pxeboot/vmlinuz"
wget -nv -nc -O $DIRECTORY/vmlinuz_19_64 "http://mirrors.rit.edu/fedora/fedora/linux/releases/19/Fedora/x86_64/os/images/pxeboot/vmlinuz"

wget -nv -nc -O $DIRECTORY/initrd_20_32.img "http://mirrors.rit.edu/fedora/fedora/linux/releases/20/Fedora/i386/os/images/pxeboot/initrd.img"
wget -nv -nc -O $DIRECTORY/initrd_20_64.img "http://mirrors.rit.edu/fedora/fedora/linux/releases/20/Fedora/x86_64/os/images/pxeboot/initrd.img"
wget -nv -nc -O $DIRECTORY/vmlinuz_20_32 "http://mirrors.rit.edu/fedora/fedora/linux/releases/20/Fedora/i386/os/images/pxeboot/vmlinuz"
wget -nv -nc -O $DIRECTORY/vmlinuz_20_64 "http://mirrors.rit.edu/fedora/fedora/linux/releases/20/Fedora/x86_64/os/images/pxeboot/vmlinuz"

wget -nv -nc -O $DIRECTORY/initrd_21_32.img "http://mirrors.rit.edu/fedora/fedora/linux/releases/21/Server/i386/os/images/pxeboot/initrd.img"
wget -nv -nc -O $DIRECTORY/initrd_21_64.img "http://mirrors.rit.edu/fedora/fedora/linux/releases/21/Server/x86_64/os/images/pxeboot/initrd.img"
wget -nv -nc -O $DIRECTORY/vmlinuz_21_32 "http://mirrors.rit.edu/fedora/fedora/linux/releases/21/Server/i386/os/images/pxeboot/vmlinuz"
wget -nv -nc -O $DIRECTORY/vmlinuz_21_64 "http://mirrors.rit.edu/fedora/fedora/linux/releases/21/Server/x86_64/os/images/pxeboot/vmlinuz"
