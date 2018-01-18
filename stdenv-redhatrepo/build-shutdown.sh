export RHEL_USER=MUMSS_ASKA

if [ "$RHEL_PASSWORD" = "" ];
then
  echo "RHEL_PASSWORD envvar is not set"
  exit 1 
fi
export PATH=../bin:$PATH
packer validate packer.json \
&& packer build    -on-error=cleanup packer.json \
sudo shutdown now
