#!/bin/zsh

if [ -z $TFTP_DIRECTORY ]
    then
	echo "Error, directory not set"
	exit 1
fi

export DIRECTORY="$TFTP_DIRECTORY/OpenBSD"

mkdir -p $DIRECTORY

echo "Downloading CentOS to $DIRECTORY"
wget -nv -nc -O $DIRECTORY/openbsd-i386-5.6.iso "http://mirrors.rit.edu/OpenBSD/5.6/i386/cd56.iso"
wget -nv -nc -O $DIRECTORY/openbsd-amd64-5.6.iso "http://mirrors.rit.edu/OpenBSD/5.6/amd64/cd56.iso"
