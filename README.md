Goal
----

- Manages virtual machine image by packer

How to build AMI ?
------------------

run "start_cmd.bat" which sets PATH for packer
```sh
cd stdenv-docker-registry
packer validate stdenv-docker-registry.json
packer build    stdenv-docker-registry.json
```

or 

just run "stdenv-docker-registry/packer_build.bat"

Frequently used AIM
-------------------
- RHEL7(Tokyo) ami-35556534
- Amazon Linux(Tokyo) ami-05964063
