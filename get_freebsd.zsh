#!/bin/zsh

if [ -z $TFTP_DIRECTORY ]
    then
	echo "Error, directory not set"
	exit 1
fi

export DIRECTORY="$TFTP_DIRECTORY/FreeBSD"

mkdir -p $DIRECTORY

echo "Downloading FreeBSD to $DIRECTORY"
wget -nv -O $DIRECTORY/FreeBSD-10.1-RELEASE-i386-bootonly.iso "http://mirrors.rit.edu/FreeBSD/ISO-IMAGES-i386/10.1/FreeBSD-10.1-RELEASE-i386-bootonly.iso"
wget -nv -O $DIRECTORY/FreeBSD-10.1-RELEASE-x86_64-bootonly.iso "http://mirrors.rit.edu/FreeBSD/ISO-IMAGES-amd64/10.1/FreeBSD-10.1-RELEASE-amd64-bootonly.iso"
