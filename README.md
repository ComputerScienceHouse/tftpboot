# PXEBoot for CSH

## Set up


1. Set up a DHCP server and tftp server
   - You'll need to set DHCP options for `next-server` to be the IP address of the
     tftp server, and `filename` to be `pxelinux.0`
2. `cp pxe* splash.png vesa* /path/to/tftp/root`
2. `cp -r pxelinux.cfg /path/to/tftp/root`
2. `./updates.zsh /path/to/tftp/root`
3. ???
4. Success
