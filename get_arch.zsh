#!/bin/zsh

if [ -z $TFTP_DIRECTORY ]
    then
	echo "Error, directory not set"
	exit 1
fi

export DIRECTORY="$TFTP_DIRECTORY/Arch"

mkdir -p $DIRECTORY

export MONTH="`date +%m`"
export YEAR="`date +%Y`"

getArch() {
	if test `curl -o /dev/null --silent --head --write-out '%{http_code}\n' "http://mirrors.rit.edu/archlinux/iso/archboot/$YEAR.$MONTH/boot/initramfs_i686.img"` != '200'
	then
		export MONTH=$((MONTH-1))
		if test "$MONTH" = '0';
		    then
			export MONTH=12
			export YEAR=$((YEAR-1))
		fi
		getArch 
	else
		wget -nv -O $DIRECTORY/initramfs_i686.img "http://mirrors.rit.edu/archlinux/iso/archboot/$YEAR.$MONTH/boot/initramfs_i686.img"
		wget -nv -O $DIRECTORY/initramfs_x86_64.img "http://mirrors.rit.edu/archlinux/iso/archboot/$YEAR.$MONTH/boot/initramfs_x86_64.img"
		wget -nv -O $DIRECTORY/vmlinuz_i686 "http://mirrors.rit.edu/archlinux/iso/archboot/$YEAR.$MONTH/boot/vmlinuz_i686"
		wget -nv -O $DIRECTORY/vmlinuz_x86_64 "http://mirrors.rit.edu/archlinux/iso/archboot/$YEAR.$MONTH/boot/vmlinuz_x86_64"
	fi
}

echo "Downloading Arch to $DIRECTORY"
getArch
