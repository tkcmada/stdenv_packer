export PATH=../bin:$PATH
packer validate packer.json
packer build    -on-error=cleanup packer.json
