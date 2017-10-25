Goal
----

- Manages virtual machine image by packer

How to build AMI ?
------------------

kick "start_cmd.bat" which sets PATH for packer

```sh
cd packer-sample-aws
packer validate stdenv-example-aws.json
packer build    stdenv-example-aws.json
```

