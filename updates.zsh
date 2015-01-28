#!/usr/bin/zsh
if [ -z $1 ]
    then
	echo "Usage: `basename $0` /path/to/tftpboot"
	exit 1
fi

export TFTP_DIRECTORY=$1 

./get_centos.zsh
./get_sl.zsh
./get_fedora.zsh
./get_opensuse.zsh
./get_debian.zsh
./get_ubuntu.zsh
./get_arch.zsh
#./get_freebsd.zsh
#./get_openbsd.zsh
