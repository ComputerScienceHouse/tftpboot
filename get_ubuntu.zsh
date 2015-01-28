#!/bin/zsh

if [ -z $TFTP_DIRECTORY ]
    then
	echo "Error, directory not set"
	exit 1
fi

export DIRECTORY="$TFTP_DIRECTORY/Ubuntu"

mkdir -p $DIRECTORY

echo "Downloading Ubuntu to $DIRECTORY"
wget -r -e robots=off -nH --cut-dirs=8 --no-parent --reject="index.html*" -P $DIRECTORY/precise "http://mirrors.rit.edu/ubuntu/dists/precise-updates/main/installer-amd64/current/images/netboot/"
wget -r -e robots=off -nH --cut-dirs=8 --no-parent --reject="index.html*" -P $DIRECTORY/saucy "http://mirrors.rit.edu/ubuntu/dists/saucy-updates/main/installer-amd64/current/images/netboot/"
wget -r -e robots=off -nH --cut-dirs=8 --no-parent --reject="index.html*" -p $directory/trusty "http://mirrors.rit.edu/ubuntu/dists/trusty-updates/main/installer-amd64/current/images/netboot/"
wget -r -e robots=off -nH --cut-dirs=8 --no-parent --reject="index.html*" -p $directory/utopic "http://mirrors.rit.edu/ubuntu/dists/utopic-updates/main/installer-amd64/current/images/netboot/"
