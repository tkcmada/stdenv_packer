Goal
----

- Manages virtual machine image(such as AWS AIM) by packer

Preparation
-----------

1. set environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY of your AWS IAM user. The user needs to have EC2 instance permission.
2. If you use RHEL, set environment variables RHEL_USER and RHEL_PASSWORD of your RHEL subscription.

How to build AIM by packer
--------------------------

1. run "packer_build.bat" in each directory

Frequently used AIM
-------------------
- RHEL7(Tokyo) ami-35556534
- (Amazon Linux AMI)[https://aws.amazon.com/jp/amazon-linux-ami/]
 - Amazon Linux 2017-09 (HVM)(Tokyo) ami-2a69be4c
 - Amazon Linux amzn-ami-pv (Para)(Tokyo) ami-05964063 
