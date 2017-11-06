How to create new AMI resizing root partition ?
-----------------------------------------------

1. run packer_build.bat based on RHEL7 ( ami-35556534 ) and create new AMI including cloud-init. ( The image name is stdenv-rhel7-resize-volume )
2. run instance based on stdenv-rhel7-resize-volume and login via SSH
3.
```
$ lsblk
NAME    MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
xvda    202:0    0  100G  0 disk
„¥„Ÿxvda1 202:1    0   1M  0 part
„¤„Ÿxvda2 202:2    0   6G  0 part /

$ sudo fdisk /dev/xvda
Command: p ( print )
#         Start          End    Size  Type            Name
 1         2048         4095      1M  BIOS boot parti
 2         4096     12587007      6G  Microsoft basic
 
Command: d ( delete partion )
Command: 2 ( partitiopn 2)
Command: n ( create partion )
Command: 2 ( partition 2 )
Command:   ( start sector is default )
Command:   ( end sector is also default )
Command: p

#         Start          End    Size  Type            Name
 1         2048         4095      1M  BIOS boot parti
 2         4096    209715166    100G  Linux filesyste
 
Command: w

$ sudo reboot
```

4. After a while, login via SSH again.
```
$ lsblk
NAME    MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
xvda    202:0    0  100G  0 disk
„¥„Ÿxvda1 202:1    0   1M  0 part
„¤„Ÿxvda2 202:2    0  100G  0 part /
```

5. create AMI from running instance and name it as "stdenv-rhel-100GB"
