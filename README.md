# SRV-DEB12-TEMPLATE
The OVF+VMDISK : https://bit.ly/3rLZqMU

All server template are installed with linux LVM to improve the risezable disk

All server template have (+all default things) :

	- curl
	- screen
	- htop
	- cockpit
	- SSH server
 
#### - default hostname :change-me (can change with command line or via cockpit)
#### - default username : user (can change with command line or via cockpit)
#### - default user/root password : mypass (can change with command line or via cockpit)
#### - user is sudoer ? ✅
#### - SSH enabled ? ✅
#### - SSH root permit login ? ❌
#### - Desktop GUI ? ❌

# How (hot) increase the vdisk size step by step ?
1. Increase the disk size inside ur hypervizor
2. (hot) Rescan the disk : (root)# echo 1 > /sys/class/scsi_disk/0\:0\:0\:0/device/rescan
3. Extend the LVM partition : (root)# cfdisk
4. Resize the PV : (root)# pvresize /dev/sda3
5. Add some extra size to your LV : (root)# lvresize -L +10G -r /dev/rootVG/homeLV (add 10G to the homeLV partition)

# How setup IPv4 static ?

command : sudo nano /etc/network/interfaces

under this line "The primary network interface"

 auto <interface_name>
 
 iface <interface_name> inet static
 
 address A.B.C.D
 
 netmask A.B.C.D
 
 gateway A.B.C.D

 => reboot to save

 # How to setup daily reboot at midnight and midday ?

 (root)# nano /etc/crontab
 
put this : 

0 0 * * * reboot

0 12 * * * reboot
