#!/bin/zsh
if [[ `pwd` != "/tftpboot/OpenSUSE" ]] ; then
	cd /tftpboot/OpenSUSE/
fi

#
wget -O initrd "http://mirror.rit.edu/opensuse/distribution/openSUSE-current/repo/oss/boot/i386/loader/initrd"
wget -O linux  "http://mirror.rit.edu/opensuse/distribution/openSUSE-current/repo/oss/boot/i386/loader/linux"
wget -O initrd64 "http://mirror.rit.edu/opensuse/distribution/openSUSE-current/repo/oss/boot/x86_64/loader/initrd"
wget -O linux64 "http://mirror.rit.edu/opensuse/distribution/openSUSE-current/repo/oss/boot/x86_64/loader/linux"
