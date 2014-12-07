#!/bin/zsh

if [ -z $TFTP_DIRECTORY ]
    then
	echo "Error, directory not set"
	exit 1
fi

export DIRECTORY="$TFTP_DIRECTORY/OpenSUSE"

mkdir -p $DIRECTORY

echo "Downloading OpenSUSE to $DIRECTORY"
wget -nv -O $DIRECTORY/initrd "http://mirror.rit.edu/opensuse/distribution/openSUSE-current/repo/oss/boot/i386/loader/initrd"
wget -nv -O $DIRECTORY/linux  "http://mirror.rit.edu/opensuse/distribution/openSUSE-current/repo/oss/boot/i386/loader/linux"
wget -nv -O $DIRECTORY/initrd64 "http://mirror.rit.edu/opensuse/distribution/openSUSE-current/repo/oss/boot/x86_64/loader/initrd"
wget -nv -O $DIRECTORY/linux64 "http://mirror.rit.edu/opensuse/distribution/openSUSE-current/repo/oss/boot/x86_64/loader/linux"
