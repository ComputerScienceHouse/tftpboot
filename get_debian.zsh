#!/bin/zsh

if [ -z $TFTP_DIRECTORY ]
    then
	echo "Error, directory not set"
	exit 1
fi

export DIRECTORY="$TFTP_DIRECTORY/Debian"

mkdir -p $DIRECTORY

echo "Downloading Debian to $DIRECTORY"
wget -r -e robots=off -nH --cut-dirs=8 --no-parent --reject="index.html*" -P $DIRECTORY/squeeze "http://mirrors.rit.edu/debian/dists/squeeze/main/installer-amd64/current/images/netboot/"
wget -r -e robots=off -nH --cut-dirs=8 --no-parent --reject="index.html*" -P $DIRECTORY/wheezy "http://mirrors.rit.edu/debian/dists/wheezy/main/installer-amd64/current/images/netboot/"
