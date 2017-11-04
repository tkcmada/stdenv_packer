if test -f /var/log/cloud-init-output.log
then
  cat /var/log/cloud-init-output.log
else
  echo /var/log/cloud-init-output.log is not found
fi

if sudo yum list installed | grep wget
then
 echo wget is installed
else
  sudo yum install -y wget || exit 1
fi

if sudo rpm -qa | grep epel-release
then
  echo epel-release is installed
else
  wget http://ftp.jaist.ac.jp/pub/Linux/Fedora/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm || exit 1
  sudo rpm -i epel-release*.rpm || exit 1
  rm -f epel-release-*.rpm || exit 1
fi

if sudo yum list installed | grep cloud-utils-growpart
then
  echo cloud-utils-growpart is installed
else
  sudo yum install -y cloud-utils-growpart || exit 1
fi
cat /etc/cloud/cloud.cfg

if sudo yum list installed | grep gdisk
then
  echo gdisk is installed
else
  sudo yum install -y gdisk || exit 1
fi
#sudo gdisk -l
lsblk
