How to create new AMI resizing root partition ?
-----------------------------------------------

1. run packer_build.bat based on RHEL7 ( ami-35556534 ) and create new AMI including cloud-init. ( Let's say image1 )
2. we need to reboot twice for image1. run instance based on image1 and login via SSH and just "sudo reboot"
3. Again, login via SSH and just "sudo reboot"
4. Again, login via SSH and run following command.
```
$ sudo fdisk /dev/xvda
d ( delete partion )
2 ( partitiopn 2)
n ( create partion )
2 ( partition 2 )
  ( start sector is default )
  ( end sector is also default )
p
w

$ sudo reboot
$ lsblk
# make sure resize has been done.
5. create AMI from running instance and name it as "stdenv-rhel-40GB"
```
