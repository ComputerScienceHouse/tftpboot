#!/bin/zsh
if [[ `pwd` != "/tftpboot/OpenSUSE" ]] ; then
	cd /tftpboot/OpenSUSE/
fi

#
wget -nc -O initrd "http://mirror.rit.edu/opensuse/distribution/openSUSE-current/repo/oss/boot/i386/loader/initrd"
wget -nc -O linux  "http://mirror.rit.edu/opensuse/distribution/openSUSE-current/repo/oss/boot/i386/loader/linux"
wget -nc -O initrd64 "http://mirror.rit.edu/opensuse/distribution/openSUSE-current/repo/oss/boot/x86_64/loader/initrd"
wget -nc -O linux64 "http://mirror.rit.edu/opensuse/distribution/openSUSE-current/repo/oss/boot/x86_64/loader/linux"
